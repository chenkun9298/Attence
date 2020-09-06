package org.hnist.service;

import org.hnist.util.*;

import org.hnist.model.*;

import org.hnist.*;

import com.baidu.aip.face.AipFace;

import org.json.JSONArray;
import org.json.JSONObject;

public class FaceRegisterImp implements FaceRegister {
    AiFaceObject aiFaceObject = new AiFaceObject();
    FaceUser faceUser = new FaceUser();
    FaceRegistration faceRegistration = new FaceRegistration();

    public Result register(Image image) {
        Result message = new Result();
        if(!search(image)) {
        	JSONObject result = faceRegister(image,aiFaceObject.GROUD_LIST);
            int error_code = result.getInt("error_code");
            if (error_code == 0){//注册成功
                message.setStart(true);
                message.setMsg("注册成功");
            }else if (error_code==222202){
                message.setStart(false);
                message.setErrorMsg("请将脸部对准摄像头");
            }else {
                message.setStart(false);
                message.setErrorMsg("错误代码"+result.getInt("error_code"));
            }
        }else {
        	message.setStart(false);
        	message.setErrorMsg("人脸数据已经被注册");
        }
        return message;
    }

    private JSONObject faceRegister(Image image,String groudList){
        AipFace client= aiFaceObject.getClient();
        String res = faceRegistration.Faceregistrtion(client,groudList,image);
        JSONObject result = new JSONObject(res);
        return result;
    }
    
  //在人脸库搜索人脸
    private boolean search(Image image){
        AipFace client= aiFaceObject.getClient();
        String res=faceUser.faceuser(client, image);
        JSONObject result = new JSONObject(res);
        String errorMsg = result.getString("error_msg");
        if ("SUCCESS".equals(errorMsg)){//成功
            JSONArray faceList = result.getJSONObject("result").getJSONArray("user_list");
            JSONObject user = faceList.getJSONObject(0);
            double score = user.getDouble("score");
            if (score > 80){//匹配相似度80以上
               return true;
            }
        }
        return false;
    }
}
