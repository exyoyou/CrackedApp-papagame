package kwai.c;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.haima.hmcp.ConstantsInternal;
import com.papa91.common.BaseAppConfig;
import gc.d;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExecutorService f93886a = Executors.newFixedThreadPool(5);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f93887b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f93888c;

    public enum c {
        INSTANCE;


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final a f93905a = new a();

        c() {
        }
    }

    public void a(String str, fc.a aVar) {
        kc.a.a("HttpManager", "report log start eventName:" + aVar.f91175a);
        this.f93886a.execute(new b(this, aVar, str));
    }

    public synchronized void b(String str, d dVar) {
        if (this.f93888c) {
            return;
        }
        this.f93888c = true;
        kc.a.a("HttpManager", "register sdk start");
        this.f93886a.execute(new RunnableC1203a(str, dVar));
    }

    /* JADX INFO: renamed from: kwai.c.a$a, reason: collision with other inner class name */
    public class RunnableC1203a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f93889b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ d f93890c;

        public RunnableC1203a(String str, d dVar) {
            this.f93889b = str;
            this.f93890c = dVar;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            JSONObject jSONObject = new JSONObject();
            ec.c.e(jSONObject);
            kc.a.c("HttpManager", "register sdk request json:" + jSONObject.toString());
            new gc.b().b(this.f93889b, jSONObject.toString(), new C1204a());
        }

        /* JADX INFO: renamed from: kwai.c.a$a$a, reason: collision with other inner class name */
        public class C1204a implements gc.c {

            /* JADX INFO: renamed from: kwai.c.a$a$a$a, reason: collision with other inner class name */
            public class RunnableC1205a implements Runnable {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ fc.c f93893b;

                public RunnableC1205a(fc.c cVar) {
                    this.f93893b = cVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    gc.d dVar = RunnableC1203a.this.f93890c;
                    if (dVar != null) {
                        dVar.a(this.f93893b);
                    }
                }
            }

            /* JADX INFO: renamed from: kwai.c.a$a$a$b */
            public class b implements Runnable {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ fc.c f93895b;

                public b(fc.c cVar) {
                    this.f93895b = cVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    gc.d dVar = RunnableC1203a.this.f93890c;
                    if (dVar != null) {
                        dVar.a(0, this.f93895b.f91188b);
                    }
                }
            }

            /* JADX INFO: renamed from: kwai.c.a$a$a$c */
            public class c implements Runnable {
                public c() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    gc.d dVar = RunnableC1203a.this.f93890c;
                    if (dVar != null) {
                        dVar.a(0, "json parse error");
                    }
                }
            }

            /* JADX INFO: renamed from: kwai.c.a$a$a$d */
            public class d implements Runnable {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ fc.b f93898b;

                public d(fc.b bVar) {
                    this.f93898b = bVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    gc.d dVar = RunnableC1203a.this.f93890c;
                    if (dVar != null) {
                        fc.b bVar = this.f93898b;
                        dVar.a(bVar.f91185a, bVar.f91186b);
                    }
                }
            }

            public C1204a() {
            }

            @Override // gc.c
            public void a(String str) {
                kc.a.c("HttpManager", "register sdk success jsonResult:" + str);
                try {
                    fc.c cVar = new fc.c();
                    cVar.a(new JSONObject(str));
                    if (1 == cVar.f91187a) {
                        a.this.f93887b.post(new RunnableC1205a(cVar));
                    } else {
                        a.this.f93887b.post(new b(cVar));
                        kc.a.a("HttpManager", "register sdk success fail and error message :" + cVar.f91188b);
                    }
                } catch (JSONException e10) {
                    kc.a.c("HttpManager", "register sdk fail and json parse error:" + e10.getMessage());
                    e10.printStackTrace();
                    a.this.f93887b.post(new c());
                }
                a.this.f93888c = false;
            }

            @Override // gc.c
            public void a(fc.b bVar) {
                kc.a.a("HttpManager", "register sdk fail server error:" + bVar);
                a.this.f93888c = false;
                a.this.f93887b.post(new d(bVar));
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ fc.a f93900b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f93901c;

        public b(a aVar, fc.a aVar2, String str) {
            this.f93900b = aVar2;
            this.f93901c = str;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            JSONObject jSONObject = new JSONObject();
            ec.c.e(jSONObject);
            fc.a aVar = this.f93900b;
            ec.c.g(jSONObject, "actionType", aVar.f91175a);
            double d10 = aVar.f91176b;
            if (d10 >= 0.0d) {
                ec.c.f(jSONObject, "purchaseAmount", d10);
            }
            long j10 = aVar.f91177c;
            if (j10 > 0) {
                ec.c.f(jSONObject, "gameDuration", j10);
            }
            if (!TextUtils.isEmpty(aVar.f91178d)) {
                ec.c.g(jSONObject, "gameRoleName", aVar.f91178d);
            }
            int i10 = aVar.f91179e;
            if (i10 > 0) {
                ec.c.f(jSONObject, "gameGrade", i10);
            }
            int i11 = aVar.f91180f;
            if (i11 > 0) {
                ec.c.f(jSONObject, BaseAppConfig.KEY_VIP_LEVEL, i11);
            }
            int i12 = aVar.f91182h;
            if (i12 > 0) {
                ec.c.f(jSONObject, "server_type", i12);
            }
            int i13 = aVar.f91184j;
            if (i13 > 0) {
                ec.c.f(jSONObject, "behaviorChannel", i13);
            }
            JSONObject jSONObject2 = aVar.f91181g;
            if (!TextUtils.isEmpty("ext_params") && jSONObject2 != null) {
                try {
                    jSONObject.put("ext_params", jSONObject2);
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
            ec.c.g(jSONObject, "actionName", aVar.f91183i);
            kc.a.c("HttpManager", "report log request json:" + jSONObject.toString());
            new gc.b().b(this.f93901c, jSONObject.toString(), new C1206a());
        }

        /* JADX INFO: renamed from: kwai.c.a$b$a, reason: collision with other inner class name */
        public class C1206a implements gc.c {
            public C1206a() {
            }

            @Override // gc.c
            public void a(String str) {
                fc.c.b bVar;
                kc.a.c("HttpManager", "report log success jsonResult:" + str);
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    int iOptInt = jSONObject.optInt("result");
                    String strOptString = jSONObject.optString(ConstantsInternal.KEY_ERROR_MSG);
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                    if (jSONObjectOptJSONObject == null) {
                        String strOptString2 = jSONObject.optString("data");
                        if (!TextUtils.isEmpty(strOptString2)) {
                            try {
                                jSONObjectOptJSONObject = new JSONObject(strOptString2);
                            } catch (JSONException unused) {
                            }
                        }
                    }
                    if (jSONObjectOptJSONObject != null) {
                        bVar = new fc.c.b();
                        bVar.f91191a = jSONObjectOptJSONObject.optString("globalId");
                        bVar.f91192b = jSONObjectOptJSONObject.optBoolean("checkResult");
                        fc.c.a aVar = bVar.f91193c;
                        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("extMap");
                        aVar.getClass();
                        if (jSONObjectOptJSONObject2 != null) {
                            aVar.f91190a = jSONObjectOptJSONObject2.optBoolean("uploadOriginOaid", false);
                        }
                    } else {
                        bVar = null;
                    }
                    if (1 != iOptInt) {
                        kc.a.a("HttpManager", "report log fail error message :" + strOptString);
                        return;
                    }
                    kc.a.a("HttpManager", "report log success eventName:" + b.this.f93900b.f91175a);
                    ec.c.h(bVar.f91193c.f91190a);
                } catch (JSONException e10) {
                    kc.a.c("HttpManager", "report log fail json parse error:" + e10.getMessage());
                    e10.printStackTrace();
                }
            }

            @Override // gc.c
            public void a(fc.b bVar) {
                kc.a.a("HttpManager", "report log fail server error:" + bVar);
            }
        }
    }
}
