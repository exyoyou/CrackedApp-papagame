package com.join.mgps.ptr.header;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class b extends Drawable implements Animatable {
    private static final float A = 0.65f;
    private static final float B = 1.05f;
    private static final float C = 0.22f;
    private static final float D = 1.2f;
    private static final float E = 1.3f;
    private static final float F = 0.75f;
    private static final float G = 1.2f;
    private static final float H = 1.5f;
    private static final Interpolator I = new LinearInterpolator();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final float f72119y = 0.3f;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f72120z = 1000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f72121b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Animation f72123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f72124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f72125f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f72126g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f72127h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f72128i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f72129j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f72130k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f72131l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f72132m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f72134o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f72135p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Bitmap f72138s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Bitmap f72139t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Bitmap f72140u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Context f72142w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f72143x;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f72133n = 100;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f72136q = 0.0f;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f72137r = 0.0f;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f72141v = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Matrix f72122c = new Matrix();

    class a extends Animation {
        a() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float interpolatedTime, Transformation t10) {
            b.this.j(interpolatedTime);
        }
    }

    public b(Context context, View parent) {
        this.f72142w = context;
        this.f72121b = parent;
        f();
        a();
        k();
    }

    private void a() {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.rentals_sky);
        this.f72138s = bitmapDecodeResource;
        this.f72138s = Bitmap.createScaledBitmap(bitmapDecodeResource, this.f72125f, this.f72126g, true);
        Bitmap bitmapDecodeResource2 = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.about_papa_icon);
        this.f72140u = bitmapDecodeResource2;
        int i10 = this.f72125f;
        this.f72140u = Bitmap.createScaledBitmap(bitmapDecodeResource2, i10, (int) (i10 * C), true);
        Bitmap bitmapDecodeResource3 = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.rentals_sun);
        this.f72139t = bitmapDecodeResource3;
        int i11 = this.f72133n;
        this.f72139t = Bitmap.createScaledBitmap(bitmapDecodeResource3, i11, i11, true);
    }

    private void b(Canvas canvas) {
        Matrix matrix = this.f72122c;
        matrix.reset();
        int iMax = Math.max(0, this.f72124e - this.f72143x);
        float fMin = Math.min(1.0f, Math.abs(this.f72136q));
        float f10 = fMin - f72119y;
        float f11 = B;
        if (f10 > 0.0f) {
            f11 = B - ((f10 / 0.7f) * 0.049999952f);
        }
        int i10 = this.f72125f;
        float f12 = (((iMax + 50) + this.f72127h) - ((this.f72126g * (f11 - 1.0f)) / 2.0f)) + (this.f72128i * fMin);
        matrix.postScale(f11, f11);
        matrix.postTranslate((-((i10 * f11) - i10)) / 2.0f, f12);
        canvas.drawBitmap(this.f72138s, matrix, null);
    }

    private void c(Canvas canvas) {
        float f10;
        float f11;
        Matrix matrix = this.f72122c;
        matrix.reset();
        float f12 = this.f72136q;
        if (f12 > 1.0f) {
            f12 = (f12 + 9.0f) / 10.0f;
        }
        float f13 = this.f72133n / 2.0f;
        float f14 = this.f72134o;
        float f15 = this.f72135p + ((this.f72143x / 2) * (1.0f - f12));
        float f16 = f12 - f72119y;
        float f17 = 1.2f;
        if (f16 > 0.0f) {
            float f18 = f16 / 0.7f;
            float f19 = 1.0f - (0.25f * f18);
            f17 = 1.2f + (f18 * 0.29999995f);
            float f20 = f13 * f19;
            float f21 = f15 * (2.0f - f19);
            matrix.preTranslate((f13 - f20) + f14, f21);
            matrix.preScale(f19, f19);
            f10 = f14 + f13;
            f11 = f21 + f20;
        } else {
            matrix.postTranslate(f14, f15);
            f10 = f14 + f13;
            f11 = f15 + f13;
        }
        boolean z10 = this.f72141v;
        matrix.postRotate((z10 ? -360 : MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL) * this.f72137r * (z10 ? 1.0f : f17), f10, f11);
        canvas.drawBitmap(this.f72139t, matrix, null);
    }

    private void d(Canvas canvas) {
        float f10;
        float f11;
        Matrix matrix = this.f72122c;
        matrix.reset();
        int iMax = Math.max(0, this.f72124e - this.f72143x);
        float fMin = Math.min(1.0f, Math.abs(this.f72136q));
        float f12 = fMin - f72119y;
        float f13 = 1.2f;
        if (f12 > 0.0f) {
            float f14 = f12 / 0.7f;
            f13 = 1.2f + (0.099999905f * f14);
            float f15 = this.f72130k;
            f11 = f15 - ((this.f72131l - f15) * f14);
            f10 = this.f72132m * (1.0f - f14);
        } else {
            float f16 = fMin / f72119y;
            float f17 = this.f72130k;
            f10 = f16 * this.f72132m;
            f11 = f17;
        }
        int i10 = this.f72125f;
        float f18 = ((iMax + f11) - ((this.f72129j * (f13 - 1.0f)) / 2.0f)) + f10;
        matrix.postScale(f13, f13);
        matrix.postTranslate((-((i10 * f13) - i10)) / 2.0f, f18);
        canvas.drawBitmap(this.f72140u, matrix, null);
    }

    private void f() {
        z6.b.c(this.f72142w);
        this.f72143x = z6.b.b(120.0f);
        int i10 = getContext().getResources().getDisplayMetrics().widthPixels;
        this.f72125f = i10;
        int i11 = (int) (i10 * A);
        this.f72126g = i11;
        this.f72127h = -(i11 * 0.28f);
        this.f72128i = z6.b.a(15.0f);
        int i12 = (int) (this.f72125f * C);
        this.f72129j = i12;
        int i13 = this.f72143x;
        this.f72130k = (i13 - (i12 * 1.2f)) + (i13 * 0.42f);
        this.f72131l = (i13 - (i12 * E)) + (i13 * 0.42f);
        this.f72132m = z6.b.a(10.0f);
        this.f72134o = this.f72125f * f72119y;
        this.f72135p = this.f72143x * 0.5f;
        this.f72124e = 0;
    }

    private Context getContext() {
        return this.f72142w;
    }

    private void k() {
        a aVar = new a();
        this.f72123d = aVar;
        aVar.setRepeatCount(-1);
        this.f72123d.setRepeatMode(1);
        this.f72123d.setInterpolator(I);
        this.f72123d.setDuration(1000L);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int iSave = canvas.save();
        canvas.translate(0.0f, this.f72143x - this.f72124e);
        b(canvas);
        c(canvas);
        d(canvas);
        canvas.restoreToCount(iSave);
    }

    public int e() {
        return this.f72143x;
    }

    public void g(int offset) {
        this.f72124e = offset;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void h() {
        i(0.0f);
        j(0.0f);
    }

    public void i(float percent) {
        this.f72136q = percent;
        j(percent);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return false;
    }

    public void j(float rotate) {
        this.f72137r = rotate;
        this.f72121b.invalidate();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int left, int top, int right, int bottom) {
        super.setBounds(left, top, right, this.f72126g + top);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f72123d.reset();
        this.f72141v = true;
        this.f72121b.startAnimation(this.f72123d);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f72121b.clearAnimation();
        this.f72141v = false;
        h();
    }
}
