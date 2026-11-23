package com.byazt.sx;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.ng.a;
import com.byazt.vx.qy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_SESSION_RECEIVED_WINDOW, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Context f19935c;
    public static volatile c tt;
    public static volatile c ve;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_SESSION_RECEIVED_WINDOW, 123})
    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f19945a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Handler f19946c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public Map<String, Object> f19947da;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final int f19949n;
        public final JSONObject sp;
        public final long uj;
        public final String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final long f19950x;
        public volatile boolean tt = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f19948i = 0;

        public c(String str, long j10, long j11, int i10, int i11, JSONObject jSONObject, Map<String, Object> map) {
            this.f19950x = j10 == -1 ? System.currentTimeMillis() : j10;
            this.ve = str;
            this.uj = j11;
            this.f19949n = i10;
            this.f19945a = i11;
            this.sp = jSONObject;
            this.f19947da = map;
            this.f19946c = new Handler(Looper.getMainLooper());
        }

        public static /* synthetic */ int tt(c cVar) {
            int i10 = cVar.f19948i;
            cVar.f19948i = i10 + 1;
            return i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            this.f19946c.postDelayed(new Runnable() { // from class: com.byazt.sx.uj.c.1
                @Override // java.lang.Runnable
                public void run() {
                    c.tt(c.this);
                    if (c.this.f19948i >= 5 || uj.c()) {
                        c.this.c(1);
                        return;
                    }
                    com.byazt.eu.tt.c("TMe", "--==-- 重试一次 eventType:" + c.this.ve + ", 重试次数：" + c.this.f19948i);
                    c.this.c();
                }
            }, 500L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:25:0x0087  */
        public synchronized void c(int i10) {
            byte b10;
            this.f19946c.removeCallbacksAndMessages(null);
            if (this.tt) {
                return;
            }
            this.tt = true;
            if (i10 == 1) {
                com.byazt.eu.tt.c("TMe", "--==-- 最终上报：eventType:" + this.ve + ", 重试次数：" + this.f19948i + ", did: " + uj.n());
            } else if (i10 == 2) {
                com.byazt.eu.tt.c("TMe", "--==-- 最终上报：eventType:" + this.ve + ", 从applog回调中上报, did: " + uj.n());
            }
            String str = this.ve;
            int iHashCode = str.hashCode();
            if (iHashCode != -834688111) {
                if (iHashCode == 270071285 && str.equals("sdk_init")) {
                    b10 = 0;
                } else {
                    b10 = -1;
                }
            } else if (str.equals("sdk_init_end")) {
                b10 = 1;
            } else {
                b10 = -1;
            }
            if (b10 == 0) {
                uj.tt(this.f19950x);
            } else {
                if (b10 == 1) {
                    uj.c(this.uj, this.f19949n, this.f19945a, this.f19950x, this.sp, this.f19947da);
                }
            }
        }
    }

    public static void c(Context context) {
        f19935c = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String n() {
        return qy.c();
    }

    public static void tt() {
        new com.byazt.xo.tt(1).c(new Runnable() { // from class: com.byazt.sx.uj.1
            @Override // java.lang.Runnable
            public void run() {
                a.ve();
            }
        });
    }

    public static void ve() {
        new com.byazt.xo.tt(2).c(new Runnable() { // from class: com.byazt.sx.uj.2
            @Override // java.lang.Runnable
            public void run() {
                a.c();
            }
        });
    }

    public static void c(long j10) {
        c cVar = new c("sdk_init", j10, 0L, 0, 0, null, null);
        tt = cVar;
        cVar.c();
    }

    public static void tt(final long j10) {
        new com.byazt.xo.tt(4).c(new Runnable() { // from class: com.byazt.sx.uj.3
            @Override // java.lang.Runnable
            public void run() {
                a.c(j10);
            }
        });
    }

    public static void c(long j10, int i10, int i11, JSONObject jSONObject, Map<String, Object> map) {
        c cVar = new c("sdk_init_end", -1L, j10, i10, i11, jSONObject, map);
        ve = cVar;
        cVar.c();
    }

    public static boolean c() {
        return !TextUtils.isEmpty(qy.c());
    }

    public static void c(final long j10, final int i10, final int i11, final long j11, final JSONObject jSONObject, final Map<String, Object> map) {
        new com.byazt.xo.tt(8).c(new Runnable() { // from class: com.byazt.sx.uj.4
            @Override // java.lang.Runnable
            public void run() {
                a.c(j10, i10, i11, j11, jSONObject, (Map<String, Object>) map);
            }
        });
    }

    public static void c(final boolean z10) {
        new com.byazt.xo.tt(16).c(new Runnable() { // from class: com.byazt.sx.uj.5
            @Override // java.lang.Runnable
            public void run() {
                a.c(z10);
            }
        });
    }

    public static void c(final int i10, final int i11, final long j10, final boolean z10, final boolean z11, final JSONObject jSONObject, final long j11, final JSONObject jSONObject2) {
        new com.byazt.xo.tt(32).c(new Runnable() { // from class: com.byazt.sx.uj.6
            @Override // java.lang.Runnable
            public void run() {
                a.c(i10, i11, j10, z10, z11, jSONObject, j11, jSONObject2);
            }
        });
    }
}
