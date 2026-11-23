package com.aggmoread.sdk.z.a.p;

import com.aggmoread.sdk.z.a.m.p;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.p.a$a, reason: collision with other inner class name */
    static class C0084a implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f3772a;

        C0084a(f fVar) {
            this.f3772a = fVar;
        }

        @Override // com.aggmoread.sdk.z.a.p.a.g
        public void a(int i10, byte[] bArr, com.aggmoread.sdk.z.a.g.f fVar) {
            JSONObject jSONObject = null;
            if (fVar == null) {
                if (bArr == null) {
                    return;
                }
                try {
                    jSONObject = new JSONObject(new String(bArr, "UTF-8"));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            this.f3772a.a(i10, jSONObject, fVar);
        }
    }

    static class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3773b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f3774c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ byte[] f3775d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ g f3776e;

        b(String str, Map map, byte[] bArr, g gVar) {
            this.f3773b = str;
            this.f3774c = map;
            this.f3775d = bArr;
            this.f3776e = gVar;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.lang.Runnable
        public void run() {
            com.aggmoread.sdk.z.a.g.f fVar;
            byte[] bytes;
            int responseCode = -1;
            byte[] bArr = null;
            com.aggmoread.sdk.z.a.g.f fVar2 = null;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f3773b).openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setUseCaches(false);
                Map map = this.f3774c;
                if (map != null) {
                    for (String str : map.keySet()) {
                        httpURLConnection.setRequestProperty(str, (String) this.f3774c.get(str));
                    }
                }
                httpURLConnection.setRequestProperty("Content-length", Integer.toString(this.f3775d.length));
                httpURLConnection.connect();
                httpURLConnection.getOutputStream().write(this.f3775d);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr2 = new byte[1024];
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                    while (true) {
                        int i10 = bufferedInputStream.read(bArr2, 0, 1024);
                        if (i10 <= 0) {
                            break;
                        } else {
                            byteArrayOutputStream.write(bArr2, 0, i10);
                        }
                    }
                    String str2 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                    com.aggmoread.sdk.z.a.d.e(str2, "api response");
                    bytes = str2.getBytes();
                } else {
                    bytes = null;
                    fVar2 = new com.aggmoread.sdk.z.a.g.f(10005, "HTTP error，statusCode=" + responseCode);
                }
                fVar = fVar2;
                bArr = bytes;
            } catch (Exception e10) {
                fVar = new com.aggmoread.sdk.z.a.g.f(10005, "HTTP error, response encoding error." + e10.getMessage());
            }
            this.f3776e.a(responseCode, bArr, fVar);
        }
    }

    static class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3777b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f3778c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ g f3779d;

        c(String str, Map map, g gVar) {
            this.f3777b = str;
            this.f3778c = map;
            this.f3779d = gVar;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.lang.Runnable
        public void run() {
            com.aggmoread.sdk.z.a.g.f fVar;
            byte[] byteArray;
            int responseCode = -1;
            byte[] bArr = null;
            com.aggmoread.sdk.z.a.g.f fVar2 = null;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f3777b).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoOutput(false);
                httpURLConnection.setUseCaches(false);
                Map map = this.f3778c;
                if (map != null) {
                    for (String str : map.keySet()) {
                        httpURLConnection.setRequestProperty(str, (String) this.f3778c.get(str));
                    }
                }
                httpURLConnection.connect();
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr2 = new byte[1024];
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                    while (true) {
                        int i10 = bufferedInputStream.read(bArr2, 0, 1024);
                        if (i10 <= 0) {
                            break;
                        } else {
                            byteArrayOutputStream.write(bArr2, 0, i10);
                        }
                    }
                    byteArray = byteArrayOutputStream.toByteArray();
                } else {
                    byteArray = null;
                    fVar2 = new com.aggmoread.sdk.z.a.g.f(10005, "HTTP error，statusCode=" + responseCode);
                }
                fVar = fVar2;
                bArr = byteArray;
            } catch (Exception e10) {
                fVar = new com.aggmoread.sdk.z.a.g.f(10005, "HTTP error, response encoding error." + e10.getMessage());
            }
            this.f3779d.a(responseCode, bArr, fVar);
        }
    }

    static class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3780b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ JSONObject f3781c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Map f3782d;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.p.a$d$a, reason: collision with other inner class name */
        class C0085a implements com.aggmoread.sdk.z.a.h.b.a {
            C0085a(d dVar) {
            }
        }

        d(String str, JSONObject jSONObject, Map map, f fVar) {
            this.f3780b = str;
            this.f3781c = jSONObject;
            this.f3782d = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.aggmoread.sdk.z.a.h.a.d().c().a(this.f3780b, this.f3781c, this.f3782d, new C0085a(this));
        }
    }

    static class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3783b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f3784c;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.p.a$e$a, reason: collision with other inner class name */
        class C0086a implements com.aggmoread.sdk.z.a.h.b.a {
            C0086a(e eVar) {
            }
        }

        e(String str, Map map, g gVar) {
            this.f3783b = str;
            this.f3784c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.aggmoread.sdk.z.a.h.a.d().c().a(this.f3783b, this.f3784c, new C0086a(this));
        }
    }

    public interface f {
        void a(int i10, JSONObject jSONObject, com.aggmoread.sdk.z.a.g.f fVar);
    }

    public interface g {
        void a(int i10, byte[] bArr, com.aggmoread.sdk.z.a.g.f fVar);
    }

    public static void a(String str, Map<String, String> map, g gVar) {
        if (!com.aggmoread.sdk.z.a.h.a.d().g() || com.aggmoread.sdk.z.a.h.a.d().c() == null) {
            p.a(new c(str, map, gVar));
        } else {
            b(str, map, gVar);
        }
    }

    private static void b(String str, Map<String, String> map, g gVar) {
        p.a(new e(str, map, gVar));
    }

    public static void a(String str, JSONObject jSONObject, Map<String, String> map, f fVar) {
        if (com.aggmoread.sdk.z.a.h.a.d().g() && com.aggmoread.sdk.z.a.h.a.d().c() != null) {
            b(str, jSONObject, map, fVar);
            return;
        }
        try {
            byte[] bytes = jSONObject.toString().getBytes("UTF-8");
            if (map == null) {
                map = new HashMap<>();
            }
            map.put("Content-type", "application/json");
            a(str, bytes, map, new C0084a(fVar));
        } catch (UnsupportedEncodingException unused) {
        }
    }

    private static void b(String str, JSONObject jSONObject, Map<String, String> map, f fVar) {
        p.a(new d(str, jSONObject, map, fVar));
    }

    public static void a(String str, byte[] bArr, Map<String, String> map, g gVar) {
        p.a(new b(str, map, bArr, gVar));
    }
}
