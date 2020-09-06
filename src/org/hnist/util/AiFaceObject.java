package org.hnist.util;

import com.baidu.aip.face.AipFace;

public class AiFaceObject {
	    public String APP_ID = "20231218";
	    public String API_KEY = "T7P3FvO6ADR45yl6mEHOc8Kb";
	    public String SECRET_KEY = "dRoeA0MyHvYm53ufON9K3FRPvSAWbYIN";
	    public String GROUD_LIST = "user";
	    
	    private AipFace client = new AipFace(APP_ID, API_KEY, SECRET_KEY);

	    public AipFace getClient(){
	    	client.setConnectionTimeoutInMillis(2000);
	    	client.setSocketTimeoutInMillis(60000);
	    	return client;
	    }
	    
}
