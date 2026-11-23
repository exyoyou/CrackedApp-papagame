package com.join.mgps.dto;

import com.wufan.friend.chat.protocol.GameInviteNotification;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class FriendInviteBean implements Serializable {
    private int accountId;
    private String avatar;
    private boolean eliteField;
    private int fromAccountId;
    private String fromNickname;
    private long gameId;
    private String gameName;
    private int lobbyRoomId;
    private String roomPasswd;
    private int source;
    private long timestamp;

    public int getAccountId() {
        return this.accountId;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public int getFromAccountId() {
        return this.fromAccountId;
    }

    public String getFromNickname() {
        return this.fromNickname;
    }

    public long getGameId() {
        return this.gameId;
    }

    public String getGameName() {
        return this.gameName;
    }

    public int getLobbyRoomId() {
        return this.lobbyRoomId;
    }

    public String getRoomPasswd() {
        return this.roomPasswd;
    }

    public int getSource() {
        return this.source;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public boolean isEliteField() {
        return this.eliteField;
    }

    public void set(GameInviteNotification notification) {
        if (notification == null) {
            return;
        }
        this.fromAccountId = notification.getFromAccountId();
        this.accountId = notification.getAccountId();
        this.fromNickname = notification.getFromNickname();
        this.lobbyRoomId = (int) notification.getLobbyRoomId();
        this.gameId = notification.getGameId();
        this.avatar = notification.getAvatar();
        this.gameName = notification.getGameName();
        this.roomPasswd = notification.getRoomPasswd();
        this.eliteField = notification.getEliteField();
        this.source = notification.getSource();
        this.timestamp = System.currentTimeMillis();
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setEliteField(boolean eliteField) {
        this.eliteField = eliteField;
    }

    public void setFromAccountId(int fromAccountId) {
        this.fromAccountId = fromAccountId;
    }

    public void setFromNickname(String fromNickname) {
        this.fromNickname = fromNickname;
    }

    public void setGameId(long gameId) {
        this.gameId = gameId;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public void setLobbyRoomId(int lobbyRoomId) {
        this.lobbyRoomId = lobbyRoomId;
    }

    public void setRoomPasswd(String roomPasswd) {
        this.roomPasswd = roomPasswd;
    }

    public void setSource(int source) {
        this.source = source;
    }

    public void setTimestamp(long timestamp) {
        this.timestamp = timestamp;
    }
}
