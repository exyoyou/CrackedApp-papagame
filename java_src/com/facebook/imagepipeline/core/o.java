package com.facebook.imagepipeline.core;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.producers.c1;
import com.facebook.imagepipeline.producers.g1;
import com.facebook.imagepipeline.producers.l0;
import com.facebook.imagepipeline.producers.p;
import com.facebook.imagepipeline.producers.q;
import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.s;
import com.facebook.imagepipeline.producers.w0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class o {

    @Nullable
    @VisibleForTesting
    q0<CloseableReference<com.facebook.imagepipeline.image.c>> A;

    @Nullable
    @VisibleForTesting
    q0<CloseableReference<com.facebook.imagepipeline.image.c>> B;

    @Nullable
    @VisibleForTesting
    q0<CloseableReference<com.facebook.imagepipeline.image.c>> C;

    @Nullable
    @VisibleForTesting
    q0<CloseableReference<com.facebook.imagepipeline.image.c>> D;

    @Nullable
    @VisibleForTesting
    q0<CloseableReference<com.facebook.imagepipeline.image.c>> E;

    @Nullable
    @VisibleForTesting
    q0<CloseableReference<com.facebook.imagepipeline.image.c>> F;

    @VisibleForTesting
    Map<q0<CloseableReference<com.facebook.imagepipeline.image.c>>, q0<CloseableReference<com.facebook.imagepipeline.image.c>>> G = new HashMap();

    @VisibleForTesting
    Map<q0<CloseableReference<com.facebook.imagepipeline.image.c>>, q0<Void>> H = new HashMap();

    @VisibleForTesting
    Map<q0<CloseableReference<com.facebook.imagepipeline.image.c>>, q0<CloseableReference<com.facebook.imagepipeline.image.c>>> I = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ContentResolver f27963a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n f27964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l0 f27965c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f27966d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f27967e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f27968f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c1 f27969g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f27970h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f27971i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f27972j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final l4.d f27973k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f27974l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f27975m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f27976n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    q0<CloseableReference<com.facebook.imagepipeline.image.c>> f27977o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    q0<com.facebook.imagepipeline.image.e> f27978p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    q0<com.facebook.imagepipeline.image.e> f27979q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    q0<com.facebook.imagepipeline.image.e> f27980r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    q0<CloseableReference<PooledByteBuffer>> f27981s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    q0<CloseableReference<PooledByteBuffer>> f27982t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    q0<CloseableReference<PooledByteBuffer>> f27983u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    q0<Void> f27984v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    q0<Void> f27985w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    private q0<com.facebook.imagepipeline.image.e> f27986x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    q0<CloseableReference<com.facebook.imagepipeline.image.c>> f27987y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    q0<CloseableReference<com.facebook.imagepipeline.image.c>> f27988z;

    public o(ContentResolver contentResolver, n producerFactory, l0 networkFetcher, boolean resizeAndRotateEnabledForNetwork, boolean webpSupportEnabled, c1 threadHandoffProducerQueue, boolean downSampleEnabled, boolean useBitmapPrepareToDraw, boolean partialImageCachingEnabled, boolean diskCacheEnabled, l4.d imageTranscoderFactory, boolean isEncodedMemoryCacheProbingEnabled, boolean isDiskCacheProbingEnabled, boolean allowDelay) {
        this.f27963a = contentResolver;
        this.f27964b = producerFactory;
        this.f27965c = networkFetcher;
        this.f27966d = resizeAndRotateEnabledForNetwork;
        this.f27967e = webpSupportEnabled;
        this.f27969g = threadHandoffProducerQueue;
        this.f27970h = downSampleEnabled;
        this.f27971i = useBitmapPrepareToDraw;
        this.f27968f = partialImageCachingEnabled;
        this.f27972j = diskCacheEnabled;
        this.f27973k = imageTranscoderFactory;
        this.f27974l = isEncodedMemoryCacheProbingEnabled;
        this.f27975m = isDiskCacheProbingEnabled;
        this.f27976n = allowDelay;
    }

    private synchronized q0<CloseableReference<com.facebook.imagepipeline.image.c>> A() {
        if (this.F == null) {
            this.F = E(this.f27964b.C());
        }
        return this.F;
    }

    private static String B(Uri uri) {
        String strValueOf = String.valueOf(uri);
        if (strValueOf.length() <= 30) {
            return strValueOf;
        }
        return strValueOf.substring(0, 30) + "...";
    }

    private q0<CloseableReference<com.facebook.imagepipeline.image.c>> C(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarB = this.f27964b.b(this.f27964b.d(this.f27964b.e(inputProducer)), this.f27969g);
        if (!this.f27974l && !this.f27975m) {
            return this.f27964b.c(q0VarB);
        }
        return this.f27964b.g(this.f27964b.c(q0VarB));
    }

    private q0<CloseableReference<com.facebook.imagepipeline.image.c>> D(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#newBitmapCacheGetToDecodeSequence");
        }
        q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarC = C(this.f27964b.j(inputProducer));
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return q0VarC;
    }

    private q0<CloseableReference<com.facebook.imagepipeline.image.c>> E(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return F(inputProducer, new g1[]{this.f27964b.t()});
    }

    private q0<CloseableReference<com.facebook.imagepipeline.image.c>> F(q0<com.facebook.imagepipeline.image.e> inputProducer, g1<com.facebook.imagepipeline.image.e>[] thumbnailProducers) {
        return D(J(H(inputProducer), thumbnailProducers));
    }

    private q0<com.facebook.imagepipeline.image.e> G(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        q qVarM;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#newDiskCacheSequence");
        }
        if (this.f27968f) {
            qVarM = this.f27964b.m(this.f27964b.z(inputProducer));
        } else {
            qVarM = this.f27964b.m(inputProducer);
        }
        p pVarL = this.f27964b.l(qVarM);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return pVarL;
    }

    private q0<com.facebook.imagepipeline.image.e> H(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        if (m3.c.f94151a && (!this.f27967e || m3.c.f94154d == null)) {
            inputProducer = this.f27964b.H(inputProducer);
        }
        if (this.f27972j) {
            inputProducer = G(inputProducer);
        }
        s sVarO = this.f27964b.o(inputProducer);
        if (!this.f27975m) {
            return this.f27964b.n(sVarO);
        }
        return this.f27964b.n(this.f27964b.p(sVarO));
    }

    private q0<com.facebook.imagepipeline.image.e> I(g1<com.facebook.imagepipeline.image.e>[] thumbnailProducers) {
        return this.f27964b.D(this.f27964b.G(thumbnailProducers), true, this.f27973k);
    }

    private q0<com.facebook.imagepipeline.image.e> J(q0<com.facebook.imagepipeline.image.e> inputProducer, g1<com.facebook.imagepipeline.image.e>[] thumbnailProducers) {
        return n.h(I(thumbnailProducers), this.f27964b.F(this.f27964b.D(n.a(inputProducer), true, this.f27973k)));
    }

    private static void K(ImageRequest imageRequest) {
        com.facebook.common.internal.i.i(imageRequest);
        com.facebook.common.internal.i.d(Boolean.valueOf(imageRequest.l().getValue() <= ImageRequest.RequestLevel.ENCODED_MEMORY_CACHE.getValue()));
    }

    private synchronized q0<com.facebook.imagepipeline.image.e> a() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundLocalContentUriFetchToEncodeMemorySequence");
        }
        if (this.f27979q == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundLocalContentUriFetchToEncodeMemorySequence:init");
            }
            this.f27979q = this.f27964b.b(H(this.f27964b.r()), this.f27969g);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f27979q;
    }

    private synchronized q0<com.facebook.imagepipeline.image.e> b() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundLocalFileFetchToEncodeMemorySequence");
        }
        if (this.f27978p == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundLocalFileFetchToEncodeMemorySequence:init");
            }
            this.f27978p = this.f27964b.b(H(this.f27964b.u()), this.f27969g);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f27978p;
    }

    private synchronized q0<com.facebook.imagepipeline.image.e> c() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundNetworkFetchToEncodedMemorySequence");
        }
        if (this.f27980r == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundNetworkFetchToEncodedMemorySequence:init");
            }
            this.f27980r = this.f27964b.b(f(), this.f27969g);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f27980r;
    }

    private q0<CloseableReference<com.facebook.imagepipeline.image.c>> d(ImageRequest imageRequest) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBasicDecodedImageSequence");
            }
            com.facebook.common.internal.i.i(imageRequest);
            Uri uriW = imageRequest.w();
            com.facebook.common.internal.i.j(uriW, "Uri is null.");
            int iX = imageRequest.x();
            if (iX == 0) {
                q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarX = x();
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return q0VarX;
            }
            switch (iX) {
                case 2:
                    q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarV = v();
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                    return q0VarV;
                case 3:
                    q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarT = t();
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                    return q0VarT;
                case 4:
                    if (imageRequest.j() && Build.VERSION.SDK_INT >= 29) {
                        q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarQ = q();
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                        }
                        return q0VarQ;
                    }
                    if (j3.a.f(this.f27963a.getType(uriW))) {
                        q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarV2 = v();
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                        }
                        return q0VarV2;
                    }
                    q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarP = p();
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                    return q0VarP;
                case 5:
                    q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarN = n();
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                    return q0VarN;
                case 6:
                    q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarU = u();
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                    return q0VarU;
                case 7:
                    q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarG = g();
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                    return q0VarG;
                case 8:
                    q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarA = A();
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                    return q0VarA;
                default:
                    throw new IllegalArgumentException("Unsupported uri scheme! Uri is: " + B(uriW));
            }
        } catch (Throwable th) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th;
        }
    }

    private synchronized q0<CloseableReference<com.facebook.imagepipeline.image.c>> e(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarF;
        q0VarF = this.I.get(inputProducer);
        if (q0VarF == null) {
            q0VarF = this.f27964b.f(inputProducer);
            this.I.put(inputProducer, q0VarF);
        }
        return q0VarF;
    }

    private synchronized q0<com.facebook.imagepipeline.image.e> f() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getCommonNetworkFetchToEncodedMemorySequence");
        }
        if (this.f27986x == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getCommonNetworkFetchToEncodedMemorySequence:init");
            }
            com.facebook.imagepipeline.producers.a aVarA = n.a((q0) com.facebook.common.internal.i.i(H(this.f27964b.y(this.f27965c))));
            this.f27986x = aVarA;
            this.f27986x = this.f27964b.D(aVarA, this.f27966d && !this.f27970h, this.f27973k);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f27986x;
    }

    private synchronized q0<CloseableReference<com.facebook.imagepipeline.image.c>> g() {
        if (this.D == null) {
            q0<com.facebook.imagepipeline.image.e> q0VarI = this.f27964b.i();
            if (m3.c.f94151a && (!this.f27967e || m3.c.f94154d == null)) {
                q0VarI = this.f27964b.H(q0VarI);
            }
            this.D = D(this.f27964b.D(n.a(q0VarI), true, this.f27973k));
        }
        return this.D;
    }

    private synchronized q0<Void> i(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        q0<Void> q0VarE;
        q0VarE = this.H.get(inputProducer);
        if (q0VarE == null) {
            q0VarE = this.f27964b.E(inputProducer);
            this.H.put(inputProducer, q0VarE);
        }
        return q0VarE;
    }

    private synchronized q0<CloseableReference<com.facebook.imagepipeline.image.c>> k(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        return this.f27964b.k(inputProducer);
    }

    private synchronized q0<CloseableReference<com.facebook.imagepipeline.image.c>> n() {
        if (this.C == null) {
            this.C = E(this.f27964b.q());
        }
        return this.C;
    }

    private synchronized q0<CloseableReference<com.facebook.imagepipeline.image.c>> p() {
        if (this.A == null) {
            this.A = F(this.f27964b.r(), new g1[]{this.f27964b.s(), this.f27964b.t()});
        }
        return this.A;
    }

    @RequiresApi(29)
    private synchronized q0<CloseableReference<com.facebook.imagepipeline.image.c>> q() {
        if (this.E == null) {
            this.E = C(this.f27964b.w());
        }
        return this.E;
    }

    private synchronized q0<Void> s() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalFileFetchToEncodedMemoryPrefetchSequence");
        }
        if (this.f27984v == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalFileFetchToEncodedMemoryPrefetchSequence:init");
            }
            this.f27984v = this.f27964b.E(b());
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f27984v;
    }

    private synchronized q0<CloseableReference<com.facebook.imagepipeline.image.c>> t() {
        if (this.f27987y == null) {
            this.f27987y = E(this.f27964b.u());
        }
        return this.f27987y;
    }

    private synchronized q0<CloseableReference<com.facebook.imagepipeline.image.c>> u() {
        if (this.B == null) {
            this.B = E(this.f27964b.v());
        }
        return this.B;
    }

    private synchronized q0<CloseableReference<com.facebook.imagepipeline.image.c>> v() {
        if (this.f27988z == null) {
            this.f27988z = C(this.f27964b.x());
        }
        return this.f27988z;
    }

    private synchronized q0<CloseableReference<com.facebook.imagepipeline.image.c>> x() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchSequence");
        }
        if (this.f27977o == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchSequence:init");
            }
            this.f27977o = D(f());
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f27977o;
    }

    private synchronized q0<Void> y() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchToEncodedMemoryPrefetchSequence");
        }
        if (this.f27985w == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchToEncodedMemoryPrefetchSequence:init");
            }
            this.f27985w = this.f27964b.E(c());
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f27985w;
    }

    private synchronized q0<CloseableReference<com.facebook.imagepipeline.image.c>> z(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarA;
        q0VarA = this.G.get(inputProducer);
        if (q0VarA == null) {
            q0VarA = this.f27964b.A(this.f27964b.B(inputProducer));
            this.G.put(inputProducer, q0VarA);
        }
        return q0VarA;
    }

    public q0<Void> h(ImageRequest imageRequest) {
        q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarD = d(imageRequest);
        if (this.f27971i) {
            q0VarD = e(q0VarD);
        }
        return i(q0VarD);
    }

    public q0<CloseableReference<com.facebook.imagepipeline.image.c>> j(ImageRequest imageRequest) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getDecodedImageProducerSequence");
        }
        q0<CloseableReference<com.facebook.imagepipeline.image.c>> q0VarD = d(imageRequest);
        if (imageRequest.m() != null) {
            q0VarD = z(q0VarD);
        }
        if (this.f27971i) {
            q0VarD = e(q0VarD);
        }
        if (this.f27976n && imageRequest.h() > 0) {
            q0VarD = k(q0VarD);
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return q0VarD;
    }

    public q0<Void> l(ImageRequest imageRequest) {
        K(imageRequest);
        int iX = imageRequest.x();
        if (iX == 0) {
            return y();
        }
        if (iX == 2 || iX == 3) {
            return s();
        }
        throw new IllegalArgumentException("Unsupported uri scheme for encoded image fetch! Uri is: " + B(imageRequest.w()));
    }

    public q0<CloseableReference<PooledByteBuffer>> m(ImageRequest imageRequest) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getEncodedImageProducerSequence");
            }
            K(imageRequest);
            Uri uriW = imageRequest.w();
            int iX = imageRequest.x();
            if (iX == 0) {
                q0<CloseableReference<PooledByteBuffer>> q0VarW = w();
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return q0VarW;
            }
            if (iX == 2 || iX == 3) {
                q0<CloseableReference<PooledByteBuffer>> q0VarR = r();
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return q0VarR;
            }
            if (iX == 4) {
                q0<CloseableReference<PooledByteBuffer>> q0VarO = o();
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return q0VarO;
            }
            throw new IllegalArgumentException("Unsupported uri scheme for encoded image fetch! Uri is: " + B(uriW));
        } catch (Throwable th) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th;
        }
    }

    public q0<CloseableReference<PooledByteBuffer>> o() {
        synchronized (this) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalContentUriFetchEncodedImageProducerSequence");
            }
            if (this.f27982t == null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalContentUriFetchEncodedImageProducerSequence:init");
                }
                this.f27982t = new w0(a());
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        return this.f27982t;
    }

    public q0<CloseableReference<PooledByteBuffer>> r() {
        synchronized (this) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalFileFetchEncodedImageProducerSequence");
            }
            if (this.f27981s == null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalFileFetchEncodedImageProducerSequence:init");
                }
                this.f27981s = new w0(b());
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        return this.f27981s;
    }

    public q0<CloseableReference<PooledByteBuffer>> w() {
        synchronized (this) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchEncodedImageProducerSequence");
            }
            if (this.f27983u == null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchEncodedImageProducerSequence:init");
                }
                this.f27983u = new w0(c());
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        return this.f27983u;
    }
}
