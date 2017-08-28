package com.example.demo.config;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * @author tangyu
 *         2017/8/28.
 */

@ConfigurationProperties(prefix = "config")
@Getter
@Setter
public class MyConfig {


}
