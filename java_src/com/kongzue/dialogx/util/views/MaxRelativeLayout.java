package com.kongzue.dialogx.util.views;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.j;

/* JADX INFO: loaded from: classes3.dex */
public class MaxRelativeLayout extends RelativeLayout implements j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f74324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f74325c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f74326d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f74327e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f74328f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f74329g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f74330h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f74331i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f74332j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f74333k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f74334l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private b f74335m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f74336n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Paint f74337o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View.OnTouchListener f74338p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f74339q;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            long jFloatValue = (long) (MaxRelativeLayout.this.f74332j + ((MaxRelativeLayout.this.f74333k - MaxRelativeLayout.this.f74332j) * ((Float) valueAnimator.getAnimatedValue()).floatValue()));
            if (MaxRelativeLayout.this.f74335m != null) {
                MaxRelativeLayout.this.f74335m.a(jFloatValue);
            }
        }
    }

    public interface b {
        void a(float f10);
    }

    public MaxRelativeLayout(Context context) {
        super(context);
        this.f74329g = true;
        this.f74332j = 0.0f;
        this.f74333k = 0.0f;
        this.f74334l = -1;
        e(context, null);
    }

    private void e(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DialogXMaxLayout);
            this.f74324b = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DialogXMaxLayout_maxLayoutWidth, 0);
            this.f74325c = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DialogXMaxLayout_maxLayoutHeight, 0);
            this.f74326d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DialogXMaxLayout_minLayoutWidth, 0);
            this.f74327e = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DialogXMaxLayout_minLayoutHeight, 0);
            this.f74328f = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DialogXMaxLayout_lockWidth, false);
            this.f74329g = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DialogXMaxLayout_interceptTouch, true);
            this.f74331i = typedArrayObtainStyledAttributes.getInt(R.styleable.DialogXMaxLayout_dialogXSafetyMode, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
        int minimumWidth = this.f74326d;
        if (minimumWidth == 0) {
            minimumWidth = getMinimumWidth();
        }
        this.f74326d = minimumWidth;
        int minimumHeight = this.f74327e;
        if (minimumHeight == 0) {
            minimumHeight = getMinimumHeight();
        }
        this.f74327e = minimumHeight;
        if (isInEditMode()) {
            return;
        }
        animate().setUpdateListener(new a());
    }

    public int d(float f10) {
        return (int) ((f10 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View.OnTouchListener onTouchListener = this.f74338p;
        if (onTouchListener != null) {
            this.f74339q = onTouchListener.onTouch(this, motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean f() {
        return this.f74328f;
    }

    public MaxRelativeLayout g(int i10) {
        this.f74331i = i10;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.j
    public int getDialogXSafetyMode() {
        return this.f74331i;
    }

    public b getOnYChanged() {
        return this.f74335m;
    }

    public MaxRelativeLayout h(boolean z10) {
        this.f74328f = z10;
        return this;
    }

    public MaxRelativeLayout i(int i10) {
        if (i10 > 0) {
            this.f74325c = i10;
        }
        return this;
    }

    public MaxRelativeLayout j(int i10) {
        if (i10 > 0) {
            this.f74324b = i10;
        }
        return this;
    }

    public MaxRelativeLayout k(b bVar) {
        this.f74335m = bVar;
        return this;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f74336n == 0 || DialogX.I == 0) {
            return;
        }
        if (this.f74337o == null) {
            Paint paint = new Paint();
            this.f74337o = paint;
            paint.setColor(DialogX.I);
        }
        canvas.drawRect(0.0f, getHeight() - this.f74336n, getWidth(), getHeight(), this.f74337o);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f74339q;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i11);
        int size2 = View.MeasureSpec.getSize(i10);
        if (this.f74334l == -1 && size2 != 0) {
            this.f74334l = size2;
        }
        if (this.f74328f) {
            this.f74324b = Math.min(this.f74324b, Math.min(size2, this.f74334l));
        }
        int i12 = this.f74325c;
        if (size > i12 && i12 != 0) {
            size = getPaddingTop() + i12 + getPaddingBottom();
        }
        int i13 = this.f74324b;
        if (size2 > i13 && i13 != 0) {
            size2 = getPaddingRight() + i13 + getPaddingLeft();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size2, mode2), View.MeasureSpec.makeMeasureSpec(size, mode));
    }

    public void setContentView(View view) {
        this.f74330h = view;
    }

    public void setMinHeight(int i10) {
        if (i10 > 0) {
            this.f74327e = i10;
        }
    }

    public void setMinWidth(int i10) {
        if (i10 > 0) {
            this.f74326d = i10;
        }
    }

    public void setNavBarHeight(int i10) {
        this.f74336n = i10;
        invalidate();
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f74338p = onTouchListener;
    }

    @Override // android.view.View
    public void setTranslationY(float f10) {
        super.setTranslationY(f10);
        b bVar = this.f74335m;
        if (bVar != null) {
            bVar.a(f10);
        }
    }

    @Override // android.view.View
    public void setY(float f10) {
        super.setY(f10);
    }

    public MaxRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f74329g = true;
        this.f74332j = 0.0f;
        this.f74333k = 0.0f;
        this.f74334l = -1;
        e(context, attributeSet);
    }

    public MaxRelativeLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f74329g = true;
        this.f74332j = 0.0f;
        this.f74333k = 0.0f;
        this.f74334l = -1;
        e(context, attributeSet);
    }
}
