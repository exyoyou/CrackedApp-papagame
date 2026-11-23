package com.windmill.sdk.banner.animation;

/* JADX INFO: loaded from: classes8.dex */
public enum h {
    NONE,
    RANDOM,
    FADE,
    PUSH,
    MOVEIN,
    REVEAL;

    public static h a(int i10) {
        for (h hVar : values()) {
            if (hVar.ordinal() == i10) {
                return hVar;
            }
        }
        return NONE;
    }
}
