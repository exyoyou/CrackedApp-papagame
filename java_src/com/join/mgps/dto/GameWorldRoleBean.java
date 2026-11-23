package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameWorldRoleBean {
    private int get_pet;
    private int get_pet_r;
    private int grade_r;
    private String icon_src;
    private int kill_mob;
    private int kill_mob_r;
    private int level;
    private int level_r;
    private int medal;
    private int medal_r;
    private String role_name;
    private int score;
    private long update_time;

    public GameWorldRoleBean() {
    }

    public int getGet_pet() {
        return this.get_pet;
    }

    public int getGet_pet_r() {
        return this.get_pet_r;
    }

    public int getGrade_r() {
        return this.grade_r;
    }

    public String getIcon_src() {
        return this.icon_src;
    }

    public int getKill_mob() {
        return this.kill_mob;
    }

    public int getKill_mob_r() {
        return this.kill_mob_r;
    }

    public int getLevel() {
        return this.level;
    }

    public int getLevel_r() {
        return this.level_r;
    }

    public int getMedal() {
        return this.medal;
    }

    public int getMedal_r() {
        return this.medal_r;
    }

    public String getRole_name() {
        return this.role_name;
    }

    public int getScore() {
        return this.score;
    }

    public long getUpdate_time() {
        return this.update_time * 1000;
    }

    public void setGet_pet(int get_pet) {
        this.get_pet = get_pet;
    }

    public void setGet_pet_r(int get_pet_r) {
        this.get_pet_r = get_pet_r;
    }

    public void setGrade_r(int grade_r) {
        this.grade_r = grade_r;
    }

    public void setIcon_src(String icon_src) {
        this.icon_src = icon_src;
    }

    public void setKill_mob(int kill_mob) {
        this.kill_mob = kill_mob;
    }

    public void setKill_mob_r(int kill_mob_r) {
        this.kill_mob_r = kill_mob_r;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public void setLevel_r(int level_r) {
        this.level_r = level_r;
    }

    public void setMedal(int medal) {
        this.medal = medal;
    }

    public void setMedal_r(int medal_r) {
        this.medal_r = medal_r;
    }

    public void setRole_name(String role_name) {
        this.role_name = role_name;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public void setUpdate_time(long update_time) {
        this.update_time = update_time;
    }

    public GameWorldRoleBean(long update_time, String icon_src, String role_name, int kill_mob, int get_pet, int level, int medal, int score) {
        this.update_time = update_time;
        this.icon_src = icon_src;
        this.role_name = role_name;
        this.kill_mob = kill_mob;
        this.get_pet = get_pet;
        this.level = level;
        this.medal = medal;
        this.score = score;
    }
}
