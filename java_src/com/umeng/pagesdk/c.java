package com.umeng.pagesdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.Choreographer;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.protocol.record.EfsJSONLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f85637a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f85638b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f85639c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f85640d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f85641e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f85643g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    long f85644h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    long f85645i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f85646j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Context f85647k;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Map<String, Double> f85642f = new HashMap();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Choreographer.FrameCallback f85648l = new Choreographer.FrameCallback() { // from class: com.umeng.pagesdk.c.1
        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j10) {
            boolean z10 = PageManger.isDebug;
            c cVar = c.this;
            if (cVar.f85643g) {
                if (cVar.f85644h == 0) {
                    cVar.f85644h = System.currentTimeMillis();
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                c cVar2 = c.this;
                if (jCurrentTimeMillis - cVar2.f85644h > cVar2.f85645i) {
                    cVar2.b();
                    return;
                }
                if (cVar2.f85638b == 0) {
                    cVar2.f85638b = j10;
                }
                float f10 = (j10 - cVar2.f85638b) / 1000000.0f;
                if (f10 > cVar2.f85637a) {
                    double d10 = (((long) cVar2.f85639c) * 1000) / ((double) f10);
                    cVar2.f85639c = 0;
                    cVar2.f85638b = 0L;
                    if (PageManger.isDebug) {
                        StringBuilder sb2 = new StringBuilder("doFrame: ");
                        sb2.append(d10);
                        sb2.append(", map size is ");
                        sb2.append(c.this.f85642f.size());
                        sb2.append(", page is ");
                        sb2.append(c.this.f85646j);
                    }
                    Map<String, Double> map = c.this.f85642f;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(System.currentTimeMillis());
                    map.put(sb3.toString(), Double.valueOf(d10));
                    c cVar3 = c.this;
                    int i10 = cVar3.f85640d + 1;
                    cVar3.f85640d = i10;
                    if (i10 >= cVar3.f85641e) {
                        cVar3.c();
                        c cVar4 = c.this;
                        cVar4.f85640d = 0;
                        Map<String, Double> map2 = cVar4.f85642f;
                        if (map2 != null) {
                            map2.clear();
                        }
                    }
                } else {
                    cVar2.f85639c++;
                }
                Choreographer.getInstance().postFrameCallback(this);
            }
        }
    };

    public c(Context context) {
        SharedPreferences sharedPreferences;
        this.f85637a = 1000.0f;
        this.f85641e = 6;
        this.f85645i = e0.a.f90863b;
        this.f85647k = context;
        if (context == null || (sharedPreferences = context.getSharedPreferences("efs_page", 0)) == null) {
            return;
        }
        this.f85637a = sharedPreferences.getFloat(PageConfigManger.APM_FPSPERF_COLLECT_INTERVAL, 1000.0f);
        this.f85641e = sharedPreferences.getInt(PageConfigManger.APM_FPSPERF_COLLECT_INTERVAL_TOGETHER, 6);
        this.f85645i = sharedPreferences.getLong(PageConfigManger.APM_FPSPERF_COLLECT_MAX_PERIOD_SEC, e0.a.f90863b);
        if (PageManger.isDebug) {
            StringBuilder sb2 = new StringBuilder("init fps. diff is ");
            sb2.append(this.f85637a);
            sb2.append(", count diff is ");
            sb2.append(this.f85641e);
            sb2.append(", dlealt time is ");
            sb2.append(this.f85645i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        a aVarA;
        Iterator<Map.Entry<String, Double>> it2 = this.f85642f.entrySet().iterator();
        if (it2 != null) {
            JSONArray jSONArray = null;
            boolean z10 = false;
            while (it2.hasNext()) {
                Map.Entry<String, Double> next = it2.next();
                if (next != null) {
                    if (jSONArray == null) {
                        jSONArray = new JSONArray();
                    }
                    JSONObject jSONObject = new JSONObject();
                    try {
                        if (PageManger.getRefreshRate() > 0.0f && next.getValue().doubleValue() < ((double) PageManger.getRefreshRate()) * 1.1d) {
                            jSONObject.put(next.getKey(), next.getValue());
                            if (next.getValue().doubleValue() < 40.0d) {
                                z10 = true;
                            }
                        }
                    } catch (JSONException e10) {
                        e10.printStackTrace();
                    }
                    jSONArray.put(jSONObject);
                }
            }
            if (jSONArray != null) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("pN", this.f85646j);
                    jSONObject2.put("pF", jSONArray);
                    if (z10 && (aVarA = b.a(this.f85647k).a()) != null) {
                        jSONObject2.put("te", aVarA.f85627c);
                        jSONObject2.put("le", aVarA.f85625a);
                    }
                    EfsJSONLog efsJSONLog = new EfsJSONLog("fpsperf");
                    efsJSONLog.put("fps", jSONObject2);
                    EfsReporter reporter = PageManger.getReporter();
                    if (reporter != null) {
                        reporter.send(efsJSONLog);
                    }
                } catch (JSONException e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public final void a() {
        if (this.f85643g) {
            boolean z10 = PageManger.isDebug;
            return;
        }
        this.f85643g = true;
        if (PageManger.isDebug) {
            new StringBuilder("start, page is ").append(this.f85646j);
        }
        Choreographer.getInstance().removeFrameCallback(this.f85648l);
        Choreographer.getInstance().postFrameCallback(this.f85648l);
    }

    public final void b() {
        if (PageManger.isDebug) {
            new StringBuilder("stop, page is ").append(this.f85646j);
        }
        c();
        this.f85643g = false;
        this.f85644h = 0L;
        this.f85638b = 0L;
        this.f85639c = 0;
        Map<String, Double> map = this.f85642f;
        if (map != null) {
            map.clear();
        }
        this.f85640d = 0;
    }
}
