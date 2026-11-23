package com.facebook.drawee.controller;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.MotionEvent;
import b4.f;
import b4.i;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.h;
import com.facebook.drawee.components.DraweeEventTracker;
import com.facebook.imagepipeline.producers.ProducerContext;
import com.facebook.infer.annotation.ReturnsOwnership;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@NotThreadSafe
public abstract class a<T, INFO> implements s3.a, com.facebook.drawee.components.a.InterfaceC0563a, com.facebook.drawee.gestures.a.InterfaceC0566a {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final Map<String, Object> f27085x = ImmutableMap.of("component_tag", "drawee");

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final Map<String, Object> f27086y = ImmutableMap.of("origin", "memory_bitmap", ProducerContext.ExtraKeys.ORIGIN_SUBCATEGORY, "shortcut");

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final Class<?> f27087z = a.class;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.drawee.components.a f27089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f27090c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private com.facebook.drawee.components.c f27091d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private com.facebook.drawee.gestures.a f27092e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private d f27093f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    protected com.facebook.drawee.controller.c<INFO> f27094g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    protected f f27096i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private s3.c f27097j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private Drawable f27098k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f27099l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Object f27100m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f27101n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f27102o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f27103p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f27104q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f27105r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private String f27106s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private com.facebook.datasource.c<T> f27107t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private T f27108u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    protected Drawable f27110w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DraweeEventTracker f27088a = DraweeEventTracker.b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected b4.e<INFO> f27095h = new b4.e<>();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f27109v = true;

    /* JADX INFO: renamed from: com.facebook.drawee.controller.a$a, reason: collision with other inner class name */
    class C0564a implements i {
        C0564a() {
        }

        @Override // b4.i
        public void a() {
            a aVar = a.this;
            f fVar = aVar.f27096i;
            if (fVar != null) {
                fVar.a(aVar.f27099l);
            }
        }

        @Override // b4.i
        public void b() {
            a aVar = a.this;
            f fVar = aVar.f27096i;
            if (fVar != null) {
                fVar.b(aVar.f27099l);
            }
        }

        @Override // b4.i
        public void c() {
        }
    }

    class b extends com.facebook.datasource.b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f27112a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f27113b;

        b(final String val$wasImmediate, final boolean val$id) {
            this.f27112a = val$wasImmediate;
            this.f27113b = val$id;
        }

        @Override // com.facebook.datasource.b, com.facebook.datasource.e
        public void b(com.facebook.datasource.c<T> dataSource) {
            boolean zF = dataSource.f();
            a.this.O(this.f27112a, dataSource, dataSource.getProgress(), zF);
        }

        @Override // com.facebook.datasource.b
        public void e(com.facebook.datasource.c<T> dataSource) {
            a.this.L(this.f27112a, dataSource, dataSource.b(), true);
        }

        @Override // com.facebook.datasource.b
        public void f(com.facebook.datasource.c<T> dataSource) {
            boolean zF = dataSource.f();
            boolean zD = dataSource.d();
            float progress = dataSource.getProgress();
            T result = dataSource.getResult();
            if (result != null) {
                a.this.N(this.f27112a, dataSource, result, progress, zF, this.f27113b, zD);
            } else if (zF) {
                a.this.L(this.f27112a, dataSource, new NullPointerException(), true);
            }
        }
    }

    private static class c<INFO> extends e<INFO> {
        private c() {
        }

        public static <INFO> c<INFO> i(com.facebook.drawee.controller.c<? super INFO> listener1, com.facebook.drawee.controller.c<? super INFO> listener2) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#createInternal");
            }
            c<INFO> cVar = new c<>();
            cVar.a(listener1);
            cVar.a(listener2);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return cVar;
        }
    }

    public a(com.facebook.drawee.components.a deferredReleaser, Executor uiThreadImmediateExecutor, String id2, Object callerContext) {
        this.f27089b = deferredReleaser;
        this.f27090c = uiThreadImmediateExecutor;
        D(id2, callerContext);
    }

    private synchronized void D(String id2, Object callerContext) {
        com.facebook.drawee.components.a aVar;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#init");
        }
        this.f27088a.c(DraweeEventTracker.Event.ON_INIT_CONTROLLER);
        if (!this.f27109v && (aVar = this.f27089b) != null) {
            aVar.a(this);
        }
        this.f27101n = false;
        this.f27103p = false;
        Q();
        this.f27105r = false;
        com.facebook.drawee.components.c cVar = this.f27091d;
        if (cVar != null) {
            cVar.a();
        }
        com.facebook.drawee.gestures.a aVar2 = this.f27092e;
        if (aVar2 != null) {
            aVar2.a();
            this.f27092e.f(this);
        }
        com.facebook.drawee.controller.c<INFO> cVar2 = this.f27094g;
        if (cVar2 instanceof c) {
            ((c) cVar2).b();
        } else {
            this.f27094g = null;
        }
        this.f27093f = null;
        s3.c cVar3 = this.f27097j;
        if (cVar3 != null) {
            cVar3.reset();
            this.f27097j.c(null);
            this.f27097j = null;
        }
        this.f27098k = null;
        if (i3.a.R(2)) {
            i3.a.X(f27087z, "controller %x %s -> %s: initialize", Integer.valueOf(System.identityHashCode(this)), this.f27099l, id2);
        }
        this.f27099l = id2;
        this.f27100m = callerContext;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        if (this.f27096i != null) {
            f0();
        }
    }

    private boolean F(String id2, com.facebook.datasource.c<T> dataSource) {
        if (dataSource == null && this.f27107t == null) {
            return true;
        }
        return id2.equals(this.f27099l) && dataSource == this.f27107t && this.f27102o;
    }

    private void G(String messageAndMethod, Throwable throwable) {
        if (i3.a.R(2)) {
            i3.a.Y(f27087z, "controller %x %s: %s: failure: %s", Integer.valueOf(System.identityHashCode(this)), this.f27099l, messageAndMethod, throwable);
        }
    }

    private void H(String messageAndMethod, T image) {
        if (i3.a.R(2)) {
            i3.a.a0(f27087z, "controller %x %s: %s: image: %s %x", Integer.valueOf(System.identityHashCode(this)), this.f27099l, messageAndMethod, x(image), Integer.valueOf(y(image)));
        }
    }

    private b4.c.a I(@Nullable com.facebook.datasource.c<T> datasource, @Nullable INFO info, @Nullable Uri mainUri) {
        return J(datasource == null ? null : datasource.getExtras(), K(info), mainUri);
    }

    private b4.c.a J(@Nullable Map<String, Object> datasourceExtras, @Nullable Map<String, Object> imageExtras, @Nullable Uri mainUri) {
        String str;
        PointF pointFL;
        s3.c cVar = this.f27097j;
        if (cVar instanceof com.facebook.drawee.generic.a) {
            com.facebook.drawee.generic.a aVar = (com.facebook.drawee.generic.a) cVar;
            String strValueOf = String.valueOf(aVar.m());
            pointFL = aVar.l();
            str = strValueOf;
        } else {
            str = null;
            pointFL = null;
        }
        return z3.a.a(f27085x, f27086y, datasourceExtras, u(), str, pointFL, imageExtras, p(), mainUri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L(String id2, com.facebook.datasource.c<T> dataSource, Throwable throwable, boolean isFinished) {
        Drawable drawable;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#onFailureInternal");
        }
        if (!F(id2, dataSource)) {
            G("ignore_old_datasource @ onFailure", throwable);
            dataSource.close();
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
                return;
            }
            return;
        }
        this.f27088a.c(isFinished ? DraweeEventTracker.Event.ON_DATASOURCE_FAILURE : DraweeEventTracker.Event.ON_DATASOURCE_FAILURE_INT);
        if (isFinished) {
            G("final_failed @ onFailure", throwable);
            this.f27107t = null;
            this.f27104q = true;
            s3.c cVar = this.f27097j;
            if (cVar != null) {
                if (this.f27105r && (drawable = this.f27110w) != null) {
                    cVar.e(drawable, 1.0f, true);
                } else if (h0()) {
                    cVar.a(throwable);
                } else {
                    cVar.setFailure(throwable);
                }
            }
            U(throwable, dataSource);
        } else {
            G("intermediate_failed @ onFailure", throwable);
            V(throwable);
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(String id2, com.facebook.datasource.c<T> dataSource, @Nullable T image, float progress, boolean isFinished, boolean wasImmediate, boolean deliverTempResult) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#onNewResultInternal");
            }
            if (!F(id2, dataSource)) {
                H("ignore_old_datasource @ onNewResult", image);
                R(image);
                dataSource.close();
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                    return;
                }
                return;
            }
            this.f27088a.c(isFinished ? DraweeEventTracker.Event.ON_DATASOURCE_RESULT : DraweeEventTracker.Event.ON_DATASOURCE_RESULT_INT);
            try {
                Drawable drawableN = n(image);
                T t10 = this.f27108u;
                Drawable drawable = this.f27110w;
                this.f27108u = image;
                this.f27110w = drawableN;
                try {
                    if (isFinished) {
                        H("set_final_result @ onNewResult", image);
                        this.f27107t = null;
                        this.f27097j.e(drawableN, 1.0f, wasImmediate);
                        Z(id2, image, dataSource);
                    } else if (deliverTempResult) {
                        H("set_temporary_result @ onNewResult", image);
                        this.f27097j.e(drawableN, 1.0f, wasImmediate);
                        Z(id2, image, dataSource);
                    } else {
                        H("set_intermediate_result @ onNewResult", image);
                        this.f27097j.e(drawableN, progress, wasImmediate);
                        W(id2, image);
                    }
                    if (drawable != null && drawable != drawableN) {
                        P(drawable);
                    }
                    if (t10 != null && t10 != image) {
                        H("release_previous_result @ onNewResult", t10);
                        R(t10);
                    }
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                } catch (Throwable th) {
                    if (drawable != null && drawable != drawableN) {
                        P(drawable);
                    }
                    if (t10 != null && t10 != image) {
                        H("release_previous_result @ onNewResult", t10);
                        R(t10);
                    }
                    throw th;
                }
            } catch (Exception e10) {
                H("drawable_failed @ onNewResult", image);
                R(image);
                L(id2, dataSource, e10, isFinished);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        } catch (Throwable th2) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(String id2, com.facebook.datasource.c<T> dataSource, float progress, boolean isFinished) {
        if (!F(id2, dataSource)) {
            G("ignore_old_datasource @ onProgress", null);
            dataSource.close();
        } else {
            if (isFinished) {
                return;
            }
            this.f27097j.d(progress, false);
        }
    }

    private void Q() {
        Map<String, Object> extras;
        boolean z10 = this.f27102o;
        this.f27102o = false;
        this.f27104q = false;
        com.facebook.datasource.c<T> cVar = this.f27107t;
        Map<String, Object> map = null;
        if (cVar != null) {
            extras = cVar.getExtras();
            this.f27107t.close();
            this.f27107t = null;
        } else {
            extras = null;
        }
        Drawable drawable = this.f27110w;
        if (drawable != null) {
            P(drawable);
        }
        if (this.f27106s != null) {
            this.f27106s = null;
        }
        this.f27110w = null;
        T t10 = this.f27108u;
        if (t10 != null) {
            Map<String, Object> mapK = K(z(t10));
            H("release", this.f27108u);
            R(this.f27108u);
            this.f27108u = null;
            map = mapK;
        }
        if (z10) {
            X(extras, map);
        }
    }

    private void U(Throwable throwable, @Nullable com.facebook.datasource.c<T> dataSource) {
        b4.c.a aVarI = I(dataSource, null, null);
        q().onFailure(this.f27099l, throwable);
        r().f(this.f27099l, throwable, aVarI);
    }

    private void V(Throwable throwable) {
        q().onIntermediateImageFailed(this.f27099l, throwable);
        r().a(this.f27099l);
    }

    private void W(String id2, @Nullable T image) {
        INFO infoZ = z(image);
        q().onIntermediateImageSet(id2, infoZ);
        r().onIntermediateImageSet(id2, infoZ);
    }

    private void X(@Nullable Map<String, Object> datasourceExtras, @Nullable Map<String, Object> imageExtras) {
        q().onRelease(this.f27099l);
        r().d(this.f27099l, J(datasourceExtras, imageExtras, null));
    }

    private void Z(String id2, @Nullable T image, @Nullable com.facebook.datasource.c<T> dataSource) {
        INFO infoZ = z(image);
        q().onFinalImageSet(id2, infoZ, f());
        r().c(id2, infoZ, I(dataSource, infoZ, null));
    }

    private void f0() {
        s3.c cVar = this.f27097j;
        if (cVar instanceof com.facebook.drawee.generic.a) {
            ((com.facebook.drawee.generic.a) cVar).G(new C0564a());
        }
    }

    private boolean h0() {
        com.facebook.drawee.components.c cVar;
        return this.f27104q && (cVar = this.f27091d) != null && cVar.h();
    }

    @Nullable
    private Rect u() {
        s3.c cVar = this.f27097j;
        if (cVar == null) {
            return null;
        }
        return cVar.getBounds();
    }

    @Nullable
    protected f A() {
        return this.f27096i;
    }

    @Nullable
    protected Uri B() {
        return null;
    }

    @ReturnsOwnership
    protected com.facebook.drawee.components.c C() {
        if (this.f27091d == null) {
            this.f27091d = new com.facebook.drawee.components.c();
        }
        return this.f27091d;
    }

    protected void E(String id2, Object callerContext) {
        D(id2, callerContext);
        this.f27109v = false;
    }

    @Nullable
    public abstract Map<String, Object> K(INFO info);

    protected void M(String id2, T cachedImage) {
    }

    protected abstract void P(@Nullable Drawable drawable);

    protected abstract void R(@Nullable T image);

    public void S(com.facebook.drawee.controller.c<? super INFO> controllerListener) {
        com.facebook.common.internal.i.i(controllerListener);
        com.facebook.drawee.controller.c<INFO> cVar = this.f27094g;
        if (cVar instanceof c) {
            ((c) cVar).h(controllerListener);
        } else if (cVar == controllerListener) {
            this.f27094g = null;
        }
    }

    public void T(b4.c<INFO> controllerListener2) {
        this.f27095h.k(controllerListener2);
    }

    protected void Y(com.facebook.datasource.c<T> dataSource, @Nullable INFO info) {
        q().onSubmit(this.f27099l, this.f27100m);
        r().b(this.f27099l, this.f27100m, I(dataSource, info, B()));
    }

    protected void a0(@Nullable Drawable controllerOverlay) {
        this.f27098k = controllerOverlay;
        s3.c cVar = this.f27097j;
        if (cVar != null) {
            cVar.c(controllerOverlay);
        }
    }

    @Override // s3.a
    public void b() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#onAttach");
        }
        if (i3.a.R(2)) {
            i3.a.X(f27087z, "controller %x %s: onAttach: %s", Integer.valueOf(System.identityHashCode(this)), this.f27099l, this.f27102o ? "request already submitted" : "request needs submit");
        }
        this.f27088a.c(DraweeEventTracker.Event.ON_ATTACH_CONTROLLER);
        com.facebook.common.internal.i.i(this.f27097j);
        this.f27089b.a(this);
        this.f27101n = true;
        if (!this.f27102o) {
            i0();
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    public void b0(@Nullable d controllerViewportVisibilityListener) {
        this.f27093f = controllerViewportVisibilityListener;
    }

    @Override // s3.a
    public void c(@Nullable String contentDescription) {
        this.f27106s = contentDescription;
    }

    protected void c0(@Nullable com.facebook.drawee.gestures.a gestureDetector) {
        this.f27092e = gestureDetector;
        if (gestureDetector != null) {
            gestureDetector.f(this);
        }
    }

    @Override // s3.a
    public void d(@Nullable s3.b hierarchy) {
        if (i3.a.R(2)) {
            i3.a.X(f27087z, "controller %x %s: setHierarchy: %s", Integer.valueOf(System.identityHashCode(this)), this.f27099l, hierarchy);
        }
        this.f27088a.c(hierarchy != null ? DraweeEventTracker.Event.ON_SET_HIERARCHY : DraweeEventTracker.Event.ON_CLEAR_HIERARCHY);
        if (this.f27102o) {
            this.f27089b.a(this);
            release();
        }
        s3.c cVar = this.f27097j;
        if (cVar != null) {
            cVar.c(null);
            this.f27097j = null;
        }
        if (hierarchy != null) {
            com.facebook.common.internal.i.d(Boolean.valueOf(hierarchy instanceof s3.c));
            s3.c cVar2 = (s3.c) hierarchy;
            this.f27097j = cVar2;
            cVar2.c(this.f27098k);
        }
        if (this.f27096i != null) {
            f0();
        }
    }

    public void d0(final f loggingListener) {
        this.f27096i = loggingListener;
    }

    @Override // s3.a
    @Nullable
    public s3.b e() {
        return this.f27097j;
    }

    protected void e0(boolean enabled) {
        this.f27105r = enabled;
    }

    @Override // s3.a
    @Nullable
    public Animatable f() {
        Object obj = this.f27110w;
        if (obj instanceof Animatable) {
            return (Animatable) obj;
        }
        return null;
    }

    @Override // s3.a
    public void g(boolean isVisibleInViewportHint) {
        d dVar = this.f27093f;
        if (dVar != null) {
            if (isVisibleInViewportHint && !this.f27103p) {
                dVar.a(this.f27099l);
            } else if (!isVisibleInViewportHint && this.f27103p) {
                dVar.b(this.f27099l);
            }
        }
        this.f27103p = isVisibleInViewportHint;
    }

    protected boolean g0() {
        return h0();
    }

    @Override // s3.a
    @Nullable
    public String getContentDescription() {
        return this.f27106s;
    }

    protected void i0() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#submitRequest");
        }
        T tO = o();
        if (tO != null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#submitRequest->cache");
            }
            this.f27107t = null;
            this.f27102o = true;
            this.f27104q = false;
            this.f27088a.c(DraweeEventTracker.Event.ON_SUBMIT_CACHE_HIT);
            Y(this.f27107t, z(tO));
            M(this.f27099l, tO);
            N(this.f27099l, this.f27107t, tO, 1.0f, true, true, true);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
                return;
            }
            return;
        }
        this.f27088a.c(DraweeEventTracker.Event.ON_DATASOURCE_SUBMIT);
        this.f27097j.d(0.0f, true);
        this.f27102o = true;
        this.f27104q = false;
        com.facebook.datasource.c<T> cVarT = t();
        this.f27107t = cVarT;
        Y(cVarT, null);
        if (i3.a.R(2)) {
            i3.a.X(f27087z, "controller %x %s: submitRequest: dataSource: %x", Integer.valueOf(System.identityHashCode(this)), this.f27099l, Integer.valueOf(System.identityHashCode(this.f27107t)));
        }
        this.f27107t.c(new b(this.f27099l, this.f27107t.hasResult()), this.f27090c);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void l(com.facebook.drawee.controller.c<? super INFO> controllerListener) {
        com.facebook.common.internal.i.i(controllerListener);
        com.facebook.drawee.controller.c<INFO> cVar = this.f27094g;
        if (cVar instanceof c) {
            ((c) cVar).a(controllerListener);
        } else if (cVar != null) {
            this.f27094g = c.i(cVar, controllerListener);
        } else {
            this.f27094g = controllerListener;
        }
    }

    public void m(b4.c<INFO> controllerListener2) {
        this.f27095h.h(controllerListener2);
    }

    protected abstract Drawable n(T image);

    @Nullable
    protected T o() {
        return null;
    }

    @Override // com.facebook.drawee.gestures.a.InterfaceC0566a
    public boolean onClick() {
        if (i3.a.R(2)) {
            i3.a.W(f27087z, "controller %x %s: onClick", Integer.valueOf(System.identityHashCode(this)), this.f27099l);
        }
        if (!h0()) {
            return false;
        }
        this.f27091d.d();
        this.f27097j.reset();
        i0();
        return true;
    }

    @Override // s3.a
    public void onDetach() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#onDetach");
        }
        if (i3.a.R(2)) {
            i3.a.W(f27087z, "controller %x %s: onDetach", Integer.valueOf(System.identityHashCode(this)), this.f27099l);
        }
        this.f27088a.c(DraweeEventTracker.Event.ON_DETACH_CONTROLLER);
        this.f27101n = false;
        this.f27089b.d(this);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    @Override // s3.a
    public boolean onTouchEvent(MotionEvent event) {
        if (i3.a.R(2)) {
            i3.a.X(f27087z, "controller %x %s: onTouchEvent %s", Integer.valueOf(System.identityHashCode(this)), this.f27099l, event);
        }
        com.facebook.drawee.gestures.a aVar = this.f27092e;
        if (aVar == null) {
            return false;
        }
        if (!aVar.b() && !g0()) {
            return false;
        }
        this.f27092e.d(event);
        return true;
    }

    public Object p() {
        return this.f27100m;
    }

    protected com.facebook.drawee.controller.c<INFO> q() {
        com.facebook.drawee.controller.c<INFO> cVar = this.f27094g;
        return cVar == null ? com.facebook.drawee.controller.b.a() : cVar;
    }

    protected b4.c<INFO> r() {
        return this.f27095h;
    }

    @Override // com.facebook.drawee.components.a.InterfaceC0563a
    public void release() {
        this.f27088a.c(DraweeEventTracker.Event.ON_RELEASE_CONTROLLER);
        com.facebook.drawee.components.c cVar = this.f27091d;
        if (cVar != null) {
            cVar.e();
        }
        com.facebook.drawee.gestures.a aVar = this.f27092e;
        if (aVar != null) {
            aVar.e();
        }
        s3.c cVar2 = this.f27097j;
        if (cVar2 != null) {
            cVar2.reset();
        }
        Q();
    }

    @Nullable
    protected Drawable s() {
        return this.f27098k;
    }

    protected abstract com.facebook.datasource.c<T> t();

    public String toString() {
        return h.e(this).g("isAttached", this.f27101n).g("isRequestSubmitted", this.f27102o).g("hasFetchFailed", this.f27104q).d("fetchedImage", y(this.f27108u)).f(com.umeng.analytics.pro.f.ax, this.f27088a.toString()).toString();
    }

    @Nullable
    protected com.facebook.drawee.gestures.a v() {
        return this.f27092e;
    }

    public String w() {
        return this.f27099l;
    }

    protected String x(@Nullable T image) {
        return image != null ? image.getClass().getSimpleName() : "<null>";
    }

    protected int y(@Nullable T image) {
        return System.identityHashCode(image);
    }

    @Nullable
    protected abstract INFO z(T image);
}
