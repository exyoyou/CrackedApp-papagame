package com.join.android.app.component.video;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class b extends com.papa.gsyvideoplayer.c {
    public static final int A = 2131362910;
    public static String B = "GSYVideoManager";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f35178z = 2131362911;

    public b() {
        P();
    }

    public static synchronized b d0(String key, String playTag, int mPlayPosition) {
        if (TextUtils.isEmpty(key)) {
            throw new IllegalStateException("key not be empty");
        }
        return h.r(key, playTag, mPlayPosition, true);
    }

    public static boolean e0(Activity activity) {
        View viewFindViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(activity).findViewById(R.id.content)).findViewById(com.join.android.app.mgsim.wufun.R.id.custom_full_id);
        return (viewFindViewById != null ? (GSYVideoPlayer) viewFindViewById : null) != null;
    }

    @Override // com.papa.gsyvideoplayer.c
    protected com.papa.gsyvideoplayer.player.c M() {
        return new com.papa.gsyvideoplayer.player.d();
    }

    public boolean c0(Context context) {
        boolean z10 = false;
        try {
            if (com.papa.gsyvideoplayer.utils.b.o(context) == null) {
                return false;
            }
            if (((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(context).findViewById(R.id.content)).findViewById(com.join.android.app.mgsim.wufun.R.id.custom_full_id) != null) {
                z10 = true;
                com.papa.gsyvideoplayer.utils.b.k(context);
                if (m() != null) {
                    m().onBackFullscreen();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return z10;
    }

    public void f0() {
        if (w() != null) {
            w().onVideoPause();
        }
    }

    public void g0() {
        if (w() != null) {
            w().onVideoResume();
        }
    }

    public void h0(boolean seek) {
        if (w() != null) {
            w().onVideoResume(seek);
        }
    }

    public void i0() {
        if (w() != null) {
            w().onCompletion();
        }
        y();
    }
}
