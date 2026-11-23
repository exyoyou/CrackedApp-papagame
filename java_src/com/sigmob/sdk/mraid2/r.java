package com.sigmob.sdk.mraid2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes3.dex */
public class r extends ScrollView implements o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f81264c = 1000.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f81265d = "PageScrollView";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f81266e = 1000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f81267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f81268b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f81269f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f81270g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private u f81271h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f81272i;

    public r(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(int i10, int i11) {
        if (i10 > 0) {
            int i12 = this.f81272i;
            if (this.f81267a + i12 < i11) {
                scrollTo(0, i12 + Math.abs(i10));
                return;
            }
            return;
        }
        int i13 = this.f81272i;
        if (i13 > 0) {
            scrollTo(0, i13 - Math.abs(i10));
        }
    }

    @Override // android.widget.ScrollView
    public void fling(int velocityX) {
        super.fling(0);
    }

    @Override // com.sigmob.sdk.mraid2.o
    public ViewGroup getView() {
        return this;
    }

    @Override // com.sigmob.sdk.mraid2.o
    public void setPageChangedListener(u pageChangedListener) {
        this.f81271h = pageChangedListener;
    }

    public r(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    @Override // com.sigmob.sdk.mraid2.o
    public void a(int x10, int y10) {
        this.f81269f = y10;
        this.f81270g = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f81272i);
        sb2.append("--------onTouchStart--------");
        sb2.append(this.f81269f);
    }

    @Override // com.sigmob.sdk.mraid2.o
    public void b(int x10, int y10) {
        final int i10 = this.f81269f - y10;
        final int height = getChildAt(0).getHeight();
        post(new Runnable() { // from class: com.sigmob.sdk.mraid2.o0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81244b.c(i10, height);
            }
        });
    }

    public r(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        int i10 = getResources().getDisplayMetrics().heightPixels;
        this.f81267a = i10;
        this.f81268b = i10 / 2;
        this.f81272i = 0;
    }

    @Override // com.sigmob.sdk.mraid2.o
    public void a(final c container, int x10, int y10) {
        final int i10 = this.f81269f - y10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f81272i);
        sb2.append("-----------onTouchEnd--------:");
        sb2.append(i10);
        final boolean zA = a(i10);
        final int height = getChildAt(0).getHeight();
        post(new Runnable() { // from class: com.sigmob.sdk.mraid2.p0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81251b.a(zA, i10, height, container);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z10, int i10, int i11, c cVar) {
        int i12;
        if (z10) {
            int i13 = this.f81272i;
            if (i10 > 0) {
                int i14 = this.f81267a;
                if (i13 + i14 < i11) {
                    this.f81272i = i13 + i14;
                }
                i12 = 1;
            } else {
                if (i13 > 0) {
                    this.f81272i = i13 - this.f81267a;
                }
                i12 = 2;
            }
            u uVar = this.f81271h;
            if (uVar != null) {
                uVar.onPageChanged(cVar, i12, this.f81272i / this.f81267a);
            }
        }
        smoothScrollTo(0, this.f81272i);
    }

    private boolean a(int d10) {
        int i10 = this.f81267a;
        int i11 = d10 % i10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i11);
        sb2.append(":-----goPage------:");
        sb2.append(d10 / i10);
        float fCurrentTimeMillis = ((d10 * 1000) * 1.0f) / (System.currentTimeMillis() - this.f81270g);
        return fCurrentTimeMillis >= 1000.0f || fCurrentTimeMillis <= -1000.0f || i11 >= this.f81268b;
    }
}
