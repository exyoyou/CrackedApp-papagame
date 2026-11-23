package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GradeRankListInfoData implements Serializable {
    private String avatar_src;
    private String grade_name;
    private int grade_rank;
    private String nickname;
    private String uid;
    private int world_rank;
    private String world_score;

    public GradeRankListInfoData() {
    }

    public String getAvatar_src() {
        return this.avatar_src;
    }

    public String getGrade_name() {
        return this.grade_name;
    }

    public int getGrade_rank() {
        return this.grade_rank;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getUid() {
        return this.uid;
    }

    public int getWorld_rank() {
        return this.world_rank;
    }

    public String getWorld_score() {
        return this.world_score;
    }

    public void setAvatar_src(String avatar_src) {
        this.avatar_src = avatar_src;
    }

    public void setGrade_name(String grade_name) {
        this.grade_name = grade_name;
    }

    public void setGrade_rank(int grade_rank) {
        this.grade_rank = grade_rank;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public void setWorld_rank(int world_rank) {
        this.world_rank = world_rank;
    }

    public void setWorld_score(String world_score) {
        this.world_score = world_score;
    }

    public GradeRankListInfoData(int world_rank, int grade_rank, String grade_name, String uid, String nickname, String avatar_src, String world_score) {
        this.world_rank = world_rank;
        this.grade_rank = grade_rank;
        this.grade_name = grade_name;
        this.uid = uid;
        this.nickname = nickname;
        this.avatar_src = avatar_src;
        this.world_score = world_score;
    }
}
