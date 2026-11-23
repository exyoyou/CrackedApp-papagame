package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class PictureHProgress extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f65435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f65436c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f65437d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f65438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f65439f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f65440g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f65441h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    Bitmap f65442i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f65443j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f65444k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Paint f65445l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    Paint f65446m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    Paint f65447n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private PorterDuffXfermode f65448o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f65449p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f65450q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f65451r;

    public PictureHProgress(Context context) {
        this(context, null);
    }

    private void a(AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.PictureHProgress);
        this.f65435b = typedArrayObtainStyledAttributes.getColor(3, this.f65435b);
        this.f65436c = typedArrayObtainStyledAttributes.getColor(0, this.f65436c);
        this.f65437d = typedArrayObtainStyledAttributes.getResourceId(2, this.f65437d);
        this.f65438e = (int) typedArrayObtainStyledAttributes.getDimension(1, this.f65438e);
        this.f65439f = (int) typedArrayObtainStyledAttributes.getDimension(4, this.f65439f);
        this.f65440g = typedArrayObtainStyledAttributes.getInteger(6, this.f65440g);
        this.f65441h = typedArrayObtainStyledAttributes.getInteger(5, this.f65441h);
        typedArrayObtainStyledAttributes.recycle();
    }

    public int getProgress() {
        return this.f65440g;
    }

    @Override // android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, this.f65450q, this.f65451r, this.f65446m);
        int i10 = ((int) (this.f65438e * this.f65449p)) / 2;
        if (this.f65442i == null) {
            int i11 = i10 * 2;
            this.f65442i = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), this.f65437d), i11, i11, true);
        }
        int i12 = this.f65439f / 2;
        int i13 = this.f65450q - i10;
        int i14 = this.f65451r;
        float f10 = i10;
        float f11 = (i14 / 2) - i12;
        float f12 = (i14 / 2) + i12;
        float f13 = i12;
        canvas.drawRoundRect(new RectF(f10, f11, i13, f12), f13, f13, this.f65446m);
        this.f65445l.setXfermode(this.f65448o);
        canvas.drawRect(new RectF(f10, f11, (i13 * getProgress()) / this.f65441h, f12), this.f65445l);
        float width = ((this.f65450q - this.f65442i.getWidth()) * getProgress()) / this.f65441h;
        float f14 = (this.f65451r / 2) - i10;
        Bitmap bitmap = this.f65442i;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, width, f14, this.f65447n);
        }
        this.f65445l.setXfermode(null);
        canvas.restoreToCount(iSaveLayer);
    }

    @Override // android.view.View
    protected synchronized void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        this.f65450q = View.MeasureSpec.getSize(widthMeasureSpec);
        int iMax = Math.max(this.f65438e, this.f65439f);
        this.f65451r = iMax;
        setMeasuredDimension(this.f65450q, iMax);
    }

    public void setMaxProgress(int maxProgress) {
        this.f65441h = maxProgress;
    }

    public void setProgress(int progress) {
        int i10 = this.f65441h;
        if (progress > i10) {
            progress = i10;
        }
        this.f65440g = progress;
        postInvalidate();
    }

    public PictureHProgress(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PictureHProgress(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65435b = -1;
        this.f65436c = -3355444;
        this.f65437d = R.drawable.ic_progress_logo;
        this.f65438e = 56;
        this.f65439f = 25;
        this.f65440g = 0;
        this.f65441h = 100;
        this.f65442i = null;
        this.f65443j = 0;
        this.f65444k = 0;
        this.f65449p = 1.0f;
        a(attrs);
        setLayerType(1, null);
        this.f65448o = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
        Paint paint = new Paint();
        this.f65446m = paint;
        paint.setColor(this.f65436c);
        this.f65446m.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f65445l = paint2;
        paint2.setColor(this.f65435b);
        this.f65445l.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f65447n = paint3;
        paint3.setAntiAlias(true);
    }
}
