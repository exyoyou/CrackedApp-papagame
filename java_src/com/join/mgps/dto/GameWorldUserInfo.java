package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameWorldUserInfo {
    private String avatar_src;
    private int grade_number;
    private boolean is_worship;
    private String nickname;
    private int papa_money;
    private GameworldRankGradeBean rank_grade;
    private List<GameWorldRoleBean> role_list;
    private List<GameWorldTrophyItem> trophy_list;
    private int uid;
    private int world_rank;
    private int world_score;
    private int world_worship_count;

    public String getAvatar_src() {
        return this.avatar_src;
    }

    public int getGrade_number() {
        return this.grade_number;
    }

    public String getNickname() {
        return this.nickname;
    }

    public int getPapa_money() {
        return this.papa_money;
    }

    public GameworldRankGradeBean getRank_grade() {
        return this.rank_grade;
    }

    public List<GameWorldRoleBean> getRole_list() {
        return this.role_list;
    }

    public List<GameWorldTrophyItem> getTrophy_list() {
        return this.trophy_list;
    }

    public int getUid() {
        return this.uid;
    }

    public int getWorld_rank() {
        return this.world_rank;
    }

    public int getWorld_score() {
        return this.world_score;
    }

    public int getWorld_worship_count() {
        return this.world_worship_count;
    }

    public boolean isIs_worship() {
        return this.is_worship;
    }

    public void setAvatar_src(String avatar_src) {
        this.avatar_src = avatar_src;
    }

    public void setGrade_number(int grade_number) {
        this.grade_number = grade_number;
    }

    public void setIs_worship(boolean is_worship) {
        this.is_worship = is_worship;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPapa_money(int papa_money) {
        this.papa_money = papa_money;
    }

    public void setRank_grade(GameworldRankGradeBean rank_grade) {
        this.rank_grade = rank_grade;
    }

    public void setRole_list(List<GameWorldRoleBean> role_list) {
        this.role_list = role_list;
    }

    public void setTrophy_list(List<GameWorldTrophyItem> trophy_list) {
        this.trophy_list = trophy_list;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setWorld_rank(int world_rank) {
        this.world_rank = world_rank;
    }

    public void setWorld_score(int world_score) {
        this.world_score = world_score;
    }

    public void setWorld_worship_count(int world_worship_count) {
        this.world_worship_count = world_worship_count;
    }
}
