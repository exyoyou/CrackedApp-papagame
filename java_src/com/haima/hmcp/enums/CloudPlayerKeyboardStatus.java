package com.haima.hmcp.enums;

/* JADX INFO: loaded from: classes5.dex */
public enum CloudPlayerKeyboardStatus {
    CLOUD_PLAYER_KEYBOARD_STATUS_NONE(-1),
    CLOUD_PLAYER_KEYBOARD_STATUS_SHOW(0),
    CLOUD_PLAYER_KEYBOARD_STATUS_HIDE(1);

    private int status;

    CloudPlayerKeyboardStatus(int i10) {
        this.status = i10;
    }

    public int getStatus() {
        return this.status;
    }
}
