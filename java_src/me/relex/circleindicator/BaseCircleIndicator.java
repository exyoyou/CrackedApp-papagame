package me.relex.circleindicator;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
class BaseCircleIndicator extends LinearLayout {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f94241m = 5;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f94242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f94243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f94244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f94245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f94246f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected Animator f94247g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected Animator f94248h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected Animator f94249i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected Animator f94250j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected int f94251k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private a f94252l;

    public interface a {
        void a(View view, int i10);
    }

    protected class b implements Interpolator {
        protected b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            return Math.abs(1.0f - f10);
        }
    }

    public BaseCircleIndicator(Context context) {
        super(context);
        this.f94242b = -1;
        this.f94243c = -1;
        this.f94244d = -1;
        this.f94251k = -1;
        g(context, null);
    }

    private me.relex.circleindicator.b f(Context context, AttributeSet attributeSet) {
        me.relex.circleindicator.b bVar = new me.relex.circleindicator.b();
        if (attributeSet == null) {
            return bVar;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BaseCircleIndicator);
        bVar.f94271a = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BaseCircleIndicator_ci_width, -1);
        bVar.f94272b = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BaseCircleIndicator_ci_height, -1);
        bVar.f94273c = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BaseCircleIndicator_ci_margin, -1);
        bVar.f94274d = typedArrayObtainStyledAttributes.getResourceId(R.styleable.BaseCircleIndicator_ci_animator, R.animator.scale_with_alpha);
        bVar.f94275e = typedArrayObtainStyledAttributes.getResourceId(R.styleable.BaseCircleIndicator_ci_animator_reverse, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.BaseCircleIndicator_ci_drawable, R.drawable.white_radius);
        bVar.f94276f = resourceId;
        bVar.f94277g = typedArrayObtainStyledAttributes.getResourceId(R.styleable.BaseCircleIndicator_ci_drawable_unselected, resourceId);
        bVar.f94278h = typedArrayObtainStyledAttributes.getInt(R.styleable.BaseCircleIndicator_ci_orientation, -1);
        bVar.f94279i = typedArrayObtainStyledAttributes.getInt(R.styleable.BaseCircleIndicator_ci_gravity, -1);
        typedArrayObtainStyledAttributes.recycle();
        return bVar;
    }

    private void g(Context context, AttributeSet attributeSet) {
        h(f(context, attributeSet));
    }

    protected void a(int i10) {
        View view = new View(getContext());
        LinearLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        layoutParamsGenerateDefaultLayoutParams.width = this.f94243c;
        layoutParamsGenerateDefaultLayoutParams.height = this.f94244d;
        if (i10 == 0) {
            int i11 = this.f94242b;
            layoutParamsGenerateDefaultLayoutParams.leftMargin = i11;
            layoutParamsGenerateDefaultLayoutParams.rightMargin = i11;
        } else {
            int i12 = this.f94242b;
            layoutParamsGenerateDefaultLayoutParams.topMargin = i12;
            layoutParamsGenerateDefaultLayoutParams.bottomMargin = i12;
        }
        addView(view, layoutParamsGenerateDefaultLayoutParams);
    }

    public void b(int i10) {
        View childAt;
        if (this.f94251k == i10) {
            return;
        }
        if (this.f94248h.isRunning()) {
            this.f94248h.end();
            this.f94248h.cancel();
        }
        if (this.f94247g.isRunning()) {
            this.f94247g.end();
            this.f94247g.cancel();
        }
        int i11 = this.f94251k;
        if (i11 >= 0 && (childAt = getChildAt(i11)) != null) {
            childAt.setBackgroundResource(this.f94246f);
            this.f94248h.setTarget(childAt);
            this.f94248h.start();
        }
        View childAt2 = getChildAt(i10);
        if (childAt2 != null) {
            childAt2.setBackgroundResource(this.f94245e);
            this.f94247g.setTarget(childAt2);
            this.f94247g.start();
        }
        this.f94251k = i10;
    }

    protected Animator c(me.relex.circleindicator.b bVar) {
        if (bVar.f94275e != 0) {
            return AnimatorInflater.loadAnimator(getContext(), bVar.f94275e);
        }
        Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(getContext(), bVar.f94274d);
        animatorLoadAnimator.setInterpolator(new b());
        return animatorLoadAnimator;
    }

    protected Animator d(me.relex.circleindicator.b bVar) {
        return AnimatorInflater.loadAnimator(getContext(), bVar.f94274d);
    }

    public void e(int i10, int i11) {
        if (this.f94249i.isRunning()) {
            this.f94249i.end();
            this.f94249i.cancel();
        }
        if (this.f94250j.isRunning()) {
            this.f94250j.end();
            this.f94250j.cancel();
        }
        int childCount = getChildCount();
        if (i10 < childCount) {
            removeViews(i10, childCount - i10);
        } else if (i10 > childCount) {
            int i12 = i10 - childCount;
            int orientation = getOrientation();
            for (int i13 = 0; i13 < i12; i13++) {
                a(orientation);
            }
        }
        for (int i14 = 0; i14 < i10; i14++) {
            View childAt = getChildAt(i14);
            if (i11 == i14) {
                childAt.setBackgroundResource(this.f94245e);
                this.f94249i.setTarget(childAt);
                this.f94249i.start();
                this.f94249i.end();
            } else {
                childAt.setBackgroundResource(this.f94246f);
                this.f94250j.setTarget(childAt);
                this.f94250j.start();
                this.f94250j.end();
            }
            a aVar = this.f94252l;
            if (aVar != null) {
                aVar.a(childAt, i14);
            }
        }
        this.f94251k = i11;
    }

    public void h(me.relex.circleindicator.b bVar) {
        int iApplyDimension = (int) (TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics()) + 0.5f);
        int i10 = bVar.f94271a;
        if (i10 < 0) {
            i10 = iApplyDimension;
        }
        this.f94243c = i10;
        int i11 = bVar.f94272b;
        if (i11 < 0) {
            i11 = iApplyDimension;
        }
        this.f94244d = i11;
        int i12 = bVar.f94273c;
        if (i12 >= 0) {
            iApplyDimension = i12;
        }
        this.f94242b = iApplyDimension;
        this.f94247g = d(bVar);
        Animator animatorD = d(bVar);
        this.f94249i = animatorD;
        animatorD.setDuration(0L);
        this.f94248h = c(bVar);
        Animator animatorC = c(bVar);
        this.f94250j = animatorC;
        animatorC.setDuration(0L);
        int i13 = bVar.f94276f;
        this.f94245e = i13 == 0 ? R.drawable.white_radius : i13;
        int i14 = bVar.f94277g;
        if (i14 != 0) {
            i13 = i14;
        }
        this.f94246f = i13;
        setOrientation(bVar.f94278h != 1 ? 0 : 1);
        int i15 = bVar.f94279i;
        if (i15 < 0) {
            i15 = 17;
        }
        setGravity(i15);
    }

    public void setIndicatorCreatedListener(@Nullable a aVar) {
        this.f94252l = aVar;
    }

    public BaseCircleIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f94242b = -1;
        this.f94243c = -1;
        this.f94244d = -1;
        this.f94251k = -1;
        g(context, attributeSet);
    }

    public BaseCircleIndicator(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f94242b = -1;
        this.f94243c = -1;
        this.f94244d = -1;
        this.f94251k = -1;
        g(context, attributeSet);
    }

    @TargetApi(21)
    public BaseCircleIndicator(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f94242b = -1;
        this.f94243c = -1;
        this.f94244d = -1;
        this.f94251k = -1;
        g(context, attributeSet);
    }
}
