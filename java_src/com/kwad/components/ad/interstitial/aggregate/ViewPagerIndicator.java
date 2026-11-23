package com.kwad.components.ad.interstitial.aggregate;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.kwad.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class ViewPagerIndicator extends View {
    private int lU;
    private final Context mContext;

    /* JADX INFO: renamed from: ma, reason: collision with root package name */
    private int f75145ma;

    /* JADX INFO: renamed from: mb, reason: collision with root package name */
    private int f75146mb;

    /* JADX INFO: renamed from: mc, reason: collision with root package name */
    private int f75147mc;
    private float md;

    /* JADX INFO: renamed from: me, reason: collision with root package name */
    private float f75148me;
    private Paint mf;
    private float mg;
    private float mh;
    private float mi;
    private int mj;
    private Paint mk;
    private float ml;
    private a mm;
    private ValueAnimator mn;

    public interface a {
        void T(int i10);
    }

    public ViewPagerIndicator(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(final int i10) {
        if (this.mj <= 0) {
            setVisibility(8);
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mi, this.mh);
        this.mn = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(((long) this.mj) * 1000);
        this.mn.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.components.ad.interstitial.aggregate.ViewPagerIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewPagerIndicator.this.ml = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ViewPagerIndicator.this.invalidate();
            }
        });
        this.mn.addListener(new AnimatorListenerAdapter() { // from class: com.kwad.components.ad.interstitial.aggregate.ViewPagerIndicator.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (ViewPagerIndicator.this.mm != null) {
                    ViewPagerIndicator.this.mm.T(i10);
                }
            }
        });
        this.mn.start();
    }

    private void dL() {
        Paint paint = new Paint(1);
        this.mf = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mf.setStrokeWidth(1.0f);
        this.mf.setColor(this.f75146mb);
        Paint paint2 = new Paint(1);
        this.mk = paint2;
        paint2.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mk.setStrokeWidth(1.0f);
        this.mk.setColor(this.f75145ma);
    }

    @RequiresApi(api = 19)
    public final void dM() {
        ValueAnimator valueAnimator = this.mn;
        if (valueAnimator != null) {
            valueAnimator.pause();
        }
    }

    @RequiresApi(api = 19)
    public final void dN() {
        ValueAnimator valueAnimator = this.mn;
        if (valueAnimator != null) {
            valueAnimator.resume();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a(canvas);
        b(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode2 != 1073741824) {
            size2 = mode2 == Integer.MIN_VALUE ? (int) this.mg : 0;
        }
        if (mode != 1073741824) {
            if (mode == Integer.MIN_VALUE) {
                int i12 = this.f75147mc;
                size = i12 > 1 ? (int) (this.mh + ((i12 - 1) * (this.f75148me + this.mi))) : (int) this.mh;
            } else {
                size = 0;
            }
        }
        setMeasuredDimension(size, size2);
    }

    public void setAdShowTime(int i10) {
        this.mj = i10;
    }

    public void setPlayProgressListener(a aVar) {
        this.mm = aVar;
    }

    public void setViewPager(ViewPager viewPager) {
        PagerAdapter adapter = viewPager.getAdapter();
        if (adapter == null) {
            return;
        }
        int count = adapter.getCount();
        this.f75147mc = count;
        if (count <= 1) {
            return;
        }
        viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.kwad.components.ad.interstitial.aggregate.ViewPagerIndicator.3
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public final void onPageScrollStateChanged(int i10) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public final void onPageScrolled(int i10, float f10, int i11) {
                ViewPagerIndicator.this.ml = 0.0f;
                ViewPagerIndicator.this.lU = i10;
                ViewPagerIndicator.this.md = f10;
                ViewPagerIndicator.this.invalidate();
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public final void onPageSelected(int i10) {
                ViewPagerIndicator.this.lU = i10;
                ViewPagerIndicator.this.md = 1.0f;
                ViewPagerIndicator.this.invalidate();
                if (i10 < ViewPagerIndicator.this.f75147mc - 1) {
                    ViewPagerIndicator.this.V(i10);
                }
            }
        });
        V(this.lU);
    }

    public ViewPagerIndicator(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewPagerIndicator(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mContext = context;
        setWillNotDraw(false);
        a(context, attributeSet, i10);
        dL();
    }

    @SuppressLint({"CustomViewStyleable"})
    private void a(Context context, AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ksad_ViewPagerIndicator, i10, 0);
        this.f75148me = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_ViewPagerIndicator_ksad_dot_distance, com.kwad.sdk.c.a.a.a(this.mContext, 5.0f));
        this.mg = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_ViewPagerIndicator_ksad_dot_height, com.kwad.sdk.c.a.a.a(this.mContext, 6.0f));
        this.mh = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_ViewPagerIndicator_ksad_dot_selected_width, com.kwad.sdk.c.a.a.a(this.mContext, 50.0f));
        this.mi = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_ViewPagerIndicator_ksad_dot_unselected_width, com.kwad.sdk.c.a.a.a(this.mContext, 6.0f));
        this.f75146mb = typedArrayObtainStyledAttributes.getColor(R.styleable.ksad_ViewPagerIndicator_ksad_default_color, getResources().getColor(R.color.ksad_88_white));
        this.f75145ma = typedArrayObtainStyledAttributes.getColor(R.styleable.ksad_ViewPagerIndicator_ksad_height_color, getResources().getColor(R.color.ksad_white));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void b(Canvas canvas) {
        if (this.ml > 0.0f) {
            int i10 = this.lU;
            float f10 = this.f75148me;
            float f11 = this.mi;
            RectF rectF = new RectF(i10 * (f10 + f11), 0.0f, (i10 * (f10 + f11)) + this.ml, this.mg);
            float f12 = this.mg;
            canvas.drawRoundRect(rectF, f12 / 2.0f, f12 / 2.0f, this.mk);
        }
    }

    private void a(Canvas canvas) {
        RectF rectF = new RectF();
        for (int i10 = 0; i10 < this.f75147mc; i10++) {
            int i11 = this.lU;
            if (i10 < i11 && i10 != i11 - 1) {
                float f10 = this.f75148me;
                float f11 = this.mi;
                float f12 = i10 * (f10 + f11);
                rectF.left = f12;
                rectF.right = f12 + f11;
                this.mf.setColor(this.f75146mb);
            } else if (i10 == i11 - 1) {
                float f13 = this.f75148me;
                float f14 = this.mi;
                float f15 = i10 * (f13 + f14);
                rectF.left = f15;
                rectF.right = f15 + f14 + ((this.mh - f14) * (1.0f - this.md));
                this.mf.setColor(this.f75146mb);
            } else if (i10 == i11) {
                float f16 = i11 != 0 ? this.md : 1.0f;
                float f17 = this.f75148me;
                float f18 = this.mi;
                float f19 = this.mh;
                float f20 = ((i10 - 1) * (f17 + f18)) + f18 + ((f19 - f18) * (1.0f - f16)) + f17;
                rectF.left = f20;
                rectF.right = f20 + (f16 * (f19 - f18)) + f18;
                this.mf.setColor(this.f75146mb);
            } else {
                float f21 = this.f75148me;
                float f22 = this.mi;
                float f23 = ((i10 - 1) * (f21 + f22)) + f21 + this.mh;
                rectF.left = f23;
                rectF.right = f23 + f22;
                this.mf.setColor(this.f75146mb);
            }
            rectF.top = 0.0f;
            float f24 = this.mg;
            rectF.bottom = 0.0f + f24;
            canvas.drawRoundRect(rectF, f24 / 2.0f, f24 / 2.0f, this.mf);
        }
    }
}
