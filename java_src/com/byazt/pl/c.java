package com.byazt.pl;

import android.text.TextUtils;
import com.byazt.nbs.da;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 86, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Map<String, C0409c> f18732c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: com.byazt.pl.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 86, 44})
    static class C0409c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f18733c;
        public String tt;
        public Map<String, String> uj;
        public double ve;

        public C0409c(String str, String str2, double d10, Map<String, String> map) {
            this.f18733c = str2;
            this.ve = d10;
            this.uj = map;
            this.tt = str;
        }
    }

    public static void c(com.byazt.ll.tt ttVar, da daVar, Map<String, Object> map) {
        C0409c c0409c;
        if (ttVar == null || daVar == null || map == null || !daVar.or() || !"baidu".equals(daVar.z()) || (c0409c = f18732c.get(ttVar.gt())) == null) {
            return;
        }
        map.put(MediationConstant.BIDDING_WIN_ADN, c0409c.f18733c);
        map.put(MediationConstant.BIDDING_WIN_PRICE, Double.valueOf(c0409c.ve));
        Boolean boolValueOf = Boolean.valueOf(com.byazt.bp.tt.tt().y());
        map.put(MediationConstant.BIDDING_IS_OPEN_ECPM, boolValueOf);
        if (boolValueOf.booleanValue()) {
            map.put(MediationConstant.BIDDING_REQUEST_ID_MAP, c0409c.uj);
            map.put(MediationConstant.BIDDING_WIN_ADN_ID, c0409c.tt);
        }
    }

    public static void c(com.byazt.ll.tt ttVar, com.byazt.nbs.tt ttVar2, List<com.byazt.yl.ve> list, List<com.byazt.yl.ve> list2) {
        HashMap map;
        com.byazt.yl.ve next;
        if (ttVar == null || ttVar2 == null || list == null || list.size() == 0 || !ttVar.or() || !c(ttVar2)) {
            return;
        }
        Iterator<com.byazt.yl.ve> it2 = list.iterator();
        while (true) {
            map = null;
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            if (next != null && "baidu".equals(next.getAdNetWorkName())) {
                break;
            }
        }
        if (next == null) {
            next = list.get(0);
        }
        if (next != null) {
            if (com.byazt.bp.tt.tt().y() && (list2 != null || list2.size() != 0)) {
                map = new HashMap();
                for (com.byazt.yl.ve veVar : list2) {
                    map.put(veVar.getAdNetworkSlotId(), veVar.getReqId());
                }
            }
            f18732c.put(ttVar2.nb(), new C0409c(next.getAdNetworkSlotId(), next.getAdNetWorkName(), next.getCpm(), map));
        }
    }

    private static boolean c(com.byazt.nbs.tt ttVar) {
        if (ttVar == null) {
            return false;
        }
        for (da daVar : ttVar.l()) {
            if (TextUtils.equals(daVar.z(), "baidu") && daVar.or()) {
                return true;
            }
        }
        return false;
    }
}
