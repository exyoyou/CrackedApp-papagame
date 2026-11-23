package com.join.mgps.pulltorefresh.library.internal;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    @TargetApi(11)
    static class a {
        a() {
        }

        public static void a(View view, int layerType) {
            view.setLayerType(layerType, null);
        }
    }

    @TargetApi(16)
    static class b {
        b() {
        }

        public static void a(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        public static void b(View view, Drawable background) {
            view.setBackground(background);
        }
    }

    public static void a(View view, Runnable runnable) {
        b.a(view, runnable);
    }

    public static void b(View view, Drawable background) {
        b.b(view, background);
    }

    public static void c(View view, int layerType) {
        a.a(view, layerType);
    }
}
