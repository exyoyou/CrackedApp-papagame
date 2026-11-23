package com.facebook.imagepipeline.producers;

import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class m0 implements q0<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f28516f = "PartialDiskCacheProducer";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f28517g = "cached_value_found";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f28518h = "encodedImageSize";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f28519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f28520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.common.memory.g f28521c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.common.memory.a f28522d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f28523e;

    class a implements bolts.g<com.facebook.imagepipeline.image.e, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ t0 f28524a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ProducerContext f28525b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Consumer f28526c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f28527d;

        a(final t0 val$partialImageCacheKey, final ProducerContext val$consumer, final Consumer val$producerContext, final com.facebook.cache.common.c val$listener) {
            this.f28524a = val$partialImageCacheKey;
            this.f28525b = val$consumer;
            this.f28526c = val$producerContext;
            this.f28527d = val$listener;
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void a(bolts.h<com.facebook.imagepipeline.image.e> task) throws Exception {
            if (m0.g(task)) {
                this.f28524a.d(this.f28525b, m0.f28516f, null);
                this.f28526c.a();
            } else if (task.F()) {
                this.f28524a.k(this.f28525b, m0.f28516f, task.A(), null);
                m0.this.i(this.f28526c, this.f28525b, this.f28527d, null);
            } else {
                com.facebook.imagepipeline.image.e eVarB = task.B();
                if (eVarB != null) {
                    t0 t0Var = this.f28524a;
                    ProducerContext producerContext = this.f28525b;
                    t0Var.j(producerContext, m0.f28516f, m0.f(t0Var, producerContext, true, eVarB.y()));
                    com.facebook.imagepipeline.common.a aVarE = com.facebook.imagepipeline.common.a.e(eVarB.y() - 1);
                    eVarB.d0(aVarE);
                    int iY = eVarB.y();
                    ImageRequest imageRequestA = this.f28525b.a();
                    if (aVarE.a(imageRequestA.e())) {
                        this.f28525b.j("disk", "partial");
                        this.f28524a.a(this.f28525b, m0.f28516f, true);
                        this.f28526c.b(eVarB, 9);
                    } else {
                        this.f28526c.b(eVarB, 8);
                        m0.this.i(this.f28526c, new y0(ImageRequestBuilder.d(imageRequestA).z(com.facebook.imagepipeline.common.a.b(iY - 1)).a(), this.f28525b), this.f28527d, eVarB);
                    }
                } else {
                    t0 t0Var2 = this.f28524a;
                    ProducerContext producerContext2 = this.f28525b;
                    t0Var2.j(producerContext2, m0.f28516f, m0.f(t0Var2, producerContext2, false, 0));
                    m0.this.i(this.f28526c, this.f28525b, this.f28527d, eVarB);
                }
            }
            return null;
        }
    }

    class b extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f28529a;

        b(final AtomicBoolean val$isCancelled) {
            this.f28529a = val$isCancelled;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
        public void b() {
            this.f28529a.set(true);
        }
    }

    private static class c extends o<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static final int f28531o = 16384;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e f28532i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final com.facebook.cache.common.c f28533j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final com.facebook.common.memory.g f28534k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final com.facebook.common.memory.a f28535l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        @Nullable
        private final com.facebook.imagepipeline.image.e f28536m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final boolean f28537n;

        /* synthetic */ c(Consumer consumer, com.facebook.imagepipeline.cache.e eVar, com.facebook.cache.common.c cVar, com.facebook.common.memory.g gVar, com.facebook.common.memory.a aVar, com.facebook.imagepipeline.image.e eVar2, boolean z10, a aVar2) {
            this(consumer, eVar, cVar, gVar, aVar, eVar2, z10);
        }

        private void q(InputStream from, OutputStream to, int length) throws IOException {
            byte[] bArr = this.f28535l.get(16384);
            int i10 = length;
            while (i10 > 0) {
                try {
                    int i11 = from.read(bArr, 0, Math.min(16384, i10));
                    if (i11 < 0) {
                        break;
                    } else if (i11 > 0) {
                        to.write(bArr, 0, i11);
                        i10 -= i11;
                    }
                } catch (Throwable th) {
                    this.f28535l.release(bArr);
                    throw th;
                }
            }
            this.f28535l.release(bArr);
            if (i10 > 0) {
                throw new IOException(String.format(null, "Failed to read %d bytes - finished %d short", Integer.valueOf(length), Integer.valueOf(i10)));
            }
        }

        private com.facebook.common.memory.i r(com.facebook.imagepipeline.image.e initialData, com.facebook.imagepipeline.image.e remainingData) throws IOException {
            int i10 = ((com.facebook.imagepipeline.common.a) com.facebook.common.internal.i.i(remainingData.g())).f27770a;
            com.facebook.common.memory.i iVarD = this.f28534k.d(remainingData.y() + i10);
            q(initialData.q(), iVarD, i10);
            q(remainingData.q(), iVarD, remainingData.y());
            return iVarD;
        }

        private void t(com.facebook.common.memory.i pooledOutputStream) throws Throwable {
            com.facebook.imagepipeline.image.e eVar;
            Throwable th;
            CloseableReference closeableReferenceQ = CloseableReference.q(pooledOutputStream.b());
            try {
                eVar = new com.facebook.imagepipeline.image.e((CloseableReference<PooledByteBuffer>) closeableReferenceQ);
                try {
                    eVar.Q();
                    p().b(eVar, 1);
                    com.facebook.imagepipeline.image.e.d(eVar);
                    CloseableReference.h(closeableReferenceQ);
                } catch (Throwable th2) {
                    th = th2;
                    com.facebook.imagepipeline.image.e.d(eVar);
                    CloseableReference.h(closeableReferenceQ);
                    throw th;
                }
            } catch (Throwable th3) {
                eVar = null;
                th = th3;
            }
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable com.facebook.imagepipeline.image.e newResult, int status) {
            if (com.facebook.imagepipeline.producers.b.e(status)) {
                return;
            }
            if (this.f28536m == null || newResult == null || newResult.g() == null) {
                if (!this.f28537n || !com.facebook.imagepipeline.producers.b.m(status, 8) || !com.facebook.imagepipeline.producers.b.d(status) || newResult == null || newResult.o() == com.facebook.imageformat.c.f27545c) {
                    p().b(newResult, status);
                    return;
                } else {
                    this.f28532i.u(this.f28533j, newResult);
                    p().b(newResult, status);
                    return;
                }
            }
            try {
                try {
                    t(r(this.f28536m, newResult));
                } catch (IOException e10) {
                    i3.a.v(m0.f28516f, "Error while merging image data", e10);
                    p().onFailure(e10);
                }
                newResult.close();
                this.f28536m.close();
                this.f28532i.w(this.f28533j);
            } catch (Throwable th) {
                newResult.close();
                this.f28536m.close();
                throw th;
            }
        }

        private c(final Consumer<com.facebook.imagepipeline.image.e> consumer, final com.facebook.imagepipeline.cache.e defaultBufferedDiskCache, final com.facebook.cache.common.c partialImageCacheKey, final com.facebook.common.memory.g pooledByteBufferFactory, final com.facebook.common.memory.a byteArrayPool, @Nullable final com.facebook.imagepipeline.image.e partialEncodedImageFromCache, final boolean isDiskCacheEnabledForWrite) {
            super(consumer);
            this.f28532i = defaultBufferedDiskCache;
            this.f28533j = partialImageCacheKey;
            this.f28534k = pooledByteBufferFactory;
            this.f28535l = byteArrayPool;
            this.f28536m = partialEncodedImageFromCache;
            this.f28537n = isDiskCacheEnabledForWrite;
        }
    }

    public m0(com.facebook.imagepipeline.cache.e defaultBufferedDiskCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, com.facebook.common.memory.g pooledByteBufferFactory, com.facebook.common.memory.a byteArrayPool, q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f28519a = defaultBufferedDiskCache;
        this.f28520b = cacheKeyFactory;
        this.f28521c = pooledByteBufferFactory;
        this.f28522d = byteArrayPool;
        this.f28523e = inputProducer;
    }

    private static Uri e(ImageRequest imageRequest) {
        return imageRequest.w().buildUpon().appendQueryParameter("fresco_partial", "true").build();
    }

    @Nullable
    @VisibleForTesting
    static Map<String, String> f(final t0 listener, final ProducerContext producerContext, final boolean valueFound, final int sizeInBytes) {
        if (listener.f(producerContext, f28516f)) {
            return valueFound ? ImmutableMap.of("cached_value_found", String.valueOf(valueFound), "encodedImageSize", String.valueOf(sizeInBytes)) : ImmutableMap.of("cached_value_found", String.valueOf(valueFound));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean g(bolts.h<?> task) {
        return task.D() || (task.F() && (task.A() instanceof CancellationException));
    }

    private bolts.g<com.facebook.imagepipeline.image.e, Void> h(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext producerContext, final com.facebook.cache.common.c partialImageCacheKey) {
        return new a(producerContext.d(), producerContext, consumer, partialImageCacheKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(Consumer<com.facebook.imagepipeline.image.e> consumerOfPartialDiskCacheProducer, ProducerContext producerContext, com.facebook.cache.common.c partialImageCacheKey, @Nullable com.facebook.imagepipeline.image.e partialResultFromCache) {
        this.f28523e.a(new c(consumerOfPartialDiskCacheProducer, this.f28519a, partialImageCacheKey, this.f28521c, this.f28522d, partialResultFromCache, producerContext.a().z(32), null), producerContext);
    }

    private void j(final AtomicBoolean isCancelled, ProducerContext producerContext) {
        producerContext.i(new b(isCancelled));
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext producerContext) {
        ImageRequest imageRequestA = producerContext.a();
        boolean z10 = producerContext.a().z(16);
        t0 t0VarD = producerContext.d();
        t0VarD.b(producerContext, f28516f);
        com.facebook.cache.common.c cVarD = this.f28520b.d(imageRequestA, e(imageRequestA), producerContext.b());
        if (!z10) {
            t0VarD.j(producerContext, f28516f, f(t0VarD, producerContext, false, 0));
            i(consumer, producerContext, cVarD, null);
        } else {
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            this.f28519a.q(cVarD, atomicBoolean).m(h(consumer, producerContext, cVarD));
            j(atomicBoolean, producerContext);
        }
    }
}
