package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.os.CancellationSignal;
import android.util.Size;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.baidu.mobads.sdk.internal.ax;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi(29)
@Nullsafe(Nullsafe.Mode.LOCAL)
public class h0 implements q0<CloseableReference<com.facebook.imagepipeline.image.c>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f28387c = "LocalThumbnailBitmapProducer";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    static final String f28388d = "createdThumbnail";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f28389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ContentResolver f28390b;

    class a extends z0<CloseableReference<com.facebook.imagepipeline.image.c>> {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ t0 f28391l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        final /* synthetic */ ProducerContext f28392m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        final /* synthetic */ ImageRequest f28393n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ CancellationSignal f28394o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, t0 producerListener, ProducerContext producerContext, String producerName, final t0 val$cancellationSignal, final ProducerContext val$imageRequest, final ImageRequest val$context, final CancellationSignal val$listener) {
            super(consumer, producerListener, producerContext, producerName);
            this.f28391l = val$cancellationSignal;
            this.f28392m = val$imageRequest;
            this.f28393n = val$context;
            this.f28394o = val$listener;
        }

        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        protected void d() {
            super.d();
            this.f28394o.cancel();
        }

        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        protected void e(Exception e10) {
            super.e(e10);
            this.f28391l.a(this.f28392m, h0.f28387c, false);
            this.f28392m.l(ax.f7484a);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void b(CloseableReference<com.facebook.imagepipeline.image.c> result) {
            CloseableReference.h(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.z0
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public Map<String, String> j(@Nullable final CloseableReference<com.facebook.imagepipeline.image.c> result) {
            return ImmutableMap.of(h0.f28388d, String.valueOf(result != null));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        @Nullable
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public CloseableReference<com.facebook.imagepipeline.image.c> c() throws IOException {
            Bitmap bitmapLoadThumbnail = h0.this.f28390b.loadThumbnail(this.f28393n.w(), new Size(this.f28393n.o(), this.f28393n.n()), this.f28394o);
            if (bitmapLoadThumbnail == null) {
                return null;
            }
            com.facebook.imagepipeline.image.d dVar = new com.facebook.imagepipeline.image.d(bitmapLoadThumbnail, com.facebook.imagepipeline.bitmaps.h.a(), com.facebook.imagepipeline.image.h.f28051d, 0);
            this.f28392m.h(ProducerContext.ExtraKeys.IMAGE_FORMAT, "thumbnail");
            dVar.g(this.f28392m.getExtras());
            return CloseableReference.q(dVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void g(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> result) {
            super.g(result);
            this.f28391l.a(this.f28392m, h0.f28387c, result != null);
            this.f28392m.l(ax.f7484a);
        }
    }

    class b extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ z0 f28396a;

        b(final z0 val$cancellableProducerRunnable) {
            this.f28396a = val$cancellableProducerRunnable;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
        public void b() {
            this.f28396a.a();
        }
    }

    public h0(Executor executor, ContentResolver contentResolver) {
        this.f28389a = executor;
        this.f28390b = contentResolver;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final ProducerContext context) {
        t0 t0VarD = context.d();
        ImageRequest imageRequestA = context.a();
        context.j(ax.f7484a, "thumbnail_bitmap");
        a aVar = new a(consumer, t0VarD, context, f28387c, t0VarD, context, imageRequestA, new CancellationSignal());
        context.i(new b(aVar));
        this.f28389a.execute(aVar);
    }
}
