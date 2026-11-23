package com.sigmob.sdk.base;

/* JADX INFO: loaded from: classes5.dex */
public enum c {
    ImageTypeUnknow(0),
    ImageTypeJPEG(1),
    ImageTypePNG(2),
    ImageTypeGIF(3),
    SMImageTypeWEBP(4),
    ImageTypeMP4(5);


    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f78846g;

    c(int type) {
        this.f78846g = type;
    }

    public int a() {
        return this.f78846g;
    }
}
