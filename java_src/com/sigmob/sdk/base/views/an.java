package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class an extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f79923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Path f79924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f79925c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RectF f79926d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RectF f79927e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RectF f79928f;

    public an(Context context) {
        super(context);
    }

    private void a() {
        this.f79923a = new Paint();
        this.f79924b = new Path();
        float fDipsToIntPixels = Dips.dipsToIntPixels(1.0f, getContext());
        this.f79923a.setStrokeWidth(fDipsToIntPixels);
        this.f79925c = (int) ((getWidth() / (100.0f * fDipsToIntPixels)) * fDipsToIntPixels * 20.0f);
        int width = getWidth() - this.f79925c;
        int height = getHeight();
        this.f79923a.setStyle(Paint.Style.STROKE);
        this.f79923a.setColor(-1);
        this.f79923a.setAntiAlias(true);
        float f10 = height;
        float f11 = f10 / 2.2f;
        this.f79926d = new RectF(this.f79925c, f11, width / 2.0f, f10 - f11);
        float f12 = this.f79925c;
        RectF rectF = this.f79926d;
        this.f79927e = new RectF(f12, rectF.top, rectF.right, rectF.bottom);
        float fWidth = this.f79926d.right + this.f79927e.width();
        RectF rectF2 = this.f79926d;
        this.f79928f = new RectF(fWidth, rectF2.top, rectF2.right + rectF2.width() + this.f79927e.width(), this.f79926d.bottom);
    }

    private void b(Canvas canvas, RectF rectf) {
        this.f79924b.reset();
        this.f79923a.setColor(-1);
        this.f79923a.setStyle(Paint.Style.STROKE);
        this.f79924b.addArc(this.f79928f, 90.0f, -180.0f);
        canvas.drawPath(this.f79924b, this.f79923a);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a(canvas, this.f79926d);
        b(canvas, this.f79926d);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        a();
    }

    public an(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    private void a(Canvas canvas, RectF rectf) {
        this.f79924b.reset();
        this.f79923a.setColor(-1);
        this.f79923a.setStyle(Paint.Style.STROKE);
        this.f79924b.addArc(this.f79927e, 90.0f, 180.0f);
        canvas.drawPath(this.f79924b, this.f79923a);
    }

    public an(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
