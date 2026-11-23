package com.join.mgps.customview;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Camera;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Transformation;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes3.dex */
public class AlignLeftGallery extends android.widget.Gallery {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f64316j = "AlignLeftGallery";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static int f64317k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static int f64318l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Camera f64319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f64320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f64321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f64322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f64323f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f64324g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f64325h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f64326i;

    public interface a {
        void onItemClick(int position);
    }

    public AlignLeftGallery(Context context) {
        super(context);
        this.f64319b = new Camera();
        setStaticTransformationsEnabled(true);
    }

    private void a(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, new int[]{R.attr.paddingLeft});
        this.f64321d = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        return super.dispatchTouchEvent(ev);
    }

    @Override // android.widget.Gallery, android.view.ViewGroup
    protected boolean getChildStaticTransformation(View child, Transformation t10) {
        t10.clear();
        t10.setTransformationType(2);
        this.f64319b.save();
        Matrix matrix = t10.getMatrix();
        if (this.f64322e) {
            f64317k = getChildAt(0).getWidth();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("firstChildWidth = ");
            sb2.append(f64317k);
            f64318l = getChildAt(0).getPaddingLeft();
            this.f64322e = false;
        }
        int i10 = (((f64317k / 2) + f64318l) + this.f64321d) - (this.f64320c / 2);
        this.f64323f = i10;
        this.f64319b.translate(i10, 0.0f, 0.0f);
        this.f64319b.getMatrix(matrix);
        this.f64319b.restore();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(this.f64323f);
        sb3.append("    offsetX");
        return true;
    }

    @Override // android.widget.Gallery, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent e10) {
        try {
            Field declaredField = AlignLeftGallery.class.getSuperclass().getDeclaredField("mDownTouchPosition");
            declaredField.setAccessible(true);
            int i10 = declaredField.getInt(this);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("mDownTouchPosition = ");
            sb2.append(i10);
            a aVar = this.f64324g;
            if (aVar == null || i10 < 0) {
                return false;
            }
            aVar.onItemClick(i10);
            return false;
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
            return false;
        } catch (IllegalArgumentException e12) {
            e12.printStackTrace();
            return false;
        } catch (NoSuchFieldException e13) {
            e13.printStackTrace();
            return false;
        } catch (SecurityException e14) {
            e14.printStackTrace();
            return false;
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onSizeChanged------- w = ");
        sb2.append(w10);
        sb2.append(" h = ");
        sb2.append(h10);
        sb2.append("oldw = ");
        sb2.append(oldw);
        sb2.append("oldh = ");
        sb2.append(oldh);
        if (!this.f64322e) {
            this.f64320c = w10;
            getLayoutParams().width = this.f64320c;
            this.f64322e = true;
        }
        super.onSizeChanged(w10, h10, oldw, oldh);
    }

    @Override // android.widget.Gallery, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        event.offsetLocation(-this.f64323f, 0.0f);
        return super.onTouchEvent(event);
    }

    public void setOnItemClickListener(a listener) {
        this.f64324g = listener;
    }

    public AlignLeftGallery(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64319b = new Camera();
        a(context, attrs);
        setStaticTransformationsEnabled(true);
    }

    public AlignLeftGallery(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f64319b = new Camera();
        a(context, attrs);
        setStaticTransformationsEnabled(true);
    }
}
