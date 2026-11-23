package com.byazt.dbo;

import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.join.mgps.dto.Constant;
import com.umeng.umcrash.UMCrash;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 961, 20})
public class c {
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f12672t;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public a f12674x;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AtomicBoolean f12671n = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f12667a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<ic> f12668c = new ArrayList();
    public List<ic> tt = new ArrayList();
    public List<ic> ve = new ArrayList();
    public List<String> uj = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f12670i = -1;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f12669da = -1;
    public long sl = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Runnable f12673u = new Runnable() { // from class: com.byazt.dbo.c.1
        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f12667a.get()) {
                return;
            }
            c.this.f12671n.set(true);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(c.this.tt);
            for (ic icVar : c.this.ve) {
                int iC = c.this.c(icVar);
                if (iC == 2) {
                    icVar.i(100009L);
                    arrayList.add(icVar);
                } else if (iC == 1) {
                    icVar.i(100008L);
                } else {
                    icVar.i(100003L);
                    arrayList2.add(icVar);
                }
            }
            if (!arrayList.isEmpty() && c.this.f12674x != null) {
                c.this.f12674x.ve(arrayList);
            }
            c.this.tt(arrayList2);
        }
    };

    public c(int i10) {
        this.f12672t = i10;
    }

    private void uj(List<ic> list) {
        list.size();
        Iterator<ic> it2 = list.iterator();
        while (it2.hasNext()) {
            ve(it2.next());
        }
        a aVar = this.f12674x;
        if (aVar != null) {
            aVar.tt(list);
        }
        c();
    }

    private void ve(long j10) {
        this.sl = j10;
    }

    public void tt(long j10) {
        this.f12669da = j10;
    }

    private JSONObject tt(int i10, List<ic> list) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            Iterator<ic> it2 = list.iterator();
            while (it2.hasNext()) {
                jSONArray.put(tt(it2.next()));
            }
            jSONObject.put(com.sigmob.sdk.base.db.a.f79315a, jSONArray);
            jSONObject.put("check_type", i10);
        } catch (JSONException e10) {
            e10.getMessage();
        }
        return jSONObject;
    }

    private void ve(List<ic> list) {
        list.size();
        Iterator<ic> it2 = list.iterator();
        while (it2.hasNext()) {
            ve(it2.next());
        }
        a aVar = this.f12674x;
        if (aVar != null) {
            aVar.c(list);
        }
        c();
    }

    public void c() {
        this.f12674x = null;
        da.ve().removeCallbacks(this.f12673u);
    }

    public void c(long j10) {
        this.f12670i = j10;
    }

    public void c(List<ic> list, a aVar) {
        this.f12674x = aVar;
        c(list);
    }

    private void ve(ic icVar) {
        ve(System.currentTimeMillis());
        if (icVar.xw() == 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            String strTt = nb.tt(this.f12672t);
            long j10 = this.f12669da;
            long j11 = this.f12670i;
            jSONObject.put("cache_get_duration", j10 - j11 < 0 ? -1L : j10 - j11);
            long j12 = this.sl;
            long j13 = this.f12669da;
            jSONObject.put("network_check_duration", j12 - j13 < 0 ? -1L : j12 - j13);
            long j14 = this.sl;
            long j15 = this.f12670i;
            jSONObject.put("cache_total_duration", j14 - j15 < 0 ? -1L : j14 - j15);
            jSONObject.put("cache_loss_reason", this.sp);
            jSONObject.put("creative_check_duration", icVar.ym() != null ? icVar.ym().optLong("creative_check_duration", 0L) : -1L);
            ve.c(icVar, jSONObject, false);
            com.byazt.ddx.uj.ve(icVar, strTt, jSONObject);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00da  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x00bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00b9 A[SYNTHETIC] */
    private void c(List<ic> list) {
        int i10;
        boolean z10;
        boolean z11;
        this.f12668c = list;
        this.tt.clear();
        this.ve.clear();
        int i11 = 0;
        boolean z12 = false;
        boolean z13 = false;
        for (ic icVar : list) {
            this.uj.add(icVar.sf());
            JSONObject jSONObjectYm = icVar.ym();
            if (jSONObjectYm == null) {
                icVar.x(-1L);
                this.tt.add(icVar);
            } else {
                int iOptInt = jSONObjectYm.optInt("cache_correct_type", i11);
                int iOptInt2 = jSONObjectYm.optInt("is_need_cache_correct", i11);
                int iOptInt3 = jSONObjectYm.optInt("is_need_cache_check", i11);
                boolean z14 = iOptInt == 1;
                boolean z15 = iOptInt2 == 1;
                boolean z16 = iOptInt3 == 1;
                if (!z14) {
                    this.tt.add(icVar);
                    icVar.x(0L);
                } else if (z15 || z16) {
                    if (!z15) {
                        this.ve.add(icVar);
                        icVar.x(3L);
                    } else {
                        long jOptLong = jSONObjectYm.optLong("creative_check_duration", 0L);
                        if (jOptLong > 0) {
                            z10 = z12;
                            z11 = Math.abs(((double) (System.currentTimeMillis() / 1000)) - nb.z(icVar)) <= ((double) jOptLong);
                            if (z11) {
                                if (!z16) {
                                    this.ve.add(icVar);
                                    icVar.x(5L);
                                    z12 = z10;
                                    i11 = 0;
                                } else {
                                    this.ve.add(icVar);
                                    icVar.x(7L);
                                    i11 = 0;
                                    z12 = true;
                                }
                                z13 = true;
                            } else if (!z16) {
                                this.tt.add(icVar);
                                icVar.x(4L);
                                icVar.i(100002L);
                                z12 = z10;
                                i11 = 0;
                            } else {
                                this.ve.add(icVar);
                                icVar.x(6L);
                                i11 = 0;
                            }
                        } else {
                            z10 = z12;
                        }
                        if (z11) {
                            if (!z16) {
                                this.ve.add(icVar);
                                icVar.x(5L);
                                z12 = z10;
                                i11 = 0;
                            } else {
                                this.ve.add(icVar);
                                icVar.x(7L);
                                i11 = 0;
                                z12 = true;
                            }
                            z13 = true;
                        } else if (!z16) {
                            this.tt.add(icVar);
                            icVar.x(4L);
                            icVar.i(100002L);
                            z12 = z10;
                            i11 = 0;
                        } else {
                            this.ve.add(icVar);
                            icVar.x(6L);
                            i11 = 0;
                        }
                    }
                    z12 = true;
                } else {
                    this.tt.add(icVar);
                    icVar.x(2L);
                    icVar.i(100002L);
                }
            }
            z10 = z12;
            z12 = z10;
            i11 = 0;
        }
        boolean z17 = z12;
        if (!this.ve.isEmpty() && (z17 || z13)) {
            if (z17 && z13) {
                i10 = 3;
            } else if (z17) {
                i10 = 1;
            } else {
                i10 = z13 ? 2 : 0;
            }
            c(i10, this.ve);
            return;
        }
        ve(this.tt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(List<ic> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : this.uj) {
            for (ic icVar : list) {
                if (str.equals(icVar.sf())) {
                    arrayList.add(icVar);
                }
            }
        }
        uj(arrayList);
    }

    private JSONObject tt(ic icVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            String strUj = icVar.uj();
            String strW_ = icVar.w_();
            Map<String, Object> mapYt = icVar.yt();
            String string = "";
            if (mapYt != null) {
                JSONObject jSONObject2 = new JSONObject();
                Set<Map.Entry<String, Object>> setEntrySet = mapYt.entrySet();
                if (!setEntrySet.isEmpty()) {
                    for (Map.Entry<String, Object> entry : setEntrySet) {
                        jSONObject2.put(entry.getKey(), entry.getValue());
                    }
                }
                if (jSONObject2.length() > 0) {
                    string = jSONObject2.toString();
                }
            }
            c(strUj, strW_, string, icVar.qy(), jSONObject);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private void c(final int i10, final List<ic> list) {
        Iterator<ic> it2 = list.iterator();
        long jMin = 2147483647L;
        while (it2.hasNext()) {
            JSONObject jSONObjectYm = it2.next().ym();
            long jOptLong = jSONObjectYm == null ? 0L : jSONObjectYm.optLong("correct_interface_timeout", 0L);
            if (jOptLong > 0) {
                jMin = Math.min(jMin, jOptLong);
            }
        }
        if (jMin == 2147483647L) {
            jMin = 0;
        }
        if (jMin > 0) {
            da.ve().postDelayed(this.f12673u, jMin);
        }
        gt.c().c(tt(i10, list), new tt<n>() { // from class: com.byazt.dbo.c.2
            @Override // com.byazt.dbo.tt
            public void c(n nVar, long j10, long j11) {
                try {
                    c.this.c(i10, list, nVar, j10);
                } catch (Exception e10) {
                    m.c(e10);
                    e10.getMessage();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, List<ic> list, n nVar, long j10) throws JSONException {
        a aVar;
        if (this.f12671n.get()) {
            return;
        }
        this.f12667a.set(true);
        if (nVar == null || nVar.c()) {
            uj(Collections.emptyList());
            return;
        }
        if (j10 != 20000) {
            Iterator<ic> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().i(100001L);
            }
            tt(this.f12668c);
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Map<String, JSONObject> map = nVar.tt;
        for (ic icVar : list) {
            String strC = n.c(icVar.uj(), icVar.qy());
            JSONObject jSONObject = TextUtils.isEmpty(strC) ? null : map.get(strC);
            if (jSONObject == null) {
                icVar.i(100004L);
                arrayList.add(icVar);
            } else {
                icVar.da(jSONObject.optLong("cali_timestamp", 0L));
                if (jSONObject.has("is_valid")) {
                    if (jSONObject.optBoolean("is_valid")) {
                        if (i10 == 2 || i10 == 3) {
                            String strOptString = jSONObject.optString("ext");
                            String strOptString2 = jSONObject.optString("media_ext");
                            if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                                icVar.gr(strOptString);
                                icVar.c(c(new JSONObject(strOptString2), icVar.yt()));
                            } else {
                                icVar.i(100006L);
                                arrayList.add(icVar);
                            }
                        }
                        icVar.i(100000L);
                        arrayList.add(icVar);
                    } else {
                        arrayList2.add(icVar);
                        this.sp = jSONObject.optString(MediationConstant.KEY_REASON);
                        icVar.i(100007L);
                    }
                } else {
                    icVar.i(100005L);
                    arrayList.add(icVar);
                }
            }
        }
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            ve((ic) it3.next());
        }
        if (!arrayList2.isEmpty() && (aVar = this.f12674x) != null) {
            aVar.ve(arrayList2);
        }
        arrayList.addAll(this.tt);
        tt(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c(ic icVar) {
        JSONObject jSONObjectYm = icVar == null ? null : icVar.ym();
        int iOptInt = jSONObjectYm == null ? 0 : jSONObjectYm.optInt("cache_correct_fallback_type", 0);
        if (iOptInt == 0 || iOptInt == 1 || iOptInt == 2) {
            return iOptInt;
        }
        return 0;
    }

    public static Map<String, Object> c(JSONObject jSONObject, Map<String, Object> map) {
        if (jSONObject == null) {
            return map;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!TextUtils.isEmpty(next)) {
                map.put(next, jSONObject.opt(next));
            }
        }
        return map;
    }

    private void c(String str, String str2, String str3, String str4, JSONObject jSONObject) throws JSONException {
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        String upperCase = com.byazt.nr.a.tt("id=" + str + "&timestamp=" + iCurrentTimeMillis + "&ext=" + str2 + "&media_ext=" + str3 + "&req_id=" + str4).toUpperCase();
        jSONObject.put("id", str);
        jSONObject.put(UMCrash.SP_KEY_TIMESTAMP, iCurrentTimeMillis);
        jSONObject.put("ext", str2);
        jSONObject.put("media_ext", str3);
        jSONObject.put("req_id", str4);
        jSONObject.put(Constant.MD5, upperCase);
    }
}
