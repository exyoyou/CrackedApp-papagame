package com.papa.gsyvideoplayer.utils;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<View> f77045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f77046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f77047c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f77048d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f77049e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f77050f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f77051g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f77052h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f77053i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final a f77054j;

    public interface a {
        int getCurrentVideoHeight();

        int getCurrentVideoWidth();

        int getVideoSarDen();

        int getVideoSarNum();
    }

    public j(View view, a aVar) {
        this.f77054j = aVar;
        this.f77045a = new WeakReference<>(view);
    }

    /* JADX WARN: Code duplicated, block: B:76:0x00ed A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:77:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f3  */
    public void a(int i10, int i11) {
        int i12;
        int i13;
        float f10;
        int i14;
        int i15;
        this.f77053i = f.g();
        if (this.f77047c == 0 || (i12 = this.f77046b) == 0) {
            this.f77051g = 1;
            this.f77052h = 1;
            return;
        }
        int i16 = this.f77050f;
        if (i16 == 90 || i16 == 270) {
            i11 = i10;
            i10 = i11;
        }
        int i17 = this.f77048d;
        if (i17 != 0 && (i15 = this.f77049e) != 0) {
            i12 = (int) ((((double) i17) / (((double) i15) / 1.0d)) * ((double) i12));
        }
        int defaultSize = View.getDefaultSize(i12, i10);
        int defaultSize2 = View.getDefaultSize(this.f77047c, i11);
        if (this.f77053i != -4) {
            if (i12 <= 0 || this.f77047c <= 0) {
                i10 = defaultSize;
                i11 = defaultSize2;
            } else {
                int mode = View.MeasureSpec.getMode(i10);
                i10 = View.MeasureSpec.getSize(i10);
                int mode2 = View.MeasureSpec.getMode(i11);
                i11 = View.MeasureSpec.getSize(i11);
                if (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) {
                    float f11 = i10;
                    float f12 = i11;
                    float f13 = f11 / f12;
                    int i18 = this.f77053i;
                    if (i18 == -5) {
                        float f14 = f.f();
                        int i19 = this.f77050f;
                        f10 = (i19 == 90 || i19 == 270) ? 1.0f / f14 : f14;
                    } else if (i18 == 6) {
                        int i20 = this.f77050f;
                        f10 = (i20 == 90 || i20 == 270) ? 0.5f : 2.0f;
                    } else if (i18 == 1) {
                        int i21 = this.f77050f;
                        f10 = (i21 == 90 || i21 == 270) ? 0.5625f : 1.7777778f;
                    } else if (i18 != 2) {
                        f10 = i12 / this.f77047c;
                        int i22 = this.f77048d;
                        if (i22 > 0 && (i14 = this.f77049e) > 0) {
                            f10 = (f10 * i22) / i14;
                        }
                    } else {
                        int i23 = this.f77050f;
                        f10 = (i23 == 90 || i23 == 270) ? 0.75f : 1.3333334f;
                    }
                    boolean z10 = f10 > f13;
                    int i24 = this.f77053i;
                    if (i24 == -5) {
                        if (z10) {
                            i11 = (int) (f11 / f10);
                        } else {
                            i10 = (int) (f12 * f10);
                        }
                    } else if (i24 != 4) {
                        if (i24 == 6 || i24 == 0 || i24 == 1 || i24 == 2) {
                            if (z10) {
                                i11 = (int) (f11 / f10);
                            } else {
                                i10 = (int) (f12 * f10);
                            }
                        } else if (z10) {
                            i10 = Math.min(i12, i10);
                            i11 = (int) (i10 / f10);
                        } else {
                            int iMin = Math.min(this.f77047c, i11);
                            i11 = iMin;
                            i10 = (int) (iMin * f10);
                        }
                    } else if (z10) {
                        i10 = (int) (f12 * f10);
                    } else {
                        i11 = (int) (f11 / f10);
                    }
                } else if (mode == 1073741824 && mode2 == 1073741824) {
                    int i25 = i12 * i11;
                    int i26 = this.f77047c;
                    if (i25 < i10 * i26) {
                        i10 = i25 / i26;
                    } else if (i25 > i10 * i26) {
                        i11 = (i26 * i10) / i12;
                    }
                } else if (mode == 1073741824) {
                    int i27 = (this.f77047c * i10) / i12;
                    if (mode2 != Integer.MIN_VALUE || i27 <= i11) {
                        i11 = i27;
                    }
                } else if (mode2 == 1073741824) {
                    int i28 = (i12 * i11) / this.f77047c;
                    if (mode != Integer.MIN_VALUE || i28 <= i10) {
                        i10 = i28;
                    }
                } else {
                    int i29 = this.f77047c;
                    if (mode2 != Integer.MIN_VALUE || i29 <= i11) {
                        i13 = i12;
                        i11 = i29;
                    } else {
                        i13 = (i11 * i12) / i29;
                    }
                    if (mode != Integer.MIN_VALUE || i13 <= i10) {
                        i10 = i13;
                    } else {
                        i11 = (i29 * i10) / i12;
                    }
                }
            }
        }
        this.f77051g = i10;
        this.f77052h = i11;
    }

    public int b() {
        return this.f77052h;
    }

    public int c() {
        return this.f77051g;
    }

    public View d() {
        WeakReference<View> weakReference = this.f77045a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public void e(int i10, int i11, int i12) {
        a aVar = this.f77054j;
        if (aVar != null) {
            try {
                int currentVideoWidth = aVar.getCurrentVideoWidth();
                int currentVideoHeight = this.f77054j.getCurrentVideoHeight();
                c.h("videoWidth: " + currentVideoWidth + " videoHeight: " + currentVideoHeight);
                int videoSarNum = this.f77054j.getVideoSarNum();
                int videoSarDen = this.f77054j.getVideoSarDen();
                if (currentVideoWidth > 0 && currentVideoHeight > 0) {
                    h(videoSarNum, videoSarDen);
                    i(currentVideoWidth, currentVideoHeight);
                }
                g(i12);
                a(i10, i11);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void f(int i10) {
        this.f77053i = i10;
    }

    public void g(int i10) {
        this.f77050f = i10;
    }

    public void h(int i10, int i11) {
        this.f77048d = i10;
        this.f77049e = i11;
    }

    public void i(int i10, int i11) {
        this.f77046b = i10;
        this.f77047c = i11;
    }
}
