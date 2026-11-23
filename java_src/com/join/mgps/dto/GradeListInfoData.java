package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GradeListInfoData implements Serializable {
    private String grade_name;
    private int grade_number;
    private String grade_people;
    private boolean is_open;

    public GradeListInfoData() {
    }

    public String getGrade_name() {
        return this.grade_name;
    }

    public int getGrade_number() {
        return this.grade_number;
    }

    public String getGrade_people() {
        return this.grade_people;
    }

    public boolean isIs_open() {
        return this.is_open;
    }

    public void setGrade_name(String grade_name) {
        this.grade_name = grade_name;
    }

    public void setGrade_number(int grade_number) {
        this.grade_number = grade_number;
    }

    public void setGrade_people(String grade_people) {
        this.grade_people = grade_people;
    }

    public void setIs_open(boolean is_open) {
        this.is_open = is_open;
    }

    public GradeListInfoData(int grade_number, String grade_name, String grade_people, boolean is_open) {
        this.grade_number = grade_number;
        this.grade_name = grade_name;
        this.grade_people = grade_people;
        this.is_open = is_open;
    }
}
