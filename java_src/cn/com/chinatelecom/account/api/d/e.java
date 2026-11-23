package cn.com.chinatelecom.account.api.d;

import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.ClientUtils;
import cn.com.chinatelecom.account.api.CtAuth;
import com.join.mgps.activity.TagGameListActivity_;
import com.umeng.analytics.pro.bm;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class e {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f857l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f860o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f862q;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f865t;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f868w;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f863r = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private StringBuffer f866u = new StringBuffer();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f848c = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f850e = "";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f859n = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f858m = "";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f861p = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f846a = k5.b.f92138b;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f867v = SystemClock.uptimeMillis();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f847b = a(System.currentTimeMillis());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f849d = CtAuth.mAppId;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f851f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f852g = Build.BRAND;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f853h = Build.MODEL;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f854i = "Android";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f855j = Build.VERSION.RELEASE;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f856k = ClientUtils.getSdkVersion();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f864s = "0";

    public e(String str) {
        this.f857l = str;
    }

    public e a(int i10) {
        this.f860o = i10;
        return this;
    }

    public e b(int i10) {
        this.f865t = i10;
        return this;
    }

    public e c(String str) {
        this.f858m = str;
        return this;
    }

    public e d(String str) {
        this.f859n = str;
        return this;
    }

    public e e(String str) {
        this.f861p = str;
        return this;
    }

    public e f(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f864s = str;
        }
        return this;
    }

    public e g(String str) {
        if (!TextUtils.isEmpty(str)) {
            StringBuffer stringBuffer = this.f866u;
            stringBuffer.append(str);
            stringBuffer.append(";");
        }
        return this;
    }

    public String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("v", this.f846a);
            jSONObject.put(bm.aM, this.f847b);
            jSONObject.put(TagGameListActivity_.TAG_EXTRA, this.f848c);
            jSONObject.put("ai", this.f849d);
            jSONObject.put("di", this.f850e);
            jSONObject.put("ns", this.f851f);
            jSONObject.put("br", this.f852g);
            jSONObject.put("ml", this.f853h);
            jSONObject.put(bm.f84421x, this.f854i);
            jSONObject.put("ov", this.f855j);
            jSONObject.put(x.a.f97582j, this.f856k);
            jSONObject.put("ri", this.f857l);
            jSONObject.put("api", this.f858m);
            jSONObject.put("p", this.f859n);
            jSONObject.put("rt", this.f860o);
            jSONObject.put("msg", this.f861p);
            jSONObject.put("st", this.f862q);
            jSONObject.put("tt", this.f863r);
            jSONObject.put("ot", this.f864s);
            jSONObject.put("rec", this.f865t);
            jSONObject.put("ep", this.f866u.toString());
            return jSONObject.toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public e a(String str) {
        this.f850e = str;
        return this;
    }

    public e b(long j10) {
        if (j10 > 0) {
            this.f862q = j10;
        }
        return this;
    }

    public String a() {
        return this.f857l;
    }

    public e b(String str) {
        this.f851f = str;
        return this;
    }

    public static String a(long j10) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.CHINA).format(new Date(j10));
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public void b() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.f868w = jUptimeMillis;
        if (this.f863r == -1) {
            this.f863r = jUptimeMillis - this.f867v;
        }
    }
}
