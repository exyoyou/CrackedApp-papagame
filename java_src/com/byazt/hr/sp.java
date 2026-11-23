package com.byazt.hr;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.join.mgps.activity.QuarkInstallAppActivity_;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 29, 91})
public class sp extends uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<n> f15068a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public c f15069da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f15070i;
    public String sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final String f15071x;

    @com.byazt.zqa.c(c = {0, 1, 29, 180})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f15073c;
        public String tt;
        public String ve;

        public c(String str, String str2, String str3) {
            this.f15073c = str;
            this.tt = str2;
            this.ve = str3;
        }
    }

    public sp(String str, String str2, String str3, String str4, int i10, String str5) {
        super(str, str2, str3, str4, i10);
        this.f15071x = QuarkInstallAppActivity_.COUNT_EXTRA;
        this.f15070i = "effective_time";
        this.sp = str5;
        if (TextUtils.isEmpty(str2)) {
            this.f15069da = new c("waterfall_show_freq", "waterfall_show_span", "waterfall_show_rule_id");
        } else {
            this.f15069da = new c("freq", "span", "rule_id");
        }
    }

    public void c(String str, int i10) {
        for (n nVar : sl()) {
            if (TextUtils.equals(nVar.ve(), str)) {
                nVar.tt(i10);
                return;
            }
        }
    }

    public String da() {
        try {
            JSONArray jSONArray = new JSONArray();
            for (n nVar : sl()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(this.f15069da.f15073c, nVar.c());
                jSONObject.put(this.f15069da.tt, nVar.tt());
                jSONObject.put(this.f15069da.ve, nVar.ve());
                jSONObject.put(QuarkInstallAppActivity_.COUNT_EXTRA, nVar.n());
                jSONObject.put("effective_time", nVar.uj());
                jSONArray.put(jSONObject);
            }
            this.sp = jSONArray.toString();
        } catch (JSONException e10) {
            m.c(e10);
        }
        return this.sp;
    }

    public String i() {
        try {
            JSONArray jSONArray = new JSONArray(this.sp);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                jSONObject.put(QuarkInstallAppActivity_.COUNT_EXTRA, 0);
                jSONObject.put("effective_time", a.c(jSONObject.getLong(this.f15069da.tt)));
            }
            this.sp = jSONArray.toString();
        } catch (JSONException e10) {
            m.c(e10);
        }
        return this.sp;
    }

    public synchronized List<n> sl() {
        sp spVarDa;
        try {
            List<n> list = this.f15068a;
            if (list != null && list.size() != 0) {
                return this.f15068a;
            }
            this.f15068a = new ArrayList();
            if (this.sp == null && (spVarDa = u.c().da(this.f15083c)) != null) {
                this.sp = spVarDa.sp;
            }
            if (TextUtils.isEmpty(this.sp)) {
                return this.f15068a;
            }
            try {
                JSONArray jSONArray = new JSONArray(this.sp);
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i10);
                    n nVar = new n();
                    String string = jSONObject.getString(this.f15069da.ve);
                    if (!TextUtils.isEmpty(string)) {
                        nVar.c(jSONObject.optInt(this.f15069da.f15073c));
                        nVar.c(jSONObject.optLong(this.f15069da.tt));
                        nVar.c(string);
                        if (jSONObject.has(QuarkInstallAppActivity_.COUNT_EXTRA)) {
                            nVar.tt(jSONObject.optInt(QuarkInstallAppActivity_.COUNT_EXTRA));
                        }
                        if (jSONObject.has("effective_time")) {
                            nVar.tt(jSONObject.optLong("effective_time"));
                        }
                        this.f15068a.add(nVar);
                    }
                }
            } catch (JSONException e10) {
                m.c(e10);
            }
            if (this.f15068a.size() > 0) {
                Collections.sort(this.f15068a, new Comparator<n>() { // from class: com.byazt.hr.sp.1
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                    public int compare(n nVar2, n nVar3) {
                        long jTt = nVar2.tt() - nVar3.tt();
                        if (jTt == 0) {
                            return 0;
                        }
                        return jTt > 0 ? 1 : -1;
                    }
                });
            }
            return this.f15068a;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.byazt.hr.uj
    public String toString() {
        return "BaseIntervalBean{waterfallId='" + this.f15083c + "', showRulesVersion='" + this.ve + "', timingMode=" + this.f15084n + "}IntervalFreqctlBean{freqctlRules=" + this.f15068a + ", freqctlRulesJson='" + this.sp + "'}";
    }

    public void c(String str, long j10) {
        for (n nVar : sl()) {
            if (TextUtils.equals(nVar.ve(), str)) {
                nVar.tt(j10);
                return;
            }
        }
    }
}
