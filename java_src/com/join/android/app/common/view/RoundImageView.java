package com.join.android.app.common.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes5.dex */
public class RoundImageView extends ImageView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f34858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f34859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Paint f34860d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f34861e;

    public RoundImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f34858b = new RectF();
        this.f34859c = 6.0f;
        this.f34860d = new Paint();
        this.f34861e = new Paint();
        a();
    }

    private void a() {
        this.f34860d.setAntiAlias(true);
        this.f34860d.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f34861e.setAntiAlias(true);
        this.f34861e.setColor(-1);
        this.f34859c *= getResources().getDisplayMetrics().density;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.f34858b, this.f34861e, 31);
        RectF rectF = this.f34858b;
        float f10 = this.f34859c;
        canvas.drawRoundRect(rectF, f10, f10, this.f34861e);
        canvas.saveLayer(this.f34858b, this.f34860d, 31);
        super.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.f34858b.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public RoundImageView(Context context) {
        super(context);
        this.f34858b = new RectF();
        this.f34859c = 6.0f;
        this.f34860d = new Paint();
        this.f34861e = new Paint();
        a();
    }
}
