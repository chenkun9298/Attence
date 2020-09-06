package org.hnist.util;

import java.util.ArrayList;

import org.hnist.model.*;
import org.json.JSONObject;

import com.baidu.aip.face.AipFace;
import com.baidu.aip.face.MatchRequest;

public class FaceComparison {
	
	public String Facecomparison(AipFace client, Image imageU, Image imageC){
		
		MatchRequest req1 = new MatchRequest(imageU.getImgStr(), imageU.getImgType());
	    MatchRequest req2 = new MatchRequest(imageC.getImgStr(), imageC.getImgType());
	    ArrayList<MatchRequest> requests = new ArrayList<MatchRequest>();
	    requests.add(req1);
	    requests.add(req2);
	    JSONObject res = client.match(requests);
		return res.toString(2);
	}

}
