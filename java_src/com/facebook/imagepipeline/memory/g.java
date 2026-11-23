package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private int f28093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private long f28094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f28095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f28096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.facebook.common.references.g<Bitmap> f28097e;

    class a implements com.facebook.common.references.g<Bitmap> {
        a() {
        }

        @Override // com.facebook.common.references.g
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void release(Bitmap value) {
            try {
                g.this.a(value);
            } finally {
                value.recycle();
            }
        }
    }

    public g(int maxCount, int maxSize) {
        com.facebook.common.internal.i.d(Boolean.valueOf(maxCount > 0));
        com.facebook.common.internal.i.d(Boolean.valueOf(maxSize > 0));
        this.f28095c = maxCount;
        this.f28096d = maxSize;
        this.f28097e = new a();
    }

    public synchronized void a(Bitmap bitmap) {
        int iG = com.facebook.imageutils.a.g(bitmap);
        com.facebook.common.internal.i.e(this.f28093a > 0, "No bitmaps registered.");
        long j10 = iG;
        com.facebook.common.internal.i.f(j10 <= this.f28094b, "Bitmap size bigger than the total registered size: %d, %d", Integer.valueOf(iG), Long.valueOf(this.f28094b));
        this.f28094b -= j10;
        this.f28093a--;
    }

    public synchronized int b() {
        return this.f28093a;
    }

    public synchronized int c() {
        return this.f28095c;
    }

    public synchronized int d() {
        return this.f28096d;
    }

    public com.facebook.common.references.g<Bitmap> e() {
        return this.f28097e;
    }

    public synchronized long f() {
        return this.f28094b;
    }

    public synchronized boolean g(Bitmap bitmap) {
        int iG = com.facebook.imageutils.a.g(bitmap);
        int i10 = this.f28093a;
        if (i10 < this.f28095c) {
            long j10 = this.f28094b;
            long j11 = iG;
            if (j10 + j11 <= this.f28096d) {
                this.f28093a = i10 + 1;
                this.f28094b = j10 + j11;
                return true;
            }
        }
        return false;
    }
}
