package cn.fly.tools.a;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.C1293r;
import cn.fly.commons.CSCenter;
import cn.fly.commons.o;
import cn.fly.tools.FlyLog;
import cn.fly.tools.log.NLog;
import cn.fly.tools.utils.DH;
import com.sigmob.sdk.base.mta.PointCategory;
import com.umeng.analytics.pro.aw;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static f f1836a = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f1837c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f1838d = "not_inited";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f1839e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f1840b;

    private f(Context context) {
        String str;
        String str2;
        String str3;
        String strF = f();
        try {
            f1837c = System.currentTimeMillis();
            f1839e = g();
            boolean zC = c();
            boolean zA = a();
            boolean zB = b();
            boolean zD = d();
            boolean zIsDREnable = CSCenter.getInstance().isDREnable();
            int i10 = cn.fly.tools.b.c.a(context).d().ar().targetSdkVersion;
            int oSVersionIntForFly = DH.SyncMtd.getOSVersionIntForFly();
            boolean zE = C1293r.e();
            try {
                try {
                    boolean z10 = true;
                    boolean z11 = Looper.getMainLooper() == Looper.myLooper();
                    try {
                        a("inMa " + z11 + " 3nv " + zC + " 3xu: " + zB + ", 3xd: " + zA + ", dre: " + zIsDREnable + ", obf: " + zD + ", tar: " + i10 + ", api: " + oSVersionIntForFly + ", ovBklv: " + zE, strF, "constructor", aw.f84320a);
                        if (i10 < 30 || oSVersionIntForFly < 30) {
                            a("2x", new String[0]);
                            f1838d = "29nm";
                            this.f1840b = new g();
                        } else {
                            a("3xx", new String[0]);
                            if (!z11 && zC) {
                                a("30nv", new String[0]);
                                this.f1840b = e.a();
                                f1838d = "30nv";
                            }
                            if (this.f1840b == null && zIsDREnable && zA) {
                                b bVar = new b();
                                if (bVar.a(context)) {
                                    a("3xd", new String[0]);
                                    f1838d = "30df";
                                    this.f1840b = bVar;
                                }
                            }
                            if (!zB || zD) {
                                z10 = false;
                            }
                            if (this.f1840b == null && z10) {
                                if (zE) {
                                    d dVar = new d();
                                    if (dVar.a(context)) {
                                        a("36u", new String[0]);
                                        f1838d = "36us";
                                        this.f1840b = dVar;
                                    }
                                } else {
                                    c cVar = new c();
                                    if (cVar.a(context)) {
                                        a("3xu", new String[0]);
                                        f1838d = "30us";
                                        this.f1840b = cVar;
                                    }
                                }
                            }
                        }
                        if (this.f1840b != null) {
                            a("1", strF, "constructor", "inited");
                        } else {
                            a("0", strF, "constructor", "inited");
                        }
                    } catch (Throwable th) {
                        th = th;
                        str2 = "0";
                        str3 = "1";
                        str = "inited";
                        if (this.f1840b != null) {
                            a(str3, strF, "constructor", str);
                        } else {
                            a(str2, th, strF, "constructor", str);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    str = "inited";
                    str2 = "0";
                    str3 = "1";
                }
            } catch (Throwable th3) {
                th = th3;
                str3 = "1";
                str = "inited";
                str2 = "0";
            }
        } catch (Throwable th4) {
            th = th4;
            str = "inited";
            str2 = "0";
            str3 = "1";
        }
    }

    private static void a(HashMap<String, Object> map) {
    }

    private boolean c() {
        return ((Integer) cn.fly.commons.c.a("nv", 0)).intValue() == 1;
    }

    private boolean d() {
        return e();
    }

    private boolean e() {
        boolean z10 = true;
        try {
            if ("cn.fly.FlySDK".equals(FlySDK.class.getName()) && o.a("023ce6dlef7gVecdlVc;dkdfdfdk-eSfidledeled8feif0dj").equals(CSCenter.class.getName())) {
                z10 = false;
            }
        } catch (Throwable th) {
            a(th);
        }
        a("ck-cn: " + z10, new String[0]);
        return z10;
    }

    private String f() {
        try {
            return UUID.randomUUID().toString();
        } catch (Throwable unused) {
            return "00000000-0000-0000-0000-000000000000";
        }
    }

    private String g() {
        String str = "";
        try {
            final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
            DH.requester(FlySDK.getContext()).getSecurePch().request(new DH.DHResponder() { // from class: cn.fly.tools.a.f.1
                @Override // cn.fly.tools.utils.DH.DHResponder
                public void onResponse(DH.DHResponse dHResponse) throws Throwable {
                    linkedBlockingQueue.offer(dHResponse.getSecurePch());
                }
            });
            try {
                str = (String) linkedBlockingQueue.poll(1000L, TimeUnit.MILLISECONDS);
            } catch (Throwable th) {
                FlyLog.getInstance().e(th);
            }
        } catch (Throwable th2) {
            FlyLog.getInstance().e(th2);
        }
        return str;
    }

    public boolean b(Context context) {
        return b.b(context);
    }

    public static synchronized f a(Context context) {
        if (f1836a == null && context != null) {
            f1836a = new f(context);
        }
        return f1836a;
    }

    private static String c(Throwable th) {
        try {
            String name = th.getClass().getName();
            String strD = d(th);
            String string = th.getStackTrace().length > 0 ? th.getStackTrace()[0].toString() : "";
            Throwable cause = th;
            while (cause != null && cause.getCause() != null) {
                cause = cause.getCause();
            }
            if (cause == null || cause == th) {
                return NLog.getStackTraceString(th);
            }
            return name + ":" + strD + "\n" + string + "\n......\nCaused by:\n" + NLog.getStackTraceString(cause);
        } catch (Throwable unused) {
            return NLog.getStackTraceString(th);
        }
    }

    private static String d(Throwable th) {
        String message = th.getMessage();
        if (TextUtils.isEmpty(message)) {
            return "";
        }
        if (message.length() <= 200) {
            return message;
        }
        return message.substring(0, 200) + "\n[Message over limit size:200, cut!]";
    }

    public Class b(String str) throws Throwable {
        a aVar = this.f1840b;
        if (aVar != null) {
            return aVar.b(str);
        }
        return null;
    }

    private boolean b() {
        return ((Integer) cn.fly.commons.c.a(o.a("002Udgfi"), 0)).intValue() == 1;
    }

    private static String b(Throwable th) {
        try {
            String strC = c(th);
            return !TextUtils.isEmpty(strC) ? strC.substring(0, Math.min(strC.length(), 512)) : "";
        } catch (Throwable th2) {
            return "lmt stack err. msg: " + th2.getMessage();
        }
    }

    public <T> T a(Class cls, Object obj, String str, Class[] clsArr, Object[] objArr, Class<?> cls2, T t10) throws Throwable {
        String str2;
        if (this.f1840b == null) {
            return t10;
        }
        String strF = f();
        String string = "|";
        if (cls != null) {
            try {
                str2 = "|clz:" + cls.getName();
            } catch (Throwable unused) {
            }
        } else {
            str2 = "|";
        }
        try {
            string = str2 + "|";
            if (obj != null) {
                string = string + "rcv:" + obj.getClass().getName();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(string);
            sb2.append("|mn:");
            try {
                sb2.append(str);
                string = sb2.toString();
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
            string = str2;
        }
        String str3 = string;
        try {
            a("start" + str3, strF, o.a("0122di)e]dddkeh(fBfkfdgleedhed"), "step");
            T t11 = (T) this.f1840b.a(cls, obj, str, clsArr, objArr, cls2);
            if (t11 == null) {
                t11 = t10;
            }
            a(PointCategory.END, strF, o.a("012*di_eLdddkeh-f1fkfdgleedhed"), "step");
            return t11;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                a("exception" + str3, th, strF, o.a("0123diWe2dddkeh*fJfkfdgleedhed"), "step");
                throw th2;
            }
        }
    }

    public <T> T a(String str, Object obj, String str2, Class[] clsArr, Object[] objArr, Class<?> cls, T t10) throws Throwable {
        String string = "|";
        if (this.f1840b == null) {
            return t10;
        }
        String strF = f();
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("|");
            sb2.append("cn:");
            try {
                sb2.append(str);
                String string2 = sb2.toString();
                try {
                    string = string2 + "|";
                    if (obj != null) {
                        string = string + "rcv:" + obj.getClass().getName();
                    }
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(string);
                    sb3.append("|mn:");
                    try {
                        sb3.append(str2);
                        string = sb3.toString();
                    } catch (Throwable unused) {
                    }
                } catch (Throwable unused2) {
                    string = string2;
                }
            } catch (Throwable unused3) {
            }
        } catch (Throwable unused4) {
        }
        String str3 = string;
        try {
            a("start" + str3, strF, o.a("012,diNe?dddkeh>f-fkfdgleedhel"), "step");
            T t11 = (T) this.f1840b.a(str, obj, str2, clsArr, objArr, cls);
            if (t11 == null) {
                t11 = t10;
            }
            a(PointCategory.END, strF, o.a("012HdiOeUdddkeh'fXfkfdgleedhel"), "step");
            return t11;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                a("exception" + str3, th, strF, o.a("012=di*e?dddkeh7f=fkfdgleedhel"), "step");
                throw th2;
            }
        }
    }

    public <T> T a(String str) throws Throwable {
        if (this.f1840b == null) {
            return null;
        }
        String strF = f();
        String str2 = "|cn:" + str;
        try {
            a("start" + str2, strF, o.a("012ef[fgfkee>eFfi1idecf"), "step");
            T t10 = (T) this.f1840b.a(str);
            a(PointCategory.END, strF, o.a("012ef[fgfkeeMeNfiTidecf"), "step");
            return t10;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                a("exception" + str2, th, strF, o.a("012ef=fgfkeeGe2fi<idecf"), "step");
                throw th2;
            }
        }
    }

    public <T> T a(String str, String str2, Object obj, Class<?> cls, T t10) throws Throwable {
        String str3 = "|";
        if (this.f1840b == null) {
            return t10;
        }
        String strF = f();
        try {
            String str4 = "|cn:" + str;
            try {
                str4 = str4 + "|fn:" + str2;
                str3 = str4 + "|";
                if (obj != null) {
                    str3 = str3 + "rcv:" + obj.getClass().getName();
                }
            } catch (Throwable unused) {
                str3 = str4;
            }
        } catch (Throwable unused2) {
        }
        try {
            a("start" + str3, strF, o.a("009^ejKfiKfkgcdi_fg9dc"), "step");
            Object objA = this.f1840b.a(str, str2, obj, cls);
            if (objA != null) {
                t10 = (T) objA;
            }
            a(PointCategory.END, strF, o.a("009=ej4fiGfkgcdi5fgOdc"), "step");
            return t10;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                a("exception" + str3, th, strF, o.a("009Xej!fi*fkgcdiGfg=dc"), "step");
                throw th2;
            }
        }
    }

    public <T> T a(String str, Class[] clsArr, Object[] objArr) throws Throwable {
        if (this.f1840b == null) {
            return null;
        }
        String strF = f();
        String str2 = "|cn:" + str;
        try {
            a("start" + str2, strF, o.a("014ef[fgfkeeZe4fiOidecfEdhgl"), "step");
            T t10 = (T) this.f1840b.a(str, clsArr, objArr);
            a(PointCategory.END, strF, o.a("014ef=fgfkeeQeKfi;idecfWdhgl"), "step");
            return t10;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                a("exception" + str2, th, strF, o.a("014ef(fgfkee'e:fiAidecf?dhgl"), "step");
                throw th2;
            }
        }
    }

    public static void a(String str, String... strArr) {
        if (strArr != null) {
            HashMap map = new HashMap();
            int length = strArr.length;
            if (length > 0) {
                FlyLog.getInstance().d("[HH][BT] " + strArr[1] + " " + strArr[0] + " " + str, new Object[0]);
                map.put("uid", strArr[0]);
                if (length > 1) {
                    map.put(com.alipay.sdk.packet.d.f7195s, strArr[1]);
                }
                if (length > 2) {
                    map.put(strArr[2], str);
                }
                a((HashMap<String, Object>) map);
                return;
            }
            FlyLog.getInstance().d("[HH] " + str, new Object[0]);
            return;
        }
        FlyLog.getInstance().d("[HH] " + str, new Object[0]);
    }

    public static void a(String str, Throwable th, String... strArr) {
        if (strArr != null) {
            HashMap map = new HashMap();
            int length = strArr.length;
            if (length > 0) {
                String strB = th != null ? b(th) : "";
                NLog flyLog = FlyLog.getInstance();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("[HH][BT] ");
                sb2.append(strArr[1]);
                sb2.append(" ");
                sb2.append(strArr[0]);
                sb2.append(" ");
                sb2.append(str);
                sb2.append("\nexcMsg: ");
                sb2.append(th != null ? th.getMessage() : "");
                sb2.append("\nexcStk: ");
                sb2.append(strB);
                flyLog.d(sb2.toString(), new Object[0]);
                map.put("uid", strArr[0]);
                if (length > 1) {
                    map.put(com.alipay.sdk.packet.d.f7195s, strArr[1]);
                }
                if (length > 2) {
                    map.put(strArr[2], str);
                }
                if (th != null) {
                    map.put("excClz", th.getClass().getName());
                    map.put("excMsg", th.getMessage());
                    map.put("excStk", strB);
                }
                a((HashMap<String, Object>) map);
                return;
            }
            FlyLog.getInstance().d("[HH] " + str, new Object[0]);
            return;
        }
        FlyLog.getInstance().d("[HH] " + str, new Object[0]);
    }

    public static void a(Throwable th) {
        FlyLog.getInstance().d(th, "[HH] ", new Object[0]);
    }

    private boolean a() {
        return ((Integer) cn.fly.commons.c.a(o.a("002Sdcef"), 0)).intValue() == 1;
    }
}
