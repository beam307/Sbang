package org.sbang.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.sbang.domain.UserVO;
import org.sbang.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/user")
public class UserController {

   private static final Logger logger = LoggerFactory.getLogger(UserController.class);

   @Inject
   private UserService service;

   @RequestMapping(value = "/regUser", method = RequestMethod.POST)
   public String registerPost(UserVO vo, RedirectAttributes rttr) throws Exception { // 회원가입
                                                                  // 메서드
      logger.info("register user post....");
      service.create(vo);
      rttr.addFlashAttribute("msg", "regSuccess");

      return "redirect:/";
   }

   @RequestMapping(value = "/myPage", method = RequestMethod.POST)
   public String myPagePost(UserVO vo, RedirectAttributes rttr) throws Exception {

      service.update(vo);

      System.out.println("값은" + vo);
      rttr.addFlashAttribute("msg", "regSuccess");

      return "/user/myPagePost";
   }

   @RequestMapping(value = "/myPage", method = RequestMethod.GET)
   public String myPageGet(HttpSession session, Model model) throws Exception {

      logger.info("go mypage");
      UserVO vo = (UserVO) session.getAttribute("login");
      UserVO vo2 = service.read(vo.getUserEmail());

      model.addAttribute("UserVO", vo2);
      return "/user/myPage";

   }

   @RequestMapping(value = "/delete", method = RequestMethod.POST)
   public String deletePost(RedirectAttributes rttr, HttpSession session) throws Exception {

      UserVO vo = (UserVO) session.getAttribute("login");
      service.delete(vo.getUserEmail());

      rttr.addFlashAttribute("msg", "delete");

      return "redirect:/login/logout";
   }

   @RequestMapping(value = "/changePwd", method = RequestMethod.POST)
   public String changePost(UserVO vo, HttpServletRequest request, HttpSession session) throws Exception {

      vo.setUserEmail(((UserVO) session.getAttribute("login")).getUserEmail());

      boolean result = service.checkPw(vo.getUserEmail(), vo.getUserPwd());
      System.out.println("아이디 : "+ vo.getUserEmail());
      System.out.println("비밀번호 : "+ vo.getUserPwd());
      System.out.println("값은 : " +result);
      if (vo.getUserNewPwd().equals(vo.getUserCheckPwd()) && result == true) {
         service.changePwd(vo);
         request.setAttribute("msg", "changePwd");
      } else {
         request.setAttribute("msg", "changeFail");
      }
      return "/user/changePwdPost";
   }

}