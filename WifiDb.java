package mission11;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;
import java.io.BufferedReader;
import java.io.IOException;

public class WifiDb {

	static int total;

	public String js(int start, int end) {
		String result = "";
		try {
			StringBuilder urlBuilder = new StringBuilder("http://openapi.seoul.go.kr:8088");
			urlBuilder.append("/" + URLEncoder.encode("50536d5676726f6d36327066506949", "UTF-8"));
			urlBuilder.append("/" + URLEncoder.encode("json", "UTF-8"));
			urlBuilder.append("/" + URLEncoder.encode("TbPublicWifiInfo", "UTF-8"));
			urlBuilder.append("/" + URLEncoder.encode(Integer.toString(start), "UTF-8"));
			urlBuilder.append("/" + URLEncoder.encode(Integer.toString(end), "UTF-8"));

			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
			System.out.println("Response code: " + conn.getResponseCode());
			BufferedReader rd;
			if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
				rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			} else {
				rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			}
			StringBuilder sb = new StringBuilder();
			String line;
			while ((line = rd.readLine()) != null) {
				sb.append(line);
			}

			result = sb.toString();
			rd.close();
			conn.disconnect();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
}

