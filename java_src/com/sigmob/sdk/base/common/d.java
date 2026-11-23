package com.sigmob.sdk.base.common;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f79047a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f79048b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f79049c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f79050d = 4;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f79051e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f79052f = 6;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f79053g = 7;

    public static String a(int formatCode) {
        switch (formatCode) {
            case 1:
                return "REWARD_VIDEO";
            case 2:
                return "SPLASH";
            case 3:
                return "DRIFT";
            case 4:
                return "FULLSCREEN_VIDEO";
            case 5:
                return "UNIFIED_NATIVE";
            case 6:
                return "NEW_INTERSTITIAL";
            case 7:
                return "BANNER";
            default:
                return "UNKNOWN_AD_FORMAT";
        }
    }
}
