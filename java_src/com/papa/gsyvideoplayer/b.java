package com.papa.gsyvideoplayer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class b extends c {

    @SuppressLint({"StaticFieldLeak"})
    private static b C;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f76684z = R.id.ad_small_id;
    public static final int A = R.id.ad_full_id;
    public static String B = "GSYVideoADManager";

    private b() {
        P();
    }

    public static boolean c0(Context context) {
        if (((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(context).findViewById(android.R.id.content)).findViewById(A) == null) {
            return false;
        }
        com.papa.gsyvideoplayer.utils.b.k(context);
        if (d0().m() != null) {
            d0().m().onBackFullscreen();
        }
        return true;
    }

    public static synchronized b d0() {
        if (C == null) {
            C = new b();
        }
        return C;
    }

    public static boolean e0(Activity activity) {
        View viewFindViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(activity).findViewById(android.R.id.content)).findViewById(A);
        return (viewFindViewById != null ? (GSYVideoPlayer) viewFindViewById : null) != null;
    }

    public static void f0() {
        if (d0().w() != null) {
            d0().w().onVideoPause();
        }
    }

    public static void g0() {
        if (d0().w() != null) {
            d0().w().onVideoResume();
        }
    }

    public static void h0(boolean z10) {
        if (d.e0().w() != null) {
            d.e0().w().onVideoResume(z10);
        }
    }

    public static void i0() {
        if (d0().w() != null) {
            d0().w().onCompletion();
        }
        d0().y();
    }
}
