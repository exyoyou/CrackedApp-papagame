package com.aggmoread.sdk.z.b.c;

import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import com.aggmoread.sdk.z.a.d;
import com.aggmoread.sdk.z.a.g.f;
import com.aggmoread.sdk.z.a.i.h;
import com.aggmoread.sdk.z.a.m.p;
import com.aggmoread.sdk.z.a.s.e;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import com.baidu.mobads.sdk.internal.bn;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.c.a$a, reason: collision with other inner class name */
    static class C0110a implements com.aggmoread.sdk.z.a.p.a.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ h f4280a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.b.b.a f4281b;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.c.a$a$a, reason: collision with other inner class name */
        class RunnableC0111a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.b.a.a f4282b;

            RunnableC0111a(com.aggmoread.sdk.z.b.a.a aVar) {
                this.f4282b = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    new com.aggmoread.sdk.z.b.d.a().a(this.f4282b, (e) C0110a.this.f4280a);
                } catch (Throwable th) {
                    th.printStackTrace();
                    a.a(C0110a.this.f4280a, new f(50003, "SDK内部处理异常!   -->" + th.toString()));
                }
            }
        }

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.c.a$a$b */
        class b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.b.a.a f4284b;

            b(com.aggmoread.sdk.z.b.a.a aVar) {
                this.f4284b = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.a(this.f4284b, (com.aggmoread.sdk.z.a.l.a) C0110a.this.f4280a);
                } catch (Throwable th) {
                    th.printStackTrace();
                    a.a(C0110a.this.f4280a, new f(50003, "SDK内部处理异常!"));
                }
            }
        }

        C0110a(h hVar, com.aggmoread.sdk.z.b.b.a aVar) {
            this.f4280a = hVar;
            this.f4281b = aVar;
        }

        @Override // com.aggmoread.sdk.z.a.p.a.f
        public void a(int i10, JSONObject jSONObject, f fVar) {
            Handler handlerA;
            Runnable bVar;
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
                    a.a(this.f4280a, new f(MindUserHandle.f89947v, sb2.toString()));
                    return;
                }
                com.aggmoread.sdk.z.b.a.a aVarB = com.aggmoread.sdk.z.b.a.a.b(jSONObject);
                if (aVarB == null) {
                    a.a(this.f4280a, new f(MindUserHandle.f89947v, "无广告填充!"));
                    return;
                }
                if (aVarB.g()) {
                    aVarB.a(this.f4281b);
                    if (com.aggmoread.sdk.z.a.i.f.f3538b == this.f4281b.i()) {
                        handlerA = p.a();
                        bVar = new RunnableC0111a(aVarB);
                    } else if (com.aggmoread.sdk.z.a.i.f.f3539c == this.f4281b.i()) {
                        handlerA = p.a();
                        bVar = new b(aVarB);
                    }
                    handlerA.post(bVar);
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(aVarB.f4258c);
                    sb3.append(":");
                    if (!TextUtils.isEmpty(aVarB.f4259d)) {
                        strB = aVarB.f4259d;
                    }
                    sb3.append(strB);
                    a.a(this.f4280a, new f(MindUserHandle.f89947v, sb3.toString()));
                }
                d.d("DSPDRTAG", "onResponse: " + jSONObject);
            } catch (Throwable th) {
                th.printStackTrace();
                a.a(this.f4280a, new f(10004, "请求数据解析错误"));
            }
        }
    }

    static class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f f4286b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ h f4287c;

        b(f fVar, h hVar) {
            this.f4286b = fVar;
            this.f4287c = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.a("DSPDRTAG", "NFE %s", this.f4286b);
            this.f4287c.a(this.f4286b);
        }
    }

    public static void a(h hVar, f fVar) {
        p.a().post(new b(fVar, hVar));
    }

    public static void a(com.aggmoread.sdk.z.b.a.a aVar, com.aggmoread.sdk.z.a.l.a aVar2) {
        if (!aVar.f()) {
            aVar2.a(new f(MindUserHandle.f89947v, "无数据填充!"));
            return;
        }
        com.aggmoread.sdk.z.b.a.a.C0106a.C0107a c0107aA = aVar.f4260e.a();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.aggmoread.sdk.z.b.c.b(aVar, c0107aA));
        aVar2.onAdLoaded(arrayList);
    }

    public static void a(com.aggmoread.sdk.z.b.b.a aVar, h hVar) {
        d.d("DSPDRTAG", "loadData enter , Request = " + aVar);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("slotCode", aVar.k());
            jSONObject.put("request_id", aVar.n());
            jSONObject.put("slot_type", aVar.i().a());
            com.aggmoread.sdk.z.a.h.a aVarD = com.aggmoread.sdk.z.a.h.a.d();
            com.aggmoread.sdk.z.a.h.a.EnumC0074a enumC0074a = com.aggmoread.sdk.z.a.h.a.EnumC0074a.f3483c;
            jSONObject.put("imei", aVarD.a(enumC0074a).k());
            jSONObject.put("oaid", com.aggmoread.sdk.z.a.h.a.d().a(enumC0074a).t());
            jSONObject.put("os_type", "1");
            jSONObject.put(bn.f7598j, Build.BRAND);
            jSONObject.put(bn.f7597i, Build.MODEL);
            jSONObject.put("package_name", aVar.l().getPackageName());
            jSONObject.put("ip", com.aggmoread.sdk.z.a.p.e.b(aVar.l()));
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        String strE = k.e();
        d.d("DSPDRTAG", "getDspUrl() = " + strE);
        d.e(jSONObject.toString(), "getDspUrl() = Json ");
        com.aggmoread.sdk.z.a.p.a.a(strE, jSONObject, (Map<String, String>) null, new C0110a(hVar, aVar));
    }
}
