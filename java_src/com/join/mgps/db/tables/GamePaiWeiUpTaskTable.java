package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GamePaiWeiUpTaskTable implements Serializable {

    @DatabaseField
    private int cost_coin;

    @DatabaseField
    private String filePath;

    @DatabaseField
    private String gameId;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67252id;

    @DatabaseField
    private String imagePath;

    @DatabaseField
    private boolean isUped;

    @DatabaseField
    private int numPlayers;

    @DatabaseField
    private String playId;

    @DatabaseField
    private long playTime;

    @DatabaseField
    private int rank_auto_upload;

    @DatabaseField
    private long rank_play_time;

    @DatabaseField
    private int recEndFlag;

    @DatabaseField
    private int recEndTime;

    @DatabaseField
    private int recStage;

    @DatabaseField
    private int role_id;

    @DatabaseField
    private String userId;

    public GamePaiWeiUpTaskTable() {
    }

    public int getCost_coin() {
        return this.cost_coin;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.f67252id;
    }

    public String getImagePath() {
        return this.imagePath;
    }

    public int getNumPlayers() {
        return this.numPlayers;
    }

    public String getPlayId() {
        return this.playId;
    }

    public long getPlayTime() {
        return this.playTime;
    }

    public int getRank_auto_upload() {
        return this.rank_auto_upload;
    }

    public long getRank_play_time() {
        return this.rank_play_time;
    }

    public int getRecEndFlag() {
        return this.recEndFlag;
    }

    public int getRecEndTime() {
        return this.recEndTime;
    }

    public int getRecStage() {
        return this.recStage;
    }

    public int getRole_id() {
        return this.role_id;
    }

    public String getUserId() {
        return this.userId;
    }

    public boolean isUped() {
        return this.isUped;
    }

    public void setCost_coin(int cost_coin) {
        this.cost_coin = cost_coin;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setId(int id2) {
        this.f67252id = id2;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public void setNumPlayers(int numPlayers) {
        this.numPlayers = numPlayers;
    }

    public void setPlayId(String playId) {
        this.playId = playId;
    }

    public void setPlayTime(long playTime) {
        this.playTime = playTime;
    }

    public void setRank_auto_upload(int rank_auto_upload) {
        this.rank_auto_upload = rank_auto_upload;
    }

    public void setRank_play_time(long rank_play_time) {
        this.rank_play_time = rank_play_time;
    }

    public void setRecEndFlag(int recEndFlag) {
        this.recEndFlag = recEndFlag;
    }

    public void setRecEndTime(int recEndTime) {
        this.recEndTime = recEndTime;
    }

    public void setRecStage(int recStage) {
        this.recStage = recStage;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public void setUped(boolean uped) {
        this.isUped = uped;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public GamePaiWeiUpTaskTable(String userId, String playId, String gameId, int numPlayers, String filePath, boolean isUped, long playTime) {
        setUserId(userId);
        setPlayId(playId);
        setGameId(gameId);
        setNumPlayers(numPlayers);
        setFilePath(filePath);
        setUped(isUped);
        setPlayTime(playTime);
    }

    public GamePaiWeiUpTaskTable(String userId, String playId, String gameId, int numPlayers, String filePath, boolean isUped, long playTime, int coin, int roleId, int rankAutoUpload, int rankTime) {
        setUserId(userId);
        setPlayId(playId);
        setGameId(gameId);
        setNumPlayers(numPlayers);
        setFilePath(filePath);
        setUped(isUped);
        setPlayTime(playTime);
        setCost_coin(coin);
        setRole_id(roleId);
        setRank_auto_upload(rankAutoUpload);
        setRank_play_time(rankTime);
    }
}
