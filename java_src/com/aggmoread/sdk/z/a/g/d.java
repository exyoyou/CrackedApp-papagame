package com.aggmoread.sdk.z.a.g;

import com.sigmob.sdk.base.models.ClickCommon;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3421c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3422d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3423e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3424f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f3425g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f3426h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f3427i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3428j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f3429k = ClickCommon.CLICK_AREA_MATERIAL;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3430l = -999;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3431m = -999;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3432n = -999;

    public void a(float[] fArr) {
        if (fArr == null || fArr.length < 3) {
            return;
        }
        this.f3430l = (int) (fArr[0] * 100.0f);
        this.f3431m = (int) (fArr[1] * 100.0f);
        this.f3432n = (int) (fArr[2] * 100.0f);
    }

    public String toString() {
        return "JuHeApiAdUrlDefine{downX=" + this.f3419a + ", downY=" + this.f3420b + ", upX=" + this.f3421c + ", upY=" + this.f3422d + ", viewWidth=" + this.f3423e + ", viewHeight=" + this.f3424f + ", eventStartTime=" + this.f3425g + ", eventEndTime=" + this.f3426h + ", accX=" + this.f3430l + ", accY=" + this.f3431m + ", accZ=" + this.f3432n + ", clickId='" + this.f3427i + "'}";
    }
}
