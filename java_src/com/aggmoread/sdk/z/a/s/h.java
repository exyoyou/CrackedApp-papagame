package com.aggmoread.sdk.z.a.s;

import com.aggmoread.sdk.z.a.m.p;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class h {

    static class a implements com.aggmoread.sdk.z.a.p.a.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f3934a;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.s.h$a$a, reason: collision with other inner class name */
        class RunnableC0099a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ b f3935b;

            RunnableC0099a(b bVar) {
                this.f3935b = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f3934a.a(this.f3935b);
            }
        }

        a(c cVar) {
            this.f3934a = cVar;
        }

        @Override // com.aggmoread.sdk.z.a.p.a.g
        public void a(int i10, byte[] bArr, com.aggmoread.sdk.z.a.g.f fVar) {
            com.aggmoread.sdk.z.a.d.d("CLKRJTAG", "onResponse enter , err = " + fVar);
            if (fVar == null) {
                if (bArr != null) {
                    try {
                        b bVar = new b();
                        String str = new String(bArr);
                        com.aggmoread.sdk.z.a.d.e(str, "request response");
                        JSONObject jSONObject = new JSONObject(str);
                        if (jSONObject.has("data")) {
                            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                            if (jSONObject2.has("clickid")) {
                                bVar.f3938a = jSONObject2.getString("clickid");
                            }
                            if (jSONObject2.has("dstlink")) {
                                bVar.f3939b = jSONObject2.getString("dstlink");
                            }
                            p.b(new RunnableC0099a(bVar));
                            return;
                        }
                        return;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("get clk err ,");
                        sb2.append(e10.getMessage());
                        return;
                    }
                }
                com.aggmoread.sdk.z.a.d.d("CLKRJTAG", "onResponse enter , response = " + ((Object) null));
            }
            this.f3934a.a(b.f3937c);
        }
    }

    public static class b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b f3937c = new b();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f3939b;

        public boolean a() {
            return this == f3937c;
        }

        public String toString() {
            return "ClickUrlResponseData{clickId='" + this.f3938a + "', clickUrl='" + this.f3939b + "'}";
        }
    }

    public static abstract class c {
        public abstract void a(b bVar);
    }

    public static void a(String str, c cVar) {
        com.aggmoread.sdk.z.a.p.a.a(str, null, new a(cVar));
    }
}
