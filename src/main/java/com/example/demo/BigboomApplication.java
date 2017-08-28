package com.example.demo;

import com.example.demo.config.MyConfig;
import com.google.common.collect.Sets;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.time.LocalDate;
import java.time.LocalDateTime;

import static com.google.common.base.Predicates.or;
import static springfox.documentation.builders.PathSelectors.regex;


@SpringBootApplication(  scanBasePackages = {
		"com.example.demo.controller",
		"com.example.demo.service"
})
@EnableConfigurationProperties(value = {MyConfig.class})
@EnableSwagger2
public class BigboomApplication {

	public static void main(String[] args) {
		SpringApplication.run(BigboomApplication.class, args);
	}



	@Bean
	public Docket customDocket() {

		return new Docket(DocumentationType.SWAGGER_2)
				.select()
//                .apis(not(RequestHandlerSelectors.basePackage("org.springframework.boot.autoconfigure.web")))
				.apis(RequestHandlerSelectors.basePackage("com.demo.controller"))
				.paths(or(regex("/.*")))
				.build()
//                --------------
				.directModelSubstitute(LocalDate.class, String.class)
				.directModelSubstitute(LocalDateTime.class, String.class)

				.apiInfo(getApiInfo()) //以下为文档信息设置
				.produces(Sets.newHashSet("application/json"))
				.consumes(Sets.newHashSet("application/json"));

	}


	private ApiInfo getApiInfo() {
		return new ApiInfoBuilder()
				.title("BigBoom")
				.version("2.0")
				.description("BigBoom-Practition-Api")
				.contact(new Contact("xxxx", "www.baidu.com", "www.qq.com"))
				.build();
	}



}
