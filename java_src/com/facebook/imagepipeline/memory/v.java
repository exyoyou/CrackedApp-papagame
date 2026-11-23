package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.LOCAL)
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.common.references.g<byte[]> f28195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final b f28196b;

    class a implements com.facebook.common.references.g<byte[]> {
        a() {
        }

        @Override // com.facebook.common.references.g
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void release(byte[] unused) {
            v.this.d(unused);
        }
    }

    @VisibleForTesting
    static class b extends w {
        public b(com.facebook.common.memory.c memoryTrimmableRegistry, j0 poolParams, k0 poolStatsTracker) {
            super(memoryTrimmableRegistry, poolParams, poolStatsTracker);
        }

        @Override // com.facebook.imagepipeline.memory.BasePool
        l<byte[]> I(int bucketedSize) {
            return new f0(z(bucketedSize), this.f28064c.f28151g, 0);
        }
    }

    public v(com.facebook.common.memory.c memoryTrimmableRegistry, j0 params) {
        com.facebook.common.internal.i.d(Boolean.valueOf(params.f28151g > 0));
        this.f28196b = new b(memoryTrimmableRegistry, params, e0.h());
        this.f28195a = new a();
    }

    public CloseableReference<byte[]> a(int size) {
        return CloseableReference.t(this.f28196b.get(size), this.f28195a);
    }

    public int b() {
        return this.f28196b.R();
    }

    public Map<String, Integer> c() {
        return this.f28196b.A();
    }

    public void d(byte[] value) {
        this.f28196b.release(value);
    }
}
