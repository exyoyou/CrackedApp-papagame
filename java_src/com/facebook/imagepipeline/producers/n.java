package com.facebook.imagepipeline.producers;

import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class n implements q0<CloseableReference<com.facebook.imagepipeline.image.c>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0<CloseableReference<com.facebook.imagepipeline.image.c>> f28538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final ScheduledExecutorService f28539b;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Consumer f28540b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ProducerContext f28541c;

        a(final Consumer val$context, final ProducerContext val$consumer) {
            this.f28540b = val$context;
            this.f28541c = val$consumer;
        }

        @Override // java.lang.Runnable
        public void run() {
            n.this.f28538a.a(this.f28540b, this.f28541c);
        }
    }

    public n(final q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer, @Nullable final ScheduledExecutorService backgroundTasksExecutor) {
        this.f28538a = inputProducer;
        this.f28539b = backgroundTasksExecutor;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final ProducerContext context) {
        ImageRequest imageRequestA = context.a();
        ScheduledExecutorService scheduledExecutorService = this.f28539b;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.schedule(new a(consumer, context), imageRequestA.h(), TimeUnit.MILLISECONDS);
        } else {
            this.f28538a.a(consumer, context);
        }
    }
}
