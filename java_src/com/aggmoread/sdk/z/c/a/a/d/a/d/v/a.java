package com.aggmoread.sdk.z.c.a.a.d.a.d.v;

import android.app.Activity;
import android.text.TextUtils;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.g;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.qq.e.comm.compliance.ApkDownloadComplianceInterface;
import com.qq.e.comm.compliance.DownloadConfirmCallBack;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f4760a = "AMHTAGGDT";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f4761b = true;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.a$a, reason: collision with other inner class name */
    static class C0159a implements com.aggmoread.sdk.z.c.a.a.e.d.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f4762a;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.a$a$a, reason: collision with other inner class name */
        class RunnableC0160a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ j f4763b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ byte[] f4764c;

            RunnableC0160a(j jVar, byte[] bArr) {
                this.f4763b = jVar;
                this.f4764c = bArr;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.b(this.f4763b, this.f4764c, C0159a.this.f4762a);
            }
        }

        C0159a(b bVar) {
            this.f4762a = bVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.d.e
        public void a(int i10, byte[] bArr, j jVar) {
            q.a(new RunnableC0160a(jVar, bArr));
        }
    }

    public interface b {
        void a(com.aggmoread.sdk.z.c.a.a.c.d dVar);

        void a(com.aggmoread.sdk.z.c.a.a.d.a.b bVar);
    }

    static class c implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.aggmoread.sdk.z.c.a.a.d.a.c f4766a;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.a$c$a, reason: collision with other inner class name */
        class C0161a implements com.aggmoread.sdk.z.c.a.a.d.a.c.b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Method f4767a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Object[] f4768b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Method f4769c;

            /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.a$c$a$a, reason: collision with other inner class name */
            class C0162a implements b {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.a.c.a f4770a;

                C0162a(C0161a c0161a, com.aggmoread.sdk.z.c.a.a.d.a.c.a aVar) {
                    this.f4770a = aVar;
                }

                @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.b
                public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
                    this.f4770a.a(dVar);
                }

                @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.b
                public void a(com.aggmoread.sdk.z.c.a.a.d.a.b bVar) {
                    this.f4770a.a(bVar);
                }
            }

            C0161a(c cVar, Method method, Object[] objArr, Method method2) {
                this.f4767a = method;
                this.f4768b = objArr;
                this.f4769c = method2;
            }

            @Override // com.aggmoread.sdk.z.c.a.a.d.a.c.b
            public void a(com.aggmoread.sdk.z.c.a.a.d.a.c.a aVar) {
                a.a(new C0162a(this, aVar), ((String) this.f4768b[2]) + "&resType=api");
            }

            @Override // com.aggmoread.sdk.z.c.a.a.d.a.c.b
            public void onCancel() {
                try {
                    e.b(a.f4760a, "dl cancel");
                    this.f4769c.invoke(this.f4768b[3], new Object[0]);
                } catch (IllegalAccessException | InvocationTargetException e10) {
                    e10.printStackTrace();
                }
            }

            @Override // com.aggmoread.sdk.z.c.a.a.d.a.c.b
            public void onConfirm() {
                try {
                    e.b(a.f4760a, "dl confirm");
                    this.f4767a.invoke(this.f4768b[3], new Object[0]);
                } catch (IllegalAccessException | InvocationTargetException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public c(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
            this.f4766a = cVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws IllegalAccessException, InvocationTargetException {
            try {
                e.a(a.f4760a, "mn = %s", method.getName());
                if ("onDownloadConfirm".equals(method.getName())) {
                    e.a(a.f4760a, " args[3] = %s", objArr[3]);
                    if (!DownloadConfirmCallBack.class.isInstance(objArr[3])) {
                        return null;
                    }
                    Method method2 = DownloadConfirmCallBack.class.getMethod("onConfirm", new Class[0]);
                    Method method3 = DownloadConfirmCallBack.class.getMethod("onCancel", new Class[0]);
                    com.aggmoread.sdk.z.c.a.a.d.a.c cVar = this.f4766a;
                    if (cVar == null) {
                        return null;
                    }
                    cVar.a((Activity) objArr[0], ((Integer) objArr[1]).intValue(), new C0161a(this, method2, objArr, method3));
                    return null;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                e.b(a.f4760a, "dce = " + e10);
            }
            Object objInvoke = method.invoke(this, objArr);
            e.a(a.f4760a, "t %s, r %s", this, objInvoke);
            return objInvoke;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:29:0x00f4  */
    public static void b(j jVar, byte[] bArr, b bVar) {
        String str = ";";
        if (jVar != null) {
            e.b(f4760a, "onError er " + jVar);
            bVar.a(new j(1001002005, "请求失败！"));
            return;
        }
        try {
            String str2 = new String(bArr, "UTF-8");
            JSONObject jSONObject = new JSONObject(str2);
            e.c(str2, "CD");
            if (!jSONObject.has("data")) {
                e.b(f4760a, "res null!");
                return;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            e.b(f4760a, "response = " + jSONObject2.toString());
            String string = jSONObject2.getString("appName");
            String string2 = jSONObject2.getString("authorName");
            long jOptLong = jSONObject2.optLong("apkPublishTime");
            long jOptLong2 = jSONObject2.optLong("fileSize");
            String string3 = jSONObject2.getString("privacyAgreement");
            String string4 = jSONObject2.getString("versionName");
            String string5 = jSONObject2.getString("iconUrl");
            if (TextUtils.isEmpty(string5)) {
                string5 = jSONObject2.getString("icon_url");
            }
            String str3 = string5;
            JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("permissions");
            ArrayList arrayList = new ArrayList();
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                int i10 = 0;
                while (i10 < jSONArrayOptJSONArray.length()) {
                    String string6 = jSONArrayOptJSONArray.getString(i10);
                    if (!TextUtils.isEmpty(string6)) {
                        if (string6.contains(str)) {
                            String[] strArrSplit = string6.split(str);
                            if (strArrSplit != null && strArrSplit.length > 0) {
                                e.b(f4760a, "length = " + strArrSplit.length);
                                for (int i11 = 0; i11 < strArrSplit.length; i11++) {
                                    e.b(f4760a, "arrs item " + strArrSplit[i11]);
                                    arrayList.add(strArrSplit[i11]);
                                }
                            }
                        } else {
                            arrayList.add(string6);
                        }
                    }
                    i10++;
                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                    str = str;
                }
            }
            g.a(arrayList);
            bVar.a(new com.aggmoread.sdk.z.c.a.a.d.a.b(string, string2, string4, jOptLong2, jOptLong, string3, arrayList, str3));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String a(Object obj) {
        try {
            if (ApkDownloadComplianceInterface.class.isInstance(obj)) {
                return String.valueOf(ApkDownloadComplianceInterface.class.getMethod("getApkInfoUrl", new Class[0]).invoke(obj, new Object[0]));
            }
            return null;
        } catch (Exception e10) {
            e.b(f4760a, "not found cls e = " + e10);
            return null;
        }
    }

    public static void a(b bVar, String str) {
        if (bVar == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            bVar.a(new j(1001002005, "请求地址为空"));
            return;
        }
        e.b(f4760a, "info = " + str);
        com.aggmoread.sdk.z.c.a.a.e.d.a(str, null, new C0159a(bVar));
    }

    public static void a(Object obj, com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
        e.a(f4760a, "ADC s = %s, l = %s, is = %s", obj, cVar, Boolean.valueOf(f4761b));
        if (cVar != null) {
            try {
                if (ApkDownloadComplianceInterface.class.isInstance(obj)) {
                    ApkDownloadComplianceInterface.class.getMethod("setDownloadConfirmListener", DownloadConfirmListener.class).invoke(obj, Proxy.newProxyInstance(DownloadConfirmListener.class.getClassLoader(), new Class[]{DownloadConfirmListener.class}, new c(cVar)));
                }
            } catch (Exception e10) {
                e.a(f4760a, "set err = %s", e10);
            }
        }
    }
}
