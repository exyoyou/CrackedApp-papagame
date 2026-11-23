package com.join.mgps.Util;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.URLUtil;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.common.references.CloseableReference;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import java.io.File;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f50027a = "frescocache";

    class a implements com.facebook.common.memory.b {
        a() {
        }

        @Override // com.facebook.common.memory.b
        public void q(MemoryTrimType trimType) {
            double suggestedTrimRatio = trimType.getSuggestedTrimRatio();
            if (MemoryTrimType.OnCloseToDalvikHeapLimit.getSuggestedTrimRatio() == suggestedTrimRatio || MemoryTrimType.OnSystemLowMemoryWhileAppInBackground.getSuggestedTrimRatio() == suggestedTrimRatio || MemoryTrimType.OnSystemLowMemoryWhileAppInForeground.getSuggestedTrimRatio() == suggestedTrimRatio) {
                com.facebook.imagepipeline.core.k.l().j().d();
            }
        }
    }

    class b implements com.facebook.common.internal.l<File> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f50028a;

        b(final Context val$context) {
            this.f50028a = val$context;
        }

        @Override // com.facebook.common.internal.l
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public File get() {
            return this.f50028a.getCacheDir();
        }
    }

    class c extends com.facebook.datasource.b<Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f50029a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ File f50030b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ f f50031c;

        c(final String val$url, final File val$dir, final f val$listener) {
            this.f50029a = val$url;
            this.f50030b = val$dir;
            this.f50031c = val$listener;
        }

        @Override // com.facebook.datasource.b, com.facebook.datasource.e
        public void b(com.facebook.datasource.c<Void> dataSource) {
            super.b(dataSource);
            f fVar = this.f50031c;
            if (fVar != null) {
                fVar.onProgress(dataSource.getProgress());
            }
        }

        @Override // com.facebook.datasource.b
        protected void e(com.facebook.datasource.c<Void> dataSource) {
            f fVar = this.f50031c;
            if (fVar != null) {
                fVar.onFail();
            }
        }

        @Override // com.facebook.datasource.b
        protected void f(com.facebook.datasource.c<Void> dataSource) {
            try {
                File fileE = t0.e(this.f50029a, this.f50030b);
                if (fileE == null || !fileE.exists()) {
                    f fVar = this.f50031c;
                    if (fVar != null) {
                        fVar.onFail();
                    }
                } else {
                    f fVar2 = this.f50031c;
                    if (fVar2 != null) {
                        fVar2.a(fileE);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class d extends com.facebook.imagepipeline.datasource.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f50032a;

        d(final e val$listener) {
            this.f50032a = val$listener;
        }

        @Override // com.facebook.datasource.b
        protected void e(com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> dataSource) {
            this.f50032a.onFail();
        }

        @Override // com.facebook.imagepipeline.datasource.b
        protected void g(Bitmap bitmap) {
            this.f50032a.a(bitmap);
        }
    }

    public interface e {
        void a(Bitmap bitmap);

        void onFail();
    }

    public interface f {
        void a(File file);

        void onFail();

        void onProgress(float progress);
    }

    public static class g implements com.facebook.imagepipeline.cache.p {
        @Override // com.facebook.imagepipeline.cache.p
        public void a(com.facebook.cache.common.c cacheKey) {
        }

        @Override // com.facebook.imagepipeline.cache.p
        public void b(com.facebook.cache.common.c cacheKey) {
        }

        @Override // com.facebook.imagepipeline.cache.p
        public void c(com.facebook.cache.common.c cacheKey) {
        }

        @Override // com.facebook.imagepipeline.cache.p
        public void d(com.facebook.cache.common.c cacheKey) {
        }

        @Override // com.facebook.imagepipeline.cache.p
        public void e(com.facebook.cache.common.c cacheKey) {
        }

        @Override // com.facebook.imagepipeline.cache.p
        public void f(com.facebook.imagepipeline.cache.t<?, ?> encodedMemoryCache) {
        }

        @Override // com.facebook.imagepipeline.cache.p
        public void g(com.facebook.cache.common.c cacheKey) {
        }

        @Override // com.facebook.imagepipeline.cache.p
        public void h(com.facebook.cache.common.c cacheKey) {
        }

        @Override // com.facebook.imagepipeline.cache.p
        public void i(com.facebook.cache.common.c cacheKey) {
        }

        @Override // com.facebook.imagepipeline.cache.p
        public void j(com.facebook.cache.common.c cacheKey) {
        }

        @Override // com.facebook.imagepipeline.cache.p
        public void k(com.facebook.cache.common.c cacheKey) {
        }

        @Override // com.facebook.imagepipeline.cache.p
        public void l(com.facebook.cache.common.c cacheKey) {
        }

        @Override // com.facebook.imagepipeline.cache.p
        public void m(com.facebook.imagepipeline.cache.t<?, ?> bitmapMemoryCache) {
        }

        @Override // com.facebook.imagepipeline.cache.p
        public void n(com.facebook.cache.common.c cacheKey) {
        }
    }

    public static void a(String url) {
        Fresco.getImagePipeline().f(Uri.parse(url));
    }

    public static void b() {
        Fresco.getImagePipeline().c();
    }

    public static boolean c(String url, File path) {
        File fileI;
        if (path == null || (fileI = i(url)) == null) {
            return false;
        }
        return o0.f(fileI + "", path + "");
    }

    public static boolean d(String url, File dir, String fileName) {
        return c(url, new File(dir, fileName));
    }

    public static File e(String url, File dir) {
        if (dir == null) {
            return null;
        }
        if (!dir.exists()) {
            dir.mkdirs();
        }
        if (t2.h(URLUtil.guessFileName(url, "", ""))) {
            UUID.randomUUID().toString();
        }
        File file = new File(dir, o0.t(url));
        if (c(url, file)) {
            return file;
        }
        return null;
    }

    public static void f(final String url, Context context, final File dir, final f listener) {
        try {
            Fresco.getImagePipeline().V(ImageRequestBuilder.x(Uri.parse(url)).a(), context, Priority.HIGH).c(new c(url, dir, listener), com.facebook.common.executors.a.a());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void g(String url, Context context, int width, int height, final e listener) {
        h(url, context, width, height, null, listener);
    }

    public static void h(String url, Context context, int width, int height, com.facebook.imagepipeline.request.a processor, final e listener) {
        Fresco.getImagePipeline().i(ImageRequestBuilder.x(Uri.parse(url)).I(false).H(processor).L((width == 0 || height == 0) ? null : new com.facebook.imagepipeline.common.e(width, height)).a(), context).c(new d(listener), com.facebook.common.executors.a.a());
    }

    public static File i(String url) {
        if (t2.h(url)) {
            return null;
        }
        com.facebook.cache.common.c cVarB = com.facebook.imagepipeline.cache.l.f().b(ImageRequest.c(url), null);
        if (com.facebook.imagepipeline.core.k.l().n().g(cVarB)) {
            return ((d3.c) com.facebook.imagepipeline.core.k.l().n().c(cVarB)).d();
        }
        if (com.facebook.imagepipeline.core.k.l().t().g(cVarB)) {
            return ((d3.c) com.facebook.imagepipeline.core.k.l().t().c(cVarB)).d();
        }
        return null;
    }

    public static Uri j(File file) {
        return Uri.fromFile(file);
    }

    public static Uri k(String filePath) {
        return Uri.fromFile(new File(filePath));
    }

    public static Uri l(int resId) {
        return Uri.parse("res://xxyy/" + resId);
    }

    public static void m(final Context context, int cacheSizeInM) {
        com.facebook.common.memory.d dVarC = com.facebook.common.memory.d.c();
        dVarC.b(new a());
        Fresco.initialize(context, ImagePipelineConfig.newBuilder(context).setMainDiskCacheConfig(com.facebook.cache.disk.b.m(context).w(cacheSizeInM * 1024 * 1024).o(f50027a).q(new b(context)).n()).setImageCacheStatsTracker(new g()).setDownsampleEnabled(true).setBitmapsConfig(Bitmap.Config.RGB_565).setMemoryTrimmableRegistry(dVarC).build());
    }

    public static boolean n(String url) {
        return com.facebook.imagepipeline.core.k.l().n().g(com.facebook.imagepipeline.cache.l.f().b(ImageRequest.c(url), null));
    }

    public static void o(Uri uri, SimpleDraweeView draweeView, com.facebook.imagepipeline.request.a processor, int width, int height, com.facebook.drawee.controller.b listener) {
        draweeView.setController((com.facebook.drawee.backends.pipeline.d) Fresco.newDraweeControllerBuilder().N(ImageRequestBuilder.x(uri).H(processor).L(new com.facebook.imagepipeline.common.e(width, height)).I(true).y(true).a()).I(listener).c(draweeView.getController()).F(true).build());
    }

    public static void p(File file, SimpleDraweeView draweeView, com.facebook.imagepipeline.request.a processor, int width, int height, com.facebook.drawee.controller.b listener) {
        o(j(file), draweeView, processor, width, height, listener);
    }

    public static void q(String file, SimpleDraweeView draweeView, com.facebook.imagepipeline.request.a processor, int width, int height, com.facebook.drawee.controller.b listener) {
        o(k(file), draweeView, processor, width, height, listener);
    }

    public static void r(int resId, SimpleDraweeView draweeView, com.facebook.imagepipeline.request.a processor, int width, int height, com.facebook.drawee.controller.b listener) {
        o(l(resId), draweeView, processor, width, height, listener);
    }

    public static void s(String url, SimpleDraweeView draweeView, com.facebook.imagepipeline.request.a processor, int width, int height, com.facebook.drawee.controller.b listener) {
        o(Uri.parse(url), draweeView, processor, width, height, listener);
    }

    public static void t() {
        Fresco.getImagePipeline().Q();
    }

    public static void u() {
        Fresco.getImagePipeline().c0();
    }

    public static void v(SimpleDraweeView draweeView, int bgColor) {
        RoundingParams roundingParamsA = RoundingParams.a();
        roundingParamsA.u(bgColor);
        draweeView.getHierarchy().X(roundingParamsA);
    }
}
