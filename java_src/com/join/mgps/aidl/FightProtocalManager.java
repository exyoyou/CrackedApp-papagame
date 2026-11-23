package com.join.mgps.aidl;

import android.os.Build;
import com.join.android.app.common.utils.JsonMapper;

/* JADX INFO: loaded from: classes3.dex */
public class FightProtocalManager {
    static JsonMapper jsonMapper = JsonMapper.getInstance();
    public static byte ackSignal = -1;

    public static String ackDisconnect(FightProtocal protocal) {
        FightProtocal fightProtocal = new FightProtocal();
        byte no = (byte) (protocal.getNo() + 1);
        ackSignal = no;
        fightProtocal.setNo(no);
        fightProtocal.setType(FightProtocal.TYPE_AckDISCONNECT);
        return jsonMapper.toJson(fightProtocal);
    }

    public static boolean ackReceivedSignal(FightProtocal protocal) {
        return protocal.getNo() == ackSignal + 1;
    }

    public static String ackSignal(String gameId, String gameName, String opponent) {
        FightProtocal fightProtocal = new FightProtocal();
        ackSignal = (byte) (Math.random() * 100.0d);
        fightProtocal.setGameId(gameId);
        fightProtocal.setGameName(gameName);
        fightProtocal.setNo(ackSignal);
        fightProtocal.setType(FightProtocal.TYPE_ACK);
        fightProtocal.setBrand(Build.BRAND);
        fightProtocal.setOpponent(opponent);
        return jsonMapper.toJson(fightProtocal);
    }

    public static String ackSignalClient(FightProtocal fightProtocal) {
        fightProtocal.setNo((byte) (fightProtocal.getNo() + 1));
        byte no = fightProtocal.getNo();
        ackSignal = no;
        fightProtocal.setNo(no);
        fightProtocal.setType(FightProtocal.TYPE_ACK);
        fightProtocal.setBrand(Build.BRAND);
        return jsonMapper.toJson(fightProtocal);
    }

    public static String ackSync() {
        FightProtocal fightProtocal = new FightProtocal();
        fightProtocal.setType(FightProtocal.TYPE_SYNC);
        return jsonMapper.toJson(fightProtocal);
    }

    public static String disconnect() {
        FightProtocal fightProtocal = new FightProtocal();
        byte bRandom = (byte) (Math.random() * 100.0d);
        ackSignal = bRandom;
        fightProtocal.setNo(bRandom);
        fightProtocal.setType(FightProtocal.TYPE_DISCONNECT);
        return jsonMapper.toJson(fightProtocal);
    }

    public static String startGame() {
        FightProtocal fightProtocal = new FightProtocal();
        fightProtocal.setType(FightProtocal.TYPE_STARTGAME);
        return jsonMapper.toJson(fightProtocal);
    }
}
