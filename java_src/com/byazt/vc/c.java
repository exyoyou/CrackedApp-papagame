package com.byazt.vc;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.byazt.ga.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AVFORMAT_OPEN_TIME, 20})
public class c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f21164a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final T f21165c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final a f21166da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PointF f21167i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f21168m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Interpolator f21169n;
    public float sl;
    public Float sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f21170t;
    public T tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f21171u;
    public final Interpolator uj;
    public final Interpolator ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public PointF f21172x;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f21173z;

    public c(a aVar, T t10, T t11, Interpolator interpolator, float f10, Float f11) {
        this.sl = -3987645.8f;
        this.f21170t = -3987645.8f;
        this.f21171u = 784923401;
        this.yp = 784923401;
        this.f21173z = Float.MIN_VALUE;
        this.f21168m = Float.MIN_VALUE;
        this.f21172x = null;
        this.f21167i = null;
        this.f21166da = aVar;
        this.f21165c = t10;
        this.tt = t11;
        this.ve = interpolator;
        this.uj = null;
        this.f21169n = null;
        this.f21164a = f10;
        this.sp = f11;
    }

    public float a() {
        if (this.sl == -3987645.8f) {
            this.sl = ((Float) this.f21165c).floatValue();
        }
        return this.sl;
    }

    public c<T> c(T t10, T t11) {
        return new c<>(t10, t11);
    }

    public int i() {
        if (this.yp == 784923401) {
            this.yp = ((Integer) this.tt).intValue();
        }
        return this.yp;
    }

    public boolean n() {
        return this.ve == null && this.uj == null && this.f21169n == null;
    }

    public float sp() {
        if (this.f21170t == -3987645.8f) {
            this.f21170t = ((Float) this.tt).floatValue();
        }
        return this.f21170t;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.f21165c + ", endValue=" + this.tt + ", startFrame=" + this.f21164a + ", endFrame=" + this.sp + ", interpolator=" + this.ve + '}';
    }

    public float uj() {
        if (this.f21166da == null) {
            return 1.0f;
        }
        if (this.f21168m == Float.MIN_VALUE) {
            if (this.sp == null) {
                this.f21168m = 1.0f;
            } else {
                this.f21168m = ve() + ((this.sp.floatValue() - this.f21164a) / this.f21166da.rh());
            }
        }
        return this.f21168m;
    }

    public float ve() {
        a aVar = this.f21166da;
        if (aVar == null) {
            return 0.0f;
        }
        if (this.f21173z == Float.MIN_VALUE) {
            this.f21173z = (this.f21164a - aVar.a()) / this.f21166da.rh();
        }
        return this.f21173z;
    }

    public int x() {
        if (this.f21171u == 784923401) {
            this.f21171u = ((Integer) this.f21165c).intValue();
        }
        return this.f21171u;
    }

    public boolean c(float f10) {
        return f10 >= ve() && f10 < uj();
    }

    public c(a aVar, T t10, T t11, Interpolator interpolator, Interpolator interpolator2, float f10, Float f11) {
        this.sl = -3987645.8f;
        this.f21170t = -3987645.8f;
        this.f21171u = 784923401;
        this.yp = 784923401;
        this.f21173z = Float.MIN_VALUE;
        this.f21168m = Float.MIN_VALUE;
        this.f21172x = null;
        this.f21167i = null;
        this.f21166da = aVar;
        this.f21165c = t10;
        this.tt = t11;
        this.ve = null;
        this.uj = interpolator;
        this.f21169n = interpolator2;
        this.f21164a = f10;
        this.sp = f11;
    }

    public c(a aVar, T t10, T t11, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f10, Float f11) {
        this.sl = -3987645.8f;
        this.f21170t = -3987645.8f;
        this.f21171u = 784923401;
        this.yp = 784923401;
        this.f21173z = Float.MIN_VALUE;
        this.f21168m = Float.MIN_VALUE;
        this.f21172x = null;
        this.f21167i = null;
        this.f21166da = aVar;
        this.f21165c = t10;
        this.tt = t11;
        this.ve = interpolator;
        this.uj = interpolator2;
        this.f21169n = interpolator3;
        this.f21164a = f10;
        this.sp = f11;
    }

    public c(T t10) {
        this.sl = -3987645.8f;
        this.f21170t = -3987645.8f;
        this.f21171u = 784923401;
        this.yp = 784923401;
        this.f21173z = Float.MIN_VALUE;
        this.f21168m = Float.MIN_VALUE;
        this.f21172x = null;
        this.f21167i = null;
        this.f21166da = null;
        this.f21165c = t10;
        this.tt = t10;
        this.ve = null;
        this.uj = null;
        this.f21169n = null;
        this.f21164a = Float.MIN_VALUE;
        this.sp = Float.valueOf(Float.MAX_VALUE);
    }

    private c(T t10, T t11) {
        this.sl = -3987645.8f;
        this.f21170t = -3987645.8f;
        this.f21171u = 784923401;
        this.yp = 784923401;
        this.f21173z = Float.MIN_VALUE;
        this.f21168m = Float.MIN_VALUE;
        this.f21172x = null;
        this.f21167i = null;
        this.f21166da = null;
        this.f21165c = t10;
        this.tt = t11;
        this.ve = null;
        this.uj = null;
        this.f21169n = null;
        this.f21164a = Float.MIN_VALUE;
        this.sp = Float.valueOf(Float.MAX_VALUE);
    }
}
