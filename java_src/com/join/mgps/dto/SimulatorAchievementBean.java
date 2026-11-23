package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorAchievementBean {
    private List<AchievementInfo> all_lock_achievements;
    private int done;
    private List<HistoryUnlockAchievementBean> history_unlock_achievements;
    private List<AchievementInfo> lock_achievements;
    private int lock_achievements_num;
    private int target;
    private List<AchievementInfo> today_unlock_achievements;
    private List<AchievementInfo> unlock_achievements;
    private int unlock_achievements_num;

    public static class AchievementInfo {
        private String condition;
        private int done;
        private String icon;
        private String name;
        private int target;
        private String unlock_date;
        private int unlock_rate;
        private String unlock_time;

        public String getCondition() {
            return this.condition;
        }

        public int getDone() {
            return this.done;
        }

        public String getIcon() {
            return this.icon;
        }

        public String getName() {
            return this.name;
        }

        public int getTarget() {
            return this.target;
        }

        public String getUnlock_date() {
            return this.unlock_date;
        }

        public int getUnlock_rate() {
            return this.unlock_rate;
        }

        public String getUnlock_time() {
            return this.unlock_time;
        }

        public void setCondition(String condition) {
            this.condition = condition;
        }

        public void setDone(int done) {
            this.done = done;
        }

        public void setIcon(String icon) {
            this.icon = icon;
        }

        public void setName(String name) {
            this.name = name;
        }

        public void setTarget(int target) {
            this.target = target;
        }

        public void setUnlock_date(String unlock_date) {
            this.unlock_date = unlock_date;
        }

        public void setUnlock_rate(int unlock_rate) {
            this.unlock_rate = unlock_rate;
        }

        public void setUnlock_time(String unlock_time) {
            this.unlock_time = unlock_time;
        }
    }

    public static class HistoryUnlockAchievementBean {
        private String date;
        private List<AchievementInfo> unlockAchievements;

        public String getDate() {
            return this.date;
        }

        public List<AchievementInfo> getUnlockAchievements() {
            return this.unlockAchievements;
        }

        public void setDate(String date) {
            this.date = date;
        }

        public void setUnlockAchievements(List<AchievementInfo> unlockAchievements) {
            this.unlockAchievements = unlockAchievements;
        }
    }

    public List<AchievementInfo> getAll_lock_achievements() {
        return this.all_lock_achievements;
    }

    public int getDone() {
        return this.done;
    }

    public List<HistoryUnlockAchievementBean> getHistory_unlock_achievements() {
        return this.history_unlock_achievements;
    }

    public List<AchievementInfo> getLock_achievements() {
        return this.lock_achievements;
    }

    public int getLock_achievements_num() {
        return this.lock_achievements_num;
    }

    public int getTarget() {
        return this.target;
    }

    public List<AchievementInfo> getToday_unlock_achievements() {
        return this.today_unlock_achievements;
    }

    public List<AchievementInfo> getUnlock_achievements() {
        return this.unlock_achievements;
    }

    public int getUnlock_achievements_num() {
        return this.unlock_achievements_num;
    }

    public void setAll_lock_achievements(List<AchievementInfo> all_lock_achievements) {
        this.all_lock_achievements = all_lock_achievements;
    }

    public void setDone(int done) {
        this.done = done;
    }

    public void setHistory_unlock_achievements(List<HistoryUnlockAchievementBean> history_unlock_achievements) {
        this.history_unlock_achievements = history_unlock_achievements;
    }

    public void setLock_achievements(List<AchievementInfo> lock_achievements) {
        this.lock_achievements = lock_achievements;
    }

    public void setLock_achievements_num(int lock_achievements_num) {
        this.lock_achievements_num = lock_achievements_num;
    }

    public void setTarget(int target) {
        this.target = target;
    }

    public void setToday_unlock_achievements(List<AchievementInfo> today_unlock_achievements) {
        this.today_unlock_achievements = today_unlock_achievements;
    }

    public void setUnlock_achievements(List<AchievementInfo> unlock_achievements) {
        this.unlock_achievements = unlock_achievements;
    }

    public void setUnlock_achievements_num(int unlock_achievements_num) {
        this.unlock_achievements_num = unlock_achievements_num;
    }
}
