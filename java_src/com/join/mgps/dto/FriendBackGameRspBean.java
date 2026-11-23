package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FriendBackGameRspBean {
    private List<FriendInfo> battleFriendData;

    public static class FriendInfo {
        private boolean addFriendStatus;
        private String avatar;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private int f68054id;
        private int level;
        private String levelName;
        private boolean likeStatus;
        private MemberTitle memberTitle;
        private String nickName;
        private String requestInfo;
        private boolean sendFriendRequestStatus;
        private int uid;
        private boolean vip;

        public String getAvatar() {
            return this.avatar;
        }

        public int getId() {
            return this.f68054id;
        }

        public int getLevel() {
            return this.level;
        }

        public String getLevelName() {
            return this.levelName;
        }

        public MemberTitle getMemberTitle() {
            return this.memberTitle;
        }

        public String getNickName() {
            return this.nickName;
        }

        public String getRequestInfo() {
            return this.requestInfo;
        }

        public int getUid() {
            return this.uid;
        }

        public boolean isAddFriendStatus() {
            return this.addFriendStatus;
        }

        public boolean isLikeStatus() {
            return this.likeStatus;
        }

        public boolean isSendFriendRequestStatus() {
            return this.sendFriendRequestStatus;
        }

        public boolean isVip() {
            return this.vip;
        }

        public void setAddFriendStatus(boolean addFriendStatus) {
            this.addFriendStatus = addFriendStatus;
        }

        public void setAvatar(String avatar) {
            this.avatar = avatar;
        }

        public void setId(int id2) {
            this.f68054id = id2;
        }

        public void setLevel(int level) {
            this.level = level;
        }

        public void setLevelName(String levelName) {
            this.levelName = levelName;
        }

        public void setLikeStatus(boolean likeStatus) {
            this.likeStatus = likeStatus;
        }

        public void setMemberTitle(MemberTitle memberTitle) {
            this.memberTitle = memberTitle;
        }

        public void setNickName(String nickName) {
            this.nickName = nickName;
        }

        public void setRequestInfo(String requestInfo) {
            this.requestInfo = requestInfo;
        }

        public void setSendFriendRequestStatus(boolean sendFriendRequestStatus) {
            this.sendFriendRequestStatus = sendFriendRequestStatus;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public void setVip(boolean vip) {
            this.vip = vip;
        }
    }

    public static class MemberTitle {
        private String battleColor;
        private String battleTitle;
        private int level;

        public String getBattleColor() {
            return this.battleColor;
        }

        public String getBattleTitle() {
            return this.battleTitle;
        }

        public int getLevel() {
            return this.level;
        }

        public void setBattleColor(String battleColor) {
            this.battleColor = battleColor;
        }

        public void setBattleTitle(String battleTitle) {
            this.battleTitle = battleTitle;
        }

        public void setLevel(int level) {
            this.level = level;
        }
    }

    public List<FriendInfo> getBattleFriendData() {
        return this.battleFriendData;
    }

    public void setBattleFriendData(List<FriendInfo> battleFriendData) {
        this.battleFriendData = battleFriendData;
    }
}
