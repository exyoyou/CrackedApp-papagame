package com.sigmob.sdk.mraid2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;

/* JADX INFO: loaded from: classes3.dex */
public class l extends HorizontalScrollView implements o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f81225c = 1000.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f81226d = "PageScrollView";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f81227e = 1000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f81228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f81229b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f81230f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f81231g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private u f81232h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f81233i;

    public l(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(int i10, int i11) {
        if (i10 > 0) {
            int i12 = this.f81233i;
            if (this.f81228a + i12 < i11) {
                scrollTo(i12 + Math.abs(i10), 0);
                return;
            }
            return;
        }
        int i13 = this.f81233i;
        if (i13 > 0) {
            scrollTo(i13 - Math.abs(i10), 0);
        }
    }

    @Override // android.widget.HorizontalScrollView
    public void fling(int velocityX) {
        super.fling(0);
    }

    @Override // com.sigmob.sdk.mraid2.o
    public ViewGroup getView() {
        return this;
    }

    @Override // com.sigmob.sdk.mraid2.o
    public void setPageChangedListener(u pageChangedListener) {
        this.f81232h = pageChangedListener;
    }

    public l(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    @Override // com.sigmob.sdk.mraid2.o
    public void a(int x10, int y10) {
        this.f81230f = x10;
        this.f81231g = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f81233i);
        sb2.append("--------onTouchStart--------");
        sb2.append(this.f81230f);
    }

    @Override // com.sigmob.sdk.mraid2.o
    public void b(int x10, int y10) {
        final int i10 = this.f81230f - x10;
        final int width = getChildAt(0).getWidth();
        post(new Runnable() { // from class: com.sigmob.sdk.mraid2.m0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81239b.c(i10, width);
            }
        });
    }

    public l(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        int i10 = getResources().getDisplayMetrics().widthPixels;
        this.f81228a = i10;
        this.f81229b = i10 / 2;
        this.f81233i = 0;
    }

    @Override // com.sigmob.sdk.mraid2.o
    public void a(final c view, int x10, int y10) {
        final int i10 = this.f81230f - x10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f81233i);
        sb2.append("-----------onTouchEnd--------:");
        sb2.append(i10);
        final boolean zA = a(i10);
        final int width = getChildAt(0).getWidth();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(width);
        sb3.append("------是否翻页----");
        sb3.append(zA);
        post(new Runnable() { // from class: com.sigmob.sdk.mraid2.l0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81234b.a(zA, i10, width, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z10, int i10, int i11, c cVar) {
        int i12;
        if (z10) {
            int i13 = this.f81233i;
            if (i10 > 0) {
                int i14 = this.f81228a;
                if (i13 + i14 < i11) {
                    this.f81233i = i13 + i14;
                }
                i12 = 1;
            } else {
                if (i13 > 0) {
                    this.f81233i = i13 - this.f81228a;
                }
                i12 = 2;
            }
            u uVar = this.f81232h;
            if (uVar != null) {
                uVar.onPageChanged(cVar, i12, this.f81233i / this.f81228a);
            }
        }
        smoothScrollTo(this.f81233i, 0);
    }

    private boolean a(int d10) {
        int i10 = this.f81228a;
        int i11 = d10 % i10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i11);
        sb2.append(":-----goPage------:");
        sb2.append(d10 / i10);
        float fCurrentTimeMillis = (d10 * 1000) / (System.currentTimeMillis() - this.f81231g);
        return fCurrentTimeMillis >= 1000.0f || fCurrentTimeMillis <= -1000.0f || i11 >= this.f81229b;
    }
}
