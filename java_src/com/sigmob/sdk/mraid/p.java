package com.sigmob.sdk.mraid;

/* JADX INFO: loaded from: classes3.dex */
public enum p {
    PORTRAIT(1),
    LANDSCAPE(0),
    NONE(-1);


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f81058d;

    p(final int activityInfoOrientation) {
        this.f81058d = activityInfoOrientation;
    }

    public int a() {
        return this.f81058d;
    }
}
