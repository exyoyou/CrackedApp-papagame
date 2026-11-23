package com.facebook.imagepipeline.producers;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class p implements q0<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f28576e = "DiskCacheProducer";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f28577f = "cached_value_found";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f28578g = "encodedImageSize";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f28579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f28580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f28581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f28582d;

    class a implements bolts.g<com.facebook.imagepipeline.image.e, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ t0 f28583a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ProducerContext f28584b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Consumer f28585c;

        a(final t0 val$consumer, final ProducerContext val$producerContext, final Consumer val$listener) {
            this.f28583a = val$consumer;
            this.f28584b = val$producerContext;
            this.f28585c = val$listener;
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void a(bolts.h<com.facebook.imagepipeline.image.e> task) throws Exception {
            if (p.f(task)) {
                this.f28583a.d(this.f28584b, p.f28576e, null);
                this.f28585c.a();
            } else if (task.F()) {
                this.f28583a.k(this.f28584b, p.f28576e, task.A(), null);
                p.this.f28582d.a(this.f28585c, this.f28584b);
            } else {
                com.facebook.imagepipeline.image.e eVarB = task.B();
                if (eVarB != null) {
                    t0 t0Var = this.f28583a;
                    ProducerContext producerContext = this.f28584b;
                    t0Var.j(producerContext, p.f28576e, p.e(t0Var, producerContext, true, eVarB.y()));
                    this.f28583a.a(this.f28584b, p.f28576e, true);
                    this.f28584b.l("disk");
                    this.f28585c.c(1.0f);
                    this.f28585c.b(eVarB, 1);
                    eVarB.close();
                } else {
                    t0 t0Var2 = this.f28583a;
                    ProducerContext producerContext2 = this.f28584b;
                    t0Var2.j(producerContext2, p.f28576e, p.e(t0Var2, producerContext2, false, 0));
                    p.this.f28582d.a(this.f28585c, this.f28584b);
                }
            }
            return null;
        }
    }

    class b extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f28587a;

        b(final AtomicBoolean val$isCancelled) {
            this.f28587a = val$isCancelled;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
        public void b() {
            this.f28587a.set(true);
        }
    }

    public p(com.facebook.imagepipeline.cache.e defaultBufferedDiskCache, com.facebook.imagepipeline.cache.e smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f28579a = defaultBufferedDiskCache;
        this.f28580b = smallImageBufferedDiskCache;
        this.f28581c = cacheKeyFactory;
        this.f28582d = inputProducer;
    }

    @Nullable
    @VisibleForTesting
    static Map<String, String> e(final t0 listener, final ProducerContext producerContext, final boolean valueFound, final int sizeInBytes) {
        if (listener.f(producerContext, f28576e)) {
            return valueFound ? ImmutableMap.of("cached_value_found", String.valueOf(valueFound), "encodedImageSize", String.valueOf(sizeInBytes)) : ImmutableMap.of("cached_value_found", String.valueOf(valueFound));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean f(bolts.h<?> task) {
        return task.D() || (task.F() && (task.A() instanceof CancellationException));
    }

    private void g(Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext producerContext) {
        if (producerContext.p().getValue() < ImageRequest.RequestLevel.DISK_CACHE.getValue()) {
            this.f28582d.a(consumer, producerContext);
        } else {
            producerContext.j("disk", "nil-result_read");
            consumer.b(null, 1);
        }
    }

    private bolts.g<com.facebook.imagepipeline.image.e, Void> h(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext producerContext) {
        return new a(producerContext.d(), producerContext, consumer);
    }

    private void i(final AtomicBoolean isCancelled, ProducerContext producerContext) {
        producerContext.i(new b(isCancelled));
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext producerContext) {
        ImageRequest imageRequestA = producerContext.a();
        if (!producerContext.a().z(16)) {
            g(consumer, producerContext);
            return;
        }
        producerContext.d().b(producerContext, f28576e);
        com.facebook.cache.common.c cVarB = this.f28581c.b(imageRequestA, producerContext.b());
        com.facebook.imagepipeline.cache.e eVar = imageRequestA.f() == ImageRequest.CacheChoice.SMALL ? this.f28580b : this.f28579a;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        eVar.q(cVarB, atomicBoolean).m(h(consumer, producerContext));
        i(atomicBoolean, producerContext);
    }
}
