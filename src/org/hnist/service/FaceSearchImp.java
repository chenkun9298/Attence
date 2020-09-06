package org.hnist.service;

import org.hnist.util.*;

import org.hnist.model.*;

import org.hnist.*;

import com.baidu.aip.face.AipFace;
import org.json.JSONArray;
import org.json.JSONObject;

public class FaceSearchImp implements FaceSearch {
    AiFaceObject aiFaceObject = new AiFaceObject();
    FaceDetection faceDetection = new FaceDetection();
    FaceUser faceUser = new FaceUser();

    public Result faceLogin(Image image) {
        Result detection = DetectionFace(image);
        if (detection.isStart()){
            Result search = search(image);
            if (search.isStart()){
                return search;
            }else {
                Result result = new Result();
                result.setStart(false);
                result.setErrorMsg("匹配不成功");
                return result;
            }
        }else {
            Result result = new Result();
            result.setStart(false);
            result.setErrorMsg("人脸不合格");
            return result;
        }
    }

    //检测人脸
    private Result DetectionFace(Image image){
        Result message = new Result();
        AipFace client= aiFaceObject.getClient();
        String res=faceDetection.Facedetection(client, image);
        JSONObject result = new JSONObject(res);
        String errorMsg = result.getString("error_msg");
        if ("SUCCESS".equals(errorMsg)){//成功
            result = result.getJSONObject("result");
            int faceNum = result.getInt("face_num");
            JSONArray faceList = result.getJSONArray("face_list");
            JSONObject subObj = faceList.getJSONObject(0);
            double faceProbability = subObj.getDouble("face_probability");
            if (faceNum==1 && faceProbability > 0.8){//登录的人唯一，是人的准确率0.8以上
                message.setStart(true);
                message.setFaceNum(faceNum);
                message.setMsg("成功");
            }else {
                message.setStart(false);
                message.setFaceNum(faceNum);
                message.setErrorMsg("图片不能满足登录要求");
            }
        }else {
            message.setStart(false);
            message.setFaceNum(0);
            message.setErrorMsg("匹配库不成功");
        }
        return message;
    }

    //在人脸库搜索人脸
    private Result search(Image image){
        Result message = new Result();
        AipFace client= aiFaceObject.getClient();
        String res=faceUser.faceuser(client, image);
        JSONObject result = new JSONObject(res);
        String errorMsg = result.getString("error_msg");
        if ("SUCCESS".equals(errorMsg)){//成功
            JSONArray faceList = result.getJSONObject("result").getJSONArray("user_list");
            JSONObject user = faceList.getJSONObject(0);
            double score = user.getDouble("score");
            String userId = user.getString("user_id");
            if (score > 80){//匹配相似度80以上
                message.setStart(true);
                message.setMsg("成功");
                message.setUserId(userId);
            }else {
                message.setStart(false);
                message.setErrorMsg("相似度过低");
            }
        }else {
            message.setStart(false);
            message.setErrorMsg("人脸库查询不成功");
        }
        return message;
    }
}
