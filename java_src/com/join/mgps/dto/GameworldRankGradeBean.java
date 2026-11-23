package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameworldRankGradeBean {
    private int get_pet;
    private int kill_mob;
    private int level;
    private int medal;
    private int score;

    public GameworldRankGradeBean() {
    }

    public int getGet_pet() {
        return this.get_pet;
    }

    public int getKill_mob() {
        return this.kill_mob;
    }

    public int getLevel() {
        return this.level;
    }

    public int getMedal() {
        return this.medal;
    }

    public int getScore() {
        return this.score;
    }

    public void setGet_pet(int get_pet) {
        this.get_pet = get_pet;
    }

    public void setKill_mob(int kill_mob) {
        this.kill_mob = kill_mob;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public void setMedal(int medal) {
        this.medal = medal;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public GameworldRankGradeBean(int level, int get_pet, int medal, int kill_mob, int score) {
        this.level = level;
        this.get_pet = get_pet;
        this.medal = medal;
        this.kill_mob = kill_mob;
        this.score = score;
    }
}
