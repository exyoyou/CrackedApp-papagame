package com.sigmob.sdk.base.common;

/* JADX INFO: loaded from: classes5.dex */
public enum n {
    CreativeTypeVideo_Tar(1),
    CreativeTypeImage(3),
    CreativeTypeVideo_Html_Snippet(4),
    CreativeTypeVideo_Tar_Companion(5),
    CreativeTypeVideo_transparent_html(6),
    CreativeTypeVideo_EndCardURL(7),
    CreativeTypeSplashVideo(8),
    CreativeTypeMRAID(9),
    CreativeTypeMRAIDTWO(10),
    CreativeTypeNewInterstitial(16);


    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f79207k;

    n(int type) {
        this.f79207k = type;
    }

    public int a() {
        return this.f79207k;
    }
}
