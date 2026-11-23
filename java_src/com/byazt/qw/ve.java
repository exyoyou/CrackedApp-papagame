package com.byazt.qw;

import android.os.Handler;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.aas.DeviceUtils;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.omf.rh;
import com.byazt.ukr.yp;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 726, 54})
public class ve implements com.byazt.aas.c.tt {
    public static volatile ve tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float f19297u;
    public final ConcurrentHashMap<Integer, uj> ve = new ConcurrentHashMap<>();
    public final Map<String, Float> uj = new ConcurrentHashMap();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public uj f19295n = null;
    public JSONArray sp = new JSONArray();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final String f19298x = "realtime_feature";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f19294i = 0;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f19293da = 0;
    public long sl = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f19296t = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f19292c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Handler f19291a = da.c();

    private ve() {
        com.byazt.aas.c cVarVe = com.byazt.omf.x.m().ve();
        if (cVarVe != null) {
            cVarVe.c(this);
        }
    }

    private Handler sl() {
        return this.f19291a;
    }

    public static ve ve() {
        if (tt == null) {
            synchronized (ve.class) {
                if (tt == null) {
                    tt = new ve();
                }
            }
        }
        return tt;
    }

    public void a() {
        long jSp = sp();
        if (jSp != this.f19292c) {
            c.c(c.f19269n);
            this.f19292c = jSp;
        }
    }

    public float da() {
        if (this.f19297u == 0.0f) {
            this.f19297u = DeviceUtils.x();
        }
        return this.f19297u;
    }

    public long i() {
        return this.f19293da;
    }

    public JSONArray n() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.ve.keySet().isEmpty()) {
            this.sp = new JSONArray();
        } else {
            JSONArray jSONArray = new JSONArray();
            try {
                try {
                    Iterator<Integer> it2 = this.ve.keySet().iterator();
                    while (it2.hasNext()) {
                        int iIntValue = it2.next().intValue();
                        uj ujVar = this.ve.get(Integer.valueOf(iIntValue));
                        if (ujVar != null && ujVar.c().length() > 0) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("slot_type", iIntValue);
                            jSONObject.put("event_cnts", ujVar.c());
                            jSONArray.put(jSONObject);
                        }
                    }
                    if (this.f19295n != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("slot_type", -1);
                        jSONObject2.put("event_cnts", this.f19295n.c());
                        jSONArray.put(jSONObject2);
                    }
                } catch (JSONException e10) {
                    m.ve(e10.getMessage());
                }
            } catch (Throwable th) {
                m.ve(th.getMessage());
            }
            this.sp = jSONArray;
        }
        if (gt.tt().hj()) {
            double dCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis;
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("cost", dCurrentTimeMillis);
                jSONObject3.put("feature_cnt", this.sp.length());
            } catch (JSONException e11) {
                m.ve(e11.getMessage());
            }
            yp.c().da(jSONObject3);
        }
        return this.sp;
    }

    @Override // com.byazt.aas.c.tt
    public void onAppBackground() {
        if (!com.byazt.omf.x.m().d() && gt.tt().ri()) {
            sl().post(new Runnable() { // from class: com.byazt.qw.ve.4
                @Override // java.lang.Runnable
                public void run() {
                    c.c(c.ve, c.a(), 0L);
                    if (ve.this.f19295n != null) {
                        ve.this.f19295n.tt();
                    }
                    Iterator it2 = ve.this.ve.values().iterator();
                    while (it2.hasNext()) {
                        ((uj) it2.next()).tt();
                    }
                    ve.this.f19293da = System.currentTimeMillis();
                }
            });
        }
    }

    @Override // com.byazt.aas.c.tt
    public void onAppExit() {
    }

    @Override // com.byazt.aas.c.tt
    public void onAppForeground() {
        if (!com.byazt.omf.x.m().d() && gt.tt().ri()) {
            sl().post(new Runnable() { // from class: com.byazt.qw.ve.5
                @Override // java.lang.Runnable
                public void run() {
                    ve.this.f19297u = DeviceUtils.x();
                    c.c(c.tt, 0L, c.sp());
                    c.c(c.f19266a);
                    ve.this.f19294i = System.currentTimeMillis();
                }
            });
        }
    }

    @Override // com.byazt.aas.c.tt
    public void onAppStart() {
    }

    public long sp() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        if (this.f19292c == 0) {
            this.f19292c = timeInMillis;
        }
        return timeInMillis;
    }

    public void uj() {
        c();
        tt();
        c.c(c.f19267c, 0L, 0L);
        c.c(c.uj);
    }

    public long x() {
        return this.f19294i;
    }

    public long tt() {
        if (this.f19296t == 0) {
            this.f19296t = System.currentTimeMillis() - (SystemClock.elapsedRealtime() - rh.f18099n);
        }
        return this.f19296t;
    }

    public long c() {
        if (this.sl == 0) {
            this.sl = System.currentTimeMillis() - (SystemClock.elapsedRealtime() - Process.getStartElapsedRealtime());
        }
        return this.sl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, @NonNull String str2, String str3, int i10) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !gt.tt().ri()) {
            return;
        }
        if (i10 > 0 && i10 <= 10) {
            uj ujVar = this.ve.get(Integer.valueOf(i10));
            if (ujVar == null) {
                ujVar = new uj(str2);
                this.ve.put(Integer.valueOf(i10), ujVar);
            }
            ujVar.c(str, str3);
            return;
        }
        if (this.f19295n == null) {
            this.f19295n = new uj(str2);
        }
        this.f19295n.c(str, str3);
    }

    public void c(@NonNull final String str, @NonNull final String str2, final String str3, final JSONObject jSONObject, final String str4) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !gt.tt().ri()) {
            return;
        }
        str.hashCode();
        switch (str) {
            case "feed_over":
            case "show":
            case "skip":
            case "click":
            case "feed_continue":
            case "feed_break":
            case "feed_pause":
            case "play_start":
                sl().post(new Runnable() { // from class: com.byazt.qw.ve.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            String strOptString = str3;
                            int iOptInt = 0;
                            if (jSONObject != null) {
                                if (TextUtils.isEmpty(strOptString)) {
                                    strOptString = jSONObject.optString("req_id");
                                }
                                iOptInt = jSONObject.optInt("ad_slot_type", 0);
                            } else if (str4 != null) {
                                JSONObject jSONObject2 = new JSONObject(str4);
                                if (TextUtils.isEmpty(strOptString)) {
                                    strOptString = jSONObject2.optString("req_id");
                                }
                                iOptInt = jSONObject2.optInt("ad_slot_type", 0);
                            }
                            ve.this.c(str, str2, strOptString, iOptInt);
                        } catch (Exception e10) {
                            m.c(e10);
                        }
                    }
                });
                break;
        }
    }

    public void c(@NonNull final String str, final ic icVar) {
        if (!TextUtils.isEmpty(str) && gt.tt().ri() && "videoPercent30".equals(str)) {
            sl().post(new Runnable() { // from class: com.byazt.qw.ve.2
                @Override // java.lang.Runnable
                public void run() {
                    ic icVar2 = icVar;
                    if (icVar2 != null) {
                        String strUj = icVar2.uj();
                        if (TextUtils.isEmpty(strUj)) {
                            return;
                        }
                        ve.this.c(str, strUj, icVar.qy(), nb.sl(icVar));
                    }
                }
            });
        }
    }

    public void c(@NonNull final String str, final ic icVar, final String str2) {
        if (TextUtils.isEmpty(str) || !gt.tt().ri()) {
            return;
        }
        if ("landingStart".equals(str) || "landingFinish".equals(str) || "landingContinue".equals(str) || "landingPause".equals(str)) {
            sl().post(new Runnable() { // from class: com.byazt.qw.ve.3
                @Override // java.lang.Runnable
                public void run() {
                    ic icVar2 = icVar;
                    if (icVar2 != null) {
                        String strUj = icVar2.uj();
                        if (TextUtils.isEmpty(strUj)) {
                            return;
                        }
                        int iSl = nb.sl(icVar);
                        ve.this.c(str, strUj, icVar.qy() + str2, iSl);
                    }
                }
            });
        }
    }

    public void c(ic icVar, float f10) {
        if (icVar != null) {
            this.uj.put(nb.c(icVar, ""), Float.valueOf(f10));
        }
    }

    public float c(String str) {
        Float f10;
        if (TextUtils.isEmpty(str) || (f10 = this.uj.get(str)) == null) {
            return 0.0f;
        }
        return f10.floatValue();
    }
}
