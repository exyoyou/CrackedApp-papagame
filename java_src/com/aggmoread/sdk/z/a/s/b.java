package com.aggmoread.sdk.z.a.s;

import android.os.Handler;
import android.text.TextUtils;
import com.aggmoread.sdk.z.a.m.p;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    static class a implements com.aggmoread.sdk.z.a.p.a.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.i.h f3879a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.h.c f3880b;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.s.b$a$a, reason: collision with other inner class name */
        class RunnableC0093a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.a.g.c f3881b;

            RunnableC0093a(com.aggmoread.sdk.z.a.g.c cVar) {
                this.f3881b = cVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    new g().a(this.f3881b, (com.aggmoread.sdk.z.a.s.e) a.this.f3879a);
                } catch (Throwable th) {
                    th.printStackTrace();
                    b.a(a.this.f3879a, new com.aggmoread.sdk.z.a.g.f(50003, "SDK内部处理异常!   -->" + th.toString()));
                }
            }
        }

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.s.b$a$b, reason: collision with other inner class name */
        class RunnableC0094b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.a.g.c f3883b;

            RunnableC0094b(com.aggmoread.sdk.z.a.g.c cVar) {
                this.f3883b = cVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    b.a(this.f3883b, (com.aggmoread.sdk.z.a.l.a) a.this.f3879a);
                } catch (Throwable th) {
                    th.printStackTrace();
                    b.a(a.this.f3879a, new com.aggmoread.sdk.z.a.g.f(50003, "SDK内部处理异常!"));
                }
            }
        }

        class c implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.a.g.c f3885b;

            c(com.aggmoread.sdk.z.a.g.c cVar) {
                this.f3885b = cVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    new com.aggmoread.sdk.z.a.o.b().a(this.f3885b, (com.aggmoread.sdk.z.a.s.c) a.this.f3879a);
                } catch (Throwable th) {
                    th.printStackTrace();
                    b.a(a.this.f3879a, new com.aggmoread.sdk.z.a.g.f(50003, "SDK内部处理异常!"));
                }
            }
        }

        class d implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.a.g.c f3887b;

            d(com.aggmoread.sdk.z.a.g.c cVar) {
                this.f3887b = cVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    b.a(this.f3887b, (com.aggmoread.sdk.z.a.k.a) a.this.f3879a);
                } catch (Throwable th) {
                    th.printStackTrace();
                    b.a(a.this.f3879a, new com.aggmoread.sdk.z.a.g.f(50003, "SDK内部处理异常!"));
                }
            }
        }

        class e implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.a.g.c f3889b;

            e(com.aggmoread.sdk.z.a.g.c cVar) {
                this.f3889b = cVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    b.a(this.f3889b, (com.aggmoread.sdk.z.a.f.a) a.this.f3879a);
                } catch (Throwable th) {
                    th.printStackTrace();
                    b.a(a.this.f3879a, new com.aggmoread.sdk.z.a.g.f(50003, "SDK内部处理异常!"));
                }
            }
        }

        class f implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.a.g.c f3891b;

            f(com.aggmoread.sdk.z.a.g.c cVar) {
                this.f3891b = cVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    new com.aggmoread.sdk.z.a.r.a().a(this.f3891b, (com.aggmoread.sdk.z.a.s.d) a.this.f3879a);
                } catch (Throwable th) {
                    th.printStackTrace();
                    b.a(a.this.f3879a, new com.aggmoread.sdk.z.a.g.f(50003, "SDK内部处理异常!   -->" + th.toString()));
                }
            }
        }

        a(com.aggmoread.sdk.z.a.i.h hVar, com.aggmoread.sdk.z.a.h.c cVar) {
            this.f3879a = hVar;
            this.f3880b = cVar;
        }

        @Override // com.aggmoread.sdk.z.a.p.a.f
        public void a(int i10, JSONObject jSONObject, com.aggmoread.sdk.z.a.g.f fVar) {
            Handler handlerA;
            Runnable fVar2;
            String strB = "无广告填充!";
            try {
                if (fVar != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(fVar.a());
                    sb2.append(":");
                    if (!TextUtils.isEmpty(fVar.b())) {
                        strB = fVar.b();
                    }
                    sb2.append(strB);
                    b.a(this.f3879a, new com.aggmoread.sdk.z.a.g.f(MindUserHandle.f89947v, sb2.toString()));
                    return;
                }
                com.aggmoread.sdk.z.a.g.c cVarB = com.aggmoread.sdk.z.a.g.c.b(jSONObject);
                if (cVarB == null) {
                    b.a(this.f3879a, new com.aggmoread.sdk.z.a.g.f(MindUserHandle.f89947v, "无广告填充!"));
                    return;
                }
                if (cVarB.g()) {
                    cVarB.a(this.f3880b);
                    if (com.aggmoread.sdk.z.a.i.f.f3538b == this.f3880b.i()) {
                        handlerA = p.a();
                        fVar2 = new RunnableC0093a(cVarB);
                    } else if (com.aggmoread.sdk.z.a.i.f.f3539c == this.f3880b.i()) {
                        handlerA = p.a();
                        fVar2 = new RunnableC0094b(cVarB);
                    } else if (com.aggmoread.sdk.z.a.i.f.f3542f == this.f3880b.i()) {
                        handlerA = p.a();
                        fVar2 = new c(cVarB);
                    } else if (com.aggmoread.sdk.z.a.i.f.f3540d == this.f3880b.i()) {
                        handlerA = p.a();
                        fVar2 = new d(cVarB);
                    } else if (com.aggmoread.sdk.z.a.i.f.f3541e == this.f3880b.i()) {
                        handlerA = p.a();
                        fVar2 = new e(cVarB);
                    } else if (com.aggmoread.sdk.z.a.i.f.f3543g == this.f3880b.i()) {
                        handlerA = p.a();
                        fVar2 = new f(cVarB);
                    }
                    handlerA.post(fVar2);
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(cVarB.f3378c);
                    sb3.append(":");
                    if (!TextUtils.isEmpty(cVarB.f3379d)) {
                        strB = cVarB.f3379d;
                    }
                    sb3.append(strB);
                    b.a(this.f3879a, new com.aggmoread.sdk.z.a.g.f(MindUserHandle.f89947v, sb3.toString()));
                }
                com.aggmoread.sdk.z.a.d.d("ADRIML", "onResponse: " + jSONObject);
            } catch (Throwable th) {
                th.printStackTrace();
                b.a(this.f3879a, new com.aggmoread.sdk.z.a.g.f(10004, "请求数据解析错误"));
            }
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.s.b$b, reason: collision with other inner class name */
    static class RunnableC0095b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.f f3893b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.i.h f3894c;

        RunnableC0095b(com.aggmoread.sdk.z.a.g.f fVar, com.aggmoread.sdk.z.a.i.h hVar) {
            this.f3893b = fVar;
            this.f3894c = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.aggmoread.sdk.z.a.d.a("ADRIML", "NFE %s", this.f3893b);
            this.f3894c.a(this.f3893b);
        }
    }

    public static void a(com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.f.a aVar) {
        if (!cVar.f()) {
            aVar.a(new com.aggmoread.sdk.z.a.g.f(MindUserHandle.f89947v, "无数据填充!"));
            return;
        }
        com.aggmoread.sdk.z.a.g.c.a.b bVarB = cVar.f3380e.get(0).b();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.aggmoread.sdk.z.a.f.c(cVar, bVarB, aVar));
        aVar.onAdLoaded(arrayList);
    }

    public static void a(com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.k.a aVar) {
        if (!cVar.f()) {
            aVar.a(new com.aggmoread.sdk.z.a.g.f(MindUserHandle.f89947v, "无数据填充!"));
            return;
        }
        com.aggmoread.sdk.z.a.g.c.a.b bVarB = cVar.f3380e.get(0).b();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.aggmoread.sdk.z.a.k.b(cVar, bVarB, aVar));
        aVar.onAdLoaded(arrayList);
    }

    public static void a(com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.l.a aVar) {
        if (!cVar.f()) {
            aVar.a(new com.aggmoread.sdk.z.a.g.f(MindUserHandle.f89947v, "无数据填充!"));
            return;
        }
        com.aggmoread.sdk.z.a.g.c.a.b bVarB = cVar.f3380e.get(0).b();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.aggmoread.sdk.z.a.l.d(cVar, bVarB));
        aVar.onAdLoaded(arrayList);
    }

    public static void a(com.aggmoread.sdk.z.a.h.c cVar, com.aggmoread.sdk.z.a.i.h hVar) {
        com.aggmoread.sdk.z.a.d.d("ADRIML", "loadData enter , Request = " + cVar);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("requestId", cVar.n());
            jSONObject.put("device", new com.aggmoread.sdk.z.a.g.e().a(cVar.l()));
            jSONObject.put("network", new com.aggmoread.sdk.z.a.g.g().a(cVar.l()));
            jSONObject.put("channelId", cVar.k());
            jSONObject.put("pageInfo", new JSONObject());
            jSONObject.put("apiType", "sdk");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        String strB = com.aggmoread.sdk.z.c.a.a.e.p.b(cVar.s() ? "http://a.wearewinner.cn:15921/api/test/ads" : "http://a.wearewinner.cn:15921/api/ads");
        com.aggmoread.sdk.z.a.d.d("ADRIML", "json : " + jSONObject.toString());
        com.aggmoread.sdk.z.a.d.e(jSONObject.toString(), "getApiUrl() = " + strB);
        com.aggmoread.sdk.z.a.p.a.a(strB, jSONObject, (Map<String, String>) null, new a(hVar, cVar));
    }

    public static void a(com.aggmoread.sdk.z.a.i.h hVar, com.aggmoread.sdk.z.a.g.f fVar) {
        p.a().post(new RunnableC0095b(fVar, hVar));
    }
}
