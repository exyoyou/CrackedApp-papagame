package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class StrokeTextView extends AppCompatTextView implements View.OnTouchListener, com.facebook.rebound.m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f65907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65909d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.facebook.rebound.i f65910e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.facebook.rebound.o f65911f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Context f65912g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f65913h;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StrokeTextView.this.performClick();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StrokeTextView.this.performClick();
        }
    }

    public StrokeTextView(Context context) {
        super(context);
        this.f65907b = null;
        this.f65908c = 20;
        this.f65909d = 3;
        this.f65913h = new Handler();
        this.f65907b = new TextView(context);
        e(null);
        this.f65912g = context;
    }

    @Override // com.facebook.rebound.m
    public void a(com.facebook.rebound.i spring) {
        float f10 = 1.0f - (((float) spring.f()) * 0.3f);
        setScaleX(f10);
        setScaleY(f10);
    }

    @Override // com.facebook.rebound.m
    public void b(com.facebook.rebound.i spring) {
    }

    @Override // com.facebook.rebound.m
    public void c(com.facebook.rebound.i spring) {
    }

    @Override // com.facebook.rebound.m
    public void d(com.facebook.rebound.i spring) {
    }

    public void e(AttributeSet attrs) {
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.StrokeTextView);
            int color = typedArrayObtainStyledAttributes.getColor(1, 0);
            TextPaint paint = this.f65907b.getPaint();
            paint.setStrokeWidth(4.0f);
            paint.setStyle(Paint.Style.STROKE);
            this.f65907b.setTextColor(color);
            this.f65907b.setGravity(getGravity());
            typedArrayObtainStyledAttributes.recycle();
        }
        com.facebook.rebound.o oVarM = com.facebook.rebound.o.m();
        this.f65911f = oVarM;
        com.facebook.rebound.i iVarD = oVarM.d();
        this.f65910e = iVarD;
        iVarD.a(this);
        setOnTouchListener(this);
        this.f65910e.x(0.0d);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        this.f65907b.draw(canvas);
        super.onDraw(canvas);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.f65907b.layout(left, top, right, bottom);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        CharSequence text = this.f65907b.getText();
        if (text == null || !text.equals(getText())) {
            this.f65907b.setText(getText());
            postInvalidate();
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.f65907b.measure(widthMeasureSpec, heightMeasureSpec);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v10, MotionEvent event) {
        int action = event.getAction();
        if (action == 0) {
            this.f65910e.x(1.0d);
            return true;
        }
        if (action == 1) {
            this.f65910e.x(0.0d);
            this.f65913h.postDelayed(new a(), 200L);
            return true;
        }
        if (action != 3) {
            return false;
        }
        this.f65910e.x(0.0d);
        this.f65913h.postDelayed(new b(), 200L);
        return true;
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams params) {
        super.setLayoutParams(params);
        this.f65907b.setLayoutParams(params);
    }

    public void setStrokeColor(int color) {
        this.f65907b.setTextColor(color);
    }

    public StrokeTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65907b = null;
        this.f65908c = 20;
        this.f65909d = 3;
        this.f65913h = new Handler();
        this.f65907b = new TextView(context, attrs);
        e(attrs);
        this.f65912g = context;
    }

    public StrokeTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65907b = null;
        this.f65908c = 20;
        this.f65909d = 3;
        this.f65913h = new Handler();
        this.f65907b = new TextView(context, attrs, defStyle);
        e(attrs);
        this.f65912g = context;
    }
}
