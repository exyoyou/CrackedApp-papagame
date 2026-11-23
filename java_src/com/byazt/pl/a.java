package com.byazt.pl;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.nbs.da;
import com.byazt.nbs.sp;
import com.byazt.nbs.x;
import com.byazt.vx.p;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 86, 34})
public class a implements uj {
    @Override // com.byazt.pl.uj
    public void c(Map<String, com.byazt.db.c> map, Context context, final ve veVar, @NonNull final uj.c cVar) {
        if (veVar != null && veVar.f18743c != null && veVar.uj != null && !p.c(veVar.tt)) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(veVar.f18743c.gt()) + "开启server bidding网络请求......：");
            com.byazt.ng.a.c(veVar.f18743c, (JSONObject) null);
            com.byazt.iz.tt ttVar = veVar.f18745x;
            if (ttVar != null) {
                com.byazt.tjo.a.c(ttVar.ve(), "st_sb", ttVar.cu());
            }
            final long j10 = veVar.sp;
            final int[] iArr = {4};
            com.byazt.ug.c.c().c(map, context, veVar, new com.byazt.ug.c.InterfaceC0446c() { // from class: com.byazt.pl.a.1
                @Override // com.byazt.ug.c.InterfaceC0446c
                public void c(sp spVar) {
                    a aVar = a.this;
                    long j11 = j10;
                    ve veVar2 = veVar;
                    aVar.c(j11, veVar2.f18743c, veVar2.uj, iArr[0], spVar, cVar);
                }

                @Override // com.byazt.ug.c.InterfaceC0446c
                public void c(com.byazt.pp.c cVar2) {
                    a.this.c(j10, iArr[0], cVar2, veVar.f18743c, cVar);
                }
            });
            return;
        }
        cVar.c(null);
    }

    public void c(String str, final long j10, final com.byazt.ll.tt ttVar, final com.byazt.nbs.tt ttVar2, @NonNull final uj.c cVar) {
        com.byazt.ug.c.c().c(str, new com.byazt.ug.c.InterfaceC0446c() { // from class: com.byazt.pl.a.2
            @Override // com.byazt.ug.c.InterfaceC0446c
            public void c(sp spVar) {
                a.this.c(j10, ttVar, ttVar2, 4, spVar, cVar);
            }

            @Override // com.byazt.ug.c.InterfaceC0446c
            public void c(com.byazt.pp.c cVar2) {
                a.this.c(j10, 4, cVar2, ttVar, cVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j10, com.byazt.ll.tt ttVar, com.byazt.nbs.tt ttVar2, int i10, sp spVar, uj.c cVar) {
        int i11;
        tt ttVar3;
        int i12;
        da daVarA;
        if (spVar != null) {
            com.byazt.tjo.a.c(spVar.sp(), "0-thread", j10);
        }
        com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(ttVar.gt()) + "server bidding网络请求响返回.............");
        if (ttVar2 != null && spVar != null && !p.c(spVar.uj())) {
            List<x> listUj = spVar.uj();
            ttVar3 = new tt();
            ttVar3.f18739t = spVar.c();
            ttVar3.f18740u = spVar.tt();
            ttVar3.yp = spVar.ve();
            ttVar3.sl = spVar.sp();
            ttVar3.f18737i = listUj.size();
            ttVar3.f18735c = spVar.i();
            ttVar3.f18736da = ttVar2.i();
            ArrayList arrayList = new ArrayList();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("winners : {");
            for (x xVar : listUj) {
                if (xVar != null && (daVarA = ttVar2.a(xVar.sp())) != null) {
                    da daVarN = daVarA.n();
                    sb2.append(" [ AdnName:" + daVarN.z() + ",slotId:" + daVarN.rh() + ",loadSort:" + daVarN.yv() + ",showSort:" + daVarN.p() + "] ");
                    daVarN.c(xVar);
                    arrayList.add(daVarN);
                }
            }
            sb2.append("}");
            if (p.c(arrayList)) {
                i11 = p.c(spVar.i()) ? i10 : 2;
                com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(ttVar.gt()) + "server bidding网络请求响应失败......：数据有返回，但没有返回winner数据......");
            } else {
                com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(ttVar.gt()) + "server bidding网络请求响应成功......：" + sb2.toString());
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                copyOnWriteArrayList.addAll(arrayList);
                List<da> listC = c(spVar.i(), ttVar2, ttVar3);
                if (listC != null && listC.size() > 0) {
                    com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(ttVar.gt()) + "server bidding网络请求响应成功......waterfall+server bidding物料......");
                    copyOnWriteArrayList.addAll(listC);
                    i12 = 1;
                } else {
                    com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(ttVar.gt()) + "server bidding网络请求响应成功......server bidding物料......");
                    i12 = 3;
                }
                ttVar3.tt = copyOnWriteArrayList;
                i11 = i12;
            }
        } else {
            i11 = (spVar == null || p.c(spVar.i())) ? i10 : 2;
            com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(ttVar.gt()) + "server bidding网络请求响应失败......没有返回serverBiddingModel相关数据");
            ttVar3 = null;
        }
        if (spVar != null) {
            String strA = spVar.a();
            if (!TextUtils.isEmpty(strA)) {
                if (ttVar3 == null) {
                    ttVar3 = new tt();
                }
                ttVar3.uj = strA;
            }
            if (spVar.x()) {
                com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(ttVar.gt()) + "server bidding发现config过期了，需要重新拉取配置......：");
                if (ttVar3 == null) {
                    ttVar3 = new tt();
                }
                ttVar3.ve = true;
            }
            if (!p.c(spVar.n())) {
                if (ttVar3 == null) {
                    ttVar3 = new tt();
                }
                ttVar3.f18738n = spVar.n();
            }
        }
        if (ttVar3 == null) {
            ttVar3 = new tt();
        }
        ttVar3.f18734a = i11;
        ttVar3.sp = SystemClock.elapsedRealtime() - j10;
        com.byazt.tjo.a.c(ttVar3.sl, "0-handle_wtf", j10);
        if (cVar != null) {
            cVar.c(ttVar3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j10, int i10, com.byazt.pp.c cVar, com.byazt.ll.tt ttVar, uj.c cVar2) {
        int i11 = (cVar == null || cVar.f18789c != -1) ? 5 : 4;
        com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(ttVar.gt()) + "server bidding网络请求响应失败......onFail  result:" + i11);
        tt ttVar2 = new tt();
        ttVar2.f18734a = i11;
        ttVar2.sp = SystemClock.elapsedRealtime() - j10;
        ttVar2.f18741x = cVar;
        if (cVar2 != null) {
            cVar2.c(ttVar2);
        }
    }

    private List<da> c(List<da> list, com.byazt.nbs.tt ttVar, tt ttVar2) {
        List<da> listL;
        if (list == null || list.size() == 0 || ttVar == null) {
            return null;
        }
        boolean zBooleanValue = ttVar.x().get("serverBidding_timeout") instanceof Boolean ? ((Boolean) ttVar.x().get("serverBidding_timeout")).booleanValue() : false;
        if (ttVar.i() == 4 && !zBooleanValue) {
            com.byazt.nbs.tt ttVarC = com.byazt.ck.uj.c().c(ttVar.nb(), ttVar.pf(), 102);
            if (ttVarC == null) {
                return null;
            }
            listL = com.byazt.psp.ve.c(ttVarC, ttVarC.nb(), ttVar2 == null ? 0.0d : ttVar2.f18739t, ttVar2 != null ? ttVar2.yp : 0.0d);
            ttVar.x().putAll(ttVarC.x());
        } else {
            listL = ttVar.l();
        }
        if (listL != null && listL.size() != 0) {
            ArrayList arrayList = new ArrayList();
            for (da daVar : listL) {
                for (da daVar2 : list) {
                    if (daVar != null && daVar2 != null && daVar.my() == 0 && !TextUtils.isEmpty(daVar.rh()) && daVar.rh().equals(daVar2.rh())) {
                        arrayList.add(daVar);
                        break;
                    }
                }
            }
            return arrayList;
        }
        return null;
    }
}
