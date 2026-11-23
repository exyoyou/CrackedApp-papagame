package com.papa91.arc.bean;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class EndgameChallengeLevelBean {
    private BoundaryBean boundary;
    private String level;

    public static class BoundaryBean implements Serializable {
        private int lower;
        private int upper;

        public int getLower() {
            return this.lower;
        }

        public int getUpper() {
            return this.upper;
        }

        public void setLower(int i10) {
            this.lower = i10;
        }

        public void setUpper(int i10) {
            this.upper = i10;
        }
    }

    public BoundaryBean getBoundary() {
        return this.boundary;
    }

    public String getLevel() {
        return this.level;
    }

    public void setBoundary(BoundaryBean boundaryBean) {
        this.boundary = boundaryBean;
    }

    public void setLevel(String str) {
        this.level = str;
    }
}
