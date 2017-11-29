package org.sbang.persistence;

import java.util.Date;

import org.sbang.DTO.LoginDTO;
import org.sbang.domain.UserVO;

public interface UserDAO {
   
   public void create(UserVO vo) throws Exception;
   
   public UserVO read(String userEmail) throws Exception;
   
   public void update(UserVO vo) throws Exception;
   
   public void delete(String userEmail) throws Exception;
   
   public UserVO login(LoginDTO dto) throws Exception; // 로그인

   public void changePwd(UserVO vo) throws Exception;
   
   public boolean checkPw(String userEmail, String userPwd);
   
   public void keepLogin(String userEmail, String sessionId, Date next);
      
   public UserVO checkUserWithSessionKey(String value);
}