package com.airbnb.lottie.manager;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.model.h;
import com.airbnb.lottie.utils.f;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AssetManager f5701d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.b f5702e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h<String> f5698a = new h<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<h<String>, Typeface> f5699b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, Typeface> f5700c = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f5703f = ".ttf";

    public a(Drawable.Callback callback, @Nullable com.airbnb.lottie.b bVar) {
        this.f5702e = bVar;
        if (callback instanceof View) {
            this.f5701d = ((View) callback).getContext().getAssets();
        } else {
            f.e("LottieDrawable must be inside of a view for images to work.");
            this.f5701d = null;
        }
    }

    private Typeface a(com.airbnb.lottie.model.b bVar) {
        Typeface typefaceCreateFromAsset;
        String strB = bVar.b();
        Typeface typeface = this.f5700c.get(strB);
        if (typeface != null) {
            return typeface;
        }
        String strD = bVar.d();
        String strC = bVar.c();
        com.airbnb.lottie.b bVar2 = this.f5702e;
        if (bVar2 != null) {
            typefaceCreateFromAsset = bVar2.b(strB, strD, strC);
            if (typefaceCreateFromAsset == null) {
                typefaceCreateFromAsset = this.f5702e.a(strB);
            }
        } else {
            typefaceCreateFromAsset = null;
        }
        com.airbnb.lottie.b bVar3 = this.f5702e;
        if (bVar3 != null && typefaceCreateFromAsset == null) {
            String strD2 = bVar3.d(strB, strD, strC);
            if (strD2 == null) {
                strD2 = this.f5702e.c(strB);
            }
            if (strD2 != null) {
                typefaceCreateFromAsset = Typeface.createFromAsset(this.f5701d, strD2);
            }
        }
        if (bVar.e() != null) {
            return bVar.e();
        }
        if (typefaceCreateFromAsset == null) {
            typefaceCreateFromAsset = Typeface.createFromAsset(this.f5701d, "fonts/" + strB + this.f5703f);
        }
        this.f5700c.put(strB, typefaceCreateFromAsset);
        return typefaceCreateFromAsset;
    }

    private Typeface e(Typeface typeface, String str) {
        int i10;
        boolean zContains = str.contains("Italic");
        boolean zContains2 = str.contains("Bold");
        if (zContains && zContains2) {
            i10 = 3;
        } else if (zContains) {
            i10 = 2;
        } else {
            i10 = zContains2 ? 1 : 0;
        }
        return typeface.getStyle() == i10 ? typeface : Typeface.create(typeface, i10);
    }

    public Typeface b(com.airbnb.lottie.model.b bVar) {
        this.f5698a.b(bVar.b(), bVar.d());
        Typeface typeface = this.f5699b.get(this.f5698a);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceE = e(a(bVar), bVar.d());
        this.f5699b.put(this.f5698a, typefaceE);
        return typefaceE;
    }

    public void c(String str) {
        this.f5703f = str;
    }

    public void d(@Nullable com.airbnb.lottie.b bVar) {
        this.f5702e = bVar;
    }
}
