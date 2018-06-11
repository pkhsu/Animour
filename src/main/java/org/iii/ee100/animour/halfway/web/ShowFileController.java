package org.iii.ee100.animour.halfway.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ShowFileController {

	@RequestMapping(value = "/showAnimalImage", method = { RequestMethod.GET })
	public void showMultipart(@RequestParam("fileName") String fileName, Animal an, HttpServletRequest request,
			HttpServletResponse response, Model model) {
				OutputStream os = null;
				FileInputStream fis = null;
				if (fileName.isEmpty() || fileName == null || fileName.equalsIgnoreCase("null")) {
					fileName = "noimage.png";
				}
				
				try {
					String uploadRootPath = request.getServletContext().getRealPath("images/halfway/animal/");
					File file = new File(uploadRootPath+fileName);
					fis = new FileInputStream(file);
					
					os = response.getOutputStream();
					if (fileName.substring(fileName.indexOf(".")+1).equals("jpg")) {
						response.setContentType("image/jpeg");
					} else {
						response.setContentType("image/png");
					}
					
					int len = 0;
					byte[] bytes = new byte[8192];
					while ((len = fis.read(bytes)) != -1) {
						os.write(bytes, 0 , len);
					}
				} catch (IOException e) {
					e.printStackTrace();
				} finally {
					try {
						os.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				System.out.println("controller 有被呼叫");
	}
}