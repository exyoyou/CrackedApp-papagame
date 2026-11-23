package com.kwad.sdk.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.R;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.al;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class KSLinearLayout extends LinearLayout implements k {
    private final al.a baL;
    private i btg;
    private k bth;

    /* JADX INFO: renamed from: cb, reason: collision with root package name */
    private final AtomicBoolean f75335cb;
    private float mRatio;
    private j mViewRCHelper;

    public KSLinearLayout(@NonNull Context context) {
        super(context);
        this.f75335cb = new AtomicBoolean(true);
        this.mRatio = 0.0f;
        this.baL = new al.a();
        init(context, null);
    }

    @CallSuper
    private void ae() {
        this.btg.onAttachedToWindow();
    }

    @CallSuper
    private void af() {
        this.btg.onDetachedFromWindow();
    }

    private static float[] getRadius(float f10, float f11, float f12, float f13) {
        return new float[]{f10, f10, f11, f11, f12, f12, f13, f13};
    }

    private void init(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        if (attributeSet != null) {
            int i10 = R.attr.ksad_ratio;
            int[] iArr = {i10};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
            this.mRatio = typedArrayObtainStyledAttributes.getFloat(Arrays.binarySearch(iArr, i10), 0.0f);
            typedArrayObtainStyledAttributes.recycle();
        }
        i iVar = new i(this, this);
        this.btg = iVar;
        iVar.cG(true);
        j jVar = new j();
        this.mViewRCHelper = jVar;
        jVar.initAttrs(context, attributeSet);
    }

    private void zP() {
        if (this.f75335cb.getAndSet(false)) {
            ae();
        }
    }

    private void zQ() {
        if (this.f75335cb.getAndSet(true)) {
            return;
        }
        af();
    }

    @Override // com.kwad.sdk.widget.k
    @CallSuper
    public final void H(View view) {
        k kVar = this.bth;
        if (kVar != null) {
            kVar.H(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        this.mViewRCHelper.beforeDispatchDraw(canvas);
        try {
            super.dispatchDraw(canvas);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
        this.mViewRCHelper.afterDispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.baL.H(getWidth(), getHeight());
            this.baL.j(motionEvent.getX(), motionEvent.getY());
        } else if (action == 1) {
            this.baL.k(motionEvent.getX(), motionEvent.getY());
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        this.mViewRCHelper.beforeDraw(canvas);
        super.draw(canvas);
        this.mViewRCHelper.afterDraw(canvas);
    }

    @MainThread
    public al.a getTouchCoords() {
        return this.baL;
    }

    public float getVisiblePercent() {
        return this.btg.getVisiblePercent();
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        zP();
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        zQ();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        zP();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.mRatio != 0.0f) {
            i11 = View.MeasureSpec.makeMeasureSpec((int) (View.MeasureSpec.getSize(i10) * this.mRatio), 1073741824);
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        this.btg.d(i10, i11, i12, i13);
        super.onSizeChanged(i10, i11, i12, i13);
        this.btg.XM();
        this.mViewRCHelper.onSizeChanged(i10, i11);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        zQ();
    }

    public void setRadius(float f10) {
        this.mViewRCHelper.setRadius(f10);
        postInvalidate();
    }

    public void setRatio(float f10) {
        this.mRatio = f10;
    }

    public void setViewVisibleListener(k kVar) {
        this.bth = kVar;
    }

    public void setVisiblePercent(float f10) {
        this.btg.setVisiblePercent(f10);
    }

    public final void setRadius(float f10, float f11, float f12, float f13) {
        this.mViewRCHelper.setRadius(getRadius(f10, f11, 0.0f, 0.0f));
        postInvalidate();
    }

    public KSLinearLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f75335cb = new AtomicBoolean(true);
        this.mRatio = 0.0f;
        this.baL = new al.a();
        init(context, attributeSet);
    }

    public KSLinearLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f75335cb = new AtomicBoolean(true);
        this.mRatio = 0.0f;
        this.baL = new al.a();
        init(context, attributeSet);
    }
}
