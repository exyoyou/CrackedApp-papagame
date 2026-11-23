package com.byazt.hr;

import android.text.TextUtils;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 29, 215})
public class yp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile yp f15089c;
    public Map<String, List<tt>> tt;
    public Map<String, ConcurrentHashMap<String, c>> ve = new ConcurrentHashMap();

    private yp() {
    }

    public static yp c() {
        if (f15089c == null) {
            synchronized (yp.class) {
                if (f15089c == null) {
                    f15089c = new yp();
                }
            }
        }
        return f15089c;
    }

    public void c(ConcurrentHashMap<String, List<tt>> concurrentHashMap) {
        this.tt = concurrentHashMap;
        if (concurrentHashMap != null) {
            com.byazt.eu.tt.c("TTMediationSDK_RitAdnShowControl", "mRitAdnControlConfigMap = " + this.tt);
            return;
        }
        com.byazt.eu.tt.c("TTMediationSDK_RitAdnShowControl", "mRitAdnControlConfigMap is null ");
    }

    public void c(String str, String str2, String str3, String str4) {
        List<tt> list;
        tt next;
        boolean z10;
        com.byazt.eu.tt.c("TTMediationSDK_RitAdnShowControl", "setRitAdnError rit_level adnName = " + str2 + " slotId = " + str3 + " error = " + str4);
        Map<String, List<tt>> map = this.tt;
        if (map == null || (list = map.get(str2)) == null || list.size() == 0) {
            return;
        }
        Iterator<tt> it2 = list.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!next.ve().contains(str));
        if (next == null) {
            z10 = false;
            break;
        }
        Iterator<String> it3 = next.tt().iterator();
        while (true) {
            if (!it3.hasNext()) {
                z10 = false;
                break;
            }
            String next2 = it3.next();
            if (TextUtils.equals(next2, str4)) {
                com.byazt.eu.tt.c("TTMediationSDK_RitAdnShowControl", "setAdnError rit_level 命中errorCode = ".concat(String.valueOf(next2)));
                z10 = true;
                break;
            }
        }
        if (z10) {
            long time = new Date().getTime() + next.c();
            com.byazt.eu.tt.c("TTMediationSDK_RitAdnShowControl", "setRitAdnError rit_level 更新时间 = " + a.tt(time));
            c cVar = new c(str2, str3, time, str4);
            Map<String, ConcurrentHashMap<String, c>> map2 = this.ve;
            if (map2 != null) {
                ConcurrentHashMap<String, c> concurrentHashMap = map2.get(str2);
                if (concurrentHashMap == null) {
                    concurrentHashMap = new ConcurrentHashMap<>();
                }
                concurrentHashMap.put(str + "_" + str3, cVar);
                this.ve.put(str2, concurrentHashMap);
                StringBuilder sb2 = new StringBuilder("setRitAdnError rit_level mAdnControlMap = ");
                sb2.append(this.ve);
                com.byazt.eu.tt.c("TTMediationSDK_RitAdnShowControl", sb2.toString());
            }
        }
    }

    public com.byazt.pp.c c(String str, String str2, String str3) {
        c cVar;
        ConcurrentHashMap<String, c> concurrentHashMap;
        com.byazt.eu.tt.c("TTMediationSDK_RitAdnShowControl", "checkLoad rit_level adnName = " + str2 + " slotId = " + str3 + " primeRit = " + str);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            Map<String, ConcurrentHashMap<String, c>> map = this.ve;
            if (map == null || (concurrentHashMap = map.get(str2)) == null) {
                cVar = null;
            } else {
                cVar = concurrentHashMap.get(str + "_" + str3);
                com.byazt.eu.tt.c("TTMediationSDK_RitAdnShowControl", "checkLoad rit_level 取出的showBean = ".concat(String.valueOf(cVar)));
            }
            if (cVar != null && cVar.c() != 0) {
                long time = new Date().getTime();
                if (time <= cVar.c()) {
                    com.byazt.eu.tt.c("TTMediationSDK_RitAdnShowControl", "checkLoad rit_level 当前时间 = " + a.tt(time));
                    com.byazt.eu.tt.c("TTMediationSDK_RitAdnShowControl", "checkLoad rit_level 规则有效时间 = " + a.tt(cVar.c()));
                    return new com.byazt.bnd.c(40064, com.byazt.pp.c.c(40064) + ", " + cVar.tt());
                }
            }
        }
        return null;
    }

    public boolean c(String str, String str2) {
        Map<String, List<tt>> map;
        List<tt> list;
        com.byazt.eu.tt.c("TTMediationSDK_RitAdnShowControl", "hasRitAdnConfig rit_level adnName = " + str2 + " primeRit = " + str);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str) && (map = this.tt) != null && map.size() != 0 && (list = this.tt.get(str2)) != null && list.size() != 0) {
            Iterator<tt> it2 = list.iterator();
            while (it2.hasNext()) {
                List<String> listVe = it2.next().ve();
                if (listVe != null && listVe.contains(str)) {
                    return true;
                }
            }
        }
        return false;
    }
}
