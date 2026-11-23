package com.facebook.imagepipeline.core;

import android.net.Uri;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.cache.t;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.producers.c1;
import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.y;
import com.facebook.imagepipeline.producers.y0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
public class h {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final CancellationException f27813p = new CancellationException("Prefetching is not enabled");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f27814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j4.f f27815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j4.e f27816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.common.internal.l<Boolean> f27817d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f27818e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final t<com.facebook.cache.common.c, PooledByteBuffer> f27819f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f27820g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f27821h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f27822i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final c1 f27823j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final com.facebook.common.internal.l<Boolean> f27824k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private AtomicLong f27825l = new AtomicLong();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final com.facebook.common.internal.l<Boolean> f27826m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private final e3.a f27827n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final com.facebook.imagepipeline.core.i f27828o;

    class a implements com.facebook.common.internal.l<com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageRequest f27829a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f27830b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageRequest.RequestLevel f27831c;

        a(final ImageRequest val$requestLevel, final Object val$callerContext, final ImageRequest.RequestLevel val$imageRequest) {
            this.f27829a = val$requestLevel;
            this.f27830b = val$callerContext;
            this.f27831c = val$imageRequest;
        }

        @Override // com.facebook.common.internal.l
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> get() {
            return h.this.j(this.f27829a, this.f27830b, this.f27831c);
        }

        public String toString() {
            return com.facebook.common.internal.h.e(this).f(ContentProviderManager.PROVIDER_URI, this.f27829a.w()).toString();
        }
    }

    class b implements com.facebook.common.internal.l<com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageRequest f27833a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f27834b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageRequest.RequestLevel f27835c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ j4.f f27836d;

        b(final ImageRequest val$requestListener, final Object val$requestLevel, final ImageRequest.RequestLevel val$callerContext, final j4.f val$imageRequest) {
            this.f27833a = val$requestListener;
            this.f27834b = val$requestLevel;
            this.f27835c = val$callerContext;
            this.f27836d = val$imageRequest;
        }

        @Override // com.facebook.common.internal.l
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> get() {
            return h.this.k(this.f27833a, this.f27834b, this.f27835c, this.f27836d);
        }

        public String toString() {
            return com.facebook.common.internal.h.e(this).f(ContentProviderManager.PROVIDER_URI, this.f27833a.w()).toString();
        }
    }

    class c implements com.facebook.common.internal.l<com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageRequest f27838a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f27839b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageRequest.RequestLevel f27840c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ j4.f f27841d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f27842e;

        c(final ImageRequest val$uiComponentId, final Object val$requestListener, final ImageRequest.RequestLevel val$requestLevel, final j4.f val$callerContext, final String val$imageRequest) {
            this.f27838a = val$uiComponentId;
            this.f27839b = val$requestListener;
            this.f27840c = val$requestLevel;
            this.f27841d = val$callerContext;
            this.f27842e = val$imageRequest;
        }

        @Override // com.facebook.common.internal.l
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> get() {
            return h.this.l(this.f27838a, this.f27839b, this.f27840c, this.f27841d, this.f27842e);
        }

        public String toString() {
            return com.facebook.common.internal.h.e(this).f(ContentProviderManager.PROVIDER_URI, this.f27838a.w()).toString();
        }
    }

    class d implements com.facebook.common.internal.l<com.facebook.datasource.c<CloseableReference<PooledByteBuffer>>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageRequest f27844a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f27845b;

        d(final ImageRequest val$callerContext, final Object val$imageRequest) {
            this.f27844a = val$callerContext;
            this.f27845b = val$imageRequest;
        }

        @Override // com.facebook.common.internal.l
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.facebook.datasource.c<CloseableReference<PooledByteBuffer>> get() {
            return h.this.n(this.f27844a, this.f27845b);
        }

        public String toString() {
            return com.facebook.common.internal.h.e(this).f(ContentProviderManager.PROVIDER_URI, this.f27844a.w()).toString();
        }
    }

    class e implements com.facebook.common.internal.j<com.facebook.cache.common.c> {
        e() {
        }

        @Override // com.facebook.common.internal.j
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean apply(com.facebook.cache.common.c key) {
            return true;
        }
    }

    class f implements bolts.g<Boolean, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.facebook.datasource.i f27848a;

        f(final com.facebook.datasource.i val$dataSource) {
            this.f27848a = val$dataSource;
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void a(bolts.h<Boolean> task) throws Exception {
            this.f27848a.setResult(Boolean.valueOf((task.D() || task.F() || !task.B().booleanValue()) ? false : true));
            return null;
        }
    }

    class g implements bolts.g<Boolean, bolts.h<Boolean>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f27850a;

        g(final com.facebook.cache.common.c val$cacheKey) {
            this.f27850a = val$cacheKey;
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public bolts.h<Boolean> a(bolts.h<Boolean> task) throws Exception {
            return (task.D() || task.F() || !task.B().booleanValue()) ? h.this.f27821h.l(this.f27850a) : bolts.h.z(Boolean.TRUE);
        }
    }

    /* JADX INFO: renamed from: com.facebook.imagepipeline.core.h$h, reason: collision with other inner class name */
    class C0572h implements com.facebook.common.internal.j<com.facebook.cache.common.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Uri f27852a;

        C0572h(final Uri val$uri) {
            this.f27852a = val$uri;
        }

        @Override // com.facebook.common.internal.j
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean apply(com.facebook.cache.common.c key) {
            return key.c(this.f27852a);
        }
    }

    static /* synthetic */ class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f27854a;

        static {
            int[] iArr = new int[ImageRequest.CacheChoice.values().length];
            f27854a = iArr;
            try {
                iArr[ImageRequest.CacheChoice.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27854a[ImageRequest.CacheChoice.SMALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public h(o producerSequenceFactory, Set<j4.f> requestListeners, Set<j4.e> requestListener2s, com.facebook.common.internal.l<Boolean> isPrefetchEnabledSupplier, t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> bitmapMemoryCache, t<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, com.facebook.imagepipeline.cache.e mainBufferedDiskCache, com.facebook.imagepipeline.cache.e smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, c1 threadHandoffProducerQueue, com.facebook.common.internal.l<Boolean> suppressBitmapPrefetchingSupplier, com.facebook.common.internal.l<Boolean> lazyDataSource, @Nullable e3.a callerContextVerifier, com.facebook.imagepipeline.core.i config) {
        this.f27814a = producerSequenceFactory;
        this.f27815b = new j4.d(requestListeners);
        this.f27816c = new j4.c(requestListener2s);
        this.f27817d = isPrefetchEnabledSupplier;
        this.f27818e = bitmapMemoryCache;
        this.f27819f = encodedMemoryCache;
        this.f27820g = mainBufferedDiskCache;
        this.f27821h = smallImageBufferedDiskCache;
        this.f27822i = cacheKeyFactory;
        this.f27823j = threadHandoffProducerQueue;
        this.f27824k = suppressBitmapPrefetchingSupplier;
        this.f27826m = lazyDataSource;
        this.f27827n = callerContextVerifier;
        this.f27828o = config;
    }

    private com.facebook.common.internal.j<com.facebook.cache.common.c> R(final Uri uri) {
        return new C0572h(uri);
    }

    private <T> com.facebook.datasource.c<CloseableReference<T>> e0(q0<CloseableReference<T>> producerSequence, ImageRequest imageRequest, ImageRequest.RequestLevel lowestPermittedRequestLevelOnSubmit, @Nullable Object callerContext, @Nullable j4.f requestListener, @Nullable String uiComponentId) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipeline#submitFetchRequest");
        }
        y yVar = new y(C(imageRequest, requestListener), this.f27816c);
        e3.a aVar = this.f27827n;
        if (aVar != null) {
            aVar.a(callerContext, false);
        }
        try {
            return com.facebook.imagepipeline.datasource.e.F(producerSequence, new y0(imageRequest, q(), uiComponentId, yVar, callerContext, ImageRequest.RequestLevel.getMax(imageRequest.l(), lowestPermittedRequestLevelOnSubmit), false, imageRequest.q() || !com.facebook.common.util.f.n(imageRequest.w()), imageRequest.p(), this.f27828o), yVar);
        } catch (Exception e10) {
            return com.facebook.datasource.d.c(e10);
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    private com.facebook.datasource.c<Void> f0(q0<Void> producerSequence, ImageRequest imageRequest, ImageRequest.RequestLevel lowestPermittedRequestLevelOnSubmit, @Nullable Object callerContext, Priority priority, @Nullable j4.f requestListener) {
        y yVar = new y(C(imageRequest, requestListener), this.f27816c);
        e3.a aVar = this.f27827n;
        if (aVar != null) {
            aVar.a(callerContext, true);
        }
        try {
            return com.facebook.imagepipeline.datasource.g.E(producerSequence, new y0(imageRequest, q(), yVar, callerContext, ImageRequest.RequestLevel.getMax(imageRequest.l(), lowestPermittedRequestLevelOnSubmit), true, false, priority, this.f27828o), yVar);
        } catch (Exception e10) {
            return com.facebook.datasource.d.c(e10);
        }
    }

    public com.facebook.common.internal.l<com.facebook.datasource.c<CloseableReference<PooledByteBuffer>>> A(final ImageRequest imageRequest, @Nullable final Object callerContext) {
        return new d(imageRequest, callerContext);
    }

    public o B() {
        return this.f27814a;
    }

    public j4.f C(ImageRequest imageRequest, @Nullable j4.f requestListener) {
        if (requestListener == null) {
            return imageRequest.r() == null ? this.f27815b : new j4.d(this.f27815b, imageRequest.r());
        }
        return imageRequest.r() == null ? new j4.d(this.f27815b, requestListener) : new j4.d(this.f27815b, requestListener, imageRequest.r());
    }

    public long D() {
        return this.f27820g.s() + this.f27821h.s();
    }

    public boolean E(@Nullable com.facebook.cache.common.c cacheKey) {
        t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> tVar = this.f27818e;
        if (tVar == null || cacheKey == null) {
            return false;
        }
        return tVar.contains(cacheKey);
    }

    public boolean F(final Uri uri) {
        if (uri == null) {
            return false;
        }
        return this.f27818e.p(R(uri));
    }

    public boolean G(final ImageRequest imageRequest) {
        if (imageRequest == null) {
            return false;
        }
        CloseableReference<com.facebook.imagepipeline.image.c> closeableReference = this.f27818e.get(this.f27822i.c(imageRequest, null));
        try {
            return CloseableReference.p(closeableReference);
        } finally {
            CloseableReference.h(closeableReference);
        }
    }

    public com.facebook.datasource.c<Boolean> H(final Uri uri) {
        return I(ImageRequest.b(uri));
    }

    public com.facebook.datasource.c<Boolean> I(final ImageRequest imageRequest) {
        com.facebook.cache.common.c cVarB = this.f27822i.b(imageRequest, null);
        com.facebook.datasource.i iVarU = com.facebook.datasource.i.u();
        this.f27820g.l(cVarB).q(new g(cVarB)).m(new f(iVarU));
        return iVarU;
    }

    public boolean J(final Uri uri) {
        return K(uri, ImageRequest.CacheChoice.SMALL) || K(uri, ImageRequest.CacheChoice.DEFAULT);
    }

    public boolean K(final Uri uri, final ImageRequest.CacheChoice cacheChoice) {
        return L(ImageRequestBuilder.x(uri).A(cacheChoice).a());
    }

    public boolean L(final ImageRequest imageRequest) {
        com.facebook.cache.common.c cVarB = this.f27822i.b(imageRequest, null);
        int i10 = i.f27854a[imageRequest.f().ordinal()];
        if (i10 == 1) {
            return this.f27820g.o(cVarB);
        }
        if (i10 != 2) {
            return false;
        }
        return this.f27821h.o(cVarB);
    }

    public boolean M(final Uri uri) {
        if (uri == null) {
            return false;
        }
        return this.f27819f.p(R(uri));
    }

    public boolean N(final ImageRequest imageRequest) {
        if (imageRequest == null) {
            return false;
        }
        CloseableReference<PooledByteBuffer> closeableReference = this.f27819f.get(this.f27822i.b(imageRequest, null));
        try {
            return CloseableReference.p(closeableReference);
        } finally {
            CloseableReference.h(closeableReference);
        }
    }

    public com.facebook.common.internal.l<Boolean> O() {
        return this.f27826m;
    }

    public boolean P() {
        return this.f27823j.d();
    }

    public void Q() {
        this.f27823j.a();
    }

    public com.facebook.datasource.c<Void> S(ImageRequest imageRequest, @Nullable Object callerContext) {
        return T(imageRequest, callerContext, null);
    }

    public com.facebook.datasource.c<Void> T(ImageRequest imageRequest, @Nullable Object callerContext, @Nullable j4.f requestListener) {
        boolean zBooleanValue;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ImagePipeline#prefetchToBitmapCache");
            }
            if (!this.f27817d.get().booleanValue()) {
                com.facebook.datasource.c<Void> cVarC = com.facebook.datasource.d.c(f27813p);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return cVarC;
            }
            try {
                Boolean boolE = imageRequest.E();
                if (boolE != null) {
                    zBooleanValue = !boolE.booleanValue();
                } else {
                    zBooleanValue = this.f27824k.get().booleanValue();
                }
                com.facebook.datasource.c<Void> cVarF0 = f0(zBooleanValue ? this.f27814a.l(imageRequest) : this.f27814a.h(imageRequest), imageRequest, ImageRequest.RequestLevel.FULL_FETCH, callerContext, Priority.MEDIUM, requestListener);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return cVarF0;
            } catch (Exception e10) {
                com.facebook.datasource.c<Void> cVarC2 = com.facebook.datasource.d.c(e10);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return cVarC2;
            }
        } catch (Throwable th) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th;
        }
    }

    public com.facebook.datasource.c<Void> U(ImageRequest imageRequest, @Nullable Object callerContext) {
        return V(imageRequest, callerContext, Priority.MEDIUM);
    }

    public com.facebook.datasource.c<Void> V(ImageRequest imageRequest, @Nullable Object callerContext, Priority priority) {
        return W(imageRequest, callerContext, priority, null);
    }

    public com.facebook.datasource.c<Void> W(ImageRequest imageRequest, @Nullable Object callerContext, Priority priority, @Nullable j4.f requestListener) {
        if (!this.f27817d.get().booleanValue()) {
            return com.facebook.datasource.d.c(f27813p);
        }
        try {
            return f0(this.f27814a.l(imageRequest), imageRequest, ImageRequest.RequestLevel.FULL_FETCH, callerContext, priority, requestListener);
        } catch (Exception e10) {
            return com.facebook.datasource.d.c(e10);
        }
    }

    public com.facebook.datasource.c<Void> X(ImageRequest imageRequest, @Nullable Object callerContext, @Nullable j4.f requestListener) {
        return W(imageRequest, callerContext, Priority.MEDIUM, requestListener);
    }

    public com.facebook.datasource.c<Void> Y(ImageRequest imageRequest, @Nullable Object callerContext) {
        return Z(imageRequest, callerContext, Priority.MEDIUM);
    }

    public com.facebook.datasource.c<Void> Z(ImageRequest imageRequest, @Nullable Object callerContext, Priority priority) {
        return a0(imageRequest, callerContext, priority, null);
    }

    public com.facebook.datasource.c<Void> a0(ImageRequest imageRequest, @Nullable Object callerContext, Priority priority, @Nullable j4.f requestListener) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ImagePipeline#prefetchToEncodedCache");
            }
            if (!this.f27817d.get().booleanValue()) {
                com.facebook.datasource.c<Void> cVarC = com.facebook.datasource.d.c(f27813p);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return cVarC;
            }
            try {
                com.facebook.datasource.c<Void> cVarF0 = f0(this.f27814a.l(imageRequest), imageRequest, ImageRequest.RequestLevel.FULL_FETCH, callerContext, priority, requestListener);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return cVarF0;
            } catch (Exception e10) {
                com.facebook.datasource.c<Void> cVarC2 = com.facebook.datasource.d.c(e10);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return cVarC2;
            }
        } catch (Throwable th) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th;
        }
    }

    public void b() {
        d();
        c();
    }

    public com.facebook.datasource.c<Void> b0(ImageRequest imageRequest, @Nullable Object callerContext, @Nullable j4.f requestListener) {
        return a0(imageRequest, callerContext, Priority.MEDIUM, requestListener);
    }

    public void c() {
        this.f27820g.k();
        this.f27821h.k();
    }

    public void c0() {
        this.f27823j.c();
    }

    public void d() {
        e eVar = new e();
        this.f27818e.i(eVar);
        this.f27819f.i(eVar);
    }

    public <T> com.facebook.datasource.c<CloseableReference<T>> d0(q0<CloseableReference<T>> producerSequence, y0 settableProducerContext, j4.f requestListener) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipeline#submitFetchRequest");
        }
        try {
            return com.facebook.imagepipeline.datasource.e.F(producerSequence, settableProducerContext, new y(requestListener, this.f27816c));
        } catch (Exception e10) {
            return com.facebook.datasource.d.c(e10);
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public void e(final Uri uri) {
        h(uri);
        f(uri);
    }

    public void f(final Uri uri) {
        g(ImageRequest.b(uri));
    }

    public void g(final ImageRequest imageRequest) {
        com.facebook.cache.common.c cVarB = this.f27822i.b(imageRequest, null);
        this.f27820g.w(cVarB);
        this.f27821h.w(cVarB);
    }

    public void h(final Uri uri) {
        com.facebook.common.internal.j<com.facebook.cache.common.c> jVarR = R(uri);
        this.f27818e.i(jVarR);
        this.f27819f.i(jVarR);
    }

    public com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> i(ImageRequest imageRequest, @Nullable Object callerContext) {
        return j(imageRequest, callerContext, ImageRequest.RequestLevel.FULL_FETCH);
    }

    public com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> j(ImageRequest imageRequest, @Nullable Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevelOnSubmit) {
        return k(imageRequest, callerContext, lowestPermittedRequestLevelOnSubmit, null);
    }

    public com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> k(ImageRequest imageRequest, @Nullable Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevelOnSubmit, @Nullable j4.f requestListener) {
        return l(imageRequest, callerContext, lowestPermittedRequestLevelOnSubmit, requestListener, null);
    }

    public com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> l(ImageRequest imageRequest, @Nullable Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevelOnSubmit, @Nullable j4.f requestListener, @Nullable String uiComponentId) {
        try {
            return e0(this.f27814a.j(imageRequest), imageRequest, lowestPermittedRequestLevelOnSubmit, callerContext, requestListener, uiComponentId);
        } catch (Exception e10) {
            return com.facebook.datasource.d.c(e10);
        }
    }

    public com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> m(ImageRequest imageRequest, @Nullable Object callerContext, @Nullable j4.f requestListener) {
        return k(imageRequest, callerContext, ImageRequest.RequestLevel.FULL_FETCH, requestListener);
    }

    public com.facebook.datasource.c<CloseableReference<PooledByteBuffer>> n(ImageRequest imageRequest, @Nullable Object callerContext) {
        return o(imageRequest, callerContext, null);
    }

    public com.facebook.datasource.c<CloseableReference<PooledByteBuffer>> o(ImageRequest imageRequest, @Nullable Object callerContext, @Nullable j4.f requestListener) {
        com.facebook.common.internal.i.i(imageRequest.w());
        try {
            q0<CloseableReference<PooledByteBuffer>> q0VarM = this.f27814a.m(imageRequest);
            if (imageRequest.s() != null) {
                imageRequest = ImageRequestBuilder.d(imageRequest).L(null).a();
            }
            return e0(q0VarM, imageRequest, ImageRequest.RequestLevel.FULL_FETCH, callerContext, requestListener, null);
        } catch (Exception e10) {
            return com.facebook.datasource.d.c(e10);
        }
    }

    public com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> p(ImageRequest imageRequest, @Nullable Object callerContext) {
        return j(imageRequest, callerContext, ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE);
    }

    public String q() {
        return String.valueOf(this.f27825l.getAndIncrement());
    }

    public t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> r() {
        return this.f27818e;
    }

    @Nullable
    public com.facebook.cache.common.c s(@Nullable ImageRequest imageRequest, @Nullable Object callerContext) {
        com.facebook.cache.common.c cVarA;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipeline#getCacheKey");
        }
        com.facebook.imagepipeline.cache.f fVar = this.f27822i;
        if (fVar == null || imageRequest == null) {
            cVarA = null;
        } else {
            cVarA = imageRequest.m() != null ? fVar.a(imageRequest, callerContext) : fVar.c(imageRequest, callerContext);
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return cVarA;
    }

    public com.facebook.imagepipeline.cache.f t() {
        return this.f27822i;
    }

    @Nullable
    public CloseableReference<com.facebook.imagepipeline.image.c> u(@Nullable com.facebook.cache.common.c cacheKey) {
        t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> tVar = this.f27818e;
        if (tVar == null || cacheKey == null) {
            return null;
        }
        CloseableReference<com.facebook.imagepipeline.image.c> closeableReference = tVar.get(cacheKey);
        if (closeableReference == null || closeableReference.j().b().a()) {
            return closeableReference;
        }
        closeableReference.close();
        return null;
    }

    public j4.f v(@Nullable j4.f listener) {
        return listener == null ? this.f27815b : new j4.d(this.f27815b, listener);
    }

    public com.facebook.imagepipeline.core.i w() {
        return this.f27828o;
    }

    public com.facebook.common.internal.l<com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>>> x(final ImageRequest imageRequest, @Nullable final Object callerContext, final ImageRequest.RequestLevel requestLevel) {
        return new a(imageRequest, callerContext, requestLevel);
    }

    public com.facebook.common.internal.l<com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>>> y(final ImageRequest imageRequest, @Nullable final Object callerContext, final ImageRequest.RequestLevel requestLevel, @Nullable final j4.f requestListener) {
        return new b(imageRequest, callerContext, requestLevel, requestListener);
    }

    public com.facebook.common.internal.l<com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>>> z(final ImageRequest imageRequest, @Nullable final Object callerContext, final ImageRequest.RequestLevel requestLevel, @Nullable final j4.f requestListener, @Nullable final String uiComponentId) {
        return new c(imageRequest, callerContext, requestLevel, requestListener, uiComponentId);
    }
}
