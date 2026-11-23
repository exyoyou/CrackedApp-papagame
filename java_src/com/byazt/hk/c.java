package com.byazt.hk;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.byazt.db.tt;
import com.byazt.eu.n;
import com.byazt.ix.sp;
import com.byazt.nbs.da;
import com.byazt.nbs.i;
import com.byazt.ng.a;
import com.byazt.nr.m;
import com.byazt.vx.h;
import com.byazt.vx.yv;
import com.byazt.yf.sl;
import com.byazt.yl.ve;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2109, 20})
public class c extends com.byazt.yt.c {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile c f14932x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f14934c = {MediationConstant.ADN_UNITY, MediationConstant.ADN_KS};
    public final Map<String, Integer> tt = new HashMap();
    public final Map<String, Integer> ve = new HashMap();
    public final Map<String, CopyOnWriteArrayList<sp>> uj = new ConcurrentHashMap();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Map<String, da> f14936n = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, String> f14933a = new HashMap();
    public final Map<String, Integer> sp = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Comparator<sp> f14935i = new Comparator<sp>() { // from class: com.byazt.hk.c.4
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compare(sp spVar, sp spVar2) {
            ve veVar;
            if (spVar == null || spVar2 == null || (veVar = spVar.f15563c) == null || spVar2.f15563c == null) {
                return 0;
            }
            return ((int) veVar.getFillTime()) - ((int) spVar2.f15563c.getFillTime());
        }
    };

    /* JADX INFO: renamed from: com.byazt.hk.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 2109, 44})
    private class C0327c implements tt {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public i f14946a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14947c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public com.byazt.dv.tt f14948n;
        public long sp = System.currentTimeMillis();
        public da uj;
        public final com.byazt.ll.tt ve;

        public C0327c(com.byazt.ll.tt ttVar, da daVar, com.byazt.dv.tt ttVar2, i iVar, int i10) {
            this.ve = ttVar;
            this.uj = daVar;
            this.f14948n = ttVar2;
            this.f14947c = i10;
            this.f14946a = iVar;
        }

        @Override // com.byazt.db.tt
        public void nativeDislikeClick(ve veVar, String str) {
        }

        @Override // com.byazt.db.tt
        public void notifyLoadFail(com.byazt.pp.c cVar) {
            if (cVar != null && this.uj != null) {
                com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:show时预请求广告load失败 --- " + this.uj.nu() + ", " + this.uj.rh() + ", " + com.byazt.yl.c.c(this.uj.u(), this.uj.a()) + ", errCode: " + cVar.ve + ",msg=" + cVar.uj);
                cVar.c("is_dex_adapter", Integer.valueOf(this.f14948n.pf() ? 1 : 0));
            }
            a.c(cVar, this.ve, this.uj, this.f14947c, 4, 1, c.c().c(this.uj.rh()), System.currentTimeMillis() - this.sp, (String) null, (String) null, (String) null, 0L);
        }

        @Override // com.byazt.db.tt
        public void notifyLoadSuccess(List<ve> list) {
            if (list == null || list.size() <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (ve veVar : list) {
                if (veVar != null) {
                    da daVar = this.uj;
                    com.byazt.qv.ve.c(veVar, this.ve, this.f14948n, this.f14946a, daVar != null ? c.this.c(daVar.rh()) : "");
                    veVar.setFillTime(SystemClock.elapsedRealtime());
                    arrayList.add(new sp(veVar, 0L, this.ve));
                }
            }
            if (arrayList.size() > 0) {
                ve veVar2 = ((sp) arrayList.get(0)).f15563c;
                com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:show时预请求广告load成功 --- " + veVar2.getAdNetWorkName() + ", adType: " + com.byazt.yl.c.c(veVar2.getAdType(), veVar2.getSubAdType()) + ", adnSlotId: " + veVar2.getAdNetworkSlotId() + ", ad个数: " + arrayList.size());
                c.this.c(veVar2.getAdNetworkSlotId(), (List<sp>) arrayList, false);
            }
            a.c(list.get(0), 20000, "load success", System.currentTimeMillis() - this.sp, this.ve, this.f14947c, list.size(), 0, null, -1L, -1L);
        }

        @Override // com.byazt.db.tt
        public void notifyVideoCache(List<ve> list, com.byazt.pp.c cVar) {
            if (list == null || list.size() <= 0) {
                return;
            }
            for (ve veVar : list) {
                da daVar = this.uj;
                com.byazt.qv.ve.c(veVar, this.ve, this.f14948n, this.f14946a, daVar != null ? c.this.c(daVar.rh()) : "");
                veVar.setCacheSuccess(true);
            }
            ve veVar2 = list.get(0);
            if (veVar2 != null) {
                com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:show时预请求广告cache成功 --- " + veVar2.getAdNetWorkName() + ", adType: " + com.byazt.yl.c.c(veVar2.getAdType(), veVar2.getSubAdType()) + ", adnSlotId: " + veVar2.getAdNetworkSlotId() + ", ad个数: " + list.size());
            }
            a.c(this.ve, veVar2, this.uj);
        }
    }

    private c() {
    }

    public void a(String str, String str2, int i10) {
        this.ve.put(str + "_" + str2, Integer.valueOf(i10));
    }

    public int n(String str, String str2, int i10) {
        if (i10 == 2) {
            return 0;
        }
        Integer num = this.tt.get(str + "_" + str2);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public void tt() {
        n.c(new Runnable() { // from class: com.byazt.hk.c.1
            @Override // java.lang.Runnable
            public void run() {
                int i10;
                int iGr;
                String strGt;
                com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用lowMemory，start clean");
                int i11 = 0;
                int i12 = 0;
                for (Map.Entry entry : c.this.uj.entrySet()) {
                    List<sp> list = (List) entry.getValue();
                    if (list != null && list.size() > 0) {
                        com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用lowMemory，adnSlotId: " + ((String) entry.getKey()) + ", 清理前, 缓存总数: " + list.size());
                        int i13 = 1;
                        int i14 = 0;
                        for (sp spVar : list) {
                            if (spVar != null && spVar.f15563c != null) {
                                if (spVar.uj() != null) {
                                    strGt = spVar.uj().gt();
                                    iGr = spVar.uj().gr();
                                } else {
                                    iGr = i13;
                                    strGt = "";
                                }
                                if (spVar.f15563c.isHasShown() || !spVar.f15563c.isReady(strGt)) {
                                    list.remove(spVar);
                                    i14++;
                                }
                                i13 = iGr;
                            }
                        }
                        if (list.size() > i13) {
                            com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用lowMemory，adnSlotId: " + ((String) entry.getKey()) + ", 清理无效广告后仍需清理，缓存总数: " + list.size() + "，adCount: " + i13 + ", invalidCnt: " + i14);
                            i10 = 0;
                            for (sp spVar2 : list) {
                                if (list.size() <= i13) {
                                    break;
                                }
                                list.remove(spVar2);
                                i10++;
                            }
                        } else {
                            i10 = 0;
                        }
                        com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用lowMemory，adnSlotId: " + ((String) entry.getKey()) + ", 清理后，缓存总数: " + list.size() + ", adCount: " + i13 + ", invalidCnt: " + i14 + ", foceCleanCnt：" + i10);
                        i11 += i14;
                        i12 += i10;
                    }
                    yv.c(i11, i12);
                }
            }
        });
    }

    public boolean uj(String str, String str2, int i10) {
        if (i10 == 2) {
            return false;
        }
        Integer num = this.tt.get(str + "_" + str2);
        return num != null && (num.intValue() == 1 || num.intValue() == 2);
    }

    public void ve(String str, String str2, int i10) {
        this.tt.put(str + "_" + str2, Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, List<sp>> tt(List<ve> list, String str, com.byazt.ll.tt ttVar, int i10, ve veVar) {
        HashMap map = new HashMap();
        for (ve veVar2 : list) {
            if (veVar2 != null && veVar2 != veVar) {
                veVar2.setUseFromCache(false);
            }
            if (veVar2 != null && veVar2 != veVar && n(str, veVar2.getAdNetworkSlotId(), i10) == 2 && veVar2.isReady(str) && !veVar2.isHasShown()) {
                List list2 = (List) map.get(veVar2.getAdNetworkSlotId());
                if (list2 == null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new sp(veVar2, 0L, ttVar));
                    map.put(veVar2.getAdNetworkSlotId(), arrayList);
                } else {
                    list2.add(new sp(veVar2, 0L, ttVar));
                }
            }
        }
        return map;
    }

    public boolean ve(String str, String str2) {
        Integer num = this.ve.get(str + "_" + str2);
        return num != null && num.intValue() == 1;
    }

    public da n(String str, String str2) {
        return this.f14936n.get(str + "_" + str2);
    }

    public void uj(String str, String str2) {
        this.f14933a.put(str, str2);
    }

    public static c c() {
        if (f14932x == null) {
            synchronized (c.class) {
                if (f14932x == null) {
                    f14932x = new c();
                }
            }
        }
        return f14932x;
    }

    public void ve() {
        this.uj.clear();
    }

    public void c(String str, String str2, da daVar, int i10) {
        if (daVar != null) {
            this.f14936n.put(str + "_" + str2, daVar);
        }
        this.sp.put(str2, Integer.valueOf(i10));
    }

    private int tt(String str, com.byazt.ll.tt ttVar, boolean z10) {
        boolean zC;
        int i10;
        CopyOnWriteArrayList<sp> copyOnWriteArrayList = this.uj.get(str);
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            String strGt = ttVar != null ? ttVar.gt() : "";
            ArrayList arrayList = new ArrayList();
            sp spVar = null;
            boolean z11 = false;
            for (sp spVar2 : copyOnWriteArrayList) {
                Integer numIsReadyStatus = spVar2.f15563c.isReadyStatus();
                int iIntValue = numIsReadyStatus != null ? numIsReadyStatus.intValue() : 0;
                if (iIntValue == 4) {
                    zC = c(strGt, spVar2.f15563c);
                } else {
                    zC = iIntValue != 2;
                }
                if (!zC) {
                    if (com.byazt.yt.c.c(spVar2.uj(), ttVar, spVar2.f15563c)) {
                        com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:复用成功：--------" + spVar2.f15563c.getAdNetWorkName() + ", adSlotId: " + str);
                        z11 = true;
                    } else {
                        com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:AdSlot不符合 -------: " + spVar2.f15563c.getAdNetWorkName() + ", adSlotId: " + str);
                        i10 = 6;
                    }
                } else {
                    copyOnWriteArrayList.remove(spVar2);
                    com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:广告过期了 -------: " + spVar2.f15563c.getAdNetWorkName() + ", adSlotId: " + str);
                    i10 = 5;
                }
                if (spVar == null) {
                    spVar = spVar2;
                }
                com.byazt.ix.c cVar = new com.byazt.ix.c();
                cVar.uj(spVar2.f15563c.getLoadSort());
                cVar.n(spVar2.f15563c.getShowSort());
                cVar.tt(spVar2.f15563c.getAdNetworkSlotId());
                cVar.tt(i10);
                cVar.c(spVar2.f15563c.isHasShown() ? 1 : 0);
                arrayList.add(cVar);
            }
            if (z11) {
                return 3;
            }
            if (z10 && spVar != null) {
                a.c(ttVar, spVar.f15563c, c(arrayList));
            }
            return 2;
        }
        com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:当前没有广告缓存 -------adnSlotId: " + str);
        return 1;
    }

    public String c(String str) {
        return this.f14933a.get(str);
    }

    public void c(final String str, final com.byazt.ll.tt ttVar, final Map<String, Object> map, final boolean z10, final sl slVar, final i iVar, final Context context) {
        n.c(new Runnable() { // from class: com.byazt.hk.c.2
            @Override // java.lang.Runnable
            public void run() {
                String adNetWorkName;
                String strC;
                sp spVar;
                List<sp> list = (List) c.this.uj.get(str);
                ArrayList arrayList = new ArrayList();
                if (list != null && list.size() > 0) {
                    for (sp spVar2 : list) {
                        if (spVar2 != null && spVar2.f15563c.isHasShown()) {
                            list.remove(spVar2);
                            arrayList.add(spVar2);
                        }
                    }
                }
                boolean z11 = false;
                if (com.byazt.eu.tt.tt()) {
                    if (arrayList.size() <= 0 || (spVar = (sp) arrayList.get(0)) == null) {
                        adNetWorkName = "";
                        strC = adNetWorkName;
                    } else {
                        strC = com.byazt.yl.c.c(spVar.f15563c.getAdType(), spVar.f15563c.getSubAdType());
                        adNetWorkName = spVar.f15563c.getAdNetWorkName();
                    }
                    StringBuilder sb2 = new StringBuilder("--==-- 广告复用:show时缓存移除 -----：");
                    sb2.append(adNetWorkName);
                    sb2.append(", ");
                    sb2.append(strC);
                    sb2.append(", ");
                    sb2.append(str);
                    sb2.append(arrayList.size() > 0 ? ", size: " + arrayList.size() : "移除广告数为0");
                    com.byazt.eu.tt.c(MediationConstant.TAG, sb2.toString());
                }
                com.byazt.ll.tt ttVar2 = ttVar;
                String strGt = ttVar2 != null ? ttVar2.gt() : "";
                com.byazt.ll.tt ttVar3 = ttVar;
                int iMy = ttVar3 != null ? ttVar3.my() : 0;
                com.byazt.ll.tt ttVar4 = ttVar;
                boolean z12 = ttVar4 == null || ttVar4.my() == 1;
                if (!com.byazt.bp.tt.tt().c(strGt, str, iMy) && z10) {
                    z11 = true;
                }
                if (!ttVar.tk() && z11 && !z12 && c.this.ve(strGt, str)) {
                    c.this.c(str, ttVar, (Map<String, Object>) map, context, slVar, iVar);
                    return;
                }
                com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:show时预请求取消，因为：已发起waterfall预加载，或feed多广告，或未开启adn预加载，或是banner轮播 --: " + str);
            }
        });
    }

    public void c(final List<ve> list, final String str, final com.byazt.ll.tt ttVar, final int i10, final ve veVar) {
        if (list == null || list.isEmpty() || ttVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        n.c(new Runnable() { // from class: com.byazt.hk.c.3
            @Override // java.lang.Runnable
            public void run() {
                for (Map.Entry entry : c.this.tt(list, str, ttVar, i10, veVar).entrySet()) {
                    String str2 = (String) entry.getKey();
                    List<sp> list2 = (List) entry.getValue();
                    if (!TextUtils.isEmpty(str2) && list2 != null && list2.size() > 0) {
                        c.this.c(str2, list2, true);
                        com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用，show后放回复用池：adnSlotId:" + str2 + ", 个数：" + list2.size());
                    }
                }
            }
        });
    }

    public void c(String str, List<sp> list, boolean z10) {
        if (list == null || list.size() <= 0) {
            return;
        }
        CopyOnWriteArrayList<sp> copyOnWriteArrayList = this.uj.get(str);
        if (copyOnWriteArrayList != null) {
            for (sp spVar : list) {
                if (!c(copyOnWriteArrayList, spVar)) {
                    copyOnWriteArrayList.add(spVar);
                }
            }
        } else {
            this.uj.put(str, new CopyOnWriteArrayList<>(list));
        }
        if (z10) {
            h.c(this.uj.get(str), this.f14935i);
        }
    }

    private boolean c(List<sp> list, sp spVar) {
        for (sp spVar2 : list) {
            if (spVar2 != null && spVar != null && spVar2.f15563c == spVar.f15563c) {
                return true;
            }
        }
        return false;
    }

    public synchronized List<sp> c(String str, com.byazt.ll.tt ttVar, int i10) {
        CopyOnWriteArrayList<sp> copyOnWriteArrayList = this.uj.get(str);
        if (copyOnWriteArrayList == null) {
            return null;
        }
        int iGr = ttVar != null ? ttVar.gr() : 1;
        ArrayList arrayList = new ArrayList();
        int iN = n(ttVar != null ? ttVar.gt() : "", str, i10);
        if (iN == 1) {
            for (int i11 = 0; arrayList.size() < iGr && i11 < copyOnWriteArrayList.size(); i11++) {
                if (!copyOnWriteArrayList.get(i11).ve() && com.byazt.yt.c.c(copyOnWriteArrayList.get(i11).uj(), ttVar, copyOnWriteArrayList.get(i11).f15563c)) {
                    arrayList.add(copyOnWriteArrayList.get(i11));
                }
            }
            for (int i12 = 0; arrayList.size() < iGr && i12 < copyOnWriteArrayList.size(); i12++) {
                if (copyOnWriteArrayList.get(i12).ve() && com.byazt.yt.c.c(copyOnWriteArrayList.get(i12).uj(), ttVar, copyOnWriteArrayList.get(i12).f15563c)) {
                    arrayList.add(copyOnWriteArrayList.get(i12));
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((sp) it2.next()).c(true);
            }
            com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 复用模式1，不从复用池移除，获取缓存: " + str + ", " + arrayList.size());
        } else if (iN == 2) {
            for (sp spVar : copyOnWriteArrayList) {
                if (arrayList.size() >= iGr) {
                    break;
                }
                if (spVar.sp() && spVar.f15563c != null) {
                    com.byazt.eu.tt.tt(MediationConstant.TAG, "--==-- 复用模式2，广告：" + spVar.tt() + "  adnName:" + spVar.f15563c.getAdnName() + " showSort:" + spVar.f15563c.getShowSort() + " 暂不可用， 已经被使用中...");
                }
                if (com.byazt.yt.c.c(spVar.uj(), ttVar, spVar.f15563c) && !spVar.sp()) {
                    copyOnWriteArrayList.remove(spVar);
                    arrayList.add(spVar);
                }
            }
            com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 复用模式2，从复用池移除，获取缓存: " + str + ", " + arrayList.size());
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((sp) it3.next()).tt(true);
        }
        return arrayList;
    }

    public int tt(String str) {
        CopyOnWriteArrayList<sp> copyOnWriteArrayList = this.uj.get(str);
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return 0;
        }
        return copyOnWriteArrayList.size();
    }

    public synchronized int c(String str, com.byazt.ll.tt ttVar, boolean z10) {
        if (tt(ttVar != null ? ttVar.gt() : "", str) == 0) {
            return tt(str, ttVar, z10);
        }
        CopyOnWriteArrayList<sp> copyOnWriteArrayList = this.uj.get(str);
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            sp spVar = null;
            ArrayList arrayList = z10 ? new ArrayList() : null;
            boolean z11 = false;
            for (sp spVar2 : copyOnWriteArrayList) {
                int iC = c(spVar2, spVar2.uj(), ttVar, "广告复用");
                if (iC == -1) {
                    z11 = true;
                } else {
                    if (iC != 6) {
                        copyOnWriteArrayList.remove(spVar2);
                    }
                    if (z10) {
                        if (spVar == null) {
                            spVar = spVar2;
                        }
                        com.byazt.ix.c cVar = new com.byazt.ix.c();
                        cVar.uj(spVar2.f15563c.getLoadSort());
                        cVar.n(spVar2.f15563c.getShowSort());
                        cVar.tt(spVar2.f15563c.getAdNetworkSlotId());
                        cVar.tt(iC);
                        cVar.c(spVar2.f15563c.isHasShown() ? 1 : 0);
                        arrayList.add(cVar);
                    }
                }
            }
            if (z11) {
                return 3;
            }
            if (z10 && spVar != null) {
                a.c(ttVar, spVar.f15563c, c(arrayList));
            }
            return 2;
        }
        com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:当前没有广告缓存 -------adnSlotId: " + str);
        return 1;
    }

    private String c(List<com.byazt.ix.c> list) {
        if (list.size() > 0) {
            StringBuilder sb2 = new StringBuilder("[");
            for (int i10 = 0; i10 < list.size(); i10++) {
                sb2.append(list.get(i10).c());
                if (i10 == list.size() - 1) {
                    sb2.append("]");
                } else {
                    sb2.append(",");
                }
            }
            try {
                return new JSONArray(sb2.toString()).toString();
            } catch (JSONException e10) {
                com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用：adCannotUseInfo json err: " + e10.getMessage());
            }
        }
        return list.size() > 0 ? "json error" : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, com.byazt.ll.tt ttVar, Map<String, Object> map, Context context, sl slVar, i iVar) {
        String strC;
        if (ttVar == null) {
            com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:show时预请求取消，adSlot为空 -------: " + str);
            return;
        }
        if (context == null) {
            com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:show时预请求取消，context为null -------: " + str);
            return;
        }
        da daVarN = n(ttVar.gt(), str);
        if (daVarN != null) {
            try {
                strC = com.byazt.oi.ve.c(daVarN.sp(), com.byazt.oi.ve.c(daVarN.z()), com.byazt.yl.c.c(daVarN.u(), daVarN.a()));
            } catch (Throwable th) {
                m.c(th);
                strC = null;
            }
        } else {
            strC = null;
        }
        if (!TextUtils.isEmpty(strC) && com.byazt.oi.ve.tt(strC) && daVarN != null) {
            for (String str2 : this.f14934c) {
                if (TextUtils.equals(str2, daVarN.z())) {
                    com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:show时预请求取消，" + str2 + "为单例模式 -------: " + str);
                    return;
                }
            }
            int iIntValue = this.sp.get(str) != null ? this.sp.get(str).intValue() : -1;
            com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:show时预请求开始 -------: " + str);
            com.byazt.dv.tt ttVarC = com.byazt.dv.tt.c(daVarN, (com.byazt.pq.c) null);
            ttVarC.ve(4);
            ttVarC.tt(1);
            com.byazt.db.c cVarC = com.byazt.qv.ve.c(ttVarC, ttVar, new C0327c(ttVar, daVarN, ttVarC, iVar, iIntValue));
            if (cVarC != null) {
                if (!com.byazt.hr.sl.c().ve(ttVar.gt(), daVarN.rh())) {
                    com.byazt.eu.tt.c("TMe", "adn 代码位预请求触发次数拦截............");
                    Pair<String, String> pairC = com.byazt.hr.sl.c().c(ttVar.gt(), daVarN.rh());
                    if (pairC != null) {
                        com.byazt.bnd.tt ttVar2 = new com.byazt.bnd.tt(41041, com.byazt.pp.c.c(41041), (String) pairC.second, (String) pairC.first);
                        a.c(daVarN, ttVar, c().c(daVarN.rh()), true, 2, iIntValue, 4, 1, ttVar2, -1L, false, false, 0L);
                        a.c(ttVar2, ttVar, daVarN, iIntValue, 4, 1, c().c(daVarN.rh()), 0L, (String) null, (String) null, (String) null, 0L);
                        return;
                    }
                    return;
                }
                a.c(daVarN, ttVar, c().c(daVarN.rh()), ttVarC.n(), 3, ttVarC.ve(), 4, 1, null, ttVarC.uj(), false, false, 0L);
                cVarC.adnStartLoad(context, ttVarC, ttVar, com.byazt.qv.ve.c(ttVarC, ttVar, map));
                com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:show时预请求已发完 -------: " + str);
                return;
            }
            a.c(daVarN, ttVar, 4, 1);
            return;
        }
        com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 广告复用:show时预请求取消，className或wfcBean为空, className: " + strC + ", wfcBean: " + daVarN + ", adnSlotId: " + str);
    }
}
