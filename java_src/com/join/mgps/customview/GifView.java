package com.join.mgps.customview;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class GifView extends View {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f65054l = 1000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Movie f65055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65056c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f65057d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65058e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f65059f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65060g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65061h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f65062i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f65063j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f65064k;

    public GifView(Context context) {
        super(context);
        this.f65056c = 0;
        this.f65057d = 0L;
        this.f65058e = true;
        this.f65059f = true;
        this.f65060g = 0;
        this.f65061h = 0;
    }

    private void a(Canvas canvas) {
        this.f65055b.setTime(this.f65056c);
        canvas.save();
        float f10 = this.f65064k;
        canvas.scale(f10, f10);
        Movie movie = this.f65055b;
        float f11 = this.f65062i;
        float f12 = this.f65064k;
        movie.draw(canvas, f11 / f12, this.f65063j / f12);
        canvas.restore();
    }

    public void b() {
        if (this.f65058e) {
            postInvalidateOnAnimation();
        }
    }

    public void c(int resId) {
        if (resId != -1) {
            this.f65055b = Movie.decodeStream(getResources().openRawResource(resId));
        }
    }

    public void d() {
        if (this.f65059f) {
            return;
        }
        this.f65059f = true;
        invalidate();
    }

    public void e() {
        if (this.f65059f) {
            this.f65059f = false;
            this.f65057d = SystemClock.uptimeMillis() - ((long) this.f65056c);
            invalidate();
        }
    }

    public void f() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.f65057d == 0) {
            this.f65057d = jUptimeMillis;
        }
        int iDuration = this.f65055b.duration();
        if (iDuration == 0) {
            iDuration = 1000;
        }
        this.f65056c = (int) ((jUptimeMillis - this.f65057d) % ((long) iDuration));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f65055b != null) {
            if (this.f65059f) {
                a(canvas);
                return;
            }
            f();
            a(canvas);
            b();
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.f65062i = (getWidth() - this.f65060g) / 2.0f;
        this.f65063j = (getHeight() - this.f65061h) / 2.0f;
        this.f65058e = getVisibility() == 0;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size;
        int size2;
        Movie movie = this.f65055b;
        if (movie == null) {
            setMeasuredDimension(getSuggestedMinimumWidth(), getSuggestedMinimumHeight());
            return;
        }
        int iWidth = movie.width();
        int iHeight = this.f65055b.height();
        float fMax = 1.0f / Math.max((View.MeasureSpec.getMode(widthMeasureSpec) == 0 || iWidth <= (size2 = View.MeasureSpec.getSize(widthMeasureSpec))) ? 1.0f : iWidth / size2, (View.MeasureSpec.getMode(heightMeasureSpec) == 0 || iHeight <= (size = View.MeasureSpec.getSize(heightMeasureSpec))) ? 1.0f : iHeight / size);
        this.f65064k = fMax;
        int i10 = (int) (iWidth * fMax);
        this.f65060g = i10;
        int i11 = (int) (iHeight * fMax);
        this.f65061h = i11;
        setMeasuredDimension(i10, i11);
    }

    @Override // android.view.View
    @TargetApi(16)
    public void onScreenStateChanged(int screenState) {
        super.onScreenStateChanged(screenState);
        this.f65058e = screenState == 1;
        b();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        this.f65058e = visibility == 0;
        b();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        this.f65058e = visibility == 0;
        b();
    }

    public GifView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f65056c = 0;
        this.f65057d = 0L;
        this.f65058e = true;
        this.f65059f = true;
        this.f65060g = 0;
        this.f65061h = 0;
    }

    public GifView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65056c = 0;
        this.f65057d = 0L;
        this.f65058e = true;
        this.f65059f = true;
        this.f65060g = 0;
        this.f65061h = 0;
    }
}
