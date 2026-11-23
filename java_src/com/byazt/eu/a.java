package com.byazt.eu;

import android.content.Context;
import android.util.DisplayMetrics;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FORCE_CLOSE_CODEC, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static float f14019c = -1.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f14020n = -1;
    public static int tt = -1;
    public static int uj = -1;
    public static float ve = -1.0f;

    static {
        c(com.byazt.bp.tt.getContext());
    }

    public static void c(Context context) {
        Context context2 = context == null ? com.byazt.bp.tt.getContext() : context;
        if (context2 == null) {
            return;
        }
        DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
        f14019c = displayMetrics.density;
        tt = displayMetrics.densityDpi;
        ve = displayMetrics.scaledDensity;
        uj = displayMetrics.widthPixels;
        f14020n = displayMetrics.heightPixels;
        if (context == null || context.getResources() == null || context.getResources().getConfiguration() == null) {
            return;
        }
        if (context.getResources().getConfiguration().orientation == 1) {
            int i10 = uj;
            int i11 = f14020n;
            if (i10 > i11) {
                uj = i11;
                f14020n = i10;
                return;
            }
            return;
        }
        int i12 = uj;
        int i13 = f14020n;
        if (i12 < i13) {
            uj = i13;
            f14020n = i12;
        }
    }

    public static int n(Context context) {
        c(context);
        return tt;
    }

    public static int tt(Context context) {
        c(context);
        return uj;
    }

    public static float uj(Context context) {
        c(context);
        return f14019c;
    }

    public static int ve(Context context) {
        c(context);
        return f14020n;
    }

    public static int tt(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int c(Context context, float f10) {
        c(context);
        float fUj = uj(context);
        if (fUj <= 0.0f) {
            fUj = 1.0f;
        }
        return (int) ((f10 / fUj) + 0.5f);
    }
}
