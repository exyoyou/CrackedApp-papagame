package com.byazt.om;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.vx.h;
import com.byazt.vx.p;
import com.byazt.vx.rh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SAMPLE_RATE, 13})
public class tt implements com.byazt.pq.c, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f17914a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<Integer, List<com.byazt.nbs.da>> f17915c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.py.c f17916da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Handler f17917i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.nbs.tt f17918n;
    public com.byazt.ll.tt sp;
    public com.byazt.iz.c tt;
    public com.byazt.iz.tt uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public List<Integer> f17919x;
    public final List<com.byazt.nbs.da> ve = new CopyOnWriteArrayList();
    public boolean sl = false;

    public tt() {
        Looper looperTt = com.byazt.eu.n.tt();
        if (looperTt != null) {
            this.f17917i = new Handler(looperTt) { // from class: com.byazt.om.tt.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    tt.this.c(message);
                }
            };
        } else {
            com.byazt.eu.n.c();
            this.f17917i = new Handler(com.byazt.eu.n.tt()) { // from class: com.byazt.om.tt.2
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    tt.this.c(message);
                }
            };
        }
    }

    private void uj(int i10) {
        if (this.uj.uj() || n()) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "已经触发过成功、失败回调...");
            return;
        }
        if (this.uj.da()) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "已经触发过destroy操作...");
            return;
        }
        if (tt()) {
            return;
        }
        if (i10 >= this.f17919x.size()) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "第 " + i10 + " 层没有广告可以请求...");
            return;
        }
        int iIntValue = this.f17919x.get(i10).intValue();
        if (this.tt.ve(iIntValue)) {
            ve(i10 + 1);
            return;
        }
        if (com.byazt.qv.sp.tt(iIntValue) && this.tt.tt() == -1) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "开启serverBidding exchange 请求....");
            c(this.f17915c.get(Integer.valueOf(iIntValue)));
            c(i10);
            return;
        }
        this.tt.tt(iIntValue);
        c(iIntValue, i10);
        if (com.byazt.qv.sp.ve(iIntValue) || com.byazt.qv.sp.tt(iIntValue)) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "第 " + i10 + "层 ClientBidding,ServerBidding 广告，levelSort：" + iIntValue + "，同时请求下一层广告...");
            ve(i10 + 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve(int i10) {
        if (i10 < 0) {
            return;
        }
        if (!com.byazt.qv.sp.c(i10, this.f17919x)) {
            uj(i10);
            return;
        }
        int iLt = this.f17918n.lt();
        com.byazt.eu.tt.tt(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "the " + i10 + " level is first level normal ad and ParallelNum:" + iLt);
        for (int i11 = 0; i11 < iLt; i11++) {
            uj(i10 + i11);
        }
    }

    public boolean n() {
        if (this.uj.n()) {
            return (this.sl && com.byazt.fid.c.c(this.f17918n)) ? false : true;
        }
        return false;
    }

    @Override // com.byazt.om.c
    public void tt(c.InterfaceC0392c interfaceC0392c) {
        com.byazt.pl.uj ujVarC = com.byazt.pl.n.c();
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        ((com.byazt.pl.a) ujVarC).c(this.uj.bx(), jElapsedRealtime, this.sp, this.f17918n, new com.byazt.pl.uj.c() { // from class: com.byazt.om.tt.3
            @Override // com.byazt.pl.uj.c
            public void c(com.byazt.pl.tt ttVar) {
                Map<Integer, List<com.byazt.nbs.da>> map = tt.this.f17915c;
                List<com.byazt.nbs.da> list = map != null ? map.get(0) : null;
                tt ttVar2 = tt.this;
                ttVar2.c(ttVar2.sp, list, ttVar, jElapsedRealtime);
            }
        });
    }

    @Override // com.byazt.om.c
    public void c(c.InterfaceC0392c interfaceC0392c) {
        com.byazt.iz.tt ttVarC = interfaceC0392c.c();
        this.uj = ttVarC;
        ttVarC.c(this.f17917i);
        this.tt = this.uj.nu();
        this.f17918n = this.uj.m();
        com.byazt.ll.tt ttVarGu = this.uj.gu();
        this.sp = ttVarGu;
        this.f17914a = ttVarGu.gt();
        this.f17915c = this.f17918n.md();
        ArrayList arrayList = new ArrayList();
        this.f17919x = arrayList;
        arrayList.addAll(this.f17915c.keySet());
        com.byazt.oi.tt.c(this.f17919x);
        this.tt.c(this.f17919x);
        this.tt.sp(this.f17918n.zm());
        List<com.byazt.nbs.da> listC = com.byazt.qv.sp.c(this.f17918n.l());
        List<com.byazt.nbs.da> listTt = com.byazt.qv.sp.tt(this.f17918n.l());
        this.tt.x(listC == null ? 0 : listC.size());
        this.tt.i(listTt == null ? 0 : listTt.size());
        Handler handler = this.f17917i;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(6, this.f17918n.aw());
        }
        if (!this.uj.zm()) {
            com.byazt.ng.a.c(this.sp, this.f17918n.lo(), !this.uj.yv(), this.uj.pf().f17107c, 0, (Map<String, Object>) null);
        }
        if (this.f17918n.z()) {
            interfaceC0392c.c(interfaceC0392c.c());
        } else {
            if (com.byazt.eu.tt.tt()) {
                com.byazt.eu.tt.tt(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "开始加载广告 num:" + this.f17918n.zm());
            }
            ve(0);
        }
        com.byazt.qe.tt.c(com.byazt.bp.tt.tt()).c(1);
    }

    public boolean tt() {
        return tt(null, 3);
    }

    private void ve(com.byazt.nbs.da daVar, int i10) {
        int i11;
        if (daVar == null || this.f17917i == null) {
            return;
        }
        if (daVar.cu()) {
            i11 = 1;
        } else if (daVar.or() || daVar.qp()) {
            i11 = 2;
        } else {
            i11 = daVar.zb() ? 3 : 4;
        }
        if (daVar.pf()) {
            this.f17917i.removeMessages(i11, rh.c(i10));
        } else {
            this.f17917i.removeMessages(i11);
        }
    }

    public boolean tt(com.byazt.nbs.da daVar, int i10) {
        if (this.uj.uj() || n()) {
            return true;
        }
        if (this.tt.n()) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "触发总超时或全部代码位响应结束.....totalTimeout：" + this.tt.n() + "  allWtfFinish:" + this.tt.x());
            if (p.c(this.uj.sl()) && p.c(this.uj.t()) && p.c(this.uj.yp())) {
                if (com.byazt.fid.c.tt(this.f17918n)) {
                    com.byazt.eu.tt.tt(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "总加载时间超时.......isCallback:true");
                    if (com.byazt.fid.c.c(this.uj, this.f17919x, this.f17915c)) {
                        ve();
                        return true;
                    }
                }
                this.sl = true;
                c(new com.byazt.pp.c(10003, com.byazt.pp.c.c(10003)));
            } else {
                ve();
            }
            return true;
        }
        if (this.tt.x()) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "全部广告完成响应...");
            if (p.c(this.uj.sl()) && p.c(this.uj.t()) && p.c(this.uj.yp())) {
                c(new com.byazt.pp.c(20005, com.byazt.pp.c.c(20005)));
            } else {
                ve();
            }
            return true;
        }
        if (this.uj.rh()) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "p层广告已经满足返回条件...");
            ve();
            return true;
        }
        if (!(this.f17918n.zb() && this.tt.ve()) && this.f17918n.zb()) {
            return false;
        }
        if (daVar == null) {
            if (this.uj.my() && this.uj.rl()) {
                com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "p层&普通层广告 已经满足返回条件 V1 .........");
                ve();
                return true;
            }
            if (!this.uj.gt() || !this.tt.i() || !this.tt.da() || !this.uj.qy()) {
                return false;
            }
            com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "p层&普通&Bidding层广告 已经满足返回条件 V2 .........");
            ve();
            return true;
        }
        if (this.uj.my() && this.uj.rl()) {
            for (com.byazt.yl.ve veVar : this.uj.t()) {
                com.byazt.gp.c cVarC = com.byazt.gp.uj.c(this.f17918n);
                com.byazt.iz.tt ttVar = this.uj;
                Map<Integer, List<com.byazt.nbs.da>> map = this.f17915c;
                if (cVarC.c(ttVar, veVar, map == null ? null : map.get(Integer.valueOf(com.byazt.qv.sp.c(this.f17918n, veVar))))) {
                    com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "p层&普通层广告 已经满足返回条件 V3 .........");
                    ve();
                    return true;
                }
            }
            return false;
        }
        if (!this.uj.gt() || !this.tt.i() || !this.tt.da() || !this.uj.qy()) {
            return false;
        }
        com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "p层&普通&Bidding层广告 已经满足返回条件 V4 .........");
        ve();
        return true;
    }

    public void ve() {
        this.sl = false;
        this.uj.x();
    }

    private void ve(List<com.byazt.yl.ve> list) {
        if (list == null) {
            return;
        }
        for (com.byazt.yl.ve veVar : list) {
            if (veVar != null) {
                com.byazt.ix.uj.c().c(this.f17914a, new com.byazt.ix.sp(veVar, this.uj.eo(), this.sp));
            }
        }
    }

    public void uj() {
        this.uj.i();
    }

    private void c(int i10, int i11) {
        long jSv;
        Handler handler;
        Map<Integer, List<com.byazt.nbs.da>> map = this.f17915c;
        if (map == null) {
            return;
        }
        final List<com.byazt.nbs.da> list = map.get(Integer.valueOf(i10));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.byazt.eu.uj.c(this.f17918n));
        sb2.append("loadLevelWaterFall start...执行当前加载层级 ：");
        sb2.append(i11);
        sb2.append(" levelSort:");
        sb2.append(i10);
        sb2.append("  waterFallConfig.size:");
        sb2.append(list == null ? 0 : list.size());
        com.byazt.eu.tt.tt(MediationConstant.TAG, sb2.toString());
        if (p.c(list)) {
            return;
        }
        this.tt.c(i10, list.size());
        if (com.byazt.qv.sp.ve(i10)) {
            jSv = this.f17918n.gu();
        } else {
            jSv = this.f17918n.sv();
        }
        Message messageObtain = Message.obtain();
        if (com.byazt.qv.sp.c(i10)) {
            messageObtain.what = 1;
        } else if (com.byazt.qv.sp.ve(i10)) {
            messageObtain.what = 2;
        } else if (com.byazt.qv.sp.tt(i10)) {
            messageObtain.what = 3;
        } else {
            messageObtain.what = 4;
            messageObtain.obj = rh.c(i10);
        }
        messageObtain.arg1 = i10;
        Handler handler2 = this.f17917i;
        if (handler2 != null) {
            handler2.sendMessageDelayed(messageObtain, jSv);
        }
        long jBx = this.f17918n.bx();
        if (jBx != 0 && (handler = this.f17917i) != null) {
            handler.removeMessages(5);
            this.f17917i.sendEmptyMessageDelayed(5, jBx);
        }
        for (final int i12 = 0; i12 < list.size(); i12++) {
            try {
                com.byazt.eu.n.uj(new Runnable() { // from class: com.byazt.om.tt.4
                    @Override // java.lang.Runnable
                    public void run() {
                        tt.this.c((com.byazt.nbs.da) list.get(i12), list.size());
                    }
                });
                if (this.uj.yv()) {
                    this.uj.d();
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
    }

    public int tt(int i10) {
        int iIndexOf;
        List<Integer> list = this.f17919x;
        if (list == null || (iIndexOf = list.indexOf(Integer.valueOf(i10))) == -1) {
            return -1;
        }
        return iIndexOf + 1;
    }

    private void tt(List<com.byazt.yl.ve> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        String adNetworkSlotId = list.get(0).getAdNetworkSlotId();
        if (list.get(0).canAdReuse() && com.byazt.hk.c.c().n(this.f17914a, adNetworkSlotId, this.sp.n()) == 1) {
            ArrayList arrayList = new ArrayList();
            for (com.byazt.yl.ve veVar : list) {
                if (veVar != null) {
                    arrayList.add(new com.byazt.ix.sp(veVar, 0L, this.sp));
                }
            }
            if (arrayList.size() > 0) {
                com.byazt.yl.ve veVar2 = ((com.byazt.ix.sp) arrayList.get(0)).f15563c;
                com.byazt.eu.tt.tt(MediationConstant.TAG, "--==-- 广告复用:广告缓存成功 -------" + veVar2.getAdNetWorkName() + ", adType: " + com.byazt.yl.c.c(veVar2.getAdType(), veVar2.getSubAdType()) + ", adnSlotId: " + veVar2.getAdNetworkSlotId() + ", ad个数: " + arrayList.size());
                com.byazt.hk.c.c().c(adNetworkSlotId, (List<com.byazt.ix.sp>) arrayList, false);
            }
        }
    }

    public void c(com.byazt.nbs.da daVar, int i10) {
        if (daVar != null && this.sp != null) {
            c(daVar.rh(), daVar.z(), daVar.m(), com.byazt.yl.c.c(this.sp.my(), daVar.a()), 0, "广告请求中");
        }
        com.byazt.eu.tt.tt(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "开始 某一层级的waterFallConfig请求 WaterFallConfig:" + daVar.toString());
        com.byazt.dv.tt ttVarC = com.byazt.dv.tt.c(daVar, this);
        ttVarC.ve(1);
        ttVarC.tt(1);
        ttVarC.c(i10);
        ttVarC.c(!this.uj.yv());
        ttVarC.c(SystemClock.elapsedRealtime());
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.byazt.xt.tt());
        arrayList.add(new com.byazt.xt.sp());
        arrayList.add(new com.byazt.xt.uj());
        arrayList.add(new com.byazt.xt.a());
        arrayList.add(new com.byazt.xt.ve());
        new com.byazt.xt.n(arrayList).c(this.uj, ttVarC);
    }

    public void c(final List<com.byazt.nbs.da> list) {
        final Context context = this.uj.getContext();
        if (context != null) {
            com.byazt.eu.n.uj(new Runnable() { // from class: com.byazt.om.tt.5
                @Override // java.lang.Runnable
                public void run() {
                    tt ttVar = tt.this;
                    ttVar.c(context, ttVar.sp, list, !tt.this.uj.yv());
                }
            });
        }
    }

    public void c(final int i10) {
        com.byazt.py.c cVarC = com.byazt.py.n.c(this.f17918n);
        this.f17916da = cVarC;
        Handler handler = this.f17917i;
        com.byazt.nbs.tt ttVar = this.f17918n;
        cVarC.c(handler, ttVar, new com.byazt.py.tt(ttVar, new Runnable() { // from class: com.byazt.om.tt.6
            @Override // java.lang.Runnable
            public void run() {
                tt.this.ve(i10 + 1);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Message message) {
        int i10 = message.arg1;
        switch (message.what) {
            case 1:
            case 4:
                StringBuilder sb2 = new StringBuilder();
                sb2.append(com.byazt.eu.uj.c(this.f17918n));
                sb2.append(message.what == 1 ? "P层" : "普通层");
                sb2.append("广告触发层超时.........levelSort:");
                sb2.append(i10);
                com.byazt.eu.tt.uj(MediationConstant.TAG, sb2.toString());
                com.byazt.iz.tt ttVar = this.uj;
                if (ttVar != null) {
                    com.byazt.tjo.a.c(ttVar.ve(), "t_out_" + this.uj.c().incrementAndGet(), this.uj.cu());
                }
                this.tt.uj(i10);
                if (tt()) {
                    return;
                }
                ve(tt(i10));
                return;
            case 2:
                com.byazt.iz.tt ttVar2 = this.uj;
                if (ttVar2 != null) {
                    com.byazt.tjo.a.c(ttVar2.ve(), "cb_t_out" + this.uj.c().incrementAndGet(), this.uj.cu());
                }
                break;
            case 3:
                break;
            case 5:
                com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "触发最小层超时.........levelSort:" + i10);
                tt();
                return;
            case 6:
                com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "触发总超时.........");
                com.byazt.iz.tt ttVar3 = this.uj;
                if (ttVar3 != null) {
                    com.byazt.tjo.a.c(ttVar3.ve(), "total_t_out" + this.uj.c().incrementAndGet(), this.uj.cu());
                }
                this.tt.uj();
                this.uj.pf().f17106a = true;
                tt();
                return;
            default:
                return;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(com.byazt.eu.uj.c(this.f17918n));
        sb3.append(message.what == 2 ? "ClientBidding层" : "ServerBidding层层");
        sb3.append("广告触发层超时.........levelSort:");
        sb3.append(i10);
        com.byazt.eu.tt.uj(MediationConstant.TAG, sb3.toString());
        this.tt.uj(i10);
        tt();
    }

    @Override // com.byazt.pq.c
    public void c(List<com.byazt.yl.ve> list, com.byazt.nbs.da daVar) {
        if (p.c(list) || daVar == null) {
            return;
        }
        c(list, this.f17918n);
        c(daVar.rh(), daVar.z(), daVar.m(), com.byazt.yl.c.c(daVar.u(), daVar.a()), 0, "广告加载成功");
        com.byazt.oi.ve.c(this.f17914a, daVar, !p.tt(list) ? list.get(0) : null);
        tt(list);
        int iC = com.byazt.qv.sp.c(this.f17918n, daVar);
        if (daVar.pf() && com.byazt.ye.c.c(this.tt, this.ve, daVar.rh())) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "返回的普通广告被server Bidding过滤了......slotId:" + daVar.rh());
            this.uj.u().addAll(list);
            return;
        }
        com.byazt.qv.c.c(this.uj, list, false);
        this.tt.c(iC, daVar.rh());
        if (this.uj.yv()) {
            ve(list);
        }
        if (this.tt.n()) {
            c((List<com.byazt.yl.ve>) null, new com.byazt.pp.c(10012, "load ad timeout !!!"));
        } else {
            c(list, (com.byazt.pp.c) null);
        }
        this.uj.tt(list);
        if (this.uj.sp() && !this.uj.yv() && !this.uj.zm()) {
            this.uj.uj(daVar);
        }
        if (tt(daVar, 1) || this.tt.a(iC) != 0 || daVar.nb()) {
            return;
        }
        int iTt = tt(iC);
        ve(daVar, iC);
        com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "onAdLoaded levelSort: " + iC + " 广告全部响应结束&不满足返回条件，直接请求下一层广告 nextIdx：" + iTt);
        ve(iTt);
    }

    @Override // com.byazt.pq.c
    public void c(com.byazt.pp.c cVar, com.byazt.nbs.da daVar) {
        if (daVar == null) {
            return;
        }
        c((List<com.byazt.yl.ve>) null, cVar);
        if (cVar != null) {
            c(daVar.rh(), daVar.nu(), daVar.m(), com.byazt.yl.c.c(daVar.u(), daVar.a()), cVar.ve, cVar.uj);
        }
        com.byazt.oi.ve.c(cVar, daVar);
        if (daVar.pf() && com.byazt.ye.c.c(this.tt, this.ve, daVar.rh())) {
            return;
        }
        int iC = com.byazt.qv.sp.c(this.f17918n, daVar);
        this.tt.c(iC, daVar.rh());
        if (tt(daVar, 2) || this.tt.n(iC) || this.tt.a(iC) != 0 || daVar.nb()) {
            return;
        }
        int iTt = tt(iC);
        ve(daVar, iC);
        com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "onAdFailed levelSort " + iC + " 广告全部响应结束&不满足返回条件，直接请求下一层广告 nextIdx：" + iTt);
        ve(iTt);
    }

    @Override // com.byazt.pq.c
    public void c() {
        com.byazt.eu.tt.tt(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "onAdVideoCache.....");
        uj();
    }

    public void c(com.byazt.pp.c cVar) {
        this.uj.c(cVar);
    }

    public void c(List<com.byazt.yl.ve> list, com.byazt.pp.c cVar) {
        this.uj.c(list, cVar);
    }

    public void c(Context context, final com.byazt.ll.tt ttVar, final List<com.byazt.nbs.da> list, boolean z10) {
        com.byazt.pl.uj ujVarC = com.byazt.pl.n.c();
        if (ujVarC != null) {
            this.tt.c(0);
            this.uj.pf().uj = true;
            final com.byazt.pl.ve veVar = new com.byazt.pl.ve();
            veVar.f18743c = ttVar;
            veVar.tt = list;
            veVar.uj = this.f17918n;
            veVar.f18742a = z10;
            veVar.sp = SystemClock.elapsedRealtime();
            veVar.f18745x = this.uj;
            veVar.f18744n = ttVar != null ? ttVar.ve() : 1;
            ujVarC.c(this.uj.gr(), context, veVar, new com.byazt.pl.uj.c() { // from class: com.byazt.om.tt.7
                @Override // com.byazt.pl.uj.c
                public void c(com.byazt.pl.tt ttVar2) {
                    tt.this.c(ttVar, (List<com.byazt.nbs.da>) list, ttVar2, veVar.sp);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.ll.tt ttVar, List<com.byazt.nbs.da> list, com.byazt.pl.tt ttVar2, long j10) {
        com.byazt.py.c cVar;
        if (this.uj != null && ttVar2 != null && !TextUtils.isEmpty(ttVar2.uj)) {
            this.uj.pf().f17107c = ttVar2.uj;
        }
        com.byazt.nbs.tt ttVar3 = this.f17918n;
        if (ttVar3 != null && ttVar2 != null) {
            ttVar3.x().put("price_source", Integer.valueOf(ttVar2.f18740u));
        }
        if (ttVar2 != null) {
            com.byazt.ng.a.c(ttVar, ttVar2, this.tt.n() ? 1 : 0);
            com.byazt.iz.tt ttVar4 = this.uj;
            if (ttVar4 != null) {
                com.byazt.tjo.a.c(ttVar4.ve(), "ret_sb", this.uj.cu());
            }
        }
        if (ttVar2 != null && !p.c(ttVar2.tt)) {
            this.tt.c(1);
            if (this.uj.uj() || this.uj.n()) {
                return;
            }
            this.ve.clear();
            this.ve.addAll(ttVar2.tt);
            Handler handler = this.f17917i;
            if (handler != null) {
                handler.removeMessages(1);
                this.f17917i.removeMessages(4);
                this.f17917i.removeMessages(5);
            }
            h.c(ttVar2.tt);
            this.f17915c = com.byazt.qv.sp.c(ttVar2.tt, this.f17918n.yp());
            ArrayList arrayList = new ArrayList();
            this.f17919x = arrayList;
            arrayList.addAll(this.f17915c.keySet());
            com.byazt.oi.tt.c(this.f17919x);
            this.tt.c(this.f17919x);
            this.tt.c(ttVar2.tt, com.byazt.qv.sp.c(this.f17918n.l()), com.byazt.qv.sp.ve(this.f17918n.l()));
            com.byazt.ye.c.c(this.f17918n, this.uj, ttVar2.tt);
            com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "serverBidding响应回来..........开始从头开始请求waterFallConfig  代码位总数量：" + ttVar2.tt.size());
            ve(0);
            tt();
        } else {
            this.tt.c(2);
            if (this.uj.uj() || this.uj.n()) {
                return;
            }
            com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f17918n) + "serverBidding响应失败了.......... ");
            this.tt.tt(0);
            if (list != null) {
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    com.byazt.nbs.da daVar = list.get(i10);
                    this.tt.c(com.byazt.qv.sp.c(this.f17918n, daVar), daVar.rh());
                }
            }
            if (!tt() && (cVar = this.f17916da) != null) {
                cVar.c();
            }
        }
        if (ttVar2 != null) {
            com.byazt.tjo.a.c(ttVar2.sl, "0-req", j10);
        }
        if (this.f17918n != null && ttVar2 != null) {
            com.byazt.psp.tt.uj().c(ttVar2.f18739t, ttVar2.yp, this.f17918n.nb(), this.f17918n.cu());
        }
        if (ttVar2 == null || !ttVar2.ve) {
            return;
        }
        com.byazt.qe.tt.c(com.byazt.bp.tt.tt()).c().c(1);
    }

    public void c(List<com.byazt.yl.ve> list, com.byazt.nbs.tt ttVar) {
        com.byazt.psp.uj.c(list, ttVar);
        com.byazt.bg.c.c(list, ttVar);
    }

    public void c(String str, String str2, String str3, String str4, int i10, String str5) {
        com.byazt.pp.tt ttVar = this.uj.p().get(str);
        if (ttVar == null) {
            ttVar = new com.byazt.pp.tt();
        }
        ttVar.tt(str).ve(str2).uj(str3).c(i10).n(str5).c(str4);
        this.uj.p().put(str, ttVar);
    }
}
