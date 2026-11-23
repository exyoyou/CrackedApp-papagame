package com.czhj.devicehelper.msaoaId;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;
import com.czhj.sdk.logger.SigmobLog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static InterfaceC0544a f25358a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f25359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f25360c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Class<?> f25361d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Class<?> f25362e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Class<?> f25363f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Class<?> f25364g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f25365h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final List<String> f25366i = new LinkedList<String>() { // from class: com.czhj.devicehelper.msaoaId.a.1
        {
            add("00000000-0000-0000-0000-000000000000");
            add("00000000000000000000000000000000");
        }
    };

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final List<String> f25367j = new LinkedList<String>() { // from class: com.czhj.devicehelper.msaoaId.a.2
        {
            add("msaoaidsec");
            add("nllvm1632808251147706677");
            add("nllvm1630571663641560568");
            add("nllvm1623827671");
        }
    };

    /* JADX INFO: renamed from: com.czhj.devicehelper.msaoaId.a$a, reason: collision with other inner class name */
    public interface InterfaceC0544a {
        void a(String str);
    }

    static class b implements InvocationHandler {
        b() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                if (!"OnSupport".equalsIgnoreCase(method.getName())) {
                    return null;
                }
                Method declaredMethod = a.f25362e.getDeclaredMethod("getOAID", new Class[0]);
                String unused = a.f25360c = objArr.length == 1 ? (String) declaredMethod.invoke(objArr[0], new Object[0]) : (String) declaredMethod.invoke(objArr[1], new Object[0]);
                if (a.f25358a != null) {
                    a.f25358a.a(a.f25360c);
                }
                SigmobLog.e("MdidSdkHelper oaid:" + a.f25360c);
                return null;
            } catch (Throwable unused2) {
                if (a.f25358a == null) {
                    return null;
                }
                a.f25358a.a(a.f25360c);
                return null;
            }
        }
    }

    static {
        e();
    }

    private static String d(Context context) {
        InputStream inputStreamOpen;
        try {
            String str = context.getPackageName() + ".cert.pem";
            AssetManager assets = context.getAssets();
            if (TextUtils.isEmpty(f25365h)) {
                inputStreamOpen = assets.open(str);
            } else {
                try {
                    inputStreamOpen = assets.open(f25365h);
                } catch (IOException unused) {
                    inputStreamOpen = assets.open(str);
                }
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen));
            StringBuilder sb2 = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return sb2.toString();
                }
                sb2.append(line);
                sb2.append('\n');
            }
        } catch (IOException unused2) {
            SigmobLog.d("loadPemFromAssetFile failed");
            return "";
        }
    }

    private static void e() {
        Iterator<String> it2 = f25367j.iterator();
        while (it2.hasNext()) {
            try {
                System.loadLibrary(it2.next());
                return;
            } catch (Throwable unused) {
            }
        }
    }

    private static void a(Context context) {
        try {
            d();
            if (context != null && f25364g != null && f25361d != null && f25362e != null) {
                if (TextUtils.isEmpty(f25360c)) {
                    b(context);
                    return;
                }
                InterfaceC0544a interfaceC0544a = f25358a;
                if (interfaceC0544a != null) {
                    interfaceC0544a.a(f25360c);
                    return;
                }
                return;
            }
            SigmobLog.e("OAID 读取类创建失败");
            InterfaceC0544a interfaceC0544a2 = f25358a;
            if (interfaceC0544a2 != null) {
                interfaceC0544a2.a(f25360c);
            }
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            InterfaceC0544a interfaceC0544a3 = f25358a;
            if (interfaceC0544a3 != null) {
                interfaceC0544a3.a(f25360c);
            }
        }
    }

    private static void b(Context context) {
        InterfaceC0544a interfaceC0544a;
        try {
            c(context);
            try {
                Class<?> cls = f25363f;
                if (cls != null && cls.getField("classLoader").get(f25363f) == null) {
                    f25363f.getDeclaredMethod("InitEntry", Context.class).invoke(f25363f, context);
                }
            } catch (Exception unused) {
            }
            int iIntValue = ((Integer) f25364g.getDeclaredMethod("InitSdk", Context.class, Boolean.TYPE, f25361d).invoke(null, context, Boolean.TRUE, Proxy.newProxyInstance(context.getClassLoader(), new Class[]{f25361d}, new b()))).intValue();
            SigmobLog.e("MdidSdkHelper ErrorCode : " + iIntValue);
            if (iIntValue == 1008614 || iIntValue == 1008610 || (interfaceC0544a = f25358a) == null) {
                return;
            }
            interfaceC0544a.a(f25360c);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            InterfaceC0544a interfaceC0544a2 = f25358a;
            if (interfaceC0544a2 != null) {
                interfaceC0544a2.a(f25360c);
            }
        }
    }

    private static void d() {
        try {
            f25364g = MdidSdkHelper.class;
            try {
                try {
                    try {
                        f25361d = IIdentifierListener.class;
                        f25362e = IdSupplier.class;
                    } catch (Exception unused) {
                        f25361d = Class.forName("com.bun.supplier.IIdentifierListener");
                        f25362e = Class.forName("com.bun.supplier.IdSupplier");
                        f25363f = Class.forName("com.bun.miitmdid.core.JLibrary");
                    }
                } catch (Exception unused2) {
                }
            } catch (Exception unused3) {
                f25361d = Class.forName("com.bun.miitmdid.core.IIdentifierListener");
                f25362e = Class.forName("com.bun.miitmdid.supplier.IdSupplier");
                f25363f = Class.forName("com.bun.miitmdid.core.JLibrary");
            }
        } catch (ClassNotFoundException e10) {
            SigmobLog.e(e10.getMessage());
        }
    }

    public static void a(Context context, InterfaceC0544a interfaceC0544a) {
        f25358a = interfaceC0544a;
        a(context);
    }

    public static void b(String str) {
        f25365h = str;
    }

    private static void c(Context context) {
        try {
            String strD = !TextUtils.isEmpty(f25359b) ? f25359b : d(context);
            if (TextUtils.isEmpty(strD)) {
                return;
            }
            f25364g.getDeclaredMethod("InitCert", Context.class, String.class).invoke(null, context, strD);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public static void a(String str) {
        f25359b = str;
    }
}
