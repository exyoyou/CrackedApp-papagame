package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FriendCardBean {
    private boolean addFriendStatus;
    private boolean friendStatus;
    private int likeCount;
    private boolean likeStatus;
    private boolean onlineStatus;
    private List<GameLevelBean> playGameLevels;
    private FriendBean userInfo;

    public int getLikeCount() {
        return this.likeCount;
    }

    public List<GameLevelBean> getPlayGameLevels() {
        return this.playGameLevels;
    }

    public FriendBean getUserInfo() {
        return this.userInfo;
    }

    public boolean isAddFriendStatus() {
        return this.addFriendStatus;
    }

    public boolean isFriendStatus() {
        return this.friendStatus;
    }

    public boolean isLikeStatus() {
        return this.likeStatus;
    }

    public boolean isOnlineStatus() {
        return this.onlineStatus;
    }

    public void setAddFriendStatus(boolean addFriendStatus) {
        this.addFriendStatus = addFriendStatus;
    }

    public void setFriendStatus(boolean friendStatus) {
        this.friendStatus = friendStatus;
    }

    public void setLikeCount(int likeCount) {
        this.likeCount = likeCount;
    }

    public void setLikeStatus(boolean likeStatus) {
        this.likeStatus = likeStatus;
    }

    public void setOnlineStatus(boolean onlineStatus) {
        this.onlineStatus = onlineStatus;
    }

    public void setPlayGameLevels(List<GameLevelBean> playGameLevels) {
        this.playGameLevels = playGameLevels;
    }

    public void setUserInfo(FriendBean userInfo) {
        this.userInfo = userInfo;
    }
}
