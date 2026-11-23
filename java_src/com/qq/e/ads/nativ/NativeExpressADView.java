package com.qq.e.ads.nativ;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.pi.AdData;
import com.qq.e.comm.pi.LADI;
import com.qq.e.comm.pi.NFBI;

/* JADX INFO: loaded from: classes2.dex */
public abstract class NativeExpressADView extends FrameLayout implements DownloadConfirmListener, LADI, NFBI {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f78215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private double f78216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f78217d;

    public interface ViewBindStatusListener {
        void onAttachedToWindow();

        void onDetachedFromWindow();

        void onFinishTemporaryDetach();

        void onStartTemporaryDetach();
    }

    public NativeExpressADView(Context context) {
        super(context);
        this.f78215b = -1;
        this.f78216c = -1.0d;
        this.f78217d = -1.0d;
    }

    public abstract void destroy();

    public abstract AdData getBoundData();

    public abstract void negativeFeedback();

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iMin;
        int iMin2;
        if (this.f78215b <= 0 || this.f78216c <= 0.0d || this.f78217d <= 0.0d) {
            super.onMeasure(i10, i11);
            return;
        }
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode == 1073741824 && mode2 == 1073741824) {
            if (size2 < this.f78215b || size < this.f78216c * ((double) size2)) {
                double d10 = this.f78217d;
                double d11 = ((double) size2) * d10;
                double d12 = size;
                if (d11 < d12) {
                    iMin2 = (int) (d11 + 0.5d);
                    i10 = View.MeasureSpec.makeMeasureSpec(iMin2, 1073741824);
                } else {
                    iMin = (int) ((d12 / d10) + 0.5d);
                    i11 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                }
            }
        } else if (mode2 == 1073741824) {
            iMin2 = Math.min((int) ((((double) size2) * this.f78217d) + 0.5d), size);
            i10 = View.MeasureSpec.makeMeasureSpec(iMin2, 1073741824);
        } else {
            iMin = Math.min((int) ((((double) size) / this.f78217d) + 0.5d), size2);
            i11 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        }
        View.MeasureSpec.getSize(i10);
        View.MeasureSpec.getSize(i11);
        super.onMeasure(i10, i11);
        if (mode != Integer.MIN_VALUE || size == getMeasuredWidth()) {
            return;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) ((((double) getMeasuredWidth()) / this.f78217d) + 0.5d), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), Integer.MIN_VALUE);
        View.MeasureSpec.getSize(iMakeMeasureSpec2);
        View.MeasureSpec.getSize(iMakeMeasureSpec);
        super.onMeasure(iMakeMeasureSpec2, iMakeMeasureSpec);
    }

    public abstract void preloadVideo();

    public abstract void render();

    @Deprecated
    public abstract void setAdSize(ADSize aDSize);

    public abstract void setMediaListener(NativeExpressMediaListener nativeExpressMediaListener);

    public void setSizeRules(int i10, double d10, double d11) {
        this.f78215b = i10;
        this.f78216c = d10;
        this.f78217d = d11;
    }

    public abstract void setViewBindStatusListener(ViewBindStatusListener viewBindStatusListener);
}
