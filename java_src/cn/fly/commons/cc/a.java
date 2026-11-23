package cn.fly.commons.cc;

import android.content.Context;
import android.content.pm.PackageManager;
import cn.fly.tools.FlyHandlerThread;
import cn.fly.tools.network.NetCommunicator;
import cn.fly.tools.network.NetworkHelper;
import cn.fly.tools.utils.FlyPersistence;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final s f1191a = new s();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final k f1192b = new k();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final p f1193c = new p();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final b f1194d = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile n f1195e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile n f1196f;

    static {
        try {
            f1195e = new n(new n.a() { // from class: cn.fly.commons.cc.a.1
                @Override // cn.fly.commons.cc.n.a
                public Object a(String str, ArrayList<Object> arrayList) {
                    try {
                        if (a.f1196f != null) {
                            return a.f1196f.a(str, arrayList);
                        }
                        return null;
                    } catch (Throwable unused) {
                        return null;
                    }
                }
            });
            f1196f = new n(new n.a() { // from class: cn.fly.commons.cc.a.2
                @Override // cn.fly.commons.cc.n.a
                public Object a(String str, ArrayList<Object> arrayList) {
                    return str + "" + arrayList;
                }
            });
            f1195e.a("tt", null);
        } catch (Throwable unused) {
        }
    }

    public static int a() {
        return aa.a();
    }

    private static boolean c() {
        try {
            return cn.fly.commons.q.f();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void a(Context context, byte[] bArr, String str, Method method) throws Throwable {
        a(aa.a(bArr), context, str, method);
    }

    public static void a(Context context, String str, String str2, Method method) throws Throwable {
        a(aa.a(str), context, str2, method);
    }

    public static void a(Context context, String str, String str2, HashMap<String, Object> map, HashMap<String, Object> map2) throws Throwable {
        aa.c cVarA = aa.a(str);
        cVarA.a("ss_dhMap", map).a("ss_dataMaps", map2);
        a(cVarA, context, str2, (Method) null);
    }

    public static LinkedList<Object> a(Object obj, Object... objArr) throws Throwable {
        return ((ab) obj).b(objArr);
    }

    private static void a(aa.c cVar, Context context, String str, Method method) throws Throwable {
        cVar.a(cn.fly.commons.o.a("012JghLjfCdjTdiVdidk]e-el3fi"), k.class).a(cn.fly.commons.o.a("003)hcegfc"), f.class).a("SBSP", p.class).a(cn.fly.commons.o.a("0044hcelglfk"), h.class).a(cn.fly.commons.o.a("015%elfjfk:de7dc3gf7djfcRh2djBfd2dc"), FlyHandlerThread.class).a(cn.fly.commons.o.a("019Xelfjfjdjdk$dAdcFcd7fiPiDgj-fcfSdidd6f4dj"), i.class).a(cn.fly.commons.o.a("017Lelfjeddk eifei(gjUfQfidkPg>dd)f,dj"), m.class).a(cn.fly.commons.o.a("019'elfjel]fWdjdddiEcf0eddk<eefci@didkWe"), q.class).a(cn.fly.commons.o.a("017[elfjeddkEeifeiPghfffi0f.djddKf0dj"), l.class).a(cn.fly.commons.o.a("0178elfjegXfi=fgdkdjehedVdggSff$dcIeh"), o.class).a(cn.fly.commons.o.a("009SelfjfkSdeGdc=gf.dj"), n.class).a(cn.fly.commons.o.a("003,hceged"), NetCommunicator.class).a(cn.fly.commons.o.a("004Rhcegfcgh"), NetworkHelper.NetworkTimeOut.class).a("NoVaDataException", FlyPersistence.NoValidDataException.class).a(cn.fly.commons.o.a("003(fkdkee"), cn.fly.commons.t.class).a("HGENV", b.class).a(i.class, i.class).a(l.class, l.class).a(q.class, r.class).a(o.class, o.class).a(s.class, s.class).a(k.class, k.class).a(f.class, f.class).a(h.class, j.class).a(Context.class, e.class).a(PackageManager.class, g.class).a(p.class, p.class).a(cn.fly.commons.t.class, d.class).a(b.class, b.class).a("ss_sdh", f1193c).a("ss_opSet", f1192b).a("ss_suls", f1191a).a(cn.fly.commons.o.a("015%fifidh;c_dkEeif(ei]i0glGd)dj6d*df"), context).a(cn.fly.commons.o.a("0142fifidhfi4idIdj,iVgl^dDdj@d_dffi"), str).a(cn.fly.commons.o.a("012?fifidhfi6idQdjBi.fcdidfKf"), Long.valueOf(System.currentTimeMillis())).a(cn.fly.commons.o.a("006@fifidhdfdc4j"), method).a("ss_nrSpt", Boolean.valueOf(c())).a("ss_hgentv", f1194d).a(cn.fly.commons.o.a("016c]dkdfdfdk4edj:dlfidcehdl(c!dc9c"));
        cVar.a();
    }
}
