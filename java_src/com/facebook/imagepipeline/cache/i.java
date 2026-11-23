package com.facebook.imagepipeline.cache;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface i<K, V> extends t<K, V>, com.facebook.common.memory.b {

    @VisibleForTesting
    public static class a<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final K f27699a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CloseableReference<V> f27700b;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        public final b<K> f27703e;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f27705g;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f27701c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f27702d = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f27704f = 0;

        private a(K k10, CloseableReference<V> closeableReference, @Nullable b<K> bVar, int i10) {
            this.f27699a = (K) com.facebook.common.internal.i.i(k10);
            this.f27700b = (CloseableReference) com.facebook.common.internal.i.i(CloseableReference.f(closeableReference));
            this.f27703e = bVar;
            this.f27705g = i10;
        }

        @VisibleForTesting
        public static <K, V> a<K, V> a(final K key, final CloseableReference<V> valueRef, final int size, @Nullable final b<K> observer) {
            return new a<>(key, valueRef, observer, size);
        }

        @VisibleForTesting
        public static <K, V> a<K, V> b(final K key, final CloseableReference<V> valueRef, @Nullable final b<K> observer) {
            return a(key, valueRef, -1, observer);
        }
    }

    public interface b<K> {
        void a(K key, boolean isExclusive);
    }

    void clear();

    h<K, a<K, V>> d();

    int e();

    u f();

    @Nullable
    CloseableReference<V> h(K key, CloseableReference<V> valueRef, b<K> observer);

    @Nullable
    CloseableReference<V> j(K key);

    int k();

    void l();

    int m();

    Map<Bitmap, Object> o();
}
