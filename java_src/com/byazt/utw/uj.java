package com.byazt.utw;

import android.annotation.SuppressLint;
import android.content.Context;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 15})
public final class uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f21019a = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile com.byazt.byh.tt f21020c = null;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static volatile com.byazt.emg.ve f21021da = null;

    @SuppressLint({"StaticFieldLeak"})
    public static volatile Context sl = null;
    public static volatile com.byazt.byh.ve tt = null;
    public static volatile Integer uj = null;
    public static volatile int ve = 3;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile boolean f21024x;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final boolean f21023n = m.ve();
    public static volatile boolean sp = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile int f21022i = 0;

    public static void c(boolean z10) {
        f21024x = z10;
    }

    public static Context getContext() {
        return sl;
    }

    public static com.byazt.byh.tt tt() {
        return f21020c;
    }

    public static void c(int i10) {
        f21022i = i10;
    }

    public static void c(com.byazt.byh.ve veVar, Context context) {
        if (veVar != null && context != null) {
            sl = context.getApplicationContext();
            if (tt != null) {
                return;
            }
            com.byazt.byh.tt ttVar = f21020c;
            if (ttVar != null && ttVar.f12180c.getAbsolutePath().equals(veVar.f12183c.getAbsolutePath())) {
                throw new IllegalArgumentException("DiskLruCache and DiskCache can't use the same dir");
            }
            tt = veVar;
            f21021da = com.byazt.emg.ve.c(context);
            tt.c(new com.byazt.byh.ve.c() { // from class: com.byazt.utw.uj.1
                @Override // com.byazt.byh.ve.c
                public void c(String str) {
                    if (uj.f21023n) {
                        m.c("TAG_PROXY_DiskLruCache", "new cache created: ".concat(String.valueOf(str)));
                    }
                }

                @Override // com.byazt.byh.ve.c
                public void c(Set<String> set) {
                    uj.f21021da.c(set, 0);
                    if (uj.f21023n) {
                        m.c("TAG_PROXY_DiskLruCache", "cache file removed, ".concat(String.valueOf(set)));
                    }
                }
            });
            ve veVarC = ve.c();
            veVarC.c(veVar);
            veVarC.c(f21021da);
            return;
        }
        throw new IllegalArgumentException("DiskLruCache and Context can't be null !!!");
    }

    public static com.byazt.byh.ve c() {
        return tt;
    }
}
