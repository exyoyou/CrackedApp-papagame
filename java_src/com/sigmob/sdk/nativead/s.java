package com.sigmob.sdk.nativead;

import android.content.Context;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.windad.natives.WindNativeAdData;

/* JADX INFO: loaded from: classes3.dex */
public class s extends m {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ac f81509g;

    public s(Context context) {
        super(context);
    }

    public void a(ac listener) {
        this.f81509g = listener;
    }

    @Override // com.sigmob.sdk.nativead.m
    public void c() {
        super.c();
        this.f81509g = null;
    }

    public void e() {
    }

    public e getAdConfig() {
        ac acVar = this.f81509g;
        if (acVar == null) {
            return null;
        }
        return acVar.y();
    }

    public BaseAdUnit getAdUnit() {
        ac acVar = this.f81509g;
        if (acVar == null) {
            return null;
        }
        return acVar.k();
    }

    public n getAppInfoView() {
        ac acVar = this.f81509g;
        if (acVar == null) {
            return null;
        }
        return acVar.m();
    }

    public WindNativeAdData getNativeAdUnit() {
        ac acVar = this.f81509g;
        if (acVar == null) {
            return null;
        }
        return acVar.l();
    }

    public double getVideoDuration() {
        return 0.0d;
    }

    public double getVideoProgress() {
        return 0.0d;
    }

    public void i() {
    }

    public void j() {
    }

    public void setUIStyle(j style) {
        this.f81440d = style;
    }
}
