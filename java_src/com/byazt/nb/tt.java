package com.byazt.nb;

import android.graphics.PointF;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.ColorInt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ALGORITHM, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f17075a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f17076c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public float f17077da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ColorInt
    public int f17078i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f17079m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f17080n;
    public boolean sl;
    public float sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public PointF f17081t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public PointF f17082u;
    public c uj;
    public float ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @ColorInt
    public int f17083x;
    public n yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f17084z;

    public enum c {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public tt(String str, String str2, float f10, c cVar, int i10, float f11, float f12, @ColorInt int i11, @ColorInt int i12, float f13, boolean z10, PointF pointF, PointF pointF2, n nVar, String str3, String str4) {
        c(str, str2, f10, cVar, i10, f11, f12, i11, i12, f13, z10, pointF, pointF2, nVar, str3, str4);
    }

    public void c(String str, String str2, float f10, c cVar, int i10, float f11, float f12, @ColorInt int i11, @ColorInt int i12, float f13, boolean z10, PointF pointF, PointF pointF2, n nVar, String str3, String str4) {
        this.f17076c = str;
        this.tt = str2;
        this.ve = f10;
        this.uj = cVar;
        this.f17080n = i10;
        this.f17075a = f11;
        this.sp = f12;
        this.f17083x = i11;
        this.f17078i = i12;
        this.f17077da = f13;
        this.sl = z10;
        this.f17081t = pointF;
        this.f17082u = pointF2;
        this.yp = nVar;
        this.f17084z = str3;
        this.f17079m = str4;
    }

    public int hashCode() {
        int iHashCode = (((((int) ((((this.f17076c.hashCode() * 31) + this.tt.hashCode()) * 31) + this.ve)) * 31) + this.uj.ordinal()) * 31) + this.f17080n;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.f17075a);
        int i10 = ((((iHashCode * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.f17083x) * 31;
        n nVar = this.yp;
        return ((i10 + nVar.f17073c) * 31) + nVar.tt;
    }

    public tt() {
        this.yp = new n();
    }
}
