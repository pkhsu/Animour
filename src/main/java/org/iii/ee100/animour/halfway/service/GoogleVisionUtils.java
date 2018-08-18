package org.iii.ee100.animour.halfway.service;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.util.Scanner;

import javax.net.ssl.HttpsURLConnection;

import org.springframework.stereotype.Service;

@Service
public class GoogleVisionUtils {

	// 金鑰及rest URL
	private static final String TARGET_URL = "https://vision.googleapis.com/v1/images:annotate?";
	private static final String API_KEY = "key=AIzaSyBKKkqIwxvLdgC1bB5dgt5gbEhnL-TUn7A";

	public static String visionApiRequest(String imageUrl) throws IOException {

		URL serverUrl = new URL(TARGET_URL + API_KEY);
		HttpsURLConnection httpConnection = (HttpsURLConnection)serverUrl.openConnection();

		httpConnection.setRequestMethod("POST");
		httpConnection.setRequestProperty("Content-Type", "application/json");

		httpConnection.setDoOutput(true);

		BufferedWriter httpRequestBodyWriter = new BufferedWriter(
				new OutputStreamWriter(httpConnection.getOutputStream()));
//		/image specifies the image file. It can be sent as a base64-encoded string, a Google Cloud Storage file location, or as a publicly-accessible URL.
		httpRequestBodyWriter.write("{\"requests\":  [{ \"features\":  [ {\"type\": \"LABEL_DETECTION\""
				+ "}], \"image\": {\"source\": { \"imageUri\":"
				+ " \""+imageUrl+"\"}}}]}");

		httpRequestBodyWriter.close();

		String response = httpConnection.getResponseMessage();
		System.out.println("+++++++++"+response+"+++++++++");
		if (httpConnection.getInputStream() == null) {
			System.out.println("No stream");
			return "No stream";
		}

		Scanner httpResponseScanner = new Scanner(httpConnection.getInputStream());
		String resp = "";
		while (httpResponseScanner.hasNext()) {
			String line = httpResponseScanner.nextLine();
			resp = resp + line;
			System.out.println(line); // alternatively, print the line of response
		}
		httpResponseScanner.close();
		return resp;
	}

}
