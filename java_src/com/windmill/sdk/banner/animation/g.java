package com.windmill.sdk.banner.animation;

/* JADX INFO: loaded from: classes8.dex */
public enum g {
    UP,
    DOWN,
    RIGHT,
    LEFT;

    public static g a(int i10) {
        for (g gVar : values()) {
            if (gVar.ordinal() == i10) {
                return gVar;
            }
        }
        return UP;
    }
}
