package com.papa.gsyvideoplayer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class d extends c {

    @SuppressLint({"StaticFieldLeak"})
    private static d C;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f76760z = R.id.small_id;
    public static final int A = R.id.full_id;
    public static String B = "GSYVideoManager";

    private d() {
        P();
    }

    public static boolean c0(Context context) {
        if (((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(context).findViewById(android.R.id.content)).findViewById(A) == null) {
            return false;
        }
        com.papa.gsyvideoplayer.utils.b.k(context);
        if (e0().m() != null) {
            e0().m().onBackFullscreen();
        }
        return true;
    }

    public static synchronized void d0(d dVar) {
        C = dVar;
    }

    public static synchronized d e0() {
        if (C == null) {
            C = new d();
        }
        return C;
    }

    public static boolean f0(Activity activity) {
        View viewFindViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(activity).findViewById(android.R.id.content)).findViewById(A);
        return (viewFindViewById != null ? (GSYVideoPlayer) viewFindViewById : null) != null;
    }

    public static void g0() {
        if (e0().w() != null) {
            e0().w().onVideoPause();
        }
    }

    public static void h0() {
        if (e0().w() != null) {
            e0().w().onVideoResume();
        }
    }

    public static void i0(boolean z10) {
        if (e0().w() != null) {
            e0().w().onVideoResume(z10);
        }
    }

    public static void j0() {
        if (e0().w() != null) {
            e0().w().onCompletion();
        }
        e0().y();
    }

    public static synchronized d k0(v7.a aVar) {
        d dVar;
        dVar = new d();
        d dVar2 = C;
        dVar.f76731o = dVar2.f76731o;
        dVar.f76723g = dVar2.f76723g;
        dVar.f76724h = dVar2.f76724h;
        dVar.f76727k = dVar2.f76727k;
        dVar.f76728l = dVar2.f76728l;
        dVar.f76717a = dVar2.f76717a;
        dVar.f76729m = dVar2.f76729m;
        dVar.f76730n = dVar2.f76730n;
        dVar.f76732p = dVar2.f76732p;
        dVar.f76733q = dVar2.f76733q;
        dVar.f76734r = dVar2.f76734r;
        dVar.x(aVar);
        return dVar;
    }
}
