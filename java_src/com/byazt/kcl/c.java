package com.byazt.kcl;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.webkit.DownloadListener;
import com.byazt.aas.nb;
import com.byazt.bwm.sp;
import com.byazt.ete.da;
import com.byazt.ete.ic;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.omf.yp;
import com.byazt.ouz.NativeExpressView;
import com.byazt.yih.x;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_PRIMING_WORK_AROUND, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ic f16119a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TTBaseVideoActivity f16124n;
    public String sp;
    public com.byazt.pop.ve tt;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f16127x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, com.byazt.pop.ve> f16120c = Collections.synchronizedMap(new HashMap());
    public final ve uj = new ve();
    public View ve = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f16122i = 0;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f16121da = 0;
    public long sl = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f16125t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f16126u = 0;
    public long yp = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f16123m = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f16128z = false;

    /* JADX INFO: renamed from: com.byazt.kcl.c$c, reason: collision with other inner class name */
    public interface InterfaceC0356c {
        void c(View view, da daVar);

        void c(String str, JSONObject jSONObject);
    }

    public interface tt {
        void c(boolean z10);

        void c(boolean z10, long j10, long j11, String str, String str2);

        void c(boolean z10, long j10, String str, String str2);

        void c(boolean z10, String str, String str2);

        void tt(boolean z10, long j10, long j11, String str, String str2);

        void ve(boolean z10, long j10, long j11, String str, String str2);
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_PRIMING_WORK_AROUND, 187})
    private static class uj extends sp {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f16131c;

        public uj(String str, String str2) {
            super(str);
            this.f16131c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c.c(3).c(this.f16131c, "recycleRes", 0L, 0L, "", "");
            } catch (Throwable th) {
                m.ve("RewardFullDownloadManager", "executeAppDownloadCallback execute throw Exception : ", th);
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_PRIMING_WORK_AROUND, 132})
    public class ve implements DownloadListener {
        public boolean tt = true;

        public ve() {
        }

        public void c(boolean z10) {
            this.tt = z10;
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
            c(this.tt);
            c.this.c(str, true);
            c.this.f16124n.c(1);
        }
    }

    public c(TTBaseVideoActivity tTBaseVideoActivity) {
        this.f16124n = tTBaseVideoActivity;
    }

    private void x() {
        ic icVar = this.f16119a;
        if (icVar == null || icVar.i() != 4) {
            return;
        }
        this.tt = x.c(this.f16124n, this.f16119a, this.sp);
    }

    public ve sp() {
        return this.uj;
    }

    public void a() {
        com.byazt.pop.ve veVar = this.tt;
        if (veVar != null) {
            veVar.ve();
        }
        for (Map.Entry<String, com.byazt.pop.ve> entry : this.f16120c.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue().ve();
            }
        }
        try {
            c(this.f16127x);
        } catch (Throwable th) {
            m.ve("RewardFullDownloadManager", "remove from ITTAppDownloadListener throw Exception : ", th);
        }
    }

    public void c(ic icVar, String str, String str2) {
        if (this.f16128z) {
            return;
        }
        this.f16128z = true;
        this.f16119a = icVar;
        this.sp = str;
        x();
        this.f16127x = str2;
    }

    public void n() {
        for (Map.Entry<String, com.byazt.pop.ve> entry : this.f16120c.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue();
            }
        }
    }

    public com.byazt.pop.ve tt() {
        return this.tt;
    }

    public void uj() {
        com.byazt.pop.ve veVar = this.tt;
        if (veVar != null) {
            veVar.c((Activity) this.f16124n, false);
            this.tt.tt();
        }
        for (Map.Entry<String, com.byazt.pop.ve> entry : this.f16120c.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue().tt();
            }
        }
    }

    public boolean ve() {
        return this.tt != null;
    }

    public void c() {
        ic icVar;
        if (this.tt == null && (icVar = this.f16119a) != null && icVar.i() == 4) {
            this.tt = x.c(this.f16124n, this.f16119a, this.sp);
        }
    }

    private void c(String str) {
        com.byazt.bwm.n.tt(new uj("executeMultiProcessAppDownloadCallBack", str), 5);
    }

    public static yp c(int i10) {
        return yp.c.c(com.byazt.wzi.c.c(gt.getContext()).c(i10));
    }

    public void c(final tt ttVar) {
        com.byazt.pop.ve veVar = this.tt;
        if (veVar == null) {
            return;
        }
        veVar.c(new com.byazt.pop.c() { // from class: com.byazt.kcl.c.1
            @Override // com.byazt.pop.c
            public void c() {
                boolean z10;
                if (System.currentTimeMillis() - c.this.f16122i > NativeExpressView.my) {
                    c.this.f16122i = System.currentTimeMillis();
                    z10 = true;
                } else {
                    z10 = false;
                }
                tt ttVar2 = ttVar;
                if (ttVar2 != null) {
                    ttVar2.c(z10);
                }
            }

            @Override // com.byazt.pop.c
            public void tt(long j10, long j11, String str, String str2) {
                boolean z10;
                if (System.currentTimeMillis() - c.this.f16121da > NativeExpressView.my) {
                    c.this.f16121da = System.currentTimeMillis();
                    z10 = true;
                } else {
                    z10 = false;
                }
                tt ttVar2 = ttVar;
                if (ttVar2 != null) {
                    ttVar2.tt(z10, j10, j11, str, str2);
                }
            }

            @Override // com.byazt.pop.c
            public void ve(long j10, long j11, String str, String str2) {
                boolean z10;
                if (System.currentTimeMillis() - c.this.f16125t > NativeExpressView.my) {
                    c.this.f16125t = System.currentTimeMillis();
                    z10 = true;
                } else {
                    z10 = false;
                }
                tt ttVar2 = ttVar;
                if (ttVar2 != null) {
                    ttVar2.ve(z10, j10, j11, str, str2);
                }
            }

            @Override // com.byazt.pop.c
            public void c(long j10, long j11, String str, String str2) {
                boolean z10;
                if (System.currentTimeMillis() - c.this.sl > NativeExpressView.my) {
                    c.this.sl = System.currentTimeMillis();
                    z10 = true;
                } else {
                    z10 = false;
                }
                tt ttVar2 = ttVar;
                if (ttVar2 != null) {
                    ttVar2.c(z10, j10, j11, str, str2);
                }
            }

            @Override // com.byazt.pop.c
            public void c(long j10, String str, String str2) {
                boolean z10;
                if (System.currentTimeMillis() - c.this.f16126u > NativeExpressView.my) {
                    c.this.f16126u = System.currentTimeMillis();
                    z10 = true;
                } else {
                    z10 = false;
                }
                tt ttVar2 = ttVar;
                if (ttVar2 != null) {
                    ttVar2.c(z10, j10, str, str2);
                }
            }

            @Override // com.byazt.pop.c
            public void c(String str, String str2) {
                boolean z10;
                if (System.currentTimeMillis() - c.this.yp > NativeExpressView.my) {
                    c.this.yp = System.currentTimeMillis();
                    z10 = true;
                } else {
                    z10 = false;
                }
                tt ttVar2 = ttVar;
                if (ttVar2 != null) {
                    ttVar2.c(z10, str, str2);
                }
            }
        });
    }

    public void c(String str, boolean z10) {
        if (this.f16120c.containsKey(str)) {
            com.byazt.pop.ve veVar = this.f16120c.get(str);
            if (veVar != null) {
                if (z10) {
                    veVar.c(com.byazt.wz.x.c(this.f16119a));
                }
                if (veVar instanceof com.byazt.wz.c) {
                    ((com.byazt.wz.c) veVar).x().c(this.f16123m);
                } else if (veVar instanceof com.byazt.wz.sp) {
                    ((com.byazt.wz.sp) veVar).x().c(this.f16123m);
                }
                veVar.c(nb.qy(this.f16119a), false);
                return;
            }
            return;
        }
        com.byazt.pop.ve veVarC = x.c(this.f16124n, str, this.f16119a, this.sp);
        if (z10) {
            veVarC.c(com.byazt.wz.x.c(this.f16119a));
        }
        if (veVarC instanceof com.byazt.wz.c) {
            ((com.byazt.wz.c) veVarC).x().c(this.f16123m);
        } else if (veVarC instanceof com.byazt.wz.sp) {
            ((com.byazt.wz.sp) veVarC).x().c(this.f16123m);
        }
        this.f16120c.put(str, veVarC);
        veVarC.c(nb.qy(this.f16119a), false);
    }

    public void c(final InterfaceC0356c interfaceC0356c) {
        this.tt.c(1, new com.byazt.dk.ve.c() { // from class: com.byazt.kcl.c.2
            @Override // com.byazt.dk.ve.c
            public boolean c(int i10, String str, String str2, String str3, Object obj) {
                if (i10 == 1 && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    boolean z10 = str2.equals("rewarded_video") || str2.equals("fullscreen_interstitial_ad");
                    if (z10 && str3.equals("click_start")) {
                        interfaceC0356c.c(c.this.ve, new da());
                        c.this.ve = null;
                        return true;
                    }
                    if (z10) {
                        str3.hashCode();
                        if (str3.equals("click_continue")) {
                            com.byazt.ddx.uj.tt(c.this.f16119a, str2, "click_play_continue", (Map<String, Object>) null);
                        } else if (str3.equals("click_pause")) {
                            com.byazt.ddx.uj.tt(c.this.f16119a, str2, "click_play_pause", (Map<String, Object>) null);
                            return true;
                        }
                    }
                }
                return true;
            }
        });
    }

    public void c(View view, InterfaceC0356c interfaceC0356c, da daVar) {
        if (this.tt != null && view != null) {
            if (view.getId() == 2114387609) {
                interfaceC0356c.c("click_play_star_level", (JSONObject) null);
                return;
            }
            if (view.getId() == 2114387630) {
                interfaceC0356c.c("click_play_star_nums", (JSONObject) null);
                return;
            } else if (view.getId() == 2114387875) {
                interfaceC0356c.c("click_play_source", (JSONObject) null);
                return;
            } else {
                if (view.getId() == 2114387793) {
                    interfaceC0356c.c("click_play_logo", (JSONObject) null);
                    return;
                }
                return;
            }
        }
        interfaceC0356c.c(view, daVar);
    }

    public void c(com.byazt.ua.c.InterfaceC0445c interfaceC0445c) {
        com.byazt.pop.ve veVar = this.tt;
        if (veVar != null) {
            veVar.c(interfaceC0445c);
        }
    }
}
