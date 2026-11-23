package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class FriendBean {
    private String account;
    private String avatar;
    private boolean banned;
    private boolean elite;
    private String friendRequestType;
    private String gameId;
    private String gameName;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68055id;
    private boolean isRecommend;
    private int level;
    private String levelName;
    private MemberTitle memberTitle;
    private String message;
    private String nickName;
    private GameLevelBean playGameLevel;
    private int playType;
    private int readFlag;
    private String requestIfo;
    private int roomId;
    private String roomPwd;
    private int roomType;
    private int ruid;
    private int source;
    private int status;
    private String time;
    private long timestamp;
    private int uid;
    private boolean vip;
    private int state = 1;
    private String action = "";

    public static class MemberTitle {
        private String battleTitle;
        private String battleTitleColor;
        private int level;

        public String getBattleTitle() {
            return this.battleTitle;
        }

        public String getBattleTitleColor() {
            return this.battleTitleColor;
        }

        public int getLevel() {
            return this.level;
        }

        public void setBattleTitle(String battleTitle) {
            this.battleTitle = battleTitle;
        }

        public void setBattleTitleColor(String battleTitleColor) {
            this.battleTitleColor = battleTitleColor;
        }

        public void setLevel(int level) {
            this.level = level;
        }
    }

    public String getAccount() {
        return this.account;
    }

    public String getAction() {
        return this.action;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getFriendRequestType() {
        return this.friendRequestType;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGameName() {
        return this.gameName;
    }

    public int getId() {
        return this.f68055id;
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

    public String getMessage() {
        return this.message;
    }

    public String getNickName() {
        return this.nickName;
    }

    public GameLevelBean getPlayGameLevel() {
        return this.playGameLevel;
    }

    public int getPlayType() {
        return this.playType;
    }

    public int getReadFlag() {
        return this.readFlag;
    }

    public String getRequestIfo() {
        return this.requestIfo;
    }

    public int getRoomId() {
        return this.roomId;
    }

    public String getRoomPwd() {
        return this.roomPwd;
    }

    public int getRoomType() {
        return this.roomType;
    }

    public int getRuid() {
        return this.ruid;
    }

    public int getSource() {
        return this.source;
    }

    public int getState() {
        return this.state;
    }

    public int getStatus() {
        return this.status;
    }

    public String getTime() {
        return this.time;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public int getUid() {
        return this.uid;
    }

    public boolean isBanned() {
        return this.banned;
    }

    public boolean isElite() {
        return this.elite;
    }

    public boolean isRecommend() {
        return this.isRecommend;
    }

    public boolean isVip() {
        return this.vip;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setBanned(boolean banned) {
        this.banned = banned;
    }

    public void setElite(boolean elite) {
        this.elite = elite;
    }

    public void setFriendRequestType(String friendRequestType) {
        this.friendRequestType = friendRequestType;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public void setId(int id2) {
        this.f68055id = id2;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public void setLevelName(String levelName) {
        this.levelName = levelName;
    }

    public void setMemberTitle(MemberTitle memberTitle) {
        this.memberTitle = memberTitle;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public void setPlayGameLevel(GameLevelBean playGameLevel) {
        this.playGameLevel = playGameLevel;
    }

    public void setPlayType(int playType) {
        this.playType = playType;
    }

    public void setReadFlag(int readFlag) {
        this.readFlag = readFlag;
    }

    public void setRecommend(boolean recommend) {
        this.isRecommend = recommend;
    }

    public void setRequestIfo(String requestIfo) {
        this.requestIfo = requestIfo;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public void setRoomPwd(String roomPwd) {
        this.roomPwd = roomPwd;
    }

    public void setRoomType(int roomType) {
        this.roomType = roomType;
    }

    public void setRuid(int ruid) {
        this.ruid = ruid;
    }

    public void setSource(int source) {
        this.source = source;
    }

    public void setState(int state) {
        this.state = state;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setTimestamp(long timestamp) {
        this.timestamp = timestamp;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setVip(boolean vip) {
        this.vip = vip;
    }
}
