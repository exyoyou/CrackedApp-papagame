package com.aggmoread.sdk.z.c.a.a.c;

import com.aggmoread.sdk.z.c.a.a.e.p;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class l {

    static class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f4385a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f4386b;

        a(Map map, e eVar) {
            this.f4385a = map;
            this.f4386b = eVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.l.d
        public void a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
            if (jVar == null && fVar != null) {
                com.aggmoread.sdk.z.c.a.a.e.e.b("S2S_TAG", "callback success ");
                this.f4386b.callback(l.b(this.f4385a, fVar));
            } else {
                com.aggmoread.sdk.z.c.a.a.e.e.b("S2S_TAG", "callback fail " + jVar);
                this.f4386b.callback(null);
            }
        }
    }

    static class b implements com.aggmoread.sdk.z.c.a.a.e.d.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f4387a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f4388b;

        b(d dVar, com.aggmoread.sdk.z.c.a.a.d.b.e eVar) {
            this.f4387a = dVar;
            this.f4388b = eVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.d.e
        public void a(int i10, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
            if (jVar != null) {
                this.f4387a.a(null, bArr, jVar);
                return;
            }
            if (i10 != 200) {
                this.f4387a.a(null, bArr, new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002001, "HTTP error，statusCode=" + i10));
                return;
            }
            if (bArr == null) {
                this.f4387a.a(null, bArr, new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002002, "HTTP error，response parse error."));
                return;
            }
            Map<Object, Object> mapF = com.aggmoread.sdk.z.c.a.a.b.f(bArr);
            if (mapF == null) {
                this.f4387a.a(null, bArr, new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002006, "HTTP error, response parse error, parse json."));
                return;
            }
            com.aggmoread.sdk.z.c.a.a.d.b.f fVar = new com.aggmoread.sdk.z.c.a.a.d.b.f(this.f4388b, mapF);
            com.aggmoread.sdk.z.c.a.a.d.b.j jVarC = fVar.c();
            if (jVarC != null) {
                this.f4387a.a(null, bArr, jVarC);
            } else {
                this.f4387a.a(fVar, bArr, null);
            }
        }
    }

    static class c implements com.aggmoread.sdk.z.c.a.a.e.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f4389a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f4390b;

        class a implements d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.c.a.a.e.b f4391a;

            a(c cVar, com.aggmoread.sdk.z.c.a.a.e.b bVar) {
                this.f4391a = bVar;
            }

            @Override // com.aggmoread.sdk.z.c.a.a.c.l.d
            public void a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
                if (bArr != null) {
                    this.f4391a.a(bArr);
                }
            }
        }

        class b implements d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.c.a.a.e.b f4392a;

            class a implements d {
                a() {
                }

                @Override // com.aggmoread.sdk.z.c.a.a.c.l.d
                public void a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
                    if (bArr != null) {
                        b.this.f4392a.a(bArr);
                    }
                }
            }

            b(com.aggmoread.sdk.z.c.a.a.e.b bVar) {
                this.f4392a = bVar;
            }

            @Override // com.aggmoread.sdk.z.c.a.a.c.l.d
            public void a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
                c.this.f4390b.a(fVar, bArr, jVar);
                l.b(c.this.f4389a, new a());
            }
        }

        c(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, d dVar) {
            this.f4389a = eVar;
            this.f4390b = dVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.b.c
        public void a(com.aggmoread.sdk.z.c.a.a.e.b bVar) {
            com.aggmoread.sdk.z.c.a.a.d.b.e eVar;
            d bVar2;
            Map<Object, Object> mapF;
            byte[] bArrB = bVar != null ? bVar.b() : null;
            com.aggmoread.sdk.z.c.a.a.d.b.f fVar = (bArrB == null || (mapF = com.aggmoread.sdk.z.c.a.a.b.f(bArrB)) == null) ? null : new com.aggmoread.sdk.z.c.a.a.d.b.f(this.f4389a, mapF);
            if (fVar == null || fVar.c() != null) {
                eVar = this.f4389a;
                bVar2 = new b(bVar);
            } else {
                this.f4390b.a(fVar, bArrB, null);
                long jB = ((long) l.b(fVar)) * 1000;
                long jCurrentTimeMillis = System.currentTimeMillis() - bVar.c();
                com.aggmoread.sdk.z.c.a.a.e.e.a("ct " + jCurrentTimeMillis + ", pct " + jB + ", db " + bVar.c());
                if (jCurrentTimeMillis < jB) {
                    return;
                }
                bVar.a((byte[]) null);
                eVar = this.f4389a;
                bVar2 = new a(this, bVar);
            }
            l.b(eVar, bVar2);
        }
    }

    private interface d {
        void a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar);
    }

    public interface e {
        void callback(f fVar);
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f4395a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f4396b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        int iB = fVar.f5004d.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.F);
        if (iB > 3600) {
            return 3600;
        }
        return iB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f b(Map map, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        f fVar2 = new f();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(1);
        fVar.d();
        String strA = fVar.f5003c.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5015a0, "");
        String strA2 = fVar.f5003c.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5023e0, "");
        int iB = fVar.f5003c.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5025f0);
        if (p.n(fVar)) {
            fVar.f5003c.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5029h0);
        }
        if (iB == 100) {
            String strA3 = com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.c().a(strA, strA2);
            String strA4 = com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.c().a((Map<String, Object>) map, strA2);
            sb2.append(strA3);
            fVar2.f4395a = sb2.toString();
            fVar2.f4396b = strA4;
        }
        return fVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, d dVar) {
        com.aggmoread.sdk.z.c.a.a.e.f fVar = new com.aggmoread.sdk.z.c.a.a.e.f(com.aggmoread.sdk.z.c.a.a.e.d.b(null));
        fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.d.f4983a, eVar.f4947c);
        fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.d.f4984b, eVar.f4953i);
        String strA = com.aggmoread.sdk.z.c.a.a.b.a(fVar.f5230a);
        HashMap map = new HashMap();
        map.put("Content-type", "application/json");
        map.put("tt", "1");
        try {
            com.aggmoread.sdk.z.c.a.a.e.d.a(com.aggmoread.sdk.z.c.a.a.d.b.k.a(), strA.getBytes("UTF-8"), map, new b(dVar, eVar));
        } catch (UnsupportedEncodingException unused) {
            dVar.a(null, null, new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002004, "HTTP error, request error"));
        }
    }

    private static void a(String str, d dVar) {
        com.aggmoread.sdk.z.c.a.a.d.b.e eVar = new com.aggmoread.sdk.z.c.a.a.d.b.e();
        eVar.f4953i = str;
        com.aggmoread.sdk.z.c.a.a.e.b bVarA = com.aggmoread.sdk.z.c.a.a.e.b.a("sc_" + eVar.f4953i);
        c cVar = new c(eVar, dVar);
        if (bVarA != null) {
            bVarA.a(cVar);
        } else {
            cVar.a(null);
        }
    }

    public static void a(String str, Map<String, Object> map, e eVar) {
        if (com.aggmoread.sdk.z.c.a.a.d.b.k.f5150t.booleanValue()) {
            a(str, new a(map, eVar));
        } else {
            eVar.callback(null);
        }
    }
}
