package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.image.EncodedImageOrigin;
import com.facebook.infer.annotation.Nullsafe;
import java.io.InputStream;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class k0 implements q0<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f28464d = "NetworkFetchProducer";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f28465e = "intermediate_result";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f28466f = 16384;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    static final long f28467g = 100;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final com.facebook.common.memory.g f28468a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.common.memory.a f28469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l0 f28470c;

    class a implements l0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ v f28471a;

        a(final v val$fetchState) {
            this.f28471a = val$fetchState;
        }

        @Override // com.facebook.imagepipeline.producers.l0.a
        public void a() {
            k0.this.k(this.f28471a);
        }

        @Override // com.facebook.imagepipeline.producers.l0.a
        public void b(InputStream response, int responseLength) throws Throwable {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("NetworkFetcher->onResponse");
            }
            k0.this.m(this.f28471a, response, responseLength);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }

        @Override // com.facebook.imagepipeline.producers.l0.a
        public void onFailure(Throwable throwable) {
            k0.this.l(this.f28471a, throwable);
        }
    }

    public k0(com.facebook.common.memory.g pooledByteBufferFactory, com.facebook.common.memory.a byteArrayPool, l0 networkFetcher) {
        this.f28468a = pooledByteBufferFactory;
        this.f28469b = byteArrayPool;
        this.f28470c = networkFetcher;
    }

    protected static float e(int downloaded, int total) {
        return total > 0 ? downloaded / total : 1.0f - ((float) Math.exp(((double) (-downloaded)) / 50000.0d));
    }

    @Nullable
    private Map<String, String> f(v fetchState, int byteSize) {
        if (fetchState.d().f(fetchState.getContext(), f28464d)) {
            return this.f28470c.e(fetchState, byteSize);
        }
        return null;
    }

    protected static void j(com.facebook.common.memory.i pooledOutputStream, int status, @Nullable com.facebook.imagepipeline.common.a responseBytesRange, Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext context) throws Throwable {
        CloseableReference closeableReferenceQ = CloseableReference.q(pooledOutputStream.b());
        com.facebook.imagepipeline.image.e eVar = null;
        try {
            com.facebook.imagepipeline.image.e eVar2 = new com.facebook.imagepipeline.image.e((CloseableReference<PooledByteBuffer>) closeableReferenceQ);
            try {
                eVar2.d0(responseBytesRange);
                eVar2.Q();
                context.n(EncodedImageOrigin.NETWORK);
                consumer.b(eVar2, status);
                com.facebook.imagepipeline.image.e.d(eVar2);
                CloseableReference.h(closeableReferenceQ);
            } catch (Throwable th) {
                th = th;
                eVar = eVar2;
                com.facebook.imagepipeline.image.e.d(eVar);
                CloseableReference.h(closeableReferenceQ);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(v fetchState) {
        fetchState.d().d(fetchState.getContext(), f28464d, null);
        fetchState.a().a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(v fetchState, Throwable e10) {
        fetchState.d().k(fetchState.getContext(), f28464d, e10, null);
        fetchState.d().a(fetchState.getContext(), f28464d, false);
        fetchState.getContext().l("network");
        fetchState.a().onFailure(e10);
    }

    private boolean n(v fetchState) {
        if (fetchState.getContext().m()) {
            return this.f28470c.d(fetchState);
        }
        return false;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext context) {
        context.d().b(context, f28464d);
        v vVarB = this.f28470c.b(consumer, context);
        this.f28470c.c(vVarB, new a(vVarB));
    }

    @VisibleForTesting
    protected long g() {
        return SystemClock.uptimeMillis();
    }

    protected void h(com.facebook.common.memory.i pooledOutputStream, v fetchState) throws Throwable {
        Map<String, String> mapF = f(fetchState, pooledOutputStream.size());
        t0 t0VarD = fetchState.d();
        t0VarD.j(fetchState.getContext(), f28464d, mapF);
        t0VarD.a(fetchState.getContext(), f28464d, true);
        fetchState.getContext().l("network");
        j(pooledOutputStream, fetchState.e() | 1, fetchState.f(), fetchState.a(), fetchState.getContext());
    }

    protected void i(com.facebook.common.memory.i pooledOutputStream, v fetchState) throws Throwable {
        long jG = g();
        if (!n(fetchState) || jG - fetchState.c() < 100) {
            return;
        }
        fetchState.h(jG);
        fetchState.d().h(fetchState.getContext(), f28464d, f28465e);
        j(pooledOutputStream, fetchState.e(), fetchState.f(), fetchState.a(), fetchState.getContext());
    }

    protected void m(v fetchState, InputStream responseData, int responseContentLength) throws Throwable {
        com.facebook.common.memory.i iVarD = responseContentLength > 0 ? this.f28468a.d(responseContentLength) : this.f28468a.b();
        byte[] bArr = this.f28469b.get(16384);
        while (true) {
            try {
                int i10 = responseData.read(bArr);
                if (i10 < 0) {
                    this.f28470c.a(fetchState, iVarD.size());
                    h(iVarD, fetchState);
                    this.f28469b.release(bArr);
                    iVarD.close();
                    return;
                }
                if (i10 > 0) {
                    iVarD.write(bArr, 0, i10);
                    i(iVarD, fetchState);
                    fetchState.a().c(e(iVarD.size(), responseContentLength));
                }
            } catch (Throwable th) {
                this.f28469b.release(bArr);
                iVarD.close();
                throw th;
            }
        }
    }
}
