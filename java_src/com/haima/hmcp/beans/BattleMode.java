package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class BattleMode {
    public static final int CREATE_BATTLE = 1;
    public static final int IN_BATTLE = 3;
    public static final int JOIN_BATTLE = 2;
    public static final int JOIN_PLAYER = 2;
    public static final String LOG_KEY = "tv_battle->";
    public static final int MASTER_PLAYER = 1;
    public static final int NONE_PLAYER = 0;
    public static final int OUT_BATTLE = 4;
    public Battle battle;
    public int player = 0;

    public void reset() {
        this.player = 0;
        this.battle = new Battle();
    }

    public String toString() {
        return "BattleMode{player=" + this.player + ", battle=" + this.battle + '}';
    }
}
