package com.join.android.app.common.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.net.Uri;
import android.os.Looper;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.facebook.common.references.CloseableReference;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.c2;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.z;
import com.join.mgps.data.UserIconName;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class l {

    class a extends com.facebook.imagepipeline.datasource.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f34781a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimpleDraweeView f34782b;

        /* JADX INFO: renamed from: com.join.android.app.common.utils.l$a$a, reason: collision with other inner class name */
        class RunnableC0641a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Bitmap f34783b;

            RunnableC0641a(final Bitmap val$b2) {
                this.f34783b = val$b2;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f34782b.setImageBitmap(this.f34783b);
            }
        }

        a(final float val$radios, final SimpleDraweeView val$view) {
            this.f34781a = val$radios;
            this.f34782b = val$view;
        }

        @Override // com.facebook.datasource.b
        public void e(com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> dataSource) {
        }

        @Override // com.facebook.imagepipeline.datasource.b
        public void g(@Nullable Bitmap bitmap) {
            if (bitmap == null) {
                return;
            }
            Bitmap bitmapA = l.a(l.K(bitmap, -90), this.f34781a);
            if (Looper.getMainLooper() != Looper.myLooper()) {
                this.f34782b.post(new RunnableC0641a(bitmapA));
            } else {
                this.f34782b.setImageBitmap(bitmapA);
            }
        }
    }

    class b extends com.facebook.imagepipeline.datasource.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f34785a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f34786b;

        b(final String val$localSrc, final Context val$ctx) {
            this.f34785a = val$localSrc;
            this.f34786b = val$ctx;
        }

        private void i(Bitmap bitmap) throws Throwable {
            try {
                if (t2.i(this.f34785a)) {
                    return;
                }
                String str = h() + "";
                c2.q(bitmap, str);
                Fresco.getImagePipeline().e(l.H(new File(str)));
                AccountUtil_.getInstance_(this.f34786b).setLocalUserIcon(str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.facebook.datasource.b
        public void e(com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> dataSource) {
        }

        @Override // com.facebook.imagepipeline.datasource.b
        public void g(@Nullable Bitmap bitmap) throws Throwable {
            i(bitmap);
        }

        public File h() {
            File fileC = z.c();
            if (!fileC.getParentFile().exists()) {
                fileC.getParentFile().mkdirs();
            }
            return fileC;
        }
    }

    class c implements com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.g> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f34787b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f34788c;

        c(final boolean val$save4LocalUser, final Context val$ctx) {
            this.f34787b = val$save4LocalUser;
            this.f34788c = val$ctx;
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFinalImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo, Animatable animatable) {
            if (this.f34787b) {
                l.L(this.f34788c, Uri.parse(id2));
            }
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onIntermediateImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onFailure(String id2, Throwable throwable) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onIntermediateImageFailed(String id2, Throwable throwable) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onRelease(String id2) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onSubmit(String id2, Object callerContext) {
        }
    }

    class d implements com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.g> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimpleDraweeView f34789b;

        d(final SimpleDraweeView val$targetView) {
            this.f34789b = val$targetView;
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFinalImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo, Animatable animatable) {
            if (imageInfo != null) {
                ViewGroup.LayoutParams layoutParams = this.f34789b.getLayoutParams();
                float height = (imageInfo.getHeight() * 1.0f) / imageInfo.getWidth();
                int i10 = layoutParams.width;
                int i11 = layoutParams.height;
                if (i10 > i11) {
                    layoutParams.height = (int) (i10 * height);
                } else {
                    layoutParams.width = (int) (i11 / height);
                }
                this.f34789b.setLayoutParams(layoutParams);
            }
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onIntermediateImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onFailure(String id2, Throwable throwable) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onIntermediateImageFailed(String id2, Throwable throwable) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onRelease(String id2) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onSubmit(String id2, Object callerContext) {
        }
    }

    public static RoundingParams A(Context ctx) {
        return E(ctx);
    }

    public static RoundingParams B(Context ctx) {
        return E(ctx);
    }

    public static RoundingParams C(Context ctx) {
        return E(ctx);
    }

    public static RoundingParams D(Context ctx, int colorRes, int radioRes, int withRes) {
        Resources resources = ctx.getResources();
        float dimension = resources.getDimension(radioRes);
        float dimension2 = resources.getDimension(withRes);
        return new RoundingParams().q(dimension2).t(dimension).p(resources.getColor(colorRes)).x(true);
    }

    public static RoundingParams E(Context ctx) {
        return new RoundingParams().t(ctx.getResources().getDimension(R.dimen.mg_forum_avatar_round_width));
    }

    public static RoundingParams F(Context ctx, float radius) {
        return new RoundingParams().t(radius);
    }

    public static Uri G(Context context, int resId) {
        return Uri.parse("res://" + context.getPackageName() + net.lingala.zip4j.util.e.F0 + resId);
    }

    public static Uri H(File file) {
        return Uri.parse("file://" + file);
    }

    public static Uri I(String url) {
        return Uri.parse(t2.g(url));
    }

    public static RoundingParams J(Context ctx) {
        Resources resources = ctx.getResources();
        float dimension = resources.getDimension(R.dimen.mg_forum_avatar_round_width);
        float dimension2 = resources.getDimension(R.dimen.mg_forum_avatar_round_stroke_width);
        return new RoundingParams().q(dimension2).t(dimension).p(resources.getColor(R.color.mg_forum_avatar_round_stroke_color)).x(true);
    }

    public static Bitmap K(Bitmap bitmap, int degrees) {
        if (degrees == 0 || bitmap == null) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(degrees, bitmap.getWidth() / 2, bitmap.getHeight() / 2);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void L(Context context, Uri uri) {
        Fresco.getImagePipeline().i(ImageRequestBuilder.x(uri).I(true).a(), context).c(new b(AccountUtil_.getInstance_(context).getLocalUserIcon(), context), com.facebook.common.executors.a.a());
    }

    public static void M(SimpleDraweeView draweeView, String url, int iterations, int blurRadius) {
        try {
            draweeView.setController(Fresco.newDraweeControllerBuilder().c(draweeView.getController()).N(ImageRequestBuilder.x(Uri.parse(url)).H(new k4.b(iterations, blurRadius)).a()).build());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static Bitmap a(Bitmap bitmap, float roundPx) {
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
            RectF rectF = new RectF(new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()));
            paint.setAntiAlias(true);
            canvas.drawARGB(0, 0, 0, 0);
            paint.setColor(-16777216);
            canvas.drawRoundRect(rectF, roundPx, roundPx, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), rect, paint);
            return bitmapCreateBitmap;
        } catch (Exception unused) {
            return bitmap;
        }
    }

    public static boolean c(String url) {
        if (!t2.i(url)) {
            return false;
        }
        String strTrim = url.trim();
        if (strTrim.length() <= 0 || !strTrim.contains(o0.f49827a)) {
            return false;
        }
        return strTrim.substring(strTrim.lastIndexOf(o0.f49827a)).toLowerCase().equals(".gif");
    }

    public static void d(SimpleDraweeView view, int defRes, String src) {
        if (t2.i(src) && src.startsWith("system_")) {
            src = UtilsMy.N2(src);
        }
        g(view, defRes, src, null, s.c.f27284a);
    }

    public static void e(SimpleDraweeView view, int defRes, String src, s.c scaleType) {
        if (t2.i(src) && src.startsWith("system_")) {
            src = UtilsMy.N2(src);
        }
        g(view, defRes, src, null, scaleType);
    }

    public static void f(SimpleDraweeView view, int defRes, String src, RoundingParams roundingParams) {
        if (t2.i(src) && src.startsWith("system_")) {
            src = UtilsMy.N2(src);
        }
        g(view, defRes, src, roundingParams, null);
    }

    public static void g(SimpleDraweeView view, int defRes, String src, RoundingParams roundingParams, s.c scaleType) {
        if (t2.i(src) && src.startsWith("system_")) {
            src = UtilsMy.N2(src);
        }
        if (view == null) {
            return;
        }
        view.getContext();
        if (scaleType == null) {
            view.getHierarchy().y(s.c.f27284a);
        } else {
            view.getHierarchy().y(scaleType);
        }
        if (defRes != 0) {
            view.getHierarchy().J(defRes);
        }
        if (roundingParams != null) {
            view.getHierarchy().X(roundingParams);
        }
        try {
            view.setImageURI(I(src));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void h(SimpleDraweeView view, String src) {
        if (t2.i(src) && src.startsWith("system_")) {
            src = UtilsMy.N2(src);
        }
        d(view, R.drawable.main_normal_icon, src);
    }

    public static void i(SimpleDraweeView view, String src, s.c scaleType) {
        if (t2.i(src) && src.startsWith("system_")) {
            src = UtilsMy.N2(src);
        }
        g(view, R.drawable.main_normal_icon, src, null, scaleType);
    }

    public static void j(SimpleDraweeView view, String src, RoundingParams roundingParams) {
        if (t2.i(src) && src.startsWith("system_")) {
            src = UtilsMy.N2(src);
        }
        g(view, R.drawable.main_normal_icon, src, roundingParams, null);
    }

    public static void k(String src) {
        if (t2.i(src) && src.startsWith("system_")) {
            src = UtilsMy.N2(src);
        }
        try {
            Fresco.getImagePipeline().U(ImageRequest.c(src), null);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void l(SimpleDraweeView simpleDraweeView, String url) {
        simpleDraweeView.setController(Fresco.newDraweeControllerBuilder().N(ImageRequestBuilder.x(Uri.parse(url)).D(new com.facebook.imagepipeline.common.d().w(true).a()).a()).build());
    }

    public static void m(Context context, String src, com.facebook.imagepipeline.datasource.b listen) {
        Fresco.getImagePipeline().i(ImageRequestBuilder.x(I(src)).I(true).y(true).a(), context).c(listen, com.facebook.common.executors.a.a());
    }

    public static void n(SimpleDraweeView simpleDraweeView, Uri url) {
        simpleDraweeView.setController(Fresco.newDraweeControllerBuilder().b(url).F(true).build());
    }

    public static void o(SimpleDraweeView simpleDraweeView, String url) {
        p(simpleDraweeView, url, R.drawable.main_normal_icon);
    }

    public static void p(SimpleDraweeView simpleDraweeView, String url, int defRes) {
        r(simpleDraweeView, url, s.c.f27292i, defRes);
    }

    public static void q(SimpleDraweeView simpleDraweeView, String url, s.c scaleType) {
        r(simpleDraweeView, url, scaleType, 0);
    }

    public static void r(SimpleDraweeView simpleDraweeView, String url, s.c scaleType, int defRes) {
        if (!c(url)) {
            e(simpleDraweeView, defRes, url, scaleType);
            return;
        }
        com.facebook.drawee.controller.a aVarD = Fresco.newDraweeControllerBuilder().b(Uri.parse(url)).F(true).build();
        if (scaleType == null) {
            simpleDraweeView.getHierarchy().y(s.c.f27284a);
        } else {
            simpleDraweeView.getHierarchy().y(scaleType);
        }
        if (defRes != 0) {
            simpleDraweeView.getHierarchy().J(defRes);
        }
        simpleDraweeView.setController(aVarD);
    }

    public static void s(SimpleDraweeView targetView, String url) {
        targetView.setController(Fresco.newDraweeControllerBuilder().I(new d(targetView)).b(Uri.parse(url)).F(c(url)).build());
    }

    public static void t(final SimpleDraweeView view, String src, final float radios) {
        Fresco.getImagePipeline().i(ImageRequestBuilder.x(I(src)).I(true).L(new com.facebook.imagepipeline.common.e(MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO, 200)).y(true).a(), view.getContext()).c(new a(radios, view), com.facebook.common.executors.a.a());
    }

    public static void u(SimpleDraweeView view, String src) {
        if (view == null) {
            return;
        }
        try {
            String localUserIcon = AccountUtil_.getInstance_(view.getContext()).getLocalUserIcon();
            File file = new File(localUserIcon);
            if (t2.i(localUserIcon) && file.exists()) {
                src = H(file).toString();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (t2.i(src) && src.startsWith("system_")) {
            src = UtilsMy.N2(src);
        }
        x(view, R.drawable.unloginstatus, src, J(view.getContext()), true);
    }

    public static void v(SimpleDraweeView view, int defRes, String src) {
        x(view, defRes, src, J(view.getContext()), false);
    }

    public static void w(SimpleDraweeView view, int defRes, String src, RoundingParams roundingParams) {
        x(view, defRes, src, roundingParams, false);
    }

    private static void x(SimpleDraweeView view, int defRes, String src, RoundingParams roundingParams, final boolean save4LocalUser) {
        if (view == null) {
            return;
        }
        Context context = view.getContext();
        try {
            Resources resources = context.getResources();
            if (defRes != 0) {
                Drawable drawable = resources.getDrawable(defRes);
                if ((drawable instanceof NinePatchDrawable) || (drawable instanceof ShapeDrawable)) {
                    drawable = new BitmapDrawable(c2.e(resources.getDrawable(defRes)));
                }
                view.getHierarchy().L(drawable);
            }
            if (roundingParams != null) {
                view.getHierarchy().X(roundingParams);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (z(view, defRes, src)) {
            return;
        }
        try {
            view.setController(Fresco.newDraweeControllerBuilder().I(new c(save4LocalUser, context)).b(I(src)).build());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public static void y(SimpleDraweeView view, String src) {
        if (view == null) {
            return;
        }
        x(view, R.drawable.main_normal_icon, src, J(view.getContext()), false);
    }

    public static boolean z(SimpleDraweeView view, int defRes, String src) {
        int i10;
        if (view == null) {
            return false;
        }
        try {
            Resources resources = view.getContext().getResources();
            if (defRes != 0) {
                Drawable drawable = resources.getDrawable(defRes);
                if ((drawable instanceof NinePatchDrawable) || (drawable instanceof ShapeDrawable)) {
                    drawable = new BitmapDrawable(c2.e(resources.getDrawable(defRes)));
                }
                view.getHierarchy().L(drawable);
            }
            if (src.equals(UserIconName.system_1.name())) {
                i10 = R.drawable.icon11;
            } else if (src.equals(UserIconName.system_2.name())) {
                i10 = R.drawable.icon12;
            } else if (src.equals(UserIconName.system_3.name())) {
                i10 = R.drawable.icon13;
            } else if (src.equals(UserIconName.system_4.name())) {
                i10 = R.drawable.icon14;
            } else if (src.equals(UserIconName.system_5.name())) {
                i10 = R.drawable.icon21;
            } else if (src.equals(UserIconName.system_6.name())) {
                i10 = R.drawable.icon22;
            } else if (src.equals(UserIconName.system_7.name())) {
                i10 = R.drawable.icon23;
            } else {
                i10 = src.equals(UserIconName.system_8.name()) ? R.drawable.icon24 : 0;
            }
            if (i10 == 0) {
                return false;
            }
            try {
                view.setImageURI(G(view.getContext(), i10));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return true;
        } catch (Exception e11) {
            e11.printStackTrace();
            return false;
        }
    }
}
