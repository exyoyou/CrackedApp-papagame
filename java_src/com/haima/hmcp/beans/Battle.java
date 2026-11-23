package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class Battle implements Serializable {
    public static final int GAME_PAD1 = 1;
    public static final int GAME_PAD2 = 2;
    public static final int GAME_PAD_UNKNOW = 0;
    public static final int LOCAL_BATTLE = 2;
    public static final int NETWORK_BATTLE = 1;
    public static final int NONE_BATTLE = 0;
    public int mode = 0;
    public int gamePad = 0;

    public String toString() {
        return "Battle{mode=" + this.mode + ", gamePad=" + this.gamePad + '}';
    }
}
