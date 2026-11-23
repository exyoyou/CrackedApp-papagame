package cn.fly.tools.b;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Looper;
import android.text.TextUtils;
import cn.fly.commons.CSCenter;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.ReflectHelper;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes7.dex */
public class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static e f1873b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f1874a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f1875c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PackageManager f1876d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f1877e = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ConcurrentHashMap<String, Integer> f1878f = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ConcurrentHashMap<String, Long> f1879g = new ConcurrentHashMap<>();

    private e(Context context) {
        this.f1874a = context;
        FlyLog.getInstance().d("[DH] def syi loaded", new Object[0]);
    }

    public static e a(Context context) {
        if (f1873b == null) {
            synchronized (e.class) {
                if (f1873b == null) {
                    f1873b = new e(context);
                }
            }
        }
        return f1873b;
    }

    public ResolveInfo b(Intent intent, int i10) {
        if (cn.fly.commons.e.b()) {
            return (ResolveInfo) ReflectHelper.invokeInstanceMethod(this.f1874a.getPackageManager(), x.b("015JciAeSehcj f[cc+e.ecCbh!chccch@hRdb"), new Object[]{intent, Integer.valueOf(i10)}, new Class[]{Intent.class, Integer.TYPE}, null);
        }
        return null;
    }

    public int c() {
        if (DH.SyncMtd.getOSVersionIntForFly() < 24 || !DH.SyncMtd.checkPermission(x.b("035cdHcbcicjchcbckOie'cicechehehchcj6d'ckfifhecekcgfkejfgdffhcgdkebecebfh"))) {
            return -1;
        }
        if (!CSCenter.getInstance().isPhoneStateDataEnable()) {
            return CSCenter.getInstance().getNetworkType();
        }
        if (this.f1875c == null) {
            this.f1875c = DH.SyncMtd.getSystemServiceSafe(x.b("005ig>cj de"));
        }
        return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(this.f1875c, x.b("018Idi0ehFek@chc df>ehVefcjcidgebdbPie"), -1, new Object[0])).intValue();
    }

    public ApplicationInfo d() {
        return this.f1874a.getApplicationInfo();
    }

    public Object b(String str) {
        Object systemServiceSafe;
        if (cn.fly.commons.e.f() && cn.fly.tools.utils.e.a().a(str) && (systemServiceSafe = DH.SyncMtd.getSystemServiceSafe(x.b("008f%cjAbch;chcj_d"))) != null) {
            return ReflectHelper.invokeInstanceMethodNoThrow(systemServiceSafe, x.b("020^diVeh3ed5cAeh:h+hb(d_cjef_d?edcj0bch5chcj6d"), null, str);
        }
        return null;
    }

    public String a(String str) {
        return a(str, "");
    }

    public String a(String str, String str2) {
        Object objInvokeStaticMethodNoThrow = ReflectHelper.invokeStaticMethodNoThrow(ReflectHelper.importClassNoThrow(x.b("027cd'cbcicjchcbckcjehckdkdbeh4he7cefkcicjBie%ciXhRch5eJeh"), null), x.b("003Qdi=eh"), str2, str);
        return objInvokeStaticMethodNoThrow != null ? String.valueOf(objInvokeStaticMethodNoThrow) : str2;
    }

    public int b() {
        if (!c.a(this.f1874a).d().e(x.b("035cd]cbcicjchcbckDie7cicechehehchcjYdXckfifhecekcgfkejfgdffhcgdkebecebfh"))) {
            return -1;
        }
        if (CSCenter.getInstance().isPhoneStateDataEnable()) {
            if (this.f1875c == null) {
                this.f1875c = DH.SyncMtd.getSystemServiceSafe(x.b("005igMcj$de"));
            }
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(this.f1875c, x.b("014XdiBeh'df'eh[efcjcidgebdb$ie"), -1, new Object[0])).intValue();
        }
        return CSCenter.getInstance().getNetworkType();
    }

    public Enumeration<NetworkInterface> a() {
        try {
            return NetworkInterface.getNetworkInterfaces();
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return null;
        }
    }

    public List<ResolveInfo> a(Intent intent, int i10) {
        if (cn.fly.commons.e.b()) {
            return (List) ReflectHelper.invokeInstanceMethod(this.f1874a.getPackageManager(), x.b("019:cdcf9e_cidbdd>dhedh$dkTeBciccch0be$eh"), new Object[]{intent, Integer.valueOf(i10)}, new Class[]{Intent.class, Integer.TYPE}, null);
        }
        return null;
    }

    public Object a(String str, int i10, boolean z10) throws Throwable {
        if (this.f1876d == null) {
            this.f1876d = this.f1874a.getPackageManager();
        }
        if (z10) {
            return DH.SyncMtd.invokeInstanceMethod(this.f1876d, x.b("014>di2ehRfk+cb:dgWc_diIe8dd^dHdecj"), new Object[]{str, Integer.valueOf(i10)}, new Class[]{String.class, Integer.TYPE});
        }
        boolean zEquals = str.equals(DH.SyncMtd.getPackageName());
        if (!zEquals && !cn.fly.commons.e.b()) {
            return null;
        }
        if (DH.SyncMtd.getOSVersionIntForFly() > 25 && !zEquals) {
            Object objA = l.a(this.f1874a, str, i10);
            return objA == null ? DH.SyncMtd.invokeInstanceMethod(this.f1876d, x.b("014Odi%ehCfkEcb@dg-c_diIeQddYd?decj"), new Object[]{str, Integer.valueOf(i10)}, new Class[]{String.class, Integer.TYPE}) : objA;
        }
        return DH.SyncMtd.invokeInstanceMethod(this.f1876d, x.b("014Udi)ehAfkScbEdgJcZdi=eGdd>dGdecj"), new Object[]{str, Integer.valueOf(i10)}, new Class[]{String.class, Integer.TYPE});
    }

    public void a(String str, long j10, float f10, Object obj) {
        if (cn.fly.commons.e.e()) {
            try {
                if (cn.fly.tools.utils.e.a().a(str)) {
                    Object systemServiceSafe = DH.SyncMtd.getSystemServiceSafe(x.b("008fPcj3bchDchcjJd"));
                    Class<?> cls = Class.forName(x.b("033cd)cbcicjchcbck>f]cjJbch chcj^dWckedcj6bchWchcjHdNedcheh0hede4ci"));
                    if (systemServiceSafe != null) {
                        ReflectHelper.invokeInstanceMethod(systemServiceSafe, x.b("022:ci%e=cdcf@e9ehZhKedcj-bchXchcjVdYdj3i,cb2cheVeh"), new Object[]{str, Long.valueOf(j10), Float.valueOf(f10), obj, cn.fly.commons.a.m.a().c()}, new Class[]{String.class, Long.TYPE, Float.TYPE, cls, Looper.class});
                    }
                }
            } catch (Throwable th) {
                FlyLog.getInstance().w(th);
            }
        }
    }

    public Enumeration<InetAddress> a(NetworkInterface networkInterface) {
        return (Enumeration) ReflectHelper.invokeInstanceMethodNoThrow(networkInterface, x.b("016 diKehCddWdeh>eccbcbciHeEehehDeOeh"), null, new Object[0]);
    }

    public ApplicationInfo a(String str, int i10) throws PackageManager.NameNotFoundException {
        if (this.f1876d == null) {
            this.f1876d = this.f1874a.getPackageManager();
        }
        if (TextUtils.equals(str, this.f1874a.getPackageName()) || cn.fly.commons.e.b()) {
            return this.f1876d.getApplicationInfo(str, i10);
        }
        return null;
    }
}
