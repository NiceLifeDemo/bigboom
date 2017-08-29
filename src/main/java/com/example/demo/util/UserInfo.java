package com.example.demo.util;

import lombok.Getter;
import lombok.Setter;

/**
 * @author tangyu
 *         2017/8/29.
 */
@Getter
@Setter
public class UserInfo {
 private String name;

    @Override
    public String toString() {
        return "UserInfo{" +
                "name='" + name + '\'' +
                '}';
    }
}
