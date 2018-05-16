package com.ssm.game.pojo;

import java.sql.Time;

public class SsmGame {
    private String create_time;

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    private Integer aim_point;

    private String input;

    private String output;

    public Integer getAim_point() {
        return aim_point;
    }

    public void setAim_point(Integer aim_point) {
        this.aim_point = aim_point;
    }

    public String getInput() {
        return input;
    }

    public void setInput(String input) {
        this.input = input == null ? null : input.trim();
    }

    public String getOutput() {
        return output;
    }

    public void setOutput(String output) {
        this.output = output == null ? null : output.trim();
    }

    @Override
    public String toString() {
        return "SsmGame{" +
                "aim_point=" + aim_point +
                ", input='" + input + '\'' +
                ", output='" + output + '\'' +
                '}';
    }
}