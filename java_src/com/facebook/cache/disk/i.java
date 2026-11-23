package com.facebook.cache.disk;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class i implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f26824a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f26825b;

    class a implements f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f26826b = System.currentTimeMillis();

        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c.InterfaceC0556c lhs, c.InterfaceC0556c rhs) {
            float fA = i.this.a(lhs, this.f26826b);
            float fA2 = i.this.a(rhs, this.f26826b);
            if (fA < fA2) {
                return 1;
            }
            return fA2 == fA ? 0 : -1;
        }
    }

    public i(float ageWeight, float sizeWeight) {
        this.f26824a = ageWeight;
        this.f26825b = sizeWeight;
    }

    @VisibleForTesting
    float a(c.InterfaceC0556c entry, long now) {
        return (this.f26824a * (now - entry.getTimestamp())) + (this.f26825b * entry.getSize());
    }

    @Override // com.facebook.cache.disk.g
    public f get() {
        return new a();
    }
}
