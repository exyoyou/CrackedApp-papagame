package com.qq.e.ads.hybrid;

/* JADX INFO: loaded from: classes2.dex */
public class HybridADSetting {
    public static final int TYPE_REWARD_VIDEO = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f78176f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f78177g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f78178h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f78171a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f78172b = 44;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f78173c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f78174d = -14013133;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f78175e = 16;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f78179i = -1776153;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f78180j = 16;

    public HybridADSetting backButtonImage(String str) {
        this.f78177g = str;
        return this;
    }

    public HybridADSetting backSeparatorLength(int i10) {
        this.f78180j = i10;
        return this;
    }

    public HybridADSetting closeButtonImage(String str) {
        this.f78178h = str;
        return this;
    }

    public String getBackButtonImage() {
        return this.f78177g;
    }

    public int getBackSeparatorLength() {
        return this.f78180j;
    }

    public String getCloseButtonImage() {
        return this.f78178h;
    }

    public int getSeparatorColor() {
        return this.f78179i;
    }

    public String getTitle() {
        return this.f78176f;
    }

    public int getTitleBarColor() {
        return this.f78173c;
    }

    public int getTitleBarHeight() {
        return this.f78172b;
    }

    public int getTitleColor() {
        return this.f78174d;
    }

    public int getTitleSize() {
        return this.f78175e;
    }

    public int getType() {
        return this.f78171a;
    }

    public HybridADSetting separatorColor(int i10) {
        this.f78179i = i10;
        return this;
    }

    public HybridADSetting title(String str) {
        this.f78176f = str;
        return this;
    }

    public HybridADSetting titleBarColor(int i10) {
        this.f78173c = i10;
        return this;
    }

    public HybridADSetting titleBarHeight(int i10) {
        this.f78172b = i10;
        return this;
    }

    public HybridADSetting titleColor(int i10) {
        this.f78174d = i10;
        return this;
    }

    public HybridADSetting titleSize(int i10) {
        this.f78175e = i10;
        return this;
    }

    public HybridADSetting type(int i10) {
        this.f78171a = i10;
        return this;
    }
}
