package com.cloudplay.messagesdk.socket;

/* JADX INFO: loaded from: classes9.dex */
public enum SocketType {
    LINK(1),
    WS_SERVER(2),
    LINK_WS_SERVER(3);

    private final int mType;

    SocketType(int i10) {
        this.mType = i10;
    }

    public int a() {
        return this.mType;
    }

    public static SocketType a(int i10) {
        if (i10 != 1) {
            return i10 != 2 ? LINK_WS_SERVER : WS_SERVER;
        }
        return LINK;
    }
}
