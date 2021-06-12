package com.it15306;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;

@Configuration
public class ValidationMessageConfig {
	@Bean("messageSource")
	public MessageSource getMessageSource() {
		ReloadableResourceBundleMessageSource ms=
				new ReloadableResourceBundleMessageSource();
		ms.setBasename("classpath:message/user");
		ms.setDefaultEncoding("utf-8");
		return ms;
	}
}
