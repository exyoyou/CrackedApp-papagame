package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class UnlockBean {
    private SimulatorAchievementBean achievementBean;
    private SimulatorAchievementBean.AchievementInfo info;
    private boolean isFirst;
    private boolean isLast;
    private boolean isLock;
    private boolean isLockTitle;
    private String timeDesc;
    private int type;

    public UnlockBean(int type, SimulatorAchievementBean achievementBean) {
        this.type = type;
        this.achievementBean = achievementBean;
    }

    public SimulatorAchievementBean getAchievementBean() {
        return this.achievementBean;
    }

    public SimulatorAchievementBean.AchievementInfo getInfo() {
        return this.info;
    }

    public String getTimeDesc() {
        return this.timeDesc;
    }

    public int getType() {
        return this.type;
    }

    public boolean isFirst() {
        return this.isFirst;
    }

    public boolean isLast() {
        return this.isLast;
    }

    public boolean isLock() {
        return this.isLock;
    }

    public boolean isLockTitle() {
        return this.isLockTitle;
    }

    public void setAchievementBean(SimulatorAchievementBean achievementBean) {
        this.achievementBean = achievementBean;
    }

    public void setFirst(boolean first) {
        this.isFirst = first;
    }

    public void setInfo(SimulatorAchievementBean.AchievementInfo info) {
        this.info = info;
    }

    public void setLast(boolean last) {
        this.isLast = last;
    }

    public void setLock(boolean lock) {
        this.isLock = lock;
    }

    public void setLockTitle(boolean lockTitle) {
        this.isLockTitle = lockTitle;
    }

    public void setTimeDesc(String timeDesc) {
        this.timeDesc = timeDesc;
    }

    public void setType(int type) {
        this.type = type;
    }

    public UnlockBean(int type, String timeDesc, boolean isLockTitle) {
        this.type = type;
        this.timeDesc = timeDesc;
        this.isLockTitle = isLockTitle;
    }

    public UnlockBean(int type, SimulatorAchievementBean.AchievementInfo info, boolean isLock) {
        this.type = type;
        this.info = info;
        this.isLock = isLock;
    }
}
