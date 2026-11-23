package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorMomentBean {
    private List<BasicInfo> basicInfos;
    private List<UpdatesInfo> updatesInfos;

    public static class Achievement {
        private String icon;
        private String name;
        private String unlockRate;

        public String getIcon() {
            return this.icon;
        }

        public String getName() {
            return this.name;
        }

        public String getUnlockRate() {
            return this.unlockRate;
        }

        public void setIcon(String icon) {
            this.icon = icon;
        }

        public void setName(String name) {
            this.name = name;
        }

        public void setUnlockRate(String unlockRate) {
            this.unlockRate = unlockRate;
        }
    }

    public static class BasicInfo {
        private String desc;
        private String title;

        public String getDesc() {
            return this.desc;
        }

        public String getTitle() {
            return this.title;
        }

        public void setDesc(String desc) {
            this.desc = desc;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public static class UpdatesInfo {
        private List<Achievement> achievements;
        private String avatar;
        private String dateStr;
        private String describe;
        private String feDate;
        private boolean isExpand;
        private String nickname;
        private int praiseCount;
        private String praiseId;
        private boolean praised;
        private boolean supportPraise;
        private String uid;

        public List<Achievement> getAchievements() {
            return this.achievements;
        }

        public String getAvatar() {
            return this.avatar;
        }

        public String getDateStr() {
            return this.dateStr;
        }

        public String getDescribe() {
            return this.describe;
        }

        public String getFeDate() {
            return this.feDate;
        }

        public String getNickname() {
            return this.nickname;
        }

        public int getPraiseCount() {
            return this.praiseCount;
        }

        public String getPraiseId() {
            return this.praiseId;
        }

        public String getUid() {
            return this.uid;
        }

        public boolean isExpand() {
            return this.isExpand;
        }

        public boolean isPraised() {
            return this.praised;
        }

        public boolean isSupportPraise() {
            return this.supportPraise;
        }

        public void setAchievements(List<Achievement> achievements) {
            this.achievements = achievements;
        }

        public void setAvatar(String avatar) {
            this.avatar = avatar;
        }

        public void setDateStr(String dateStr) {
            this.dateStr = dateStr;
        }

        public void setDescribe(String describe) {
            this.describe = describe;
        }

        public void setExpand(boolean expand) {
            this.isExpand = expand;
        }

        public void setFeDate(String feDate) {
            this.feDate = feDate;
        }

        public void setNickname(String nickname) {
            this.nickname = nickname;
        }

        public void setPraiseCount(int praiseCount) {
            this.praiseCount = praiseCount;
        }

        public void setPraiseId(String praiseId) {
            this.praiseId = praiseId;
        }

        public void setPraised(boolean praised) {
            this.praised = praised;
        }

        public void setSupportPraise(boolean supportPraise) {
            this.supportPraise = supportPraise;
        }

        public void setUid(String uid) {
            this.uid = uid;
        }
    }

    public List<BasicInfo> getBasicInfos() {
        return this.basicInfos;
    }

    public List<UpdatesInfo> getUpdatesInfos() {
        return this.updatesInfos;
    }

    public void setBasicInfos(List<BasicInfo> basicInfos) {
        this.basicInfos = basicInfos;
    }

    public void setUpdatesInfos(List<UpdatesInfo> updatesInfos) {
        this.updatesInfos = updatesInfos;
    }
}
