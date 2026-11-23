package com.airbnb.lottie.utils;

import androidx.core.os.TraceCompat;
import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes7.dex */
public class h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f6100e = 5;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f6101a = new String[5];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f6102b = new long[5];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6103c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6104d = 0;

    public void a(String str) {
        int i10 = this.f6103c;
        if (i10 == 5) {
            this.f6104d++;
            return;
        }
        this.f6101a[i10] = str;
        this.f6102b[i10] = System.nanoTime();
        TraceCompat.beginSection(str);
        this.f6103c++;
    }

    public float b(String str) {
        int i10 = this.f6104d;
        if (i10 > 0) {
            this.f6104d = i10 - 1;
            return 0.0f;
        }
        int i11 = this.f6103c - 1;
        this.f6103c = i11;
        if (i11 == -1) {
            throw new IllegalStateException("Can't end trace section. There are none.");
        }
        if (str.equals(this.f6101a[i11])) {
            TraceCompat.endSection();
            return (System.nanoTime() - this.f6102b[this.f6103c]) / 1000000.0f;
        }
        throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + this.f6101a[this.f6103c] + o0.f49827a);
    }
}
