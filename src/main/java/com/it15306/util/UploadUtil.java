package com.it15306.util;

import java.io.File;
import java.util.UUID;


import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UploadUtil {
		//@Autowired ServletContext app;
		
		public File uploadFile(
				MultipartFile uploadedFile
		) {
			String folderPath = "C:\\Users\\User\\eclipse-workspace\\ASSM_JAVA5\\src\\main\\webapp\\storage";
			 File myUploadFolder = new File(folderPath);
			 
			 if(!myUploadFolder.exists()) {
				 myUploadFolder.mkdirs();
			 }
			 File savedFile = null;
			 try {
//				 String uuid = UUID.randomUUID().toString().substring(3);
//				 String fileName =uuid + "_" + uploadedFile.getOriginalFilename();
				 String fileName =uploadedFile.getOriginalFilename();
				  savedFile = new File(myUploadFolder, fileName);
				 uploadedFile.transferTo(savedFile);
			} catch (Exception e) {
				e.printStackTrace();
			}
			 return savedFile;
		}
}
