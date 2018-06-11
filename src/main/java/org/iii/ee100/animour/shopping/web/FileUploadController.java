package org.iii.ee100.animour.shopping.web;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class FileUploadController {
	@PostMapping(value="/product/upload")
	public String fileUpload(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {
		
		if(file.isEmpty()) {
			redirectAttributes.addFlashAttribute("message", "請選擇一個檔案上傳");
			 return "redirect:/uploadStatus";
		}
		
		try {
			byte[] bytes = file.getBytes();
			Path path = Paths.get("E:/bbb/" + file.getOriginalFilename());
			Files.write(path, bytes);
			redirectAttributes.addFlashAttribute("message", "您成功上傳了" + file.getOriginalFilename() + "檔案");
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		 return "redirect:/uploadStatus";
	}
	@GetMapping("/uploadStatus")
    public String uploadStatus() {
        return "/shopping/ProcessProductForm";
    }
}
