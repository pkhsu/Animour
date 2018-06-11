package org.iii.ee100.animour;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;


@ServletComponentScan
@SpringBootApplication
public class AnimourApp {

	public static void main(String[] args) {
		SpringApplication.run(AnimourApp.class, args);
	}

}
