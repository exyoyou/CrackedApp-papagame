package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import androidx.annotation.VisibleForTesting;
import com.baidu.mobads.sdk.internal.ax;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.FileNotFoundException;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class i0 implements q0<CloseableReference<com.facebook.imagepipeline.image.c>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f28408c = "VideoThumbnailProducer";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    static final String f28409d = "createdThumbnail";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f28410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ContentResolver f28411b;

    class a extends z0<CloseableReference<com.facebook.imagepipeline.image.c>> {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ t0 f28412l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        final /* synthetic */ ProducerContext f28413m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        final /* synthetic */ ImageRequest f28414n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, t0 producerListener, ProducerContext producerContext, String producerName, final t0 val$imageRequest, final ProducerContext val$producerContext, final ImageRequest val$listener) {
            super(consumer, producerListener, producerContext, producerName);
            this.f28412l = val$imageRequest;
            this.f28413m = val$producerContext;
            this.f28414n = val$listener;
        }

        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        protected void e(Exception e10) {
            super.e(e10);
            this.f28412l.a(this.f28413m, i0.f28408c, false);
            this.f28413m.l(ax.f7484a);
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
            return ImmutableMap.of(i0.f28409d, String.valueOf(result != null));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        @Nullable
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public CloseableReference<com.facebook.imagepipeline.image.c> c() throws Exception {
            String strI;
            try {
                strI = i0.this.i(this.f28414n);
            } catch (IllegalArgumentException unused) {
                strI = null;
            }
            Bitmap bitmapCreateVideoThumbnail = strI != null ? ThumbnailUtils.createVideoThumbnail(strI, i0.g(this.f28414n)) : i0.h(i0.this.f28411b, this.f28414n.w());
            if (bitmapCreateVideoThumbnail == null) {
                return null;
            }
            com.facebook.imagepipeline.image.d dVar = new com.facebook.imagepipeline.image.d(bitmapCreateVideoThumbnail, com.facebook.imagepipeline.bitmaps.h.a(), com.facebook.imagepipeline.image.h.f28051d, 0);
            this.f28413m.h(ProducerContext.ExtraKeys.IMAGE_FORMAT, "thumbnail");
            dVar.g(this.f28413m.getExtras());
            return CloseableReference.q(dVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void g(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> result) {
            super.g(result);
            this.f28412l.a(this.f28413m, i0.f28408c, result != null);
            this.f28413m.l(ax.f7484a);
        }
    }

    class b extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ z0 f28416a;

        b(final z0 val$cancellableProducerRunnable) {
            this.f28416a = val$cancellableProducerRunnable;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
        public void b() {
            this.f28416a.a();
        }
    }

    public i0(Executor executor, ContentResolver contentResolver) {
        this.f28410a = executor;
        this.f28411b = contentResolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(ImageRequest imageRequest) {
        return (imageRequest.o() > 96 || imageRequest.n() > 96) ? 1 : 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static Bitmap h(ContentResolver contentResolver, Uri uri) {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(uri, "r");
            com.facebook.common.internal.i.i(parcelFileDescriptorOpenFileDescriptor);
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
            return mediaMetadataRetriever.getFrameAtTime(-1L);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public String i(ImageRequest imageRequest) {
        Uri uri;
        String str;
        String[] strArr;
        Uri uriW = imageRequest.w();
        if (com.facebook.common.util.f.l(uriW)) {
            return imageRequest.v().getPath();
        }
        if (com.facebook.common.util.f.k(uriW)) {
            if ("com.android.providers.media.documents".equals(uriW.getAuthority())) {
                String documentId = DocumentsContract.getDocumentId(uriW);
                com.facebook.common.internal.i.i(documentId);
                Uri uri2 = (Uri) com.facebook.common.internal.i.i(MediaStore.Video.Media.EXTERNAL_CONTENT_URI);
                strArr = new String[]{documentId.split(":")[1]};
                uri = uri2;
                str = "_id=?";
            } else {
                uri = uriW;
                str = null;
                strArr = null;
            }
            Cursor cursorQuery = this.f28411b.query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        cursorQuery.close();
                        return string;
                    }
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
        return null;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final ProducerContext producerContext) {
        t0 t0VarD = producerContext.d();
        ImageRequest imageRequestA = producerContext.a();
        producerContext.j(ax.f7484a, "video");
        a aVar = new a(consumer, t0VarD, producerContext, f28408c, t0VarD, producerContext, imageRequestA);
        producerContext.i(new b(aVar));
        this.f28410a.execute(aVar);
    }
}
