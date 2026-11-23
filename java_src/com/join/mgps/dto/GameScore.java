package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameScore {
    private int count;
    private String score;
    private int sgc_switch;
    private double total_stars;

    public int getCount() {
        return this.count;
    }

    public String getScore() {
        return this.score;
    }

    public int getSgc_switch() {
        return this.sgc_switch;
    }

    public double getTotal_stars() {
        return this.total_stars;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public void setSgc_switch(int sgc_switch) {
        this.sgc_switch = sgc_switch;
    }

    public void setTotal_stars(double total_stars) {
        this.total_stars = total_stars;
    }
}
