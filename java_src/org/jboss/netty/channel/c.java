package org.jboss.netty.channel;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes10.dex */
public class c implements j0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final int f95516f = 64;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final int f95517g = 1024;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final int f95518h = 65536;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f95519i = 4;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f95520j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f95521k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f95522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f95523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f95524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f95525d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f95526e;

    static {
        int i10;
        ArrayList arrayList = new ArrayList();
        for (int i11 = 1; i11 <= 8; i11++) {
            arrayList.add(Integer.valueOf(i11));
        }
        int i12 = 4;
        while (true) {
            i10 = 0;
            if (i12 >= 32) {
                break;
            }
            long j10 = 1 << i12;
            long j11 = j10 >>> 4;
            long j12 = j10 - (j11 << 3);
            while (i10 < 8) {
                j12 += j11;
                if (j12 > 2147483647L) {
                    arrayList.add(Integer.MAX_VALUE);
                } else {
                    arrayList.add(Integer.valueOf((int) j12));
                }
                i10++;
            }
            i12++;
        }
        f95521k = new int[arrayList.size()];
        while (true) {
            int[] iArr = f95521k;
            if (i10 >= iArr.length) {
                return;
            }
            iArr[i10] = ((Integer) arrayList.get(i10)).intValue();
            i10++;
        }
    }

    public c() {
        this(64, 1024, 65536);
    }

    private static int c(int i10) {
        if (i10 <= 16) {
            return i10 - 1;
        }
        int i11 = 0;
        int i12 = i10;
        do {
            i12 >>>= 1;
            i11++;
        } while (i12 != 0);
        int i13 = i11 << 3;
        int i14 = i13 - 25;
        for (int i15 = i13 - 18; i15 >= i14; i15--) {
            if (i10 >= f95521k[i15]) {
                return i15;
            }
        }
        throw new Error("shouldn't reach here; please file a bug report.");
    }

    @Override // org.jboss.netty.channel.j0
    public int a() {
        return this.f95525d;
    }

    @Override // org.jboss.netty.channel.j0
    public void b(int i10) {
        int[] iArr = f95521k;
        if (i10 > iArr[Math.max(0, (this.f95524c - 1) - 1)]) {
            if (i10 >= this.f95525d) {
                int iMin = Math.min(this.f95524c + 4, this.f95523b);
                this.f95524c = iMin;
                this.f95525d = iArr[iMin];
                this.f95526e = false;
                return;
            }
            return;
        }
        if (!this.f95526e) {
            this.f95526e = true;
            return;
        }
        int iMax = Math.max(this.f95524c - 1, this.f95522a);
        this.f95524c = iMax;
        this.f95525d = iArr[iMax];
        this.f95526e = false;
    }

    public c(int i10, int i11, int i12) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("minimum: " + i10);
        }
        if (i11 < i10) {
            throw new IllegalArgumentException("initial: " + i11);
        }
        if (i12 < i11) {
            throw new IllegalArgumentException("maximum: " + i12);
        }
        int iC = c(i10);
        int[] iArr = f95521k;
        if (iArr[iC] < i10) {
            this.f95522a = iC + 1;
        } else {
            this.f95522a = iC;
        }
        int iC2 = c(i12);
        if (iArr[iC2] > i12) {
            this.f95523b = iC2 - 1;
        } else {
            this.f95523b = iC2;
        }
        int iC3 = c(i11);
        this.f95524c = iC3;
        this.f95525d = iArr[iC3];
    }
}
