package com.facebook.drawee.controller;

import android.content.Context;
import android.graphics.drawable.Animatable;
import b4.f;
import com.facebook.common.internal.h;
import com.facebook.common.internal.i;
import com.facebook.common.internal.l;
import com.facebook.datasource.g;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.infer.annotation.ReturnsOwnership;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class AbstractDraweeControllerBuilder<BUILDER extends AbstractDraweeControllerBuilder<BUILDER, REQUEST, IMAGE, INFO>, REQUEST, IMAGE, INFO> implements s3.d {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final c<Object> f27059r = new a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final NullPointerException f27060s = new NullPointerException("No image request was specified!");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final AtomicLong f27061t = new AtomicLong();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f27062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<c> f27063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<b4.c> f27064c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private Object f27065d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private REQUEST f27066e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private REQUEST f27067f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private REQUEST[] f27068g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f27069h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private l<com.facebook.datasource.c<IMAGE>> f27070i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private c<? super INFO> f27071j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private f f27072k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private d f27073l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f27074m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f27075n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f27076o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private String f27077p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private s3.a f27078q;

    public enum CacheLevel {
        FULL_FETCH,
        DISK_CACHE,
        BITMAP_MEMORY_CACHE
    }

    static class a extends com.facebook.drawee.controller.b<Object> {
        a() {
        }

        @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
        public void onFinalImageSet(String id2, @Nullable Object info, @Nullable Animatable anim) {
            if (anim != null) {
                anim.start();
            }
        }
    }

    class b implements l<com.facebook.datasource.c<IMAGE>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ s3.a f27079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f27080b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object f27081c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Object f27082d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ CacheLevel f27083e;

        b(final s3.a val$cacheLevel, final String val$callerContext, final Object val$imageRequest, final Object val$controllerId, final CacheLevel val$controller) {
            this.f27079a = val$cacheLevel;
            this.f27080b = val$callerContext;
            this.f27081c = val$imageRequest;
            this.f27082d = val$controllerId;
            this.f27083e = val$controller;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.facebook.common.internal.l
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.facebook.datasource.c<IMAGE> get() {
            return AbstractDraweeControllerBuilder.this.l(this.f27079a, this.f27080b, this.f27081c, this.f27082d, this.f27083e);
        }

        public String toString() {
            return h.e(this).f(PointCategory.REQUEST, this.f27081c.toString()).toString();
        }
    }

    protected AbstractDraweeControllerBuilder(Context context, Set<c> boundControllerListeners, Set<b4.c> boundControllerListeners2) {
        this.f27062a = context;
        this.f27063b = boundControllerListeners;
        this.f27064c = boundControllerListeners2;
        y();
    }

    protected static String f() {
        return String.valueOf(f27061t.getAndIncrement());
    }

    private void y() {
        this.f27065d = null;
        this.f27066e = null;
        this.f27067f = null;
        this.f27068g = null;
        this.f27069h = true;
        this.f27071j = null;
        this.f27072k = null;
        this.f27073l = null;
        this.f27074m = false;
        this.f27075n = false;
        this.f27078q = null;
        this.f27077p = null;
    }

    protected void A(com.facebook.drawee.controller.a controller) {
        if (controller.v() == null) {
            controller.c0(com.facebook.drawee.gestures.a.c(this.f27062a));
        }
    }

    protected void B(com.facebook.drawee.controller.a controller) {
        if (this.f27074m) {
            controller.C().g(this.f27074m);
            A(controller);
        }
    }

    @ReturnsOwnership
    protected abstract com.facebook.drawee.controller.a C();

    protected l<com.facebook.datasource.c<IMAGE>> D(final s3.a controller, final String controllerId) {
        l<com.facebook.datasource.c<IMAGE>> lVarP;
        l<com.facebook.datasource.c<IMAGE>> lVar = this.f27070i;
        if (lVar != null) {
            return lVar;
        }
        REQUEST request = this.f27066e;
        if (request != null) {
            lVarP = n(controller, controllerId, request);
        } else {
            REQUEST[] requestArr = this.f27068g;
            lVarP = requestArr != null ? p(controller, controllerId, requestArr, this.f27069h) : null;
        }
        if (lVarP != null && this.f27067f != null) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(lVarP);
            arrayList.add(n(controller, controllerId, this.f27067f));
            lVarP = g.d(arrayList, false);
        }
        return lVarP == null ? com.facebook.datasource.d.a(f27060s) : lVarP;
    }

    public BUILDER E() {
        y();
        return (BUILDER) x();
    }

    public BUILDER F(boolean z10) {
        this.f27075n = z10;
        return (BUILDER) x();
    }

    @Override // s3.d
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public BUILDER a(Object obj) {
        this.f27065d = obj;
        return (BUILDER) x();
    }

    public BUILDER H(String str) {
        this.f27077p = str;
        return (BUILDER) x();
    }

    public BUILDER I(@Nullable c<? super INFO> cVar) {
        this.f27071j = cVar;
        return (BUILDER) x();
    }

    public BUILDER J(@Nullable d dVar) {
        this.f27073l = dVar;
        return (BUILDER) x();
    }

    public BUILDER K(@Nullable l<com.facebook.datasource.c<IMAGE>> lVar) {
        this.f27070i = lVar;
        return (BUILDER) x();
    }

    public BUILDER L(REQUEST[] requestArr) {
        return (BUILDER) M(requestArr, true);
    }

    public BUILDER M(REQUEST[] requestArr, boolean z10) {
        i.e(requestArr == null || requestArr.length > 0, "No requests specified!");
        this.f27068g = requestArr;
        this.f27069h = z10;
        return (BUILDER) x();
    }

    public BUILDER N(@Nullable REQUEST request) {
        this.f27066e = request;
        return (BUILDER) x();
    }

    public BUILDER O(@Nullable f fVar) {
        this.f27072k = fVar;
        return (BUILDER) x();
    }

    public BUILDER P(REQUEST request) {
        this.f27067f = request;
        return (BUILDER) x();
    }

    @Override // s3.d
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public BUILDER c(@Nullable s3.a aVar) {
        this.f27078q = aVar;
        return (BUILDER) x();
    }

    public BUILDER R(boolean z10) {
        this.f27076o = z10;
        return (BUILDER) x();
    }

    public BUILDER S(boolean z10) {
        this.f27074m = z10;
        return (BUILDER) x();
    }

    protected void T() {
        boolean z10 = false;
        i.p(this.f27068g == null || this.f27066e == null, "Cannot specify both ImageRequest and FirstAvailableImageRequests!");
        if (this.f27070i == null || (this.f27068g == null && this.f27066e == null && this.f27067f == null)) {
            z10 = true;
        }
        i.p(z10, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other.");
    }

    @Override // s3.d
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public com.facebook.drawee.controller.a build() {
        REQUEST request;
        T();
        if (this.f27066e == null && this.f27068g == null && (request = this.f27067f) != null) {
            this.f27066e = request;
            this.f27067f = null;
        }
        return e();
    }

    protected com.facebook.drawee.controller.a e() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeControllerBuilder#buildController");
        }
        com.facebook.drawee.controller.a aVarC = C();
        aVarC.e0(v());
        aVarC.c(i());
        aVarC.b0(k());
        B(aVarC);
        z(aVarC);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return aVarC;
    }

    public boolean g() {
        return this.f27075n;
    }

    protected Context getContext() {
        return this.f27062a;
    }

    @Nullable
    public Object h() {
        return this.f27065d;
    }

    @Nullable
    public String i() {
        return this.f27077p;
    }

    @Nullable
    public c<? super INFO> j() {
        return this.f27071j;
    }

    @Nullable
    public d k() {
        return this.f27073l;
    }

    protected abstract com.facebook.datasource.c<IMAGE> l(final s3.a controller, final String controllerId, final REQUEST imageRequest, final Object callerContext, final CacheLevel cacheLevel);

    @Nullable
    public l<com.facebook.datasource.c<IMAGE>> m() {
        return this.f27070i;
    }

    protected l<com.facebook.datasource.c<IMAGE>> n(final s3.a controller, String controllerId, REQUEST imageRequest) {
        return o(controller, controllerId, imageRequest, CacheLevel.FULL_FETCH);
    }

    protected l<com.facebook.datasource.c<IMAGE>> o(final s3.a controller, final String controllerId, final REQUEST imageRequest, final CacheLevel cacheLevel) {
        return new b(controller, controllerId, imageRequest, h(), cacheLevel);
    }

    protected l<com.facebook.datasource.c<IMAGE>> p(final s3.a controller, String controllerId, REQUEST[] imageRequests, boolean tryBitmapCacheOnlyFirst) {
        ArrayList arrayList = new ArrayList(imageRequests.length * 2);
        if (tryBitmapCacheOnlyFirst) {
            for (REQUEST request : imageRequests) {
                arrayList.add(o(controller, controllerId, request, CacheLevel.BITMAP_MEMORY_CACHE));
            }
        }
        for (REQUEST request2 : imageRequests) {
            arrayList.add(n(controller, controllerId, request2));
        }
        return com.facebook.datasource.f.b(arrayList);
    }

    @Nullable
    public REQUEST[] q() {
        return this.f27068g;
    }

    @Nullable
    public REQUEST r() {
        return this.f27066e;
    }

    @Nullable
    public f s() {
        return this.f27072k;
    }

    @Nullable
    public REQUEST t() {
        return this.f27067f;
    }

    @Nullable
    public s3.a u() {
        return this.f27078q;
    }

    public boolean v() {
        return this.f27076o;
    }

    public boolean w() {
        return this.f27074m;
    }

    protected final BUILDER x() {
        return this;
    }

    protected void z(com.facebook.drawee.controller.a controller) {
        Set<c> set = this.f27063b;
        if (set != null) {
            Iterator<c> it2 = set.iterator();
            while (it2.hasNext()) {
                controller.l(it2.next());
            }
        }
        Set<b4.c> set2 = this.f27064c;
        if (set2 != null) {
            Iterator<b4.c> it3 = set2.iterator();
            while (it3.hasNext()) {
                controller.m(it3.next());
            }
        }
        c<? super INFO> cVar = this.f27071j;
        if (cVar != null) {
            controller.l(cVar);
        }
        if (this.f27075n) {
            controller.l(f27059r);
        }
    }
}
