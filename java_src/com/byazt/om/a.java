package com.byazt.om;

import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SAMPLE_RATE, 34})
public class a implements c {
    @Override // com.byazt.om.c
    public void c(c.InterfaceC0392c interfaceC0392c) {
        com.byazt.iz.tt ttVarC = interfaceC0392c.c();
        String strGt = ttVarC.gu().gt();
        if (com.byazt.oi.c.c().tt()) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(strGt) + "请求过于频繁，触发了熔断机制");
            c(ttVarC, 840043);
            ttVarC.c(new com.byazt.bnd.c(840043, com.byazt.pp.c.c(840043)));
            return;
        }
        com.byazt.nbs.tt ttVarM = ttVarC.m();
        if (ttVarM != null && ttVarM.u()) {
            if (!com.byazt.hr.u.c().x(String.valueOf(strGt))) {
                com.byazt.eu.tt.tt("TMe", "广告位 请求触发次数拦截............");
                Pair<String, String> pairA = com.byazt.hr.u.c().a(strGt);
                com.byazt.bnd.tt ttVar = new com.byazt.bnd.tt(840041, com.byazt.pp.c.c(840041), pairA != null ? (String) pairA.second : "", pairA != null ? (String) pairA.first : "");
                c(ttVarC, ttVar.f18789c);
                ttVarC.c(ttVar);
                return;
            }
            if (!com.byazt.hr.u.c().ve(String.valueOf(strGt)) && !ttVarC.yv()) {
                com.byazt.eu.tt.tt("TMe", "广告位 请求触发时间间隔拦截............");
                com.byazt.hr.i iVarN = com.byazt.hr.u.c().n(String.valueOf(strGt));
                String strC = com.byazt.pp.c.c(840042);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(com.byazt.hr.u.c().c(strGt));
                com.byazt.bnd.ve veVar = new com.byazt.bnd.ve(840042, strC, sb2.toString(), iVarN != null ? iVarN.da() : "");
                c(ttVarC, veVar.f18789c);
                ttVarC.c(veVar);
                return;
            }
        }
        interfaceC0392c.c(interfaceC0392c.c());
    }

    @Override // com.byazt.om.c
    public void tt(c.InterfaceC0392c interfaceC0392c) {
        interfaceC0392c.c((String) null);
    }

    private void c(com.byazt.iz.tt ttVar, int i10) {
        com.byazt.ng.a.c(ttVar.gu(), (String) null, !ttVar.yv(), ttVar.pf().f17107c, i10, (Map<String, Object>) null);
    }
}
