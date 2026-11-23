package com.join.mgps.aidl;

/* JADX INFO: loaded from: classes3.dex */
public class FightProtocal {
    public static byte TYPE_ACK = 0;
    public static byte TYPE_AckDISCONNECT = 2;
    public static byte TYPE_DISCONNECT = 1;
    public static byte TYPE_MISMATCH = 4;
    public static byte TYPE_STARTGAME = 3;
    public static byte TYPE_SYNC = 5;
    private String brand;
    private String gameId;
    private String gameName;
    private byte no;
    private String opponent;
    private byte type;

    public String getBrand() {
        return this.brand;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGameName() {
        return this.gameName;
    }

    public byte getNo() {
        return this.no;
    }

    public String getOpponent() {
        return this.opponent;
    }

    public byte getType() {
        return this.type;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public void setNo(byte no) {
        this.no = no;
    }

    public void setOpponent(String opponent) {
        this.opponent = opponent;
    }

    public void setType(byte type) {
        this.type = type;
    }
}
