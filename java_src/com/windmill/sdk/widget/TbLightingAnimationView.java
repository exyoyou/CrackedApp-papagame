package com.windmill.sdk.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.windmill.sdk.base.WMLogUtil;
import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
public class TbLightingAnimationView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f87545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f87546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ValueAnimator f87547c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f87548d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Path f87549e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final RectF f87550f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int[] f87551g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float[] f87552h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f87553i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f87554j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f87555k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f87556l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f87557m;

    public TbLightingAnimationView(Context context) {
        this(context, null);
    }

    public float getMk() {
        return this.f87556l;
    }

    public int getMw() {
        return this.f87557m;
    }

    public int getRadius() {
        return this.f87548d;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f87547c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f87547c = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f87549e.reset();
        if (this.f87548d < 0) {
            this.f87548d = getHeight() / 2;
        }
        this.f87550f.set(0.0f, 0.0f, getWidth(), getHeight());
        Path path = this.f87549e;
        RectF rectF = this.f87550f;
        int i10 = this.f87548d;
        path.addRoundRect(rectF, i10, i10, Path.Direction.CW);
        canvas.clipPath(this.f87549e);
        canvas.drawPath(this.f87546b, this.f87545a);
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (this.f87553i == 1) {
            a(size, size2, this.f87555k, this.f87554j);
        }
    }

    public void setColorAndPositions(int[] colors, float[] positions) {
        if (colors.length != positions.length) {
            throw new RuntimeException("colors and positions 数组大小必须一致");
        }
        this.f87551g = colors;
        this.f87552h = positions;
    }

    public void setMk(float mk) {
        this.f87556l = mk;
    }

    public void setMw(int mw) {
        this.f87557m = mw;
    }

    public void setRadius(int mRadius) {
        this.f87548d = mRadius;
    }

    public void startLightingAnimation() {
        a(getWidth(), getHeight(), this.f87555k, this.f87554j);
    }

    public TbLightingAnimationView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    private void a(int w10, int h10, int repeatCount, long duration) {
        this.f87546b.moveTo(0.0f, 0.0f);
        float f10 = w10;
        this.f87546b.lineTo(f10, 0.0f);
        float f11 = h10;
        this.f87546b.lineTo(f10, f11);
        this.f87546b.lineTo(0.0f, f11);
        this.f87546b.close();
        final float f12 = this.f87556l;
        if (this.f87557m < 0) {
            this.f87557m = h10;
        }
        final float f13 = this.f87557m;
        ValueAnimator valueAnimator = this.f87547c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        float f14 = 2.0f * f13;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f - f14, f10 + f14);
        this.f87547c = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setRepeatCount(repeatCount);
        this.f87547c.setInterpolator(new LinearInterpolator());
        this.f87547c.setDuration(duration);
        this.f87547c.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.windmill.sdk.widget.g
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f87577b.a(f12, f13, valueAnimator2);
            }
        });
        this.f87547c.start();
    }

    public void startLightingAnimation(long duration) {
        a(getWidth(), getHeight(), this.f87555k, duration);
    }

    public TbLightingAnimationView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f87545a = new Paint();
        this.f87546b = new Path();
        this.f87547c = null;
        this.f87548d = -1;
        this.f87549e = new Path();
        this.f87550f = new RectF();
        this.f87551g = new int[]{16777215, -1, 16777215};
        this.f87552h = new float[]{0.0f, 0.65f, 1.0f};
        this.f87553i = 1;
        this.f87554j = 1000;
        this.f87555k = -1;
        this.f87556l = (float) Math.tan(0.6108652381980153d);
        this.f87557m = -1;
        try {
            setAlpha(0.6f);
            int attrId = ResourceUtil.getAttrId(context, "tobid_la_colors");
            int attrId2 = ResourceUtil.getAttrId(context, "tobid_la_positions");
            int attrId3 = ResourceUtil.getAttrId(context, "tobid_la_play_mode");
            int attrId4 = ResourceUtil.getAttrId(context, "tobid_la_repeat");
            int attrId5 = ResourceUtil.getAttrId(context, "tobid_la_duration");
            int attrId6 = ResourceUtil.getAttrId(context, "tobid_la_radius");
            int attrId7 = ResourceUtil.getAttrId(context, "tobid_la_k");
            int attrId8 = ResourceUtil.getAttrId(context, "tobid_la_w");
            WMLogUtil.d("TbLightingAnimationView", "TbLightingAnimationView:" + attrId + ":" + attrId2 + ":" + attrId3 + ":" + attrId4 + ":" + attrId5 + ":" + attrId6 + ":" + attrId7 + ":" + attrId8);
            int[] iArr = {attrId, attrId2, attrId3, attrId4, attrId5, attrId6, attrId7, attrId8};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, iArr);
            String string = typedArrayObtainStyledAttributes.getString(Arrays.binarySearch(iArr, attrId));
            String string2 = typedArrayObtainStyledAttributes.getString(Arrays.binarySearch(iArr, attrId2));
            if (string != null && string2 != null) {
                String[] strArrSplit = string.split(",");
                String[] strArrSplit2 = string2.split(",");
                int length = strArrSplit.length;
                if (length == strArrSplit2.length) {
                    this.f87551g = new int[length];
                    this.f87552h = new float[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        this.f87551g[i10] = Color.parseColor(strArrSplit[i10]);
                        this.f87552h[i10] = Float.parseFloat(strArrSplit2[i10]);
                    }
                }
            }
            this.f87553i = typedArrayObtainStyledAttributes.getInt(Arrays.binarySearch(iArr, attrId3), this.f87553i);
            int i11 = typedArrayObtainStyledAttributes.getInt(Arrays.binarySearch(iArr, attrId4), this.f87555k);
            this.f87555k = i11;
            if (i11 < 0 && i11 != -1) {
                this.f87555k = -1;
            }
            this.f87554j = typedArrayObtainStyledAttributes.getInt(Arrays.binarySearch(iArr, attrId5), this.f87554j);
            this.f87548d = typedArrayObtainStyledAttributes.getDimensionPixelSize(Arrays.binarySearch(iArr, attrId6), this.f87548d);
            this.f87556l = typedArrayObtainStyledAttributes.getFloat(Arrays.binarySearch(iArr, attrId7), this.f87556l);
            this.f87557m = typedArrayObtainStyledAttributes.getDimensionPixelSize(Arrays.binarySearch(iArr, attrId8), this.f87557m);
            typedArrayObtainStyledAttributes.recycle();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void startLightingAnimation(long duration, int repeatCount) {
        a(getWidth(), getHeight(), repeatCount, duration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(float f10, float f11, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f12 = fFloatValue + f11;
        this.f87545a.setShader(new LinearGradient(fFloatValue, f10 * fFloatValue, f12, f10 * f12, this.f87551g, this.f87552h, Shader.TileMode.CLAMP));
        invalidate();
    }
}
