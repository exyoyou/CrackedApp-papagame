package com.qq.e.ads.nativ.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class NativeAdContainer extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewStatusListener f78244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewStatus f78245c;

    /* JADX INFO: renamed from: com.qq.e.ads.nativ.widget.NativeAdContainer$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f78246a;

        static {
            int[] iArr = new int[ViewStatus.values().length];
            f78246a = iArr;
            try {
                iArr[ViewStatus.ATTACHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78246a[ViewStatus.DETACHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private enum ViewStatus {
        INIT,
        ATTACHED,
        DETACHED
    }

    public NativeAdContainer(Context context) {
        super(context);
        this.f78245c = ViewStatus.INIT;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ViewStatusListener viewStatusListener = this.f78244b;
        if (viewStatusListener != null) {
            viewStatusListener.onDispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f78245c = ViewStatus.ATTACHED;
        ViewStatusListener viewStatusListener = this.f78244b;
        if (viewStatusListener != null) {
            viewStatusListener.onAttachToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f78245c = ViewStatus.DETACHED;
        ViewStatusListener viewStatusListener = this.f78244b;
        if (viewStatusListener != null) {
            viewStatusListener.onDetachFromWindow();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        ViewStatusListener viewStatusListener = this.f78244b;
        if (viewStatusListener != null) {
            viewStatusListener.onWindowFocusChanged(z10);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        ViewStatusListener viewStatusListener = this.f78244b;
        if (viewStatusListener != null) {
            viewStatusListener.onWindowVisibilityChanged(i10);
        }
    }

    public void setViewStatusListener(ViewStatusListener viewStatusListener) {
        this.f78244b = viewStatusListener;
        if (viewStatusListener != null) {
            int i10 = AnonymousClass1.f78246a[this.f78245c.ordinal()];
            if (i10 == 1) {
                this.f78244b.onAttachToWindow();
            } else {
                if (i10 != 2) {
                    return;
                }
                this.f78244b.onDetachFromWindow();
            }
        }
    }

    public NativeAdContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f78245c = ViewStatus.INIT;
    }

    public NativeAdContainer(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f78245c = ViewStatus.INIT;
    }
}
