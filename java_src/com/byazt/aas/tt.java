package com.byazt.aas;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile tt f11481c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.iy.n f11483da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.iy.n f11484i;
    public com.byazt.iy.n sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.iy.n f11488x;
    public volatile int sl = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f11486t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f11487u = 0;
    public final Map<String, Integer> tt = new HashMap();
    public final ConcurrentHashMap<String, Integer> ve = new ConcurrentHashMap<>();
    public final Map<String, Long> uj = new HashMap();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ConcurrentHashMap<String, Long> f11485n = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f11482a = SystemClock.elapsedRealtime();

    private tt() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.iy.n a() {
        if (this.f11484i == null) {
            this.f11484i = eo.c("activity_foreground_time");
        }
        return this.f11484i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.iy.n n() {
        if (this.f11488x == null) {
            this.f11488x = eo.c("activity_adshow_count");
        }
        return this.f11488x;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.iy.n sp() {
        if (this.f11483da == null) {
            this.f11483da = eo.c("activity_recorder");
        }
        return this.f11483da;
    }

    public void tt(final String str) {
        com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.aas.tt.1
            @Override // java.lang.Runnable
            public void run() {
                tt.this.uj().put(str, tt.this.uj().get(str, 0) + 1);
                if (tt.this.sl == 0) {
                    tt ttVar = tt.this;
                    ttVar.sl = ttVar.sp().get("histRunningCount", 0) + 1;
                    tt.this.sp().put("histRunningCount", tt.this.sl);
                }
            }
        });
    }

    public void uj(final String str) {
        com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.aas.tt.3
            @Override // java.lang.Runnable
            public void run() {
                tt.this.n().put(str, tt.this.n().get(str, 0) + 1);
            }
        });
    }

    public void ve(String str) {
        Long lRemove;
        if (TextUtils.isEmpty(str) || (lRemove = this.f11485n.remove(str)) == null) {
            return;
        }
        long jElapsedRealtime = (SystemClock.elapsedRealtime() - lRemove.longValue()) / 1000;
        if (jElapsedRealtime >= 0) {
            Long l10 = this.uj.get(str);
            if (l10 == null || l10.longValue() < 0) {
                l10 = 0L;
            }
            this.uj.put(str, Long.valueOf(l10.longValue() + jElapsedRealtime));
            c(str, jElapsedRealtime);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.iy.n uj() {
        if (this.sp == null) {
            this.sp = eo.c("activity_resume_count");
        }
        return this.sp;
    }

    public void tt() {
        if (this.f11485n.size() == 1) {
            for (String str : this.f11485n.keySet()) {
                Integer num = this.ve.get(str);
                this.ve.put(str, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
                uj(str);
            }
        }
    }

    public static tt c() {
        if (f11481c == null) {
            synchronized (tt.class) {
                if (f11481c == null) {
                    f11481c = new tt();
                }
            }
        }
        return f11481c;
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Integer num = this.tt.get(str);
        this.tt.put(str, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
        this.f11485n.put(str, Long.valueOf(SystemClock.elapsedRealtime()));
        if (this.f11485n.size() > 1) {
            this.f11486t++;
        }
        tt(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve() {
        try {
            Map all = uj().getAll();
            if (all == null) {
                return;
            }
            Iterator it2 = all.values().iterator();
            int iIntValue = 0;
            while (it2.hasNext()) {
                iIntValue += ((Integer) it2.next()).intValue();
            }
            if (iIntValue != 0 && iIntValue % 75 == 0) {
                final JSONArray jSONArray = new JSONArray();
                for (String str : this.tt.keySet()) {
                    Integer num = this.tt.get(str);
                    Long l10 = this.uj.get(str);
                    Integer num2 = this.ve.get(str);
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("name", str);
                        jSONObject.put("rc", num != null ? num.intValue() : 0);
                        jSONObject.put("ft", l10 != null ? l10.longValue() : 0L);
                        jSONObject.put("asc", num2 != null ? num2.intValue() : 0);
                        jSONArray.put(jSONObject);
                    } catch (JSONException e10) {
                        com.byazt.nr.m.c(e10);
                    }
                }
                final JSONArray jSONArray2 = new JSONArray();
                Map all2 = a().getAll();
                Map all3 = n().getAll();
                if (all2 != null && all3 != null) {
                    for (String str2 : all.keySet()) {
                        Integer num3 = (Integer) all.get(str2);
                        Long l11 = (Long) all2.get(str2);
                        Integer num4 = (Integer) all3.get(str2);
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("name", str2);
                            jSONObject2.put("rc", num3 != null ? num3.intValue() : 0);
                            jSONObject2.put("ft", l11 != null ? l11.longValue() : 0L);
                            jSONObject2.put("asc", num4 != null ? num4.intValue() : 0);
                            jSONArray2.put(jSONObject2);
                        } catch (JSONException e11) {
                            com.byazt.nr.m.c(e11);
                        }
                    }
                }
                final long jElapsedRealtime = (SystemClock.elapsedRealtime() - this.f11482a) / 1000;
                com.byazt.ukr.yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.aas.tt.4
                    @Override // com.byazt.ee.c
                    public com.byazt.qal.c c() throws Exception {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("ara", jSONArray);
                        jSONObject3.put("hara", jSONArray2);
                        jSONObject3.put("rt", jElapsedRealtime);
                        jSONObject3.put("hrc", tt.this.sl);
                        jSONObject3.put("drc", tt.this.f11486t);
                        return com.byazt.qal.tt.tt().c("ad_activity_record").tt(jSONObject3.toString());
                    }
                }, "ad_activity_record");
            }
        } catch (Throwable unused) {
        }
    }

    public void c(final String str, final long j10) {
        com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.aas.tt.2
            @Override // java.lang.Runnable
            public void run() {
                long j11 = tt.this.a().get(str, 0L);
                tt.this.a().put(str, (j11 >= 0 ? j11 : 0L) + j10);
                tt.this.ve();
                tt.this.c(j10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j10) {
        int i10 = this.f11487u;
        if (i10 == 0) {
            try {
                Map all = a().getAll();
                if (all != null) {
                    Iterator it2 = all.values().iterator();
                    while (it2.hasNext()) {
                        this.f11487u = (int) (((long) this.f11487u) + ((Long) it2.next()).longValue());
                    }
                }
            } catch (Throwable unused) {
                this.f11487u = -1;
            }
        } else {
            this.f11487u = (int) (((long) i10) + j10);
        }
        gr.c(this.f11487u, this.sl);
    }
}
