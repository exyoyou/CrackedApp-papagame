package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableSet;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.image.EncodedImageOrigin;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d implements ProducerContext {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f28331o = "default";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Set<String> f28332p = ImmutableSet.of((Object[]) new String[]{"id", ProducerContext.ExtraKeys.SOURCE_URI});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImageRequest f28333a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f28334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final String f28335c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final t0 f28336d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f28337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ImageRequest.RequestLevel f28338f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map<String, Object> f28339g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f28340h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    private Priority f28341i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f28342j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f28343k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @GuardedBy("this")
    private final List<s0> f28344l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final com.facebook.imagepipeline.core.i f28345m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private EncodedImageOrigin f28346n;

    public d(ImageRequest imageRequest, String id2, t0 producerListener, Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevel, boolean isPrefetch, boolean isIntermediateResultExpected, Priority priority, com.facebook.imagepipeline.core.i imagePipelineConfig) {
        this(imageRequest, id2, null, producerListener, callerContext, lowestPermittedRequestLevel, isPrefetch, isIntermediateResultExpected, priority, imagePipelineConfig);
    }

    public static void q(@Nullable List<s0> callbacks) {
        if (callbacks == null) {
            return;
        }
        Iterator<s0> it2 = callbacks.iterator();
        while (it2.hasNext()) {
            it2.next().b();
        }
    }

    public static void r(@Nullable List<s0> callbacks) {
        if (callbacks == null) {
            return;
        }
        Iterator<s0> it2 = callbacks.iterator();
        while (it2.hasNext()) {
            it2.next().a();
        }
    }

    public static void s(@Nullable List<s0> callbacks) {
        if (callbacks == null) {
            return;
        }
        Iterator<s0> it2 = callbacks.iterator();
        while (it2.hasNext()) {
            it2.next().c();
        }
    }

    public static void t(@Nullable List<s0> callbacks) {
        if (callbacks == null) {
            return;
        }
        Iterator<s0> it2 = callbacks.iterator();
        while (it2.hasNext()) {
            it2.next().d();
        }
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public ImageRequest a() {
        return this.f28333a;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public Object b() {
        return this.f28337e;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public com.facebook.imagepipeline.core.i c() {
        return this.f28345m;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public t0 d() {
        return this.f28336d;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    @Nullable
    public <E> E e(String str, @Nullable E e10) {
        E e11 = (E) this.f28339g.get(str);
        return e11 == null ? e10 : e11;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public EncodedImageOrigin f() {
        return this.f28346n;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public void g(@Nullable Map<String, ?> extras) {
        if (extras == null) {
            return;
        }
        for (Map.Entry<String, ?> entry : extras.entrySet()) {
            h(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    @Nullable
    public <T> T getExtra(String str) {
        return (T) this.f28339g.get(str);
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public Map<String, Object> getExtras() {
        return this.f28339g;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public String getId() {
        return this.f28334b;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public synchronized Priority getPriority() {
        return this.f28341i;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public void h(String key, @Nullable Object value) {
        if (f28332p.contains(key)) {
            return;
        }
        this.f28339g.put(key, value);
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public void i(s0 callbacks) {
        boolean z10;
        synchronized (this) {
            this.f28344l.add(callbacks);
            z10 = this.f28343k;
        }
        if (z10) {
            callbacks.b();
        }
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public void j(@Nullable String origin, @Nullable String subcategory) {
        this.f28339g.put("origin", origin);
        this.f28339g.put(ProducerContext.ExtraKeys.ORIGIN_SUBCATEGORY, subcategory);
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    @Nullable
    public String k() {
        return this.f28335c;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public void l(@Nullable String origin) {
        j(origin, "default");
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public synchronized boolean m() {
        return this.f28342j;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public void n(EncodedImageOrigin encodedImageOrigin) {
        this.f28346n = encodedImageOrigin;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public synchronized boolean o() {
        return this.f28340h;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerContext
    public ImageRequest.RequestLevel p() {
        return this.f28338f;
    }

    public void u() {
        q(v());
    }

    @Nullable
    public synchronized List<s0> v() {
        if (this.f28343k) {
            return null;
        }
        this.f28343k = true;
        return new ArrayList(this.f28344l);
    }

    public synchronized boolean w() {
        return this.f28343k;
    }

    @Nullable
    public synchronized List<s0> x(boolean isIntermediateResultExpected) {
        if (isIntermediateResultExpected == this.f28342j) {
            return null;
        }
        this.f28342j = isIntermediateResultExpected;
        return new ArrayList(this.f28344l);
    }

    @Nullable
    public synchronized List<s0> y(boolean isPrefetch) {
        if (isPrefetch == this.f28340h) {
            return null;
        }
        this.f28340h = isPrefetch;
        return new ArrayList(this.f28344l);
    }

    @Nullable
    public synchronized List<s0> z(Priority priority) {
        if (priority == this.f28341i) {
            return null;
        }
        this.f28341i = priority;
        return new ArrayList(this.f28344l);
    }

    public d(ImageRequest imageRequest, String id2, @Nullable String uiComponentId, t0 producerListener, Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevel, boolean isPrefetch, boolean isIntermediateResultExpected, Priority priority, com.facebook.imagepipeline.core.i imagePipelineConfig) {
        this.f28346n = EncodedImageOrigin.NOT_SET;
        this.f28333a = imageRequest;
        this.f28334b = id2;
        HashMap map = new HashMap();
        this.f28339g = map;
        map.put("id", id2);
        map.put(ProducerContext.ExtraKeys.SOURCE_URI, imageRequest == null ? "null-request" : imageRequest.w());
        this.f28335c = uiComponentId;
        this.f28336d = producerListener;
        this.f28337e = callerContext;
        this.f28338f = lowestPermittedRequestLevel;
        this.f28340h = isPrefetch;
        this.f28341i = priority;
        this.f28342j = isIntermediateResultExpected;
        this.f28343k = false;
        this.f28344l = new ArrayList();
        this.f28345m = imagePipelineConfig;
    }
}
