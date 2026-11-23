package com.join.mgps.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.QuarkInstallAppActivity_;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0018\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0014J\u0010\u0010'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020)H\u0014J\u000e\u0010*\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\nJ\u000e\u0010+\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020\nJ\u0010\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R7\u0010\u001a\u001a\u001f\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u00061"}, d2 = {"Lcom/join/mgps/customview/SegmentSelectorView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "segmentCount", "", "selectedIndex", "normalRadius", "", "selectedRadius", "outerRadius", "normalColor", "selectedColor", "outerColor", "lineColor", "paint", "Landroid/graphics/Paint;", "segmentInterval", "currentSelectedRadius", "currentOuterRadius", "outerStrokeWidth", "onSegmentSelected", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "index", "", "getOnSegmentSelected", "()Lkotlin/jvm/functions/Function1;", "setOnSegmentSelected", "(Lkotlin/jvm/functions/Function1;)V", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onDraw", "canvas", "Landroid/graphics/Canvas;", "setSelectedIndex", "setSegmentCount", QuarkInstallAppActivity_.COUNT_EXTRA, "onTouchEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSegmentSelectorView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentSelectorView.kt\ncom/join/mgps/customview/SegmentSelectorView\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,177:1\n470#2:178\n470#2:179\n*S KotlinDebug\n*F\n+ 1 SegmentSelectorView.kt\ncom/join/mgps/customview/SegmentSelectorView\n*L\n59#1:178\n62#1:179\n*E\n"})
public final class SegmentSelectorView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65591c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f65592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f65593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f65594f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65595g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65596h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f65597i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65598j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NotNull
    private final Paint f65599k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f65600l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f65601m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f65602n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f65603o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private Function1<? super Integer, Unit> f65604p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SegmentSelectorView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f65590b = 11;
        this.f65591c = 6;
        this.f65592d = 8.0f;
        this.f65593e = 12.0f;
        this.f65594f = 16.0f;
        this.f65595g = -1;
        this.f65596h = -1;
        this.f65597i = -16776961;
        this.f65598j = -1;
        this.f65599k = new Paint(1);
        this.f65601m = this.f65592d;
        this.f65602n = this.f65594f;
        this.f65603o = 2.0f;
        this.f65590b = 11;
        this.f65592d = getContext().getResources().getDimension(R.dimen.wdp5);
        this.f65593e = getContext().getResources().getDimension(R.dimen.wdp8);
        float dimension = getContext().getResources().getDimension(R.dimen.wdp10);
        this.f65594f = dimension;
        this.f65603o = dimension - this.f65593e;
        int color = Color.parseColor("#ffD8D8D8");
        this.f65595g = color;
        this.f65596h = color;
        this.f65598j = color;
        this.f65597i = Color.parseColor("#ff0066FF");
        setSelectedIndex(5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(SegmentSelectorView segmentSelectorView, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        segmentSelectorView.f65601m = ((Float) animatedValue).floatValue();
        segmentSelectorView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(SegmentSelectorView segmentSelectorView, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        segmentSelectorView.f65602n = ((Float) animatedValue).floatValue();
        segmentSelectorView.invalidate();
    }

    @Nullable
    public final Function1<Integer, Unit> getOnSegmentSelected() {
        return this.f65604p;
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        float f10;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        this.f65599k.setColor(this.f65598j);
        this.f65599k.setStrokeWidth(2.0f);
        float f11 = this.f65594f;
        float width = getWidth() - this.f65594f;
        canvas.drawLine(f11, getHeight() / 2.0f, width, getHeight() / 2.0f, this.f65599k);
        int i10 = this.f65590b;
        int i11 = 0;
        while (i11 < i10) {
            if (i11 == 0) {
                f10 = f11;
            } else {
                f10 = i11 == this.f65590b + (-1) ? width : (i11 * this.f65600l) + f11;
            }
            float height = getHeight() / 2.0f;
            if (i11 == this.f65591c) {
                this.f65599k.setColor(this.f65597i);
                this.f65599k.setStyle(Paint.Style.STROKE);
                this.f65599k.setStrokeWidth(2.0f);
                canvas.drawCircle(f10, height, this.f65602n, this.f65599k);
            }
            this.f65599k.setStyle(Paint.Style.FILL);
            if (i11 == this.f65591c) {
                this.f65599k.setColor(this.f65596h);
                canvas.drawCircle(f10, height, this.f65601m, this.f65599k);
            } else {
                this.f65599k.setColor(this.f65595g);
                canvas.drawCircle(f10, height, this.f65592d, this.f65599k);
            }
            i11++;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        float f10 = this.f65594f;
        float f11 = 2;
        int iResolveSize = View.resolveSize((int) (f10 * f11 * this.f65590b), widthMeasureSpec);
        setMeasuredDimension(iResolveSize, View.resolveSize((int) (f10 * f11), heightMeasureSpec));
        this.f65600l = (iResolveSize - (f11 * this.f65594f)) / (this.f65590b - 1);
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action != 0 && action != 2) {
            return super.onTouchEvent(event);
        }
        int iRoundToInt = MathKt__MathJVMKt.roundToInt((event.getX() - this.f65594f) / this.f65600l);
        int iCoerceIn = RangesKt___RangesKt.coerceIn(iRoundToInt, 0, this.f65590b - 1);
        if (iCoerceIn != this.f65591c) {
            setSelectedIndex(iCoerceIn);
            Function1<? super Integer, Unit> function1 = this.f65604p;
            if (function1 != null) {
                function1.invoke(Integer.valueOf(iRoundToInt));
            }
        }
        return true;
    }

    public final void setOnSegmentSelected(@Nullable Function1<? super Integer, Unit> function1) {
        this.f65604p = function1;
    }

    public final void setSegmentCount(int count) {
        if (count <= 0) {
            return;
        }
        this.f65590b = count;
        this.f65591c = Math.min(this.f65591c, count - 1);
        requestLayout();
        invalidate();
    }

    public final void setSelectedIndex(int index) {
        if (index >= 0 && index < this.f65590b) {
            this.f65591c = index;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f65601m, this.f65593e);
            valueAnimatorOfFloat.setDuration(200L);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.join.mgps.customview.m0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SegmentSelectorView.c(this.f66689b, valueAnimator);
                }
            });
            valueAnimatorOfFloat.start();
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.f65602n, this.f65594f);
            valueAnimatorOfFloat2.setDuration(200L);
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.join.mgps.customview.n0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SegmentSelectorView.d(this.f66696b, valueAnimator);
                }
            });
            valueAnimatorOfFloat2.start();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SegmentSelectorView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f65590b = 11;
        this.f65591c = 6;
        this.f65592d = 8.0f;
        this.f65593e = 12.0f;
        this.f65594f = 16.0f;
        this.f65595g = -1;
        this.f65596h = -1;
        this.f65597i = -16776961;
        this.f65598j = -1;
        this.f65599k = new Paint(1);
        this.f65601m = this.f65592d;
        this.f65602n = this.f65594f;
        this.f65603o = 2.0f;
        this.f65590b = 11;
        this.f65592d = getContext().getResources().getDimension(R.dimen.wdp5);
        this.f65593e = getContext().getResources().getDimension(R.dimen.wdp8);
        float dimension = getContext().getResources().getDimension(R.dimen.wdp10);
        this.f65594f = dimension;
        this.f65603o = dimension - this.f65593e;
        int color = Color.parseColor("#ffD8D8D8");
        this.f65595g = color;
        this.f65596h = color;
        this.f65598j = color;
        this.f65597i = Color.parseColor("#ff0066FF");
        setSelectedIndex(5);
    }
}
