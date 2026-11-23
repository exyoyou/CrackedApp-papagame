package com.facebook.imagepipeline.cache;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class j<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i<K, V> f27706a;

    public static class a<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f27707a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f27708b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f27709c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f27710d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f27711e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List<b<K, V>> f27712f = new ArrayList();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final List<b<K, V>> f27713g = new ArrayList();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Map<Bitmap, Object> f27714h = new HashMap();

        public a(int size, int lruSize, u params) {
            this.f27707a = params.f27746a;
            this.f27708b = params.f27747b;
            this.f27709c = params.f27750e;
            this.f27710d = size;
            this.f27711e = lruSize;
        }

        public void a() {
            Iterator<b<K, V>> it2 = this.f27712f.iterator();
            while (it2.hasNext()) {
                it2.next().a();
            }
            Iterator<b<K, V>> it3 = this.f27713g.iterator();
            while (it3.hasNext()) {
                it3.next().a();
            }
        }
    }

    public static class b<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final K f27715a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        public final CloseableReference<V> f27716b;

        public b(K k10, CloseableReference<V> closeableReference) {
            this.f27715a = (K) com.facebook.common.internal.i.i(k10);
            this.f27716b = CloseableReference.f(closeableReference);
        }

        public void a() {
            CloseableReference.h(this.f27716b);
        }
    }

    public j(i<K, V> countingBitmapCache) {
        this.f27706a = countingBitmapCache;
    }

    public a a() {
        a aVar;
        synchronized (this.f27706a) {
            aVar = new a(this.f27706a.a(), this.f27706a.e(), this.f27706a.f());
            Iterator<Map.Entry<K, i.a<K, V>>> it2 = this.f27706a.d().g(null).iterator();
            while (it2.hasNext()) {
                i.a<K, V> value = it2.next().getValue();
                b<K, V> bVar = new b<>(value.f27699a, value.f27700b);
                if (value.f27701c > 0) {
                    aVar.f27713g.add(bVar);
                } else {
                    aVar.f27712f.add(bVar);
                }
            }
            for (Map.Entry<Bitmap, Object> entry : this.f27706a.o().entrySet()) {
                if (entry != null && !entry.getKey().isRecycled()) {
                    aVar.f27714h.put(entry.getKey(), entry.getValue());
                }
            }
        }
        return aVar;
    }
}
