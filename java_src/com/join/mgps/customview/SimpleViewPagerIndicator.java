package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimpleViewPagerIndicator extends LinearLayout {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f65605l = -16777216;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f65606m = -756480;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<String> f65607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65608c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65609d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f65610e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Paint f65611f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65612g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ScrollView f65613h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    TextView f65614i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    TextView f65615j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    TextView f65616k;

    public SimpleViewPagerIndicator(Context context) {
        this(context, null);
    }

    private void a() {
        if (getChildCount() > 0) {
            removeAllViews();
        }
        int size = this.f65607b.size();
        setWeightSum(size);
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 == 0) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
                layoutParams.weight = 1.0f;
                this.f65614i.setGravity(17);
                this.f65614i.setTextColor(-16777216);
                this.f65614i.setText(this.f65607b.get(i10));
                this.f65614i.setTextSize(2, 14.0f);
                this.f65614i.setLayoutParams(layoutParams);
                addView(this.f65614i);
            } else if (i10 == 1) {
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -1);
                layoutParams2.weight = 1.0f;
                this.f65615j.setGravity(17);
                this.f65615j.setTextColor(-16777216);
                this.f65615j.setText(this.f65607b.get(i10));
                this.f65615j.setTextSize(2, 14.0f);
                this.f65615j.setLayoutParams(layoutParams2);
                addView(this.f65615j);
            } else if (i10 == 2) {
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -1);
                layoutParams3.weight = 1.0f;
                this.f65616k.setGravity(17);
                this.f65616k.setTextColor(-16777216);
                this.f65616k.setText(this.f65607b.get(i10));
                this.f65616k.setTextSize(2, 14.0f);
                this.f65616k.setLayoutParams(layoutParams3);
                addView(this.f65616k);
            }
        }
    }

    public void b(int position, float offset) {
        this.f65610e = (getWidth() / this.f65608c) * (position + offset);
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        canvas.save();
        canvas.translate(this.f65610e, getHeight() - 2);
        if (this.f65612g == 0) {
            this.f65612g = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getWidth() / this.f65608c;
        }
        int i10 = this.f65612g;
        canvas.drawLine((int) (((double) i10) * 0.15d), 0.0f, i10 - ((int) (((double) i10) * 0.15d)), 0.0f, this.f65611f);
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (this.f65613h.getScrollY() + this.f65613h.getHeight() == this.f65613h.getChildAt(0).getHeight()) {
            this.f65613h.requestDisallowInterceptTouchEvent(true);
        }
        return super.dispatchTouchEvent(ev);
    }

    public TextView getTv() {
        return this.f65614i;
    }

    public TextView getTv1() {
        return this.f65615j;
    }

    public TextView getTv2() {
        return this.f65616k;
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        int i10 = this.f65608c;
        if (i10 > 0) {
            this.f65612g = w10 / i10;
        }
    }

    public void setIndicatorColor(int indicatorColor) {
        this.f65609d = indicatorColor;
    }

    public void setParentScrollView(ScrollView scrollView) {
        this.f65613h = scrollView;
    }

    public void setTitles(List<String> titles) {
        this.f65607b = titles;
        this.f65608c = titles.size();
        a();
    }

    public void setTv(TextView tv2) {
        this.f65614i = tv2;
    }

    public void setTv1(TextView tv1) {
        this.f65615j = tv1;
    }

    public void setTv2(TextView tv2) {
        this.f65616k = tv2;
    }

    public SimpleViewPagerIndicator(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65609d = f65606m;
        this.f65611f = new Paint();
        this.f65614i = new TextView(getContext());
        this.f65615j = new TextView(getContext());
        this.f65616k = new TextView(getContext());
        this.f65611f.setColor(this.f65609d);
        this.f65611f.setStrokeWidth(9.0f);
    }
}
