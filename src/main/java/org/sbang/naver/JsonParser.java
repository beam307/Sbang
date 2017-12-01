package org.sbang.naver;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.sbang.domain.UserVO;

public class JsonParser {
	JSONParser jsonParser = new JSONParser();

	public UserVO changeJson(String string) throws Exception {

		JSONParser jsonParser = new JSONParser();

		UserVO vo = new UserVO();

		JSONObject jsonObject = (JSONObject) jsonParser.parse(string);

		jsonObject = (JSONObject) jsonObject.get("response");

		HashMap<String, Object> map = new HashMap<>();

		map.put("userEmail", jsonObject.get("email"));
		map.put("userGender", jsonObject.get("gender"));
		map.put("userId", jsonObject.get("id"));

		vo.setUserEmail(map.get("userEmail").toString());
		vo.setUserGender(map.get("userGender").toString());
		vo.setUserNaver(map.get("userId").toString());

		return vo;
	}
}
