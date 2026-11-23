package com.airbnb.lottie.manager;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.utils.f;
import com.airbnb.lottie.utils.l;
import com.airbnb.lottie.x0;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f5704e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final Context f5705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.c f5707c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, x0> f5708d;

    public b(Drawable.Callback callback, String str, com.airbnb.lottie.c cVar, Map<String, x0> map) {
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.f5706b = str;
        } else {
            this.f5706b = str + '/';
        }
        this.f5708d = map;
        e(cVar);
        if (callback instanceof View) {
            this.f5705a = ((View) callback).getContext().getApplicationContext();
        } else {
            this.f5705a = null;
        }
    }

    private Bitmap d(String str, @Nullable Bitmap bitmap) {
        synchronized (f5704e) {
            this.f5708d.get(str).h(bitmap);
        }
        return bitmap;
    }

    @Nullable
    public Bitmap a(String str) {
        x0 x0Var = this.f5708d.get(str);
        if (x0Var == null) {
            return null;
        }
        Bitmap bitmapA = x0Var.a();
        if (bitmapA != null) {
            return bitmapA;
        }
        com.airbnb.lottie.c cVar = this.f5707c;
        if (cVar != null) {
            Bitmap bitmapA2 = cVar.a(x0Var);
            if (bitmapA2 != null) {
                d(str, bitmapA2);
            }
            return bitmapA2;
        }
        Context context = this.f5705a;
        if (context == null) {
            return null;
        }
        String strC = x0Var.c();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (strC.startsWith("data:") && strC.indexOf("base64,") > 0) {
            try {
                byte[] bArrDecode = Base64.decode(strC.substring(strC.indexOf(44) + 1), 0);
                return d(str, BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options));
            } catch (IllegalArgumentException e10) {
                f.f("data URL did not have correct base64 format.", e10);
                return null;
            }
        }
        try {
            if (TextUtils.isEmpty(this.f5706b)) {
                throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
            }
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(context.getAssets().open(this.f5706b + strC), null, options);
                if (bitmapDecodeStream != null) {
                    return d(str, l.m(bitmapDecodeStream, x0Var.f(), x0Var.d()));
                }
                f.e("Decoded image `" + str + "` is null.");
                return null;
            } catch (IllegalArgumentException e11) {
                f.f("Unable to decode image `" + str + "`.", e11);
                return null;
            }
        } catch (IOException e12) {
            f.f("Unable to open asset.", e12);
            return null;
        }
    }

    @Nullable
    public x0 b(String str) {
        return this.f5708d.get(str);
    }

    public boolean c(Context context) {
        if (this.f5705a instanceof Application) {
            context = context.getApplicationContext();
        }
        return context == this.f5705a;
    }

    public void e(@Nullable com.airbnb.lottie.c cVar) {
        this.f5707c = cVar;
    }

    @Nullable
    public Bitmap f(String str, @Nullable Bitmap bitmap) {
        if (bitmap != null) {
            Bitmap bitmapA = this.f5708d.get(str).a();
            d(str, bitmap);
            return bitmapA;
        }
        x0 x0Var = this.f5708d.get(str);
        Bitmap bitmapA2 = x0Var.a();
        x0Var.h(null);
        return bitmapA2;
    }
}
