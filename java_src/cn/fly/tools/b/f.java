package cn.fly.tools.b;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.location.Location;
import cn.fly.tools.FlyLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public class f implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, Object> f1880a;

    public f(HashMap<String, Object> map) {
        this.f1880a = map;
    }

    private Object a(String str, Object... objArr) {
        LinkedList<Object> linkedListA;
        try {
            HashMap<String, Object> map = this.f1880a;
            if (map == null || !map.containsKey(str) || (linkedListA = cn.fly.commons.cc.a.a(this.f1880a.get(str), objArr)) == null || linkedListA.isEmpty()) {
                return null;
            }
            return linkedListA.get(0);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    @Override // cn.fly.tools.b.a
    public String A() {
        return (String) a(String.class, a("golgu", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String B() {
        return (String) a(String.class, a("gocnty", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, Object> C() {
        return (HashMap) a(HashMap.class, a("gcuin", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String D() {
        return (String) a(String.class, a("gabis", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<ArrayList<String>> E() {
        return (ArrayList) a(ArrayList.class, a("gtydvin", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String F() {
        return (String) a(String.class, a("gqmkn", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, HashMap<String, Long>> G() {
        return (HashMap) a(HashMap.class, a("gszin", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, Long> H() {
        return (HashMap) a(HashMap.class, a("gmrin", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String I() {
        return (String) a(String.class, a("galgu", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String J() {
        return (String) a(String.class, a("gscsz", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String K() {
        return (String) a(String.class, a("gnktpfs", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String L() {
        return (String) a(String.class, a("gdtlnktpfs", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public int M() {
        return ((Integer) a(Integer.TYPE, a("gdntp", (Object[]) null))).intValue();
    }

    @Override // cn.fly.tools.b.a
    public int N() {
        return ((Integer) a(Integer.TYPE, a("gdntpstr", (Object[]) null))).intValue();
    }

    @Override // cn.fly.tools.b.a
    public String O() {
        return (String) a(String.class, a("gtmne", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String P() {
        return (String) a(String.class, a("gflv", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String Q() {
        return (String) a(String.class, a("gbsbd", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String R() {
        return (String) a(String.class, a("gbfspy", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String S() {
        return (String) a(String.class, a("gbplfo", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String T() {
        return (String) a(String.class, a("giads", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String U() {
        return (String) a(String.class, a("giadsstr", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<HashMap<String, String>> V() {
        return (ArrayList) a(ArrayList.class, a("gal", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<HashMap<String, String>> W() {
        return (ArrayList) a(ArrayList.class, a("gsl", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String X() {
        return (String) a(String.class, a("gdvk", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String Y() {
        return (String) a(String.class, a("gscpt", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String Z() {
        return (String) a(String.class, a("gsnmd", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public int aA() {
        return ((Integer) a(Integer.TYPE, a("gthmpmst", (Object[]) null))).intValue();
    }

    @Override // cn.fly.tools.b.a
    public int aB() {
        return ((Integer) a(Integer.TYPE, a("gthmepmst", (Object[]) null))).intValue();
    }

    @Override // cn.fly.tools.b.a
    public String aC() {
        return (String) a(String.class, a("gtinnerlangmt", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public int aD() {
        return ((Integer) a(Integer.TYPE, a("gtgramgendt", (Object[]) null))).intValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean aE() {
        return ((Boolean) a(Boolean.TYPE, a("ctedebbing", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<HashMap<String, Object>> aF() {
        return (ArrayList) a(ArrayList.class, a("gteacifo", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public boolean aG() {
        return ((Boolean) a(Boolean.TYPE, a("gpsavlb", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean aH() {
        return ((Boolean) a(Boolean.TYPE, a("isaut", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public String aI() {
        return (String) a(String.class, a("gtscrpch", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String aJ() {
        return (String) a(String.class, a("gtrddi", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String aa() {
        return (String) a(String.class, a("gpgnm", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String ab() {
        return (String) a(String.class, a("gpnmmt", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public int ac() {
        return ((Integer) a(Integer.TYPE, a("gpvsnm", (Object[]) null))).intValue();
    }

    @Override // cn.fly.tools.b.a
    public String ad() {
        return (String) a(String.class, a("gpvsme", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public boolean ae() {
        return ((Boolean) a(Boolean.TYPE, a("cinmnps", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public String af() {
        return (String) a(String.class, a("gcrtpcnm", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public boolean ag() {
        return ((Boolean) a(Boolean.TYPE, a("ciafgd", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public Context ah() {
        return (Context) a(Context.class, a("gaplcn", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String ai() {
        return (String) a(String.class, a("gdvda", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String aj() {
        return (String) a(String.class, a("gdvdtnas", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public long ak() {
        return ((Long) a(Long.TYPE, a("galtut", (Object[]) null))).longValue();
    }

    @Override // cn.fly.tools.b.a
    public String al() {
        return (String) a(String.class, a("gdvme", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String am() {
        return (String) a(String.class, a("gcrup", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String an() {
        return (String) a(String.class, a("gcifm", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String ao() {
        return (String) a(String.class, a("godm", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String ap() {
        return (String) a(String.class, a("godhm", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, Object> aq() {
        return (HashMap) a(HashMap.class, a("galdm", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public ApplicationInfo ar() {
        return (ApplicationInfo) a(ApplicationInfo.class, a("gtaif", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<HashMap<String, Object>> as() {
        return (ArrayList) a(ArrayList.class, a("gtaifok", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String at() {
        return (String) a(String.class, a("gtdrd", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public long au() {
        return ((Long) a(Long.TYPE, a("gtbdt", (Object[]) null))).longValue();
    }

    @Override // cn.fly.tools.b.a
    public double av() {
        return ((Double) a(Double.TYPE, a("gtscnin", (Object[]) null))).doubleValue();
    }

    @Override // cn.fly.tools.b.a
    public int aw() {
        return ((Integer) a(Integer.TYPE, a("gtscnppi", (Object[]) null))).intValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean ax() {
        return ((Boolean) a(Boolean.TYPE, a("ishmos", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public String ay() {
        return (String) a(String.class, a("gthmosv", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String az() {
        return (String) a(String.class, a("gthmosdtlv", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public boolean b() {
        return ((Boolean) a(Boolean.TYPE, a("cx", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean c() {
        return ((Boolean) a(Boolean.TYPE, a("ckpd", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean d() {
        return ((Boolean) a(Boolean.TYPE, a("degb", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean e() {
        return ((Boolean) a(Boolean.TYPE, a("vnmt", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean f() {
        return ((Boolean) a(Boolean.TYPE, a("ckua", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean g() {
        return ((Boolean) a(Boolean.TYPE, a("dvenbl", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean h() {
        return ((Boolean) a(Boolean.TYPE, a("ubenbl", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public boolean i() {
        return ((Boolean) a(Boolean.TYPE, a("iwpxy", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public String j() {
        return (String) a(String.class, a("gavti", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String k() {
        return (String) a(String.class, a("gmivsn", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String l() {
        return (String) a(String.class, a("gmivsn", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String m() {
        return (String) a(String.class, a("bgmdl", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String n() {
        return (String) a(String.class, a("bgmdlfly", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String o() {
        return (String) a(String.class, a("gmnft", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String p() {
        return (String) a(String.class, a("gmnftfly", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String q() {
        return (String) a(String.class, a("gbrd", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String r() {
        return (String) a(String.class, a("gbrdfly", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String s() {
        return (String) a(String.class, a("gdvtp", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public Object t() {
        return a(Object.class, a("gtecloc", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<HashMap<String, Object>> u() {
        return (ArrayList) a(ArrayList.class, a("gnbclin", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, Object> v() {
        return g(false);
    }

    @Override // cn.fly.tools.b.a
    public int w() {
        return ((Integer) a(Integer.TYPE, a("govsit", (Object[]) null))).intValue();
    }

    @Override // cn.fly.tools.b.a
    public int x() {
        return ((Integer) a(Integer.TYPE, a("govsitfly", (Object[]) null))).intValue();
    }

    @Override // cn.fly.tools.b.a
    public String y() {
        return (String) a(String.class, a("govsnm", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String z() {
        return (String) a(String.class, a("govsnmfly", (Object[]) null));
    }

    @Override // cn.fly.tools.b.a
    public String b(boolean z10) {
        return (String) a(String.class, a("gbsifce", Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public String c(boolean z10) {
        return (String) a(String.class, a("gcriefce", Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public String d(boolean z10) {
        return (String) a(String.class, a("gcriefcestr", Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public String e(boolean z10) {
        return (String) a(String.class, a("gcrnmfce", Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public String f(boolean z10) {
        return (String) a(String.class, a("gcrnmfcestr", Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, Object> g(boolean z10) {
        return (HashMap) a(HashMap.class, a("wmcwifce", Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public String h(boolean z10) {
        return (String) a(String.class, a("gneypfce", Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public String i(boolean z10) {
        return (String) a(String.class, a("gneypnw", Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public boolean j(boolean z10) {
        return ((Boolean) a(Boolean.TYPE, a("cknavblfc", Boolean.valueOf(z10)))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public Set<String> k(boolean z10) {
        return (Set) a(Set.class, a("gppl", Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public String l(boolean z10) {
        return (String) a(String.class, a("gdvkfc", Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public String m(boolean z10) {
        return (String) a(String.class, a("gtdm", Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public HashMap<String, Long> n(boolean z10) {
        return (HashMap) a(HashMap.class, a("gtrtmey", Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public boolean b(String str) {
        return ((Boolean) a(Boolean.TYPE, a("ipgist", str))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public String c(String str) {
        return (String) a(String.class, a("gsnmdfp", str));
    }

    @Override // cn.fly.tools.b.a
    public String d(String str) {
        return (String) a(String.class, a("gpnmfp", str));
    }

    @Override // cn.fly.tools.b.a
    public boolean e(String str) {
        return ((Boolean) a(Boolean.TYPE, a("ckpmsi", str))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public long f(String str) {
        return ((Long) a(Long.TYPE, a("gtlstactme", str))).longValue();
    }

    @Override // cn.fly.tools.b.a
    public ResolveInfo b(Intent intent, int i10) {
        return (ResolveInfo) a(ResolveInfo.class, a("rsaciy", intent, Integer.valueOf(i10)));
    }

    @Override // cn.fly.tools.b.a
    public Object b(boolean z10, int i10, String str, int i11) {
        return a(Object.class, a("gpgiffist", Boolean.valueOf(z10), Integer.valueOf(i10), str, Integer.valueOf(i11)));
    }

    private <T> T a(Class<T> cls, Object obj) {
        T tCast;
        T t10 = (T) null;
        if (cls != null && obj != null && cls != Void.class) {
            try {
                if (cls == Boolean.TYPE) {
                    tCast = (T) Boolean.class.cast(obj);
                } else if (cls == Integer.TYPE) {
                    tCast = (T) Integer.class.cast(obj);
                } else if (cls == Byte.TYPE) {
                    tCast = (T) Byte.class.cast(obj);
                } else if (cls == Character.TYPE) {
                    tCast = (T) Character.class.cast(obj);
                } else if (cls == Short.TYPE) {
                    tCast = (T) Short.class.cast(obj);
                } else if (cls == Long.TYPE) {
                    tCast = (T) Long.class.cast(obj);
                } else if (cls == Float.TYPE) {
                    tCast = (T) Float.class.cast(obj);
                } else if (cls == Double.TYPE) {
                    tCast = (T) Double.class.cast(obj);
                } else {
                    tCast = cls.cast(obj);
                }
                t10 = tCast;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        if (t10 != null) {
            return t10;
        }
        if (cls == Boolean.TYPE) {
            return (T) Boolean.FALSE;
        }
        if (cls == Integer.TYPE) {
            return (T) (-1);
        }
        if (cls == Byte.TYPE) {
            return (T) (byte) 0;
        }
        if (cls == Character.TYPE) {
            return (T) (char) 0;
        }
        if (cls == Short.TYPE) {
            return (T) (short) 0;
        }
        if (cls == Long.TYPE) {
            return (T) 0L;
        }
        if (cls == Float.TYPE) {
            return (T) Float.valueOf(0.0f);
        }
        return cls == Double.TYPE ? (T) Double.valueOf(0.0d) : t10;
    }

    @Override // cn.fly.tools.b.a
    public boolean a() {
        return ((Boolean) a(Boolean.TYPE, a("cird", (Object[]) null))).booleanValue();
    }

    @Override // cn.fly.tools.b.a
    public String a(boolean z10) {
        return (String) a(String.class, a("gsimtfce", Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public ArrayList<HashMap<String, String>> a(boolean z10, boolean z11) {
        return (ArrayList) a(ArrayList.class, a("giafce", Boolean.valueOf(z10), Boolean.valueOf(z11)));
    }

    @Override // cn.fly.tools.b.a
    public Location a(int i10, int i11, boolean z10) {
        return (Location) a(Location.class, a("glctn", Integer.valueOf(i10), Integer.valueOf(i11), Boolean.valueOf(z10)));
    }

    @Override // cn.fly.tools.b.a
    public String a(String str) {
        return (String) a(String.class, a("gstmpts", str));
    }

    @Override // cn.fly.tools.b.a
    public List<ResolveInfo> a(Intent intent, int i10) {
        return (List) a(List.class, a("qritsvc", intent, Integer.valueOf(i10)));
    }

    @Override // cn.fly.tools.b.a
    public PackageInfo a(boolean z10, int i10, String str, int i11) {
        return (PackageInfo) a(PackageInfo.class, a("gpgiffist", Boolean.valueOf(z10), Integer.valueOf(i10), str, Integer.valueOf(i11)));
    }

    @Override // cn.fly.tools.b.a
    public ApplicationInfo a(String str, int i10) {
        return (ApplicationInfo) a(ApplicationInfo.class, a("gtaifprm", str, Integer.valueOf(i10)));
    }

    @Override // cn.fly.tools.b.a
    public ApplicationInfo a(boolean z10, String str, int i10) {
        return (ApplicationInfo) a(ApplicationInfo.class, a("gtaifprmfce", Boolean.valueOf(z10), str, Integer.valueOf(i10)));
    }

    @Override // cn.fly.tools.b.a
    public List<HashMap<String, Object>> a(int i10, int i11, boolean z10, boolean z11) {
        return (List) a(List.class, a("gtelcmefce", Integer.valueOf(i10), Integer.valueOf(i11), Boolean.valueOf(z10), Boolean.valueOf(z11)));
    }
}
