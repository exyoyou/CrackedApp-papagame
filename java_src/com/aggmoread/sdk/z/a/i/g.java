package com.aggmoread.sdk.z.a.i;

import android.content.Context;
import android.graphics.ImageDecoder;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
public class g {

    static class a extends Animatable2.AnimationCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f3546a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AnimatedImageDrawable f3547b;

        a(ImageView imageView, AnimatedImageDrawable animatedImageDrawable) {
            this.f3546a = imageView;
            this.f3547b = animatedImageDrawable;
        }

        @Override // android.graphics.drawable.Animatable2.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            this.f3546a.setVisibility(8);
            this.f3547b.unregisterAnimationCallback(this);
        }
    }

    public static View a(Context context, String str) {
        return a(context, str, ImageView.ScaleType.CENTER_INSIDE);
    }

    public static View a(Context context, String str, ImageView.ScaleType scaleType) {
        return a(context, str, scaleType, -2);
    }

    public static View a(Context context, String str, ImageView.ScaleType scaleType, int i10) {
        File fileB = com.aggmoread.sdk.z.a.i.a.a().b(context, str);
        if (fileB == null || !fileB.exists()) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 28) {
            com.aggmoread.sdk.z.a.u.j jVar = new com.aggmoread.sdk.z.a.u.j(context);
            jVar.setScaleType(scaleType);
            jVar.a(fileB);
            return jVar;
        }
        try {
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(scaleType);
            Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource(fileB));
            imageView.setImageDrawable(drawableDecodeDrawable);
            if (k.a(drawableDecodeDrawable)) {
                AnimatedImageDrawable animatedImageDrawableA = l.a(drawableDecodeDrawable);
                if (i10 >= -1) {
                    animatedImageDrawableA.setRepeatCount(i10);
                    animatedImageDrawableA.registerAnimationCallback(new a(imageView, animatedImageDrawableA));
                }
                animatedImageDrawableA.start();
                return imageView;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }
}
