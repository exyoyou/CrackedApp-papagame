package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GradeRankListData {
    private GradePeopleData grade;
    private List<GradeRankListInfoData> users;

    public GradeRankListData() {
    }

    public GradePeopleData getGrade() {
        return this.grade;
    }

    public List<GradeRankListInfoData> getUsers() {
        return this.users;
    }

    public void setGrade(GradePeopleData grade) {
        this.grade = grade;
    }

    public void setUsers(List<GradeRankListInfoData> users) {
        this.users = users;
    }

    public GradeRankListData(List<GradeRankListInfoData> users, GradePeopleData grade) {
        this.users = users;
        this.grade = grade;
    }
}
