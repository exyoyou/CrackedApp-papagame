package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import tc.b;

/* JADX INFO: loaded from: classes.dex */
public class ClipPagerTitleView extends View implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f94863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f94864c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f94865d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f94866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f94867f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f94868g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Rect f94869h;

    public ClipPagerTitleView(Context context) {
        super(context);
        this.f94869h = new Rect();
        e(context);
    }

    private void e(Context context) {
        int iA = sc.b.a(context, 16.0d);
        Paint paint = new Paint(1);
        this.f94868g = paint;
        paint.setTextSize(iA);
        int iA2 = sc.b.a(context, 10.0d);
        setPadding(iA2, 0, iA2, 0);
    }

    private int f(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode != Integer.MIN_VALUE) {
            return mode != 0 ? size : this.f94869h.height() + getPaddingTop() + getPaddingBottom();
        }
        return Math.min(this.f94869h.height() + getPaddingTop() + getPaddingBottom(), size);
    }

    private void g() {
        Paint paint = this.f94868g;
        String str = this.f94863b;
        paint.getTextBounds(str, 0, str == null ? 0 : str.length(), this.f94869h);
    }

    private int h(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode != Integer.MIN_VALUE) {
            return mode != 0 ? size : this.f94869h.width() + getPaddingLeft() + getPaddingRight();
        }
        return Math.min(this.f94869h.width() + getPaddingLeft() + getPaddingRight(), size);
    }

    @Override // tc.d
    public void a(int i10, int i11, float f10, boolean z10) {
        this.f94866e = z10;
        this.f94867f = f10;
        invalidate();
    }

    @Override // tc.d
    public void b(int i10, int i11) {
    }

    @Override // tc.d
    public void c(int i10, int i11) {
    }

    @Override // tc.d
    public void d(int i10, int i11, float f10, boolean z10) {
        this.f94866e = !z10;
        this.f94867f = 1.0f - f10;
        invalidate();
    }

    public int getClipColor() {
        return this.f94865d;
    }

    @Override // tc.b
    public int getContentBottom() {
        Paint.FontMetrics fontMetrics = this.f94868g.getFontMetrics();
        return (int) ((getHeight() / 2) + ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    @Override // tc.b
    public int getContentLeft() {
        return (getLeft() + (getWidth() / 2)) - (this.f94869h.width() / 2);
    }

    @Override // tc.b
    public int getContentRight() {
        return getLeft() + (getWidth() / 2) + (this.f94869h.width() / 2);
    }

    @Override // tc.b
    public int getContentTop() {
        Paint.FontMetrics fontMetrics = this.f94868g.getFontMetrics();
        return (int) ((getHeight() / 2) - ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    public String getText() {
        return this.f94863b;
    }

    public int getTextColor() {
        return this.f94864c;
    }

    public float getTextSize() {
        return this.f94868g.getTextSize();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width = (getWidth() - this.f94869h.width()) / 2;
        Paint.FontMetrics fontMetrics = this.f94868g.getFontMetrics();
        int height = (int) (((getHeight() - fontMetrics.bottom) - fontMetrics.top) / 2.0f);
        this.f94868g.setColor(this.f94864c);
        float f10 = width;
        float f11 = height;
        canvas.drawText(this.f94863b, f10, f11, this.f94868g);
        canvas.save();
        if (this.f94866e) {
            canvas.clipRect(0.0f, 0.0f, getWidth() * this.f94867f, getHeight());
        } else {
            canvas.clipRect(getWidth() * (1.0f - this.f94867f), 0.0f, getWidth(), getHeight());
        }
        this.f94868g.setColor(this.f94865d);
        canvas.drawText(this.f94863b, f10, f11, this.f94868g);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        g();
        setMeasuredDimension(h(i10), f(i11));
    }

    public void setClipColor(int i10) {
        this.f94865d = i10;
        invalidate();
    }

    public void setText(String str) {
        this.f94863b = str;
        requestLayout();
    }

    public void setTextColor(int i10) {
        this.f94864c = i10;
        invalidate();
    }

    public void setTextSize(float f10) {
        this.f94868g.setTextSize(f10);
        requestLayout();
    }
}
