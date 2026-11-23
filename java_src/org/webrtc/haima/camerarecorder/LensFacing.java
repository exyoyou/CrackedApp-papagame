package org.webrtc.haima.camerarecorder;

import android.annotation.SuppressLint;

/* JADX INFO: loaded from: classes10.dex */
@SuppressLint({"InlinedApi"})
public enum LensFacing {
    FRONT(0),
    BACK(1);

    private int facing;

    LensFacing(int i10) {
        this.facing = i10;
    }

    public int getFacing() {
        return this.facing;
    }
}
