package com.aggmoread.sdk.z.a.u;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;

/* JADX INFO: loaded from: classes7.dex */
public class n extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f4169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4171c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4172d;

    public n(Context context) {
        this(context, null);
    }

    private void a() {
        Paint paint = new Paint();
        this.f4169a = paint;
        paint.setDither(true);
        this.f4169a.setAntiAlias(true);
        this.f4169a.setStrokeWidth(10.0f);
        this.f4169a.setColor(SupportMenu.CATEGORY_MASK);
    }

    public void b(int i10) {
        this.f4172d = i10;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawRect(0.0f, 0.0f, (this.f4170b * this.f4172d) / 100, this.f4171c, this.f4169a);
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        this.f4170b = i10;
        this.f4171c = i11;
        super.onSizeChanged(i10, i11, i12, i13);
    }

    public n(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void a(int i10) {
        this.f4169a.setColor(i10);
    }

    public n(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a();
    }
}
