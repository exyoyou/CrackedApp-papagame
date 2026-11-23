package com.join.mgps.dto;

import com.join.android.app.common.utils.JsonMapper;

/* JADX INFO: loaded from: classes3.dex */
public class NetBattleStartGameDto {
    private int RoomMode;
    private String area;
    private String clientIp;
    private String gameID;
    private int gamePlayers;
    private int gameype;
    private int groupId;
    private int netPlayers;
    private int oldGame;
    private boolean openBattleScore;
    private String p1Name;
    private String p2Name;
    private int porder;
    private String result_show_type;
    private String roomID;
    private String serverIP;
    private int serverPort;
    private int tcptype;
    private String udpIP;
    private int udpport;
    private String userID;
    private String userIcon;
    private String userName;
    private boolean allowPeripheralJoin = true;
    private boolean allowPCJoin = true;

    public String getArea() {
        return this.area;
    }

    public String getClientIp() {
        return this.clientIp;
    }

    public String getGameID() {
        return this.gameID;
    }

    public int getGamePlayers() {
        return this.gamePlayers;
    }

    public int getGameype() {
        return this.gameype;
    }

    public int getGroupId() {
        return this.groupId;
    }

    public int getNetPlayers() {
        return this.netPlayers;
    }

    public int getOldGame() {
        return this.oldGame;
    }

    public String getP1Name() {
        return this.p1Name;
    }

    public String getP2Name() {
        return this.p2Name;
    }

    public int getPorder() {
        return this.porder;
    }

    public String getResult_show_type() {
        return this.result_show_type;
    }

    public String getRoomID() {
        return this.roomID;
    }

    public int getRoomMode() {
        return this.RoomMode;
    }

    public String getServerIP() {
        return this.serverIP;
    }

    public int getServerPort() {
        return this.serverPort;
    }

    public int getTcptype() {
        return this.tcptype;
    }

    public String getUdpIP() {
        return this.udpIP;
    }

    public int getUdpport() {
        return this.udpport;
    }

    public String getUserID() {
        return this.userID;
    }

    public String getUserIcon() {
        return this.userIcon;
    }

    public String getUserName() {
        return this.userName;
    }

    public boolean isAllowPCJoin() {
        return this.allowPCJoin;
    }

    public boolean isAllowPeripheralJoin() {
        return this.allowPeripheralJoin;
    }

    public boolean isOpenBattleScore() {
        return this.openBattleScore;
    }

    public void setAllowPCJoin(boolean allowPCJoin) {
        this.allowPCJoin = allowPCJoin;
    }

    public void setAllowPeripheralJoin(boolean allowPeripheralJoin) {
        this.allowPeripheralJoin = allowPeripheralJoin;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public void setClientIp(String clientIp) {
        this.clientIp = clientIp;
    }

    public void setGameID(String gameID) {
        this.gameID = gameID;
    }

    public void setGamePlayers(int gamePlayers) {
        this.gamePlayers = gamePlayers;
    }

    public void setGameype(int gameype) {
        this.gameype = gameype;
    }

    public void setGroupId(int groupId) {
        this.groupId = groupId;
    }

    public void setNetPlayers(int netPlayers) {
        this.netPlayers = netPlayers;
    }

    public void setOldGame(int oldGame) {
        this.oldGame = oldGame;
    }

    public void setOpenBattleScore(boolean openBattleScore) {
        this.openBattleScore = openBattleScore;
    }

    public void setP1Name(String p1Name) {
        this.p1Name = p1Name;
    }

    public void setP2Name(String p2Name) {
        this.p2Name = p2Name;
    }

    public void setPorder(int porder) {
        this.porder = porder;
    }

    public void setResult_show_type(String result_show_type) {
        this.result_show_type = result_show_type;
    }

    public void setRoomID(String roomID) {
        this.roomID = roomID;
    }

    public void setRoomMode(int roomMode) {
        this.RoomMode = roomMode;
    }

    public void setServerIP(String serverIP) {
        this.serverIP = serverIP;
    }

    public void setServerPort(int serverPort) {
        this.serverPort = serverPort;
    }

    public void setTcptype(int tcptype) {
        this.tcptype = tcptype;
    }

    public void setUdpIP(String udpIP) {
        this.udpIP = udpIP;
    }

    public void setUdpport(int udpport) {
        this.udpport = udpport;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public void setUserIcon(String userIcon) {
        this.userIcon = userIcon;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String toString() {
        return JsonMapper.getInstance().toJson(this);
    }
}
