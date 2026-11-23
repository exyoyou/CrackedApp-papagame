package com.byazt.fcd;

import android.text.TextUtils;
import android.view.View;
import com.byazt.ete.ic;
import com.byazt.ete.lt;
import com.byazt.ete.xd;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.m;
import com.byazt.xl.yp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import net.lingala.zip4j.util.e;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT, 54})
public class ve extends com.byazt.fcd.c {
    public final AtomicBoolean aw;
    public com.byazt.dn.c bm;
    public final AtomicBoolean bx;
    public int cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<com.byazt.iym.tt> f14100d;
    public int eo;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public com.byazt.iym.n f14101hd;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public final AtomicBoolean f14102ic;
    public com.byazt.qmz.c lr;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public int f14103nb;
    public int or;
    public final AtomicBoolean pf;
    public int qp;
    public final AtomicBoolean sv;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public int f14104zb;

    public interface c {
        void c();

        void c(int i10);

        void c(long j10, long j11);

        void tt();

        void uj();

        Map<String, Object> ve();
    }

    public ve(TTBaseVideoActivity tTBaseVideoActivity, ic icVar) {
        super(tTBaseVideoActivity, icVar);
        this.f14100d = new ArrayList();
        this.eo = 0;
        this.f14104zb = 0;
        this.or = 0;
        this.cu = 0;
        this.qp = 0;
        this.f14103nb = 0;
        this.pf = new AtomicBoolean(false);
        this.bx = new AtomicBoolean(false);
        this.sv = new AtomicBoolean(true);
        this.aw = new AtomicBoolean(false);
        this.f14102ic = new AtomicBoolean(true);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x007f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0087  */
    /* JADX WARN: Code duplicated, block: B:31:0x0092  */
    /* JADX WARN: Code duplicated, block: B:33:? A[RETURN, SYNTHETIC] */
    private void f() {
        String str;
        boolean z10;
        boolean z11;
        String str2;
        com.byazt.qmz.c cVar;
        String str3;
        boolean z12 = Math.max(0, this.f14073h.ve() - yv()) == 0;
        int iUj = lt.uj(this.tt);
        int iN = lt.n(this.tt);
        int iA = a(false);
        if (!lt.x(this.tt)) {
            str = "领取成功";
            if (iUj == 0) {
                if (iA > 0) {
                    str = iA + "s后可领取奖励";
                }
                z10 = true;
            } else if (iA > 0) {
                str = iA + "s";
            }
            tt(a(true));
            if (z12 || iN != 0) {
                z11 = false;
            } else {
                z11 = true;
            }
            if (z12 || iN != 1) {
                str2 = null;
            } else {
                str2 = "跳过";
            }
            this.rh.c(z10, str, str2, z11, z12);
            cVar = this.lr;
            if (cVar != null) {
                cVar.c((int) (this.f14073h.c() / 1000), this.f14073h.n(), this.f14073h.tt(), a(false));
            }
        }
        if (iA > 0) {
            str3 = iA + "s";
        } else {
            str3 = "奖励已领取";
        }
        str = str3;
        z10 = false;
        tt(a(true));
        if (z12) {
            z11 = false;
        } else {
            z11 = false;
        }
        if (z12) {
            str2 = null;
        } else {
            str2 = null;
        }
        this.rh.c(z10, str, str2, z11, z12);
        cVar = this.lr;
        if (cVar != null) {
            cVar.c((int) (this.f14073h.c() / 1000), this.f14073h.n(), this.f14073h.tt(), a(false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        com.byazt.jzl.a aVarDa;
        com.byazt.iym.n nVar = this.f14101hd;
        ic icVarC = null;
        com.byazt.dh.ve veVarQp = nVar != null ? nVar.qp() : null;
        com.byazt.iym.tt ttVar = this.f14100d.get(this.cu);
        if (ttVar != null) {
            icVarC = ttVar.c();
            aVarDa = ttVar.da();
        } else {
            aVarDa = null;
        }
        this.my.c(icVarC, veVarQp, aVarDa);
        this.my.tt(this.f14070c.x());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hj() {
        if (this.cu < this.f14100d.size() - 1) {
            this.f14100d.get(this.cu + 1).t();
            this.f14100d.get(this.cu + 1).c(this.f14076n, this.f14069a);
        }
    }

    private void ir() {
        String str;
        String string;
        String str2;
        if (lt.x(this.tt)) {
            int iMin = this.cu + 1;
            int size = this.f14100d.size();
            boolean z10 = this.cu + 1 >= this.f14100d.size();
            boolean z11 = this.cu == 0;
            int iJ = j();
            boolean z12 = this.f14073h.n() - this.or < lt.z(this.tt);
            if (this.sv.get()) {
                if (!z12) {
                    iMin = Math.min(iMin + 1, size);
                }
                int i10 = iMin;
                String str3 = i10 + e.F0 + size;
                if (z12) {
                    StringBuilder sb2 = new StringBuilder();
                    if (z11) {
                        str2 = "可看" + size + "个视频,当前 ";
                    } else {
                        str2 = "正在播放 ";
                    }
                    sb2.append(str2);
                    sb2.append(str3);
                    string = sb2.toString();
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    if (z10) {
                        str = "";
                    } else {
                        str = iJ + "秒后播放 ";
                    }
                    sb3.append(str);
                    sb3.append(str3);
                    string = sb3.toString();
                }
                this.rh.c(string, this.aw.get() ? "取消" : null, this.aw.get());
                com.byazt.qmz.c cVar = this.lr;
                if (cVar != null) {
                    cVar.c(iJ, z10, i10, size, true, z12, this.aw.get());
                }
            } else {
                this.rh.c((String) null, (String) null, false);
                com.byazt.qmz.c cVar2 = this.lr;
                if (cVar2 != null) {
                    cVar2.c(0, z10, 0, 0, false, false, false);
                }
                if (iJ == 0 && !dz()) {
                    i(false);
                }
            }
            if (iJ == 0) {
                i(false);
            }
        }
        if (this.f14073h.n() <= lt.i(this.tt) || this.bx.get() || ma() == null) {
            return;
        }
        ma().n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.dqg.uj ma() {
        com.byazt.dqg.tt ttVar = this.f14074i;
        if (ttVar instanceof com.byazt.dqg.uj) {
            return (com.byazt.dqg.uj) ttVar;
        }
        return null;
    }

    public static int tt(ic icVar) {
        return 8;
    }

    private void yf() {
        com.byazt.iym.n nVar = this.f14101hd;
        if (nVar == null || !nVar.nb()) {
            int iUj = this.f14100d.get(this.cu).uj();
            if (iUj > 0) {
                this.eo += iUj;
            }
            if ((lt.ve(this.tt) <= this.f14104zb) && !this.pf.get()) {
                this.f14070c.uj(0);
                this.f14070c.t();
                this.pf.set(true);
            }
            int i10 = this.f14104zb;
            if (i10 < this.eo) {
                this.f14104zb = i10 + 1;
            }
        }
    }

    @Override // com.byazt.fcd.c
    public boolean a() {
        return false;
    }

    @Override // com.byazt.fcd.c
    public int aw() {
        return this.f14104zb;
    }

    @Override // com.byazt.fcd.tt
    public boolean b() {
        return false;
    }

    @Override // com.byazt.fcd.c
    public int bx() {
        return lt.ve(this.tt) - this.f14104zb;
    }

    public boolean dz() {
        ic icVarC = this.f14100d.get(this.cu).c();
        return Math.round(xd.sp(icVarC)) <= ((long) lt.tt(icVarC));
    }

    @Override // com.byazt.fcd.c
    public int eo() {
        return tt(this.tt);
    }

    @Override // com.byazt.fcd.c
    public void gu() {
        if (this.gt.cu()) {
            return;
        }
        try {
            com.byazt.iym.n nVar = (com.byazt.iym.n) ma().tt().ve(this.qp);
            if (nVar != null) {
                nVar.md();
            }
        } catch (Exception e10) {
            m.ve("cubic  resume exception:" + e10.getMessage());
        }
    }

    @Override // com.byazt.fcd.tt
    public boolean iu() {
        if (lt.m(this.tt)) {
            return this.f14075m;
        }
        return false;
    }

    public int j() {
        ic icVarC = this.f14100d.get(this.cu).c();
        return Math.max(0, ((((int) Math.min(Math.round(xd.sp(icVarC)), lt.tt(icVarC))) + (dz() ? 1 : 0)) + this.or) - this.f14073h.n());
    }

    @Override // com.byazt.fcd.tt
    public boolean kk() {
        return true;
    }

    @Override // com.byazt.fcd.c
    public void lt() {
        this.sv.set(false);
        this.f14102ic.set(false);
        r();
    }

    @Override // com.byazt.fcd.c
    public void m() {
        super.m();
        List<com.byazt.iym.tt> list = this.f14100d;
        if (list != null) {
            Iterator<com.byazt.iym.tt> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().x();
            }
        }
        if (ma() != null) {
            ma().ve().uj();
        }
    }

    @Override // com.byazt.fcd.tt
    public boolean q() {
        return this.tt.wn() == 2 || this.tt.wn() == 3 || this.tt.wn() == 7;
    }

    @Override // com.byazt.fcd.c
    public void qy() {
        try {
            com.byazt.iym.n nVar = (com.byazt.iym.n) ma().tt().ve(this.qp);
            if (nVar != null) {
                nVar.p();
            }
        } catch (Exception e10) {
            m.ve("cubic pause exception:" + e10.getMessage());
        }
    }

    @Override // com.byazt.fcd.tt
    public void r() {
        f();
        yf();
        ir();
    }

    @Override // com.byazt.fcd.tt
    public void s() {
        this.rh.c(true);
        this.rh.tt(this.tt.fe());
        this.rh.ve(true);
        this.rh.n(true);
        if (!TextUtils.isEmpty(lt.sl(this.tt))) {
            this.rh.c(false);
            com.byazt.dn.c cVar = new com.byazt.dn.c(this.tt);
            this.bm = cVar;
            cVar.c(new com.byazt.xl.sp() { // from class: com.byazt.fcd.ve.1

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public boolean f14105c = false;

                @Override // com.byazt.xl.sp
                public void c(final View view, final yp ypVar) {
                    if (this.f14105c) {
                        return;
                    }
                    ve.this.f14070c.or().post(new Runnable() { // from class: com.byazt.fcd.ve.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ve.this.f14070c.or().getTopFrameContainer().removeAllViews();
                            ve.this.f14070c.or().getTopFrameContainer().addView(view);
                            ve.this.rh.c(true);
                            yp ypVar2 = ypVar;
                            if (ypVar2 instanceof com.byazt.atv.ve) {
                                ve.this.lr = ((com.byazt.atv.ve) ypVar2).rh();
                                ve.this.lr.c((int) (ve.this.f14073h.c() / 1000), ve.this.f14073h.n(), ve.this.f14073h.tt(), ve.this.a(false));
                                ve.this.r();
                            }
                        }
                    });
                }

                @Override // com.byazt.xl.sp
                public void c(int i10, String str) {
                    this.f14105c = true;
                    ve.this.rh.c(true);
                }
            });
            this.bm.c(new com.byazt.xl.x() { // from class: com.byazt.fcd.ve.2
                @Override // com.byazt.xl.x
                public void c(View view, int i10, com.byazt.sr.ve veVar, int i11) {
                    if (i10 == 3) {
                        ve.this.lr().i();
                    } else if (i10 == 5) {
                        ve.this.lr().c(!ve.this.f14079u);
                    } else {
                        if (i10 != 6) {
                            return;
                        }
                        ve.this.lr().a();
                    }
                }

                @Override // com.byazt.xl.x
                public void tt(View view, int i10, com.byazt.sr.ve veVar, int i11) {
                }
            });
            this.bm.c(new com.byazt.kdw.tt() { // from class: com.byazt.fcd.ve.3
                @Override // com.byazt.kdw.tt
                public void c() {
                    ve.this.lt();
                }
            });
            this.bm.c(lt.sl(this.tt), lt.t(this.tt), this.f14076n, 0, lt.u(this.tt));
        }
        r();
    }

    @Override // com.byazt.fcd.c, com.byazt.fcd.tt
    public boolean to() {
        return lt.x(this.tt);
    }

    @Override // com.byazt.fcd.c
    public void zm() {
        super.zm();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("visible", false);
        } catch (JSONException e10) {
            m.c(e10);
        }
        this.gt.c(jSONObject);
        if (!to()) {
            qy();
        }
        this.sv.set(false);
        this.rh.c((String) null, (String) null, false);
        com.byazt.qmz.c cVar = this.lr;
        if (cVar != null) {
            cVar.c(0, true, 0, 0, false, false, false);
            this.lr.c((int) (this.f14073h.c() / 1000), this.f14073h.n(), this.f14073h.tt(), a(false));
        }
    }

    @Override // com.byazt.fcd.c
    public View i() {
        return com.byazt.vfu.a.da(this.f14070c);
    }

    @Override // com.byazt.fcd.c
    public int sp(boolean z10) {
        return z10 ? bx() : lt.sp(this.tt) - this.f14104zb;
    }

    @Override // com.byazt.fcd.c
    public void x() {
        super.x();
        this.f14100d.add(new com.byazt.iym.tt(this.f14070c, this.tt, this.f14078t, q(), true));
        try {
            JSONArray jSONArray = new JSONArray(this.tt.hl());
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                this.f14100d.add(new com.byazt.iym.tt(this.f14070c, com.byazt.omf.c.c(jSONArray.getJSONObject(i10)), this.f14078t, q(), false));
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
        Iterator<com.byazt.iym.tt> it2 = this.f14100d.iterator();
        while (it2.hasNext()) {
            it2.next().c(this.f14079u);
        }
        this.aw.set(lt.yp(this.tt));
    }

    public void i(boolean z10) {
        if (!this.gt.cu() && this.cu + 1 < this.f14100d.size()) {
            this.or = this.f14073h.n();
            if (!(z10 || this.f14102ic.get() || lt.a(this.tt)) || ma() == null) {
                return;
            }
            ma().tt().tt(this.qp + 1);
        }
    }

    @Override // com.byazt.fcd.c
    public void n(boolean z10) {
        super.n(z10);
        com.byazt.iym.n nVar = this.f14101hd;
        if (nVar != null) {
            nVar.ve(z10);
        }
        Iterator<com.byazt.iym.tt> it2 = this.f14100d.iterator();
        while (it2.hasNext()) {
            it2.next().c(z10);
        }
    }

    @Override // com.byazt.fcd.c, com.byazt.fcd.tt
    public void ve() {
        this.f14074i.ve(true);
        if (ma() != null) {
            ma().ve().c(this.f14100d);
            ma().uj().c(new com.byazt.iym.ve.c() { // from class: com.byazt.fcd.ve.4
                @Override // com.byazt.iym.ve.c
                public void c() {
                    ve veVar = ve.this;
                    veVar.f14075m = true;
                    veVar.cu = 0;
                    c((com.byazt.iym.n) ve.this.ma().tt().ve(0));
                    ve.this.g();
                    ve.this.hj();
                    ve.this.f14070c.tt(false, true);
                }

                @Override // com.byazt.iym.ve.c
                public void c(boolean z10, int i10, boolean z11) {
                    int i11 = ve.this.qp;
                    if (ve.this.f14101hd != null) {
                        ve.this.f14070c.lt().c(z10, i11 + 1, ve.this.f14101hd.eo());
                    }
                    ve.this.qp = i10;
                    ve veVar = ve.this;
                    veVar.f14103nb = Math.max(veVar.f14103nb, i10 + 1);
                    ve veVar2 = ve.this;
                    veVar2.cu = i10 % veVar2.f14100d.size();
                    c((com.byazt.iym.n) ve.this.ma().tt().ve(i10));
                    ve.this.ma().a();
                    ve.this.bx.set(true);
                    ve.this.aw.set(lt.yp(ve.this.tt) && ve.this.cu + 1 < ve.this.f14100d.size());
                    ve.this.r();
                    ve.this.hj();
                    ve veVar3 = ve.this;
                    veVar3.rh.c(((com.byazt.iym.tt) veVar3.f14100d.get(ve.this.cu)).c());
                }

                @Override // com.byazt.iym.ve.c
                public void c(boolean z10, int i10) {
                    com.byazt.iym.n nVar = (com.byazt.iym.n) ve.this.ma().tt().ve(i10);
                    if (nVar != null) {
                        nVar.tt(false);
                    }
                }

                private void c(com.byazt.iym.n nVar) {
                    if (nVar != null) {
                        ve.this.f14101hd = nVar;
                        ve.this.f14101hd.tt(true);
                        ve.this.f14101hd.c(new c() { // from class: com.byazt.fcd.ve.4.1
                            @Override // com.byazt.fcd.ve.c
                            public void c() {
                                ve veVar = ve.this;
                                veVar.f14075m = true;
                                veVar.ma().c(false);
                            }

                            @Override // com.byazt.fcd.ve.c
                            public void tt() {
                                ve veVar = ve.this;
                                veVar.f14075m = false;
                                veVar.ma().c(true);
                            }

                            @Override // com.byazt.fcd.ve.c
                            public void uj() {
                                if (ve.this.cu + 1 >= ve.this.f14100d.size() || !ve.this.sv.get()) {
                                    ve.this.f14070c.a(1);
                                } else if (ve.this.dz()) {
                                    ve.this.i(false);
                                }
                            }

                            @Override // com.byazt.fcd.ve.c
                            public Map<String, Object> ve() {
                                return ve.this.f14070c.x();
                            }

                            @Override // com.byazt.fcd.ve.c
                            public void c(int i10) {
                                ve.this.eo += i10;
                                ve.this.f14104zb += i10;
                                ve.this.f14070c.t(i10);
                            }

                            @Override // com.byazt.fcd.ve.c
                            public void c(long j10, long j11) {
                                ve.this.f14075m = false;
                            }
                        });
                        ve.this.f14075m = nVar.nb();
                        ve.this.ma().c(!nVar.pf());
                    } else {
                        ve.this.f14075m = false;
                    }
                    ve.this.g();
                }
            });
        }
    }

    public static boolean c(ic icVar) {
        return (icVar == null || !lt.c(icVar) || TextUtils.isEmpty(icVar.hl())) ? false : true;
    }

    @Override // com.byazt.fcd.c
    public com.byazt.dqg.tt c(boolean z10) {
        com.byazt.dqg.uj ujVar = new com.byazt.dqg.uj(this.f14070c, this.tt, z10);
        float f10 = this.f14076n;
        float f11 = this.f14069a;
        float[] fArrGt = {f10, f11};
        if (f10 < 10.0f || f11 < 10.0f) {
            fArrGt = gt();
        }
        ujVar.c(fArrGt);
        this.f14074i = ujVar;
        return ujVar;
    }

    @Override // com.byazt.fcd.c
    public com.byazt.qq.tt.c c(ic icVar, final com.byazt.qq.da daVar) {
        this.f14070c.sv();
        com.byazt.qq.c veVar = lt.x(icVar) ? new com.byazt.qq.ve(this.f14070c, icVar) : new com.byazt.qq.n(this.f14070c, icVar);
        veVar.c(sv());
        return veVar.tt(new com.byazt.qq.da() { // from class: com.byazt.fcd.ve.5
            @Override // com.byazt.qq.da
            public void c() {
                super.c();
                com.byazt.qq.da daVar2 = daVar;
                if (daVar2 != null) {
                    daVar2.c();
                }
                ve.this.f14070c.aw();
            }

            @Override // com.byazt.qq.da
            public void tt() {
                com.byazt.qq.da daVar2 = daVar;
                if (daVar2 != null) {
                    daVar2.tt();
                }
            }

            @Override // com.byazt.qq.da
            public void ve() {
                super.ve();
                ve.this.f14070c.aw();
                ve.this.i(true);
                ve.this.f14070c.lt().c("reward_retain_dialog_next", 0, "");
            }
        });
    }

    @Override // com.byazt.fcd.c
    public void c(Map<String, Object> map) {
        super.c(map);
        map.put("group_pos", Integer.valueOf(this.qp + 1));
        com.byazt.iym.n nVar = this.f14101hd;
        if (nVar != null) {
            map.put("duration", Long.valueOf(nVar.eo()));
        }
    }

    @Override // com.byazt.fcd.c
    public void c(JSONObject jSONObject) {
        super.c(jSONObject);
        try {
            jSONObject.put("group_pos", this.cu + 1);
            jSONObject.put("duration", this.f14101hd.eo());
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.fcd.c
    public void c(View view) {
        super.c(view);
        this.f14101hd.c(view);
    }
}
