package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class x implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final g0<Bitmap> f28199a = new k();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f28200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k0 f28202d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f28203e;

    public x(int maxPoolSize, int maxBitmapSize, k0 poolStatsTracker, @Nullable com.facebook.common.memory.c memoryTrimmableRegistry) {
        this.f28200b = maxPoolSize;
        this.f28201c = maxBitmapSize;
        this.f28202d = poolStatsTracker;
        if (memoryTrimmableRegistry != null) {
            memoryTrimmableRegistry.b(this);
        }
    }

    @VisibleForTesting
    private Bitmap g(int size) {
        this.f28202d.a(size);
        return Bitmap.createBitmap(1, size, Bitmap.Config.ALPHA_8);
    }

    private synchronized void t(int maxSize) {
        Bitmap bitmapPop;
        while (this.f28203e > maxSize && (bitmapPop = this.f28199a.pop()) != null) {
            int iA = this.f28199a.a(bitmapPop);
            this.f28203e -= iA;
            this.f28202d.e(iA);
        }
    }

    @Override // com.facebook.common.memory.b
    public void q(MemoryTrimType trimType) {
        t((int) (((double) this.f28200b) * (1.0d - trimType.getSuggestedTrimRatio())));
    }

    @Override // com.facebook.common.memory.e
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public synchronized Bitmap get(final int size) {
        int i10 = this.f28203e;
        int i11 = this.f28200b;
        if (i10 > i11) {
            t(i11);
        }
        Bitmap bitmap = this.f28199a.get(size);
        if (bitmap == null) {
            return g(size);
        }
        int iA = this.f28199a.a(bitmap);
        this.f28203e -= iA;
        this.f28202d.b(iA);
        return bitmap;
    }

    @Override // com.facebook.common.memory.e, com.facebook.common.references.g
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public void release(final Bitmap value) {
        int iA = this.f28199a.a(value);
        if (iA <= this.f28201c) {
            this.f28202d.f(iA);
            this.f28199a.put(value);
            synchronized (this) {
                this.f28203e += iA;
            }
        }
    }
}
