package com.facebook.imagepipeline.animated.impl;

import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.h;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.cache.i;
import java.util.Iterator;
import java.util.LinkedHashSet;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.cache.common.c f27604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f27605b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private final LinkedHashSet<com.facebook.cache.common.c> f27607d = new LinkedHashSet<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i.b<com.facebook.cache.common.c> f27606c = new a();

    class a implements i.b<com.facebook.cache.common.c> {
        a() {
        }

        @Override // com.facebook.imagepipeline.cache.i.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.facebook.cache.common.c key, boolean isExclusive) {
            c.this.f(key, isExclusive);
        }
    }

    @VisibleForTesting
    static class b implements com.facebook.cache.common.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.facebook.cache.common.c f27609a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f27610b;

        public b(com.facebook.cache.common.c imageCacheKey, int frameIndex) {
            this.f27609a = imageCacheKey;
            this.f27610b = frameIndex;
        }

        @Override // com.facebook.cache.common.c
        @Nullable
        public String a() {
            return null;
        }

        @Override // com.facebook.cache.common.c
        public boolean b() {
            return false;
        }

        @Override // com.facebook.cache.common.c
        public boolean c(Uri uri) {
            return this.f27609a.c(uri);
        }

        @Override // com.facebook.cache.common.c
        public boolean equals(@Nullable Object o10) {
            if (o10 == this) {
                return true;
            }
            if (!(o10 instanceof b)) {
                return false;
            }
            b bVar = (b) o10;
            return this.f27610b == bVar.f27610b && this.f27609a.equals(bVar.f27609a);
        }

        @Override // com.facebook.cache.common.c
        public int hashCode() {
            return (this.f27609a.hashCode() * 1013) + this.f27610b;
        }

        @Override // com.facebook.cache.common.c
        public String toString() {
            return h.e(this).f("imageCacheKey", this.f27609a).d("frameIndex", this.f27610b).toString();
        }
    }

    public c(com.facebook.cache.common.c imageCacheKey, final i<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> backingCache) {
        this.f27604a = imageCacheKey;
        this.f27605b = backingCache;
    }

    private b e(int frameIndex) {
        return new b(this.f27604a, frameIndex);
    }

    @Nullable
    private synchronized com.facebook.cache.common.c g() {
        com.facebook.cache.common.c next;
        Iterator<com.facebook.cache.common.c> it2 = this.f27607d.iterator();
        if (it2.hasNext()) {
            next = it2.next();
            it2.remove();
        } else {
            next = null;
        }
        return next;
    }

    @Nullable
    public CloseableReference<com.facebook.imagepipeline.image.c> a(int frameIndex, CloseableReference<com.facebook.imagepipeline.image.c> imageRef) {
        return this.f27605b.h(e(frameIndex), imageRef, this.f27606c);
    }

    public boolean b(int frameIndex) {
        return this.f27605b.contains(e(frameIndex));
    }

    @Nullable
    public CloseableReference<com.facebook.imagepipeline.image.c> c(int frameIndex) {
        return this.f27605b.get(e(frameIndex));
    }

    @Nullable
    public CloseableReference<com.facebook.imagepipeline.image.c> d() {
        CloseableReference<com.facebook.imagepipeline.image.c> closeableReferenceJ;
        do {
            com.facebook.cache.common.c cVarG = g();
            if (cVarG == null) {
                return null;
            }
            closeableReferenceJ = this.f27605b.j(cVarG);
        } while (closeableReferenceJ == null);
        return closeableReferenceJ;
    }

    public synchronized void f(com.facebook.cache.common.c key, boolean isReusable) {
        try {
            if (isReusable) {
                this.f27607d.add(key);
            } else {
                this.f27607d.remove(key);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
