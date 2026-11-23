package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorAllAchievementBean {
    private List<AchievementInfo> achievement_list;

    public static class AchievementInfo {
        private String condition;
        private int done;
        private String name;
        private int show;
        private int target;
        private String ver;

        public String getCondition() {
            return this.condition;
        }

        public int getDone() {
            return this.done;
        }

        public String getName() {
            return this.name;
        }

        public int getShow() {
            return this.show;
        }

        public int getTarget() {
            return this.target;
        }

        public String getVer() {
            return this.ver;
        }

        public void setCondition(String condition) {
            this.condition = condition;
        }

        public void setDone(int done) {
            this.done = done;
        }

        public void setName(String name) {
            this.name = name;
        }

        public void setShow(int show) {
            this.show = show;
        }

        public void setTarget(int target) {
            this.target = target;
        }

        public void setVer(String ver) {
            this.ver = ver;
        }
    }

    public List<AchievementInfo> getAchievement_list() {
        return this.achievement_list;
    }

    public void setAchievement_list(List<AchievementInfo> achievement_list) {
        this.achievement_list = achievement_list;
    }
}
