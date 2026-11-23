package com.flyco.tablayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.flyco.tablayout.R;

/* JADX INFO: loaded from: classes9.dex */
public class MsgView extends TextView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f29267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GradientDrawable f29268c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f29269d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f29270e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f29271f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29272g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f29273h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f29274i;

    public MsgView(Context context) {
        this(context, null);
    }

    private void d(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MsgView);
        this.f29269d = typedArrayObtainStyledAttributes.getColor(R.styleable.MsgView_mv_backgroundColor, 0);
        this.f29270e = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MsgView_mv_cornerRadius, 0);
        this.f29271f = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MsgView_mv_strokeWidth, 0);
        this.f29272g = typedArrayObtainStyledAttributes.getColor(R.styleable.MsgView_mv_strokeColor, 0);
        this.f29273h = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MsgView_mv_isRadiusHalfHeight, false);
        this.f29274i = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MsgView_mv_isWidthHeightEqual, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void e(GradientDrawable gradientDrawable, int i10, int i11) {
        gradientDrawable.setColor(i10);
        gradientDrawable.setCornerRadius(this.f29270e);
        gradientDrawable.setStroke(this.f29271f, i11);
    }

    protected int a(float f10) {
        return (int) ((f10 * this.f29267b.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public boolean b() {
        return this.f29273h;
    }

    public boolean c() {
        return this.f29274i;
    }

    protected int f(float f10) {
        return (int) ((f10 * this.f29267b.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public int getBackgroundColor() {
        return this.f29269d;
    }

    public int getCornerRadius() {
        return this.f29270e;
    }

    public int getStrokeColor() {
        return this.f29272g;
    }

    public int getStrokeWidth() {
        return this.f29271f;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (b()) {
            setCornerRadius(getHeight() / 2);
        } else {
            setBgSelector();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (!c() || getWidth() <= 0 || getHeight() <= 0) {
            super.onMeasure(i10, i11);
        } else {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(getWidth(), getHeight()), 1073741824);
            super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        this.f29269d = i10;
        setBgSelector();
    }

    public void setBgSelector() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        e(this.f29268c, this.f29269d, this.f29272g);
        stateListDrawable.addState(new int[]{-16842919}, this.f29268c);
        setBackground(stateListDrawable);
    }

    public void setCornerRadius(int i10) {
        this.f29270e = a(i10);
        setBgSelector();
    }

    public void setIsRadiusHalfHeight(boolean z10) {
        this.f29273h = z10;
        setBgSelector();
    }

    public void setIsWidthHeightEqual(boolean z10) {
        this.f29274i = z10;
        setBgSelector();
    }

    public void setStrokeColor(int i10) {
        this.f29272g = i10;
        setBgSelector();
    }

    public void setStrokeWidth(int i10) {
        this.f29271f = a(i10);
        setBgSelector();
    }

    public MsgView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MsgView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f29268c = new GradientDrawable();
        this.f29267b = context;
        d(context, attributeSet);
    }
}
