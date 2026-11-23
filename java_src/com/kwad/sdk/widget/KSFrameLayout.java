package com.kwad.sdk.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
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
public class KSFrameLayout extends FrameLayout implements com.kwad.sdk.core.view.e, g, k {
    private com.kwad.sdk.core.view.d baK;
    private final al.a baL;
    private i btg;
    private k bth;
    private View bti;

    /* JADX INFO: renamed from: cb, reason: collision with root package name */
    private final AtomicBoolean f75334cb;
    private float mRatio;
    private j mViewRCHelper;
    private boolean widthBasedRatio;

    public KSFrameLayout(@NonNull Context context) {
        super(context);
        this.f75334cb = new AtomicBoolean(true);
        this.mRatio = 0.0f;
        this.baL = new al.a();
        this.baK = new com.kwad.sdk.core.view.d();
        this.widthBasedRatio = true;
        init(context, null);
    }

    private View getPvView() {
        View view = this.bti;
        return view == null ? this : view;
    }

    private static float[] getRadius(float f10, float f11, float f12, float f13) {
        return new float[]{f10, f10, f11, f11, f12, f12, f13, f13};
    }

    private void zP() {
        try {
            if (this.f75334cb.getAndSet(false)) {
                ae();
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    private void zQ() {
        try {
            if (this.f75334cb.getAndSet(true)) {
                return;
            }
            af();
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    @CallSuper
    public void H(View view) {
        k kVar = this.bth;
        if (kVar != null) {
            kVar.H(view);
        }
    }

    @CallSuper
    protected void ae() {
        this.btg.onAttachedToWindow();
    }

    @CallSuper
    protected void af() {
        this.btg.onDetachedFromWindow();
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
        com.kwad.sdk.core.e.j(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        this.mViewRCHelper.beforeDraw(canvas);
        super.draw(canvas);
        this.mViewRCHelper.afterDraw(canvas);
    }

    @Override // com.kwad.sdk.widget.g
    @MainThread
    public al.a getTouchCoords() {
        return this.baL;
    }

    public float getVisiblePercent() {
        return this.btg.getVisiblePercent();
    }

    @Override // com.kwad.sdk.core.view.e
    @NonNull
    public com.kwad.sdk.core.view.d getWindowFocusChangeHelper() {
        return this.baK;
    }

    protected void init(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        if (attributeSet != null) {
            int i10 = R.attr.ksad_ratio;
            int[] iArr = {i10};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
            this.mRatio = typedArrayObtainStyledAttributes.getFloat(Arrays.binarySearch(iArr, i10), 0.0f);
            typedArrayObtainStyledAttributes.recycle();
        }
        i iVar = new i(getPvView(), this);
        this.btg = iVar;
        iVar.cG(true);
        j jVar = new j();
        this.mViewRCHelper = jVar;
        jVar.initAttrs(context, attributeSet);
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

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.mRatio != 0.0f) {
            if (this.widthBasedRatio) {
                i11 = View.MeasureSpec.makeMeasureSpec((int) (View.MeasureSpec.getSize(i10) * this.mRatio), 1073741824);
            } else {
                i10 = View.MeasureSpec.makeMeasureSpec((int) (View.MeasureSpec.getSize(i11) / this.mRatio), 1073741824);
            }
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

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        this.baK.j(this, z10);
    }

    public void setAllCorner(boolean z10) {
        this.mViewRCHelper.getCornerConf().setAllCorner(z10);
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

    public void setWidthBasedRatio(boolean z10) {
        this.widthBasedRatio = z10;
    }

    public final void setRadius(float f10, float f11, float f12, float f13) {
        this.mViewRCHelper.setRadius(getRadius(f10, f11, f12, f13));
        postInvalidate();
    }

    public KSFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f75334cb = new AtomicBoolean(true);
        this.mRatio = 0.0f;
        this.baL = new al.a();
        this.baK = new com.kwad.sdk.core.view.d();
        this.widthBasedRatio = true;
        init(context, attributeSet);
    }

    public KSFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f75334cb = new AtomicBoolean(true);
        this.mRatio = 0.0f;
        this.baL = new al.a();
        this.baK = new com.kwad.sdk.core.view.d();
        this.widthBasedRatio = true;
        init(context, attributeSet);
    }

    public KSFrameLayout(@NonNull Context context, View view) {
        super(context);
        this.f75334cb = new AtomicBoolean(true);
        this.mRatio = 0.0f;
        this.baL = new al.a();
        this.baK = new com.kwad.sdk.core.view.d();
        this.widthBasedRatio = true;
        this.bti = view;
        init(context, null);
    }
}
