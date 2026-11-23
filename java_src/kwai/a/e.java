package kwai.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.kwai.monitor.log.TurboConfig;
import ec.d;
import ec.f;
import ec.g;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static String f93866k = "";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f93867l = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static String f93868m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static JSONObject f93869n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static boolean f93870o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile int f93871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<fc.a> f93872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f93873c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f93874d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f93875e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f93876f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f93877g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Handler f93878h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f93879i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile boolean f93880j;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar = e.this;
            if (eVar.c()) {
                eVar.f93878h.postDelayed(new d(eVar), 5000L);
            } else {
                eVar.f();
            }
        }
    }

    public enum c {
        INSTANCE;


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final e f93885a = new e(null);

        c() {
        }
    }

    public /* synthetic */ e(a aVar) {
        this();
    }

    public static synchronized String j() {
        JSONObject jSONObject = f93869n;
        if (jSONObject == null) {
            kc.a.a("TurboSDK", "mJsonObject is null");
            return "";
        }
        try {
            if (!jSONObject.optBoolean("enableGetCallback")) {
                return "";
            }
            String str = f93868m;
            if (str != null) {
                return str;
            }
            c cVar = c.INSTANCE;
            String strA = ec.c.a(cVar.f93885a.f93873c, "ks_callback");
            f93868m = strA;
            if (!TextUtils.isEmpty(strA)) {
                return f93868m;
            }
            try {
                String strA2 = lc.b.a(new File(cVar.f93885a.f93873c.getApplicationInfo().sourceDir));
                f93868m = strA2;
                ec.c.d(cVar.f93885a.f93873c, "ks_callback", strA2);
            } catch (Throwable th) {
                kc.a.b("TurboSDK", "get callback info error, error is " + th.getMessage());
            }
            String str2 = TextUtils.isEmpty(f93868m) ? "" : f93868m;
            f93868m = str2;
            return str2;
        } catch (Exception e10) {
            kc.a.a("TurboSDK", "querySwitchMessage  parse error" + e10.getMessage());
            return "";
        }
    }

    public static String k() {
        if (!TextUtils.isEmpty(f93866k)) {
            return f93866k;
        }
        String strA = ec.c.a(c.INSTANCE.f93885a.f93873c, "ks_global_id");
        f93866k = strA;
        return kc.c.b(strA);
    }

    public static String l() {
        if (!TextUtils.isEmpty(f93867l)) {
            return f93867l;
        }
        f93867l = hc.a.a(c.INSTANCE.f93885a.f93873c);
        kc.a.a("TurboSDK", "oaid:" + f93867l);
        return kc.c.b(f93867l);
    }

    public synchronized void a(TurboConfig turboConfig) {
        if (this.f93880j) {
            return;
        }
        this.f93880j = true;
        Context applicationContext = turboConfig.mContext.getApplicationContext();
        this.f93873c = applicationContext;
        this.f93874d = turboConfig.mAppId;
        this.f93875e = turboConfig.mAppName;
        this.f93876f = turboConfig.mChannel;
        this.f93877g = applicationContext.getPackageName();
        boolean z10 = turboConfig.mEnableDebug;
        kc.a.f92165a = "KS_LOG_1.0.17";
        kc.a.f92166b = z10;
        kc.a.f92167c = false;
        hc.a.a(this.f93873c);
        kwai.c.a aVar = kwai.c.a.c.INSTANCE.f93905a;
        aVar.f93886a.execute(new gc.a(aVar, "https://api.e.kuaishou.com/rest/config/client/v1/open/sdkGatherConfig", new g(this)));
    }

    public void b(fc.a aVar) {
        if (!this.f93880j) {
            String str = "onEvent sdk is not init, please init first eventName:" + aVar.f91175a;
            String.format("[%s]", kc.a.f92165a);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(String.format("[%s]: ", "TurboSDK"));
            sb2.append(str);
            return;
        }
        if (!f93870o) {
            this.f93872b.add(aVar);
            return;
        }
        if (e()) {
            kwai.c.a.c.INSTANCE.f93905a.a("https://ad.partner.gifshow.com/api/v2/sdk/log?token=dee6172daef74f0895c7d185956ac0a7", aVar);
            return;
        }
        kc.a.a("TurboSDK", "sdk is not init finish, cache add report later eventName:" + aVar.f91175a);
        this.f93872b.add(aVar);
        g();
    }

    public final boolean c() {
        return ec.c.m(l()) && ec.c.m(kc.c.a(this.f93873c));
    }

    public final synchronized boolean e() {
        if (this.f93879i) {
            return true;
        }
        this.f93879i = ec.c.j(this.f93873c, "ks_register_success", false);
        return this.f93879i;
    }

    public final void f() {
        kwai.c.a.c.INSTANCE.f93905a.b("https://api.e.kuaishou.com/rest/config/client/v1/open/globalId", new b());
    }

    public final synchronized void g() {
        if (e()) {
            boolean z10 = false;
            if (TextUtils.isEmpty(k())) {
                ec.c.b(this.f93873c);
                SharedPreferences sharedPreferences = ec.c.f90893c;
                long j10 = sharedPreferences != null ? sharedPreferences.getLong("ks_register_get_global_id_time", 0L) : 0L;
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (j10 == 0) {
                    ec.c.c(this.f93873c, "ks_register_get_global_id_time", jCurrentTimeMillis);
                } else if (jCurrentTimeMillis - j10 >= 259200000) {
                    ec.c.c(this.f93873c, "ks_register_get_global_id_time", jCurrentTimeMillis);
                    z10 = true;
                }
            }
            if (z10) {
                kwai.c.a.c.INSTANCE.f93905a.b("https://api.e.kuaishou.com/rest/config/client/v1/open/globalId", new f(this));
            }
            kwai.a.a.b.INSTANCE.f93865a.b(this.f93873c);
        } else {
            this.f93878h.postDelayed(new a(), c() ? 1000L : 0L);
        }
    }

    public final void h() {
        Iterator<fc.a> it2 = this.f93872b.iterator();
        while (it2.hasNext()) {
            kwai.c.a.c.INSTANCE.f93905a.a("https://ad.partner.gifshow.com/api/v2/sdk/log?token=dee6172daef74f0895c7d185956ac0a7", it2.next());
            it2.remove();
        }
    }

    public final synchronized void i() {
        int i10 = this.f93871a;
        this.f93871a = i10 + 1;
        if (i10 < 10) {
            g();
        }
    }

    public e() {
        this.f93871a = 0;
        this.f93872b = Collections.synchronizedList(new ArrayList());
        this.f93878h = new Handler(Looper.getMainLooper());
    }

    public class b implements gc.d {
        public b() {
        }

        @Override // gc.d
        public void a(fc.c cVar) {
            fc.c.b bVar;
            if (cVar == null || (bVar = cVar.f91189c) == null || !bVar.f91192b) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("register sdk fail :");
                sb2.append(cVar != null ? cVar.f91188b : null);
                kc.a.a("TurboSDK", sb2.toString());
                e.this.i();
                return;
            }
            kc.a.a("TurboSDK", "register sdk success");
            e.this.f93879i = true;
            e eVar = e.this;
            Context context = eVar.f93873c;
            boolean z10 = eVar.f93879i;
            ec.c.b(context);
            SharedPreferences sharedPreferences = ec.c.f90893c;
            if (sharedPreferences != null) {
                sharedPreferences.edit().putBoolean("ks_register_success", z10).apply();
            }
            String str = cVar.f91189c.f91191a;
            e.f93866k = str;
            ec.c.d(e.this.f93873c, "ks_global_id", str);
            c.INSTANCE.f93885a.b(new fc.a("EVENT_CONVERSION"));
            e.this.h();
            kwai.a.a.b.INSTANCE.f93865a.b(e.this.f93873c);
        }

        @Override // gc.d
        public void a(int i10, String str) {
            kc.a.a("TurboSDK", "register sdk onError errorCode:" + i10 + "-errorMsg:" + str);
            e.this.i();
        }
    }
}
