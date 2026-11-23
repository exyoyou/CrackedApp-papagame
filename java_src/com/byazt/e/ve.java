package com.byazt.e;

import android.text.TextUtils;
import com.byazt.bv.BaseConstants;
import com.byazt.gq.t;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.mgps.activity.TagGameListActivity_;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 443, 54})
public class ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f13263a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13264c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final List<String> f13265da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final JSONObject f13266i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final JSONObject f13267m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f13268n;
    public final int sl;
    public final long sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Object f13269t;
    public final String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final String f13270u;
    public final boolean uj;
    public final String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final JSONObject f13271x;
    public final boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final String f13272z;

    @com.byazt.zqa.c(c = {0, 1, 443, 24})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f13273a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f13274c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public Map<String, Object> f13275da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public JSONObject f13276i;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public String f13277m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f13278n;
        public JSONObject nu;
        public List<String> sl;
        public long sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f13279t;
        public String tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public Object f13280u;
        public String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public JSONObject f13281x;
        public String yp;
        public boolean uj = false;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public boolean f13282z = false;

        public c c(boolean z10) {
            this.f13282z = z10;
            return this;
        }

        public c tt(String str) {
            this.ve = str;
            return this;
        }

        public c uj(String str) {
            this.yp = str;
            return this;
        }

        public c ve(String str) {
            this.f13273a = str;
            return this;
        }

        public c c(String str) {
            this.tt = str;
            return this;
        }

        public c tt(long j10) {
            this.sp = j10;
            return this;
        }

        public c c(long j10) {
            this.f13278n = j10;
            return this;
        }

        public c tt(boolean z10) {
            this.uj = z10;
            return this;
        }

        public c c(JSONObject jSONObject) {
            this.f13281x = jSONObject;
            return this;
        }

        public c tt(JSONObject jSONObject) {
            this.f13276i = jSONObject;
            return this;
        }

        public c c(List<String> list) {
            this.sl = list;
            return this;
        }

        public c c(int i10) {
            this.f13279t = i10;
            return this;
        }

        public c c(Object obj) {
            this.f13280u = obj;
            return this;
        }

        public ve c() {
            if (TextUtils.isEmpty(this.f13274c)) {
                this.f13274c = BaseConstants.CATEGORY_UMENG;
            }
            JSONObject jSONObject = new JSONObject();
            if (this.f13281x == null) {
                this.f13281x = new JSONObject();
            }
            try {
                Map<String, Object> map = this.f13275da;
                if (map != null && !map.isEmpty()) {
                    for (Map.Entry<String, Object> entry : this.f13275da.entrySet()) {
                        if (!this.f13281x.has(entry.getKey())) {
                            this.f13281x.putOpt(entry.getKey(), entry.getValue());
                        }
                    }
                }
                if (this.f13282z) {
                    this.f13277m = this.ve;
                    JSONObject jSONObject2 = new JSONObject();
                    this.nu = jSONObject2;
                    if (this.uj) {
                        jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, this.f13281x.toString());
                    } else {
                        Iterator<String> itKeys = this.f13281x.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            this.nu.put(next, this.f13281x.get(next));
                        }
                    }
                    this.nu.put(PointParamKey.CATEGORY, this.f13274c);
                    this.nu.put(TagGameListActivity_.TAG_EXTRA, this.tt);
                    this.nu.put(HmInputMappingContent.FIELD_VALUE, this.f13278n);
                    this.nu.put("ext_value", this.sp);
                    if (!TextUtils.isEmpty(this.yp)) {
                        this.nu.put("refer", this.yp);
                    }
                    JSONObject jSONObject3 = this.f13276i;
                    if (jSONObject3 != null) {
                        this.nu = com.byazt.ki.tt.c(jSONObject3, this.nu);
                    }
                    if (this.uj) {
                        if (!this.nu.has("log_extra") && !TextUtils.isEmpty(this.f13273a)) {
                            this.nu.put("log_extra", this.f13273a);
                        }
                        this.nu.put(BaseConstants.EVENT_LABEL_IS_AD_EVENT, "1");
                    }
                }
                if (this.uj) {
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, this.f13281x.toString());
                    if (!jSONObject.has("log_extra") && !TextUtils.isEmpty(this.f13273a)) {
                        jSONObject.put("log_extra", this.f13273a);
                    }
                    jSONObject.put(BaseConstants.EVENT_LABEL_IS_AD_EVENT, "1");
                } else {
                    jSONObject.put(BaseConstants.EVENT_LABEL_EXTRA, this.f13281x);
                }
                if (!TextUtils.isEmpty(this.yp)) {
                    jSONObject.putOpt("refer", this.yp);
                }
                JSONObject jSONObject4 = this.f13276i;
                if (jSONObject4 != null) {
                    jSONObject = com.byazt.ki.tt.c(jSONObject4, jSONObject);
                }
                this.f13281x = jSONObject;
            } catch (Exception e10) {
                t.gt().c(e10, "DownloadEventModel build");
            }
            return new ve(this);
        }
    }

    public ve(c cVar) {
        this.f13264c = cVar.f13274c;
        this.tt = cVar.tt;
        this.ve = cVar.ve;
        this.uj = cVar.uj;
        this.f13268n = cVar.f13278n;
        this.f13263a = cVar.f13273a;
        this.sp = cVar.sp;
        this.f13271x = cVar.f13281x;
        this.f13266i = cVar.f13276i;
        this.f13265da = cVar.sl;
        this.sl = cVar.f13279t;
        this.f13269t = cVar.f13280u;
        this.yp = cVar.f13282z;
        this.f13272z = cVar.f13277m;
        this.f13267m = cVar.nu;
        this.f13270u = cVar.yp;
    }

    public String a() {
        return this.f13263a;
    }

    public String c() {
        return this.f13264c;
    }

    public List<String> da() {
        return this.f13265da;
    }

    public JSONObject i() {
        return this.f13266i;
    }

    public long n() {
        return this.f13268n;
    }

    public int sl() {
        return this.sl;
    }

    public long sp() {
        return this.sp;
    }

    public Object t() {
        return this.f13269t;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("category: ");
        sb2.append(this.f13264c);
        sb2.append("\ttag: ");
        sb2.append(this.tt);
        sb2.append("\tlabel: ");
        sb2.append(this.ve);
        sb2.append("\nisAd: ");
        sb2.append(this.uj);
        sb2.append("\tadId: ");
        sb2.append(this.f13268n);
        sb2.append("\tlogExtra: ");
        sb2.append(this.f13263a);
        sb2.append("\textValue: ");
        sb2.append(this.sp);
        sb2.append("\nextJson: ");
        sb2.append(this.f13271x);
        sb2.append("\nparamsJson: ");
        sb2.append(this.f13266i);
        sb2.append("\nclickTrackUrl: ");
        List<String> list = this.f13265da;
        sb2.append(list != null ? list.toString() : "");
        sb2.append("\teventSource: ");
        sb2.append(this.sl);
        sb2.append("\textraObject: ");
        Object obj = this.f13269t;
        sb2.append(obj != null ? obj.toString() : "");
        sb2.append("\nisV3: ");
        sb2.append(this.yp);
        sb2.append("\tV3EventName: ");
        sb2.append(this.f13272z);
        sb2.append("\tV3EventParams: ");
        JSONObject jSONObject = this.f13267m;
        sb2.append(jSONObject != null ? jSONObject.toString() : "");
        return sb2.toString();
    }

    public String tt() {
        return this.tt;
    }

    public boolean u() {
        return this.yp;
    }

    public boolean uj() {
        return this.uj;
    }

    public String ve() {
        return this.ve;
    }

    public JSONObject x() {
        return this.f13271x;
    }

    public String yp() {
        return this.f13272z;
    }

    public JSONObject z() {
        return this.f13267m;
    }
}
