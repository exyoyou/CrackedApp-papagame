package com.sigmob.sdk.videoAd;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class f implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f81805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f81806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.sigmob.sdk.base.views.l f81807c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f81808d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f81809e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f81810f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f81811g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f81812h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f81813i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private a f81814j;

    f(int width, int height, int actionType, String clickThroughUrl, String deepLinkUrl, com.sigmob.sdk.base.views.l creativeResource) {
        this.f81805a = width;
        this.f81806b = height;
        this.f81808d = actionType;
        this.f81811g = deepLinkUrl;
        this.f81810f = clickThroughUrl;
        this.f81807c = creativeResource;
    }

    public com.sigmob.sdk.base.views.l a() {
        return this.f81807c;
    }

    public void a(int duration) {
        this.f81812h = duration;
    }

    public void a(a videoConfig) {
        this.f81814j = videoConfig;
    }
}
