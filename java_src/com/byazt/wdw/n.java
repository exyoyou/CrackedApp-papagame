package com.byazt.wdw;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.Toast;
import com.byazt.aas.nb;
import com.byazt.aas.rl;
import com.byazt.bzd.x;
import com.byazt.cr.a;
import com.byazt.ddx.i;
import com.byazt.eia.da;
import com.byazt.ete.hq;
import com.byazt.ete.ic;
import com.byazt.nr.h;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.omf.gu;
import com.byazt.omf.p;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_BEGIN_TIME, 46})
public class n {
    public static volatile boolean sp;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public hq f21482a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Toast f21483c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Map<String, Object> f21484da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f21485i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f21486n;
    public final Context tt;
    public String uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final da f21487x;

    public interface c {
        void c();

        void c(com.byazt.cr.c cVar);
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_BEGIN_TIME, 934})
    class tt implements gu.ve<JSONObject> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final c f21492c;
        public final hq tt;
        public final Toast uj;

        public tt(c cVar, hq hqVar, Toast toast) {
            this.f21492c = cVar;
            this.tt = hqVar;
            this.uj = toast;
        }

        @Override // com.byazt.omf.gu.ve
        public void c(int i10, String str) {
            m.tt("WechatClickHandler", "getWechatLink failed:" + i10 + ", " + str);
            this.tt.tt(0);
            Toast toast = this.uj;
            if (toast != null) {
                toast.cancel();
            }
            a aVar = i10 == 606 ? a.f12575a : a.f12578n;
            c cVar = this.f21492c;
            if (cVar != null) {
                cVar.c(aVar);
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.byazt.omf.gu.ve
        public void c(JSONObject jSONObject) {
            String strOptString = jSONObject.optString("scheme");
            if (!TextUtils.isEmpty(strOptString)) {
                n.this.c(strOptString, this.tt, this.f21492c);
            } else {
                c(606, " scheme is null!");
            }
        }
    }

    public n(da daVar, Context context, boolean z10) {
        this.f21487x = daVar;
        this.tt = context;
        this.f21485i = z10;
    }

    private void uj() {
        x.c(new Runnable() { // from class: com.byazt.wdw.n.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (n.this.f21483c != null) {
                        n.this.f21483c.cancel();
                    }
                    n nVar = n.this;
                    nVar.f21483c = h.c(nVar.tt, "即将跳转微信...", 1, 17, 0, 0);
                    n.this.f21483c.show();
                } catch (Throwable th) {
                    m.ve("toast error:" + th.getMessage());
                }
            }
        });
    }

    private int ve() {
        hq hqVar = this.f21482a;
        if (hqVar == null) {
            return 0;
        }
        if (hqVar.a() == 1 && uj.ve().c()) {
            return TextUtils.isEmpty(this.f21482a.sp()) ? 0 : 1;
        }
        return 2;
    }

    public n tt(boolean z10) {
        this.f21486n = z10;
        return this;
    }

    private boolean tt(c cVar) {
        int iVe;
        int iTt = this.f21482a.tt();
        if (iTt != 1) {
            if (iTt != 2 || (iVe = ve()) == 0) {
                return false;
            }
            if (iVe == 1) {
                c(cVar, this.f21482a);
                return true;
            }
            if (TextUtils.isEmpty(this.f21482a.c())) {
                return false;
            }
            c(cVar, this.f21482a, 2000L);
            return true;
        }
        if (this.f21486n) {
            if (TextUtils.isEmpty(this.f21482a.x())) {
                return true;
            }
            if (ve() == 1) {
                c(cVar, this.f21482a);
                return true;
            }
        }
        return false;
    }

    public static boolean c() {
        return sp;
    }

    public static void c(boolean z10) {
        sp = z10;
    }

    public n c(String str) {
        this.uj = str;
        return this;
    }

    public n c(int i10) {
        this.ve = i10;
        return this;
    }

    public n c(Map<String, Object> map) {
        this.f21484da = map;
        return this;
    }

    public boolean c(c cVar) {
        if (this.f21482a == null) {
            da daVar = this.f21487x;
            this.f21482a = daVar != null ? daVar.A_() : null;
        }
        if (this.f21482a == null) {
            return false;
        }
        if (this.f21485i) {
            da daVar2 = this.f21487x;
            if (daVar2 instanceof com.byazt.eia.uj) {
                return c(((com.byazt.eia.uj) daVar2).da(), cVar);
            }
        }
        return tt(cVar);
    }

    public ic tt() {
        return com.byazt.ppf.ve.c(this.f21487x, this.f21484da);
    }

    private boolean c(int i10, c cVar) {
        if (i10 == 1) {
            c(cVar, this.f21482a);
            return true;
        }
        if (i10 != 2) {
            if (i10 != 3 || !this.f21486n) {
                return false;
            }
            c(cVar, this.f21482a);
            return true;
        }
        if (TextUtils.isEmpty(this.f21482a.c())) {
            return false;
        }
        c(cVar, this.f21482a, 2000L);
        return true;
    }

    private void c(final c cVar, hq hqVar) {
        uj();
        da daVar = this.f21487x;
        if ((daVar instanceof com.byazt.eia.uj) && !TextUtils.isEmpty(((com.byazt.eia.uj) daVar).sp()) && !TextUtils.isEmpty(((com.byazt.eia.uj) this.f21487x).i())) {
            uj ujVarVe = uj.ve();
            da daVar2 = this.f21487x;
            ujVarVe.c(daVar2, ((com.byazt.eia.uj) daVar2).i(), ((com.byazt.eia.uj) this.f21487x).sp(), cVar, this.uj, this.f21486n, this.f21484da);
        } else {
            gt.c().c(hqVar, this.f21487x.x(), this.f21487x.w_(), new tt(cVar, hqVar, this.f21483c) { // from class: com.byazt.wdw.n.1
                @Override // com.byazt.wdw.n.tt, com.byazt.omf.gu.ve
                public void c(JSONObject jSONObject) {
                    String strOptString = jSONObject.optString("userName");
                    String strOptString2 = jSONObject.optString("path");
                    if (TextUtils.isEmpty(strOptString)) {
                        c(605, " userName or path is null!");
                        return;
                    }
                    if (n.this.f21483c != null) {
                        n.this.f21483c.cancel();
                    }
                    uj.ve().c(n.this.f21487x, strOptString, strOptString2, cVar, n.this.uj, n.this.f21486n, n.this.f21484da);
                }

                @Override // com.byazt.wdw.n.tt, com.byazt.omf.gu.ve
                public void c(int i10, String str) {
                    a aVar;
                    n.this.f21482a.tt(0);
                    if (n.this.f21483c != null) {
                        n.this.f21483c.cancel();
                    }
                    if (i10 == 606) {
                        aVar = a.f12576da;
                    } else {
                        aVar = a.f12577i;
                    }
                    c cVar2 = cVar;
                    if (cVar2 != null) {
                        cVar2.c(aVar);
                    }
                }
            }, 1, 2000L);
        }
    }

    private void c(c cVar, hq hqVar, long j10) {
        uj();
        gt.c().c(hqVar, this.f21487x.x(), this.f21487x.w_(), new tt(cVar, hqVar, this.f21483c), 2, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, final hq hqVar, final c cVar) {
        Toast toast = this.f21483c;
        if (toast != null) {
            toast.cancel();
        }
        Uri uri = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        final String strC = rl.tt(tt()) ? this.uj : nb.c(this.ve);
        HashMap map = new HashMap();
        map.put("source", "WechatClickProcesser");
        map.put("scheme", nb.c(str));
        com.byazt.ddx.uj.c(tt(), strC, (Map<String, Object>) map, false);
        com.byazt.nr.tt.c(this.tt, intent, new com.byazt.nr.tt.c() { // from class: com.byazt.wdw.n.3
            @Override // com.byazt.nr.tt.c
            public void c() {
                hqVar.tt(1);
                com.byazt.ddx.uj.c(n.this.tt(), strC, (Throwable) null, false, true);
                com.byazt.ddx.x.c().c(n.this.tt(), strC, false, false, new i.c() { // from class: com.byazt.wdw.n.3.1
                    @Override // com.byazt.ddx.i.c
                    public void c(String str2) {
                    }

                    @Override // com.byazt.ddx.i.c
                    public void c(long j10) {
                        c cVar2 = cVar;
                        if (cVar2 != null) {
                            cVar2.c(a.f12580x);
                        }
                    }

                    @Override // com.byazt.ddx.i.c
                    public void c(boolean z10) {
                        c cVar2 = cVar;
                        if (cVar2 != null) {
                            cVar2.c();
                        }
                    }
                });
            }

            @Override // com.byazt.nr.tt.c
            public void c(Throwable th) {
                com.byazt.ddx.uj.c(n.this.tt(), strC, th, false, false);
                hqVar.tt(0);
                c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.c(a.sp);
                }
            }
        }, TextUtils.equals(p.f18095x, UMModuleRegister.INNER));
    }
}
