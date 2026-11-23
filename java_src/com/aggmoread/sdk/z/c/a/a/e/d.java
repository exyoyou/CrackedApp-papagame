package com.aggmoread.sdk.z.c.a.a.e;

import android.content.Context;
import android.os.Build;
import com.sigmob.sdk.base.mta.PointCategory;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static b f5219a;

    private interface b {
        void a(String str, Map<String, String> map, e eVar);

        void a(String str, byte[] bArr, Map<String, String> map, e eVar);
    }

    private static class c implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private OkHttpClient f5220a;

        class a implements Callback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ e f5221a;

            a(c cVar, e eVar) {
                this.f5221a = eVar;
            }

            @Override // okhttp3.Callback
            public void onFailure(@NotNull Call call, @NotNull IOException iOException) {
                this.f5221a.a(-1, null, new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002005, "HTTP error, network error.", iOException));
            }

            @Override // okhttp3.Callback
            public void onResponse(@NotNull Call call, @NotNull Response response) throws IOException {
                com.aggmoread.sdk.z.c.a.a.d.b.j jVar;
                int iCode = response.code();
                byte[] bArr = null;
                if (iCode == 200) {
                    byte[] bArrBytes = response.body().bytes();
                    if ("POST".equals(call.request().method())) {
                        com.aggmoread.sdk.z.c.a.a.e.e.a(bArrBytes, "ok response");
                    }
                    jVar = null;
                    bArr = bArrBytes;
                } else {
                    jVar = new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002001, "HTTP error，statusCode=" + iCode);
                }
                this.f5221a.a(iCode, bArr, jVar);
            }
        }

        public c() {
            OkHttpClient.Builder builderNewBuilder = new OkHttpClient().newBuilder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            this.f5220a = builderNewBuilder.connectTimeout(20L, timeUnit).writeTimeout(10L, timeUnit).readTimeout(10L, timeUnit).retryOnConnectionFailure(true).build();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.d.b
        public void a(String str, Map<String, String> map, e eVar) {
            b(str, null, map, eVar);
        }

        public void b(String str, byte[] bArr, Map<String, String> map, e eVar) {
            Request.Builder builder = new Request.Builder();
            builder.url(str);
            builder.cacheControl(new CacheControl.Builder().noCache().build());
            if (map != null) {
                for (String str2 : map.keySet()) {
                    builder.addHeader(str2, map.get(str2));
                }
            }
            if (bArr != null) {
                builder.post(RequestBody.create((MediaType) null, bArr));
            } else {
                builder.get();
            }
            this.f5220a.newCall(builder.build()).enqueue(new a(this, eVar));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.d.b
        public void a(String str, byte[] bArr, Map<String, String> map, e eVar) {
            b(str, bArr, map, eVar);
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.e.d$d, reason: collision with other inner class name */
    private static class C0190d implements b {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.e.d$d$a */
        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f5222b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Map f5223c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ e f5224d;

            a(C0190d c0190d, String str, Map map, e eVar) {
                this.f5222b = str;
                this.f5223c = map;
                this.f5224d = eVar;
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
                com.aggmoread.sdk.z.c.a.a.d.b.j jVar;
                byte[] byteArray;
                int responseCode = -1;
                byte[] bArr = null;
                com.aggmoread.sdk.z.c.a.a.d.b.j jVar2 = null;
                bArr = null;
                bArr = null;
                bArr = null;
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f5222b).openConnection();
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setDoOutput(false);
                    httpURLConnection.setUseCaches(false);
                    Map map = this.f5223c;
                    if (map != null) {
                        for (String str : map.keySet()) {
                            httpURLConnection.setRequestProperty(str, (String) this.f5223c.get(str));
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
                        jVar2 = new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002001, "HTTP error，statusCode=" + responseCode);
                    }
                    jVar = jVar2;
                    bArr = byteArray;
                } catch (UnsupportedEncodingException e10) {
                    jVar = new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002002, "HTTP error, response encoding error.", e10);
                } catch (MalformedURLException e11) {
                    jVar = new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002004, "HTTP errror, url parse error.", e11);
                } catch (IOException e12) {
                    jVar = new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002005, "HTTP error, network error.", e12);
                } catch (Exception e13) {
                    jVar = new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002007, "HTTP error,other error.", e13);
                }
                this.f5224d.a(responseCode, bArr, jVar);
            }
        }

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.e.d$d$b */
        class b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f5225b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Map f5226c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ byte[] f5227d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ e f5228e;

            b(C0190d c0190d, String str, Map map, byte[] bArr, e eVar) {
                this.f5225b = str;
                this.f5226c = map;
                this.f5227d = bArr;
                this.f5228e = eVar;
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
                com.aggmoread.sdk.z.c.a.a.d.b.j jVar;
                byte[] byteArray;
                int responseCode = -1;
                byte[] bArr = null;
                com.aggmoread.sdk.z.c.a.a.d.b.j jVar2 = null;
                bArr = null;
                bArr = null;
                bArr = null;
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f5225b).openConnection();
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setUseCaches(false);
                    Map map = this.f5226c;
                    if (map != null) {
                        for (String str : map.keySet()) {
                            httpURLConnection.setRequestProperty(str, (String) this.f5226c.get(str));
                        }
                    }
                    httpURLConnection.setRequestProperty("Content-length", Integer.toString(this.f5227d.length));
                    httpURLConnection.connect();
                    httpURLConnection.getOutputStream().write(this.f5227d);
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
                        try {
                            com.aggmoread.sdk.z.c.a.a.e.e.a(byteArray, GrantCredentialsPermissionActivity.f89267i);
                        } catch (UnsupportedEncodingException e10) {
                            e = e10;
                            bArr = byteArray;
                            jVar = new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002002, "HTTP error, response encoding error.", e);
                            byteArray = bArr;
                            jVar2 = jVar;
                        } catch (MalformedURLException e11) {
                            e = e11;
                            bArr = byteArray;
                            jVar = new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002004, "HTTP errror, url parse error.", e);
                            byteArray = bArr;
                            jVar2 = jVar;
                        } catch (IOException e12) {
                            e = e12;
                            bArr = byteArray;
                            jVar = new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002005, "HTTP error, network error.", e);
                            byteArray = bArr;
                            jVar2 = jVar;
                        } catch (Exception e13) {
                            e = e13;
                            bArr = byteArray;
                            jVar = new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002007, "HTTP error,other error.", e);
                            byteArray = bArr;
                            jVar2 = jVar;
                        }
                    } else {
                        byteArray = null;
                        jVar2 = new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002001, "HTTP error，statusCode=" + responseCode);
                    }
                } catch (UnsupportedEncodingException e14) {
                    e = e14;
                } catch (MalformedURLException e15) {
                    e = e15;
                } catch (IOException e16) {
                    e = e16;
                } catch (Exception e17) {
                    e = e17;
                }
                this.f5228e.a(responseCode, byteArray, jVar2);
            }
        }

        private C0190d() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.d.b
        public void a(String str, Map<String, String> map, e eVar) {
            if (q.b(new a(this, str, map, eVar))) {
                return;
            }
            eVar.a(-1, null, new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002007, "thread err."));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.d.b
        public void a(String str, byte[] bArr, Map<String, String> map, e eVar) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTTAG", str);
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTTAG", "vo false");
            if (q.b(new b(this, str, map, bArr, eVar))) {
                return;
            }
            eVar.a(-1, null, new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002007, "thread err."));
        }
    }

    public interface e {
        void a(int i10, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar);
    }

    public static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("sha1");
            messageDigest.update(str.getBytes("UTF-8"));
            return a(messageDigest.digest());
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTTAG", "Exception " + e10.getMessage());
            return null;
        }
    }

    public static Map<Object, Object> b(Map<Object, Object> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        f fVar = new f(map);
        try {
            fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.d.f4987e, com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getPackageName());
            fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.d.f4985c, com.aggmoread.sdk.z.c.a.a.e.c.g());
            fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.d.f4993k, com.aggmoread.sdk.z.c.a.a.e.c.y());
            fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.d.f4988f, com.aggmoread.sdk.z.c.a.a.e.c.k());
            fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.d.f4995m, com.aggmoread.sdk.z.c.a.a.e.c.v());
            fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.d.f4989g, Build.BRAND);
            fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.d.f4990h, Build.MODEL);
            fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.d.f4991i, com.aggmoread.sdk.z.c.a.a.e.c.w());
            fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.d.f4992j, com.aggmoread.sdk.z.c.a.a.e.c.O());
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTTAG", "e = " + e10.getMessage());
        }
        return fVar.f5230a;
    }

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            int i10 = b10 & 255;
            if (i10 < 15) {
                stringBuffer.append("0");
            }
            stringBuffer.append(Integer.toHexString(i10));
        }
        return stringBuffer.toString().toUpperCase();
    }

    public static Map<Object, Object> a(Map<Object, Object> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        f fVar = new f(map);
        try {
            fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.c.f4975a, com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getPackageName());
            fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.c.f4976b, com.aggmoread.sdk.z.c.a.a.e.c.g());
            fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.c.f4977c, com.aggmoread.sdk.z.c.a.a.e.c.y());
            fVar.b(com.aggmoread.sdk.z.c.a.a.d.b.e.c.f4979e, com.aggmoread.sdk.z.c.a.a.e.c.k());
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTTAG", "e = " + e10.getMessage());
        }
        return fVar.f5230a;
    }

    public static void a(Context context) {
        try {
            Class.forName("okhttp3.OkHttpClient");
            f5219a = new c();
        } catch (ClassNotFoundException unused) {
            f5219a = new C0190d();
        }
    }

    public static void a(String str, Map<String, String> map, e eVar) {
        f5219a.a(str, map, eVar);
    }

    public static void a(String str, byte[] bArr, Map<String, String> map, e eVar) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTTAG", str);
        boolean zContains = str.contains("qd/r");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(PointCategory.REQUEST);
        sb2.append(zContains ? "-ads2" : "");
        com.aggmoread.sdk.z.c.a.a.e.e.a(bArr, sb2.toString());
        f5219a.a(str, bArr, map, eVar);
    }
}
