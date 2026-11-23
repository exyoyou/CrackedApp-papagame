package cn.fly.commons;

import android.text.TextUtils;
import android.util.Base64;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.SharePrefrenceHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f1061a = m.a("009.gj2hFgefjfefkglZfl");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f1062b = m.a("010?gjGhVgefjYg]fiHl@flNe@fe");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f1063c = m.a("0092gj0h;gefjOgXfiVifi");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f1064d = m.a("0106gjEhEgefjhkPgAfi1ifi");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f1065e = m.a("0119gj(h*gefjKll+fjglfl?kHfe");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f1066f = m.a("031+gj(hMgefj;gh$gkEk4fjfiHli>fm4f+fefjQfll'fjYfek!fkff+h5fjWk1fkfh]h");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f1067g = m.a("0251gj+hHgefjhhfighghQh.fl:hTfefjZiWfmJefkGfkfmVg7fjfhfejk");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f1068h = m.a("038)gj<h8gefjBghDgk!k*fjfiPli!fm;fZfefjhhfighgh%hHflWhWfefj;iNfm1efk(fkfm5gIfj4k1fkfh[h");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f1069i = m.a("014+hifkghfkfjYif?hkAk!fjfk.gTghfm");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f1070j = m.a("0182gj5h4gefjhifkghfkfj4iSfkhkCk+fjGjfNhkFj");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f1071k = m.a("030YgjBhKgefjAgh.gk3kVfjfi*liQfm2fSfefjhifkghfkfj_i>fkhk^k*fjCkAfkfh$h");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f1072l = m.a("012Agj_hLgefjhkhifk<kejh2hk");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f1073m = m.a("022(gj+h4gefjhkhifkLkejhGhkfj,k6fkfhHh[hkMkf@fhRl");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f1074n = m.a("019Ygj@hZgefjNfllKfjEfekDfkffYh,fjRkBfkfh]h");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f1075o = m.a("012^gjNh3gefjGejfgghi+hk");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static AtomicBoolean f1076p = new AtomicBoolean(false);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static AtomicBoolean f1077q = new AtomicBoolean(false);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static AtomicBoolean f1078r = new AtomicBoolean(false);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static ae f1079s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private SharePrefrenceHelper f1080t;

    private ae() {
        if (this.f1080t == null) {
            SharePrefrenceHelper sharePrefrenceHelper = new SharePrefrenceHelper(FlySDK.getContext());
            this.f1080t = sharePrefrenceHelper;
            sharePrefrenceHelper.open("fvv_cms", 1);
        }
    }

    public static String a() {
        return "fvv_cms_1";
    }

    public static synchronized ae b() {
        if (f1079s == null) {
            f1079s = new ae();
        }
        return f1079s;
    }

    public static boolean c() {
        if (FlySDK.getContext() == null) {
            return false;
        }
        if (SharePrefrenceHelper.isMpfFileExist(FlySDK.getContext(), "fvv_cms", 1)) {
            return true;
        }
        boolean zIsMbSpFileExist = SharePrefrenceHelper.isMbSpFileExist(FlySDK.getContext(), "fvv_cms", 1);
        if (zIsMbSpFileExist) {
            return zIsMbSpFileExist;
        }
        return cn.fly.tools.utils.b.a() || cn.fly.tools.utils.b.b();
    }

    public static void u() {
        if (f1076p.compareAndSet(false, true)) {
            new cn.fly.tools.utils.j(m.a("004?hnknjmih")) { // from class: cn.fly.commons.ae.1
                @Override // cn.fly.tools.utils.j
                protected void a() {
                    Object obj = v.f1437k;
                    synchronized (obj) {
                        try {
                            obj.wait(600000L);
                            i.a().a(11);
                            ConcurrentHashMap<String, Object> concurrentHashMapF = c.f();
                            if (concurrentHashMapF != null && concurrentHashMapF.size() > 0) {
                                i.a().a(12);
                                Object obj2 = concurrentHashMapF.get("h");
                                Object obj3 = concurrentHashMapF.get(com.kuaishou.weapon.p0.t.f74876a);
                                Object obj4 = concurrentHashMapF.get(com.kuaishou.weapon.p0.t.f74887l);
                                Object obj5 = concurrentHashMapF.get("s");
                                Object obj6 = concurrentHashMapF.get("cn");
                                Object obj7 = concurrentHashMapF.get("fn");
                                concurrentHashMapF.clear();
                                d.a(obj2, obj3, obj4, obj5, obj6, obj7);
                            }
                        } catch (Throwable th) {
                            i.a().a(3, th);
                        }
                    }
                }
            }.start();
        }
        w();
    }

    private static String v() {
        return Data.MD5(DH.SyncMtd.getModelForFly());
    }

    private static void w() {
        if (f1077q.compareAndSet(false, true)) {
            new cn.fly.tools.utils.j("DS-W") { // from class: cn.fly.commons.ae.2
                @Override // cn.fly.tools.utils.j
                protected void a() {
                    Object obj = v.f1438l;
                    synchronized (obj) {
                        try {
                            obj.wait();
                            ConcurrentHashMap<String, Object> concurrentHashMapG = c.g();
                            ArrayList arrayList = (ArrayList) concurrentHashMapG.get(m.a("002ik"));
                            concurrentHashMapG.clear();
                            d.a((ArrayList<HashMap<String, Object>>) arrayList, new cn.fly.tools.utils.d<Void>() { // from class: cn.fly.commons.ae.2.1
                                @Override // cn.fly.tools.utils.d
                                public void a(Void r10) {
                                }
                            });
                        } catch (Throwable th) {
                            FlyLog.getInstance().d(th);
                        }
                    }
                }
            }.start();
        }
        x();
    }

    private static void x() {
        if (f1078r.compareAndSet(false, true)) {
            new cn.fly.tools.utils.j("DS-F") { // from class: cn.fly.commons.ae.3
                @Override // cn.fly.tools.utils.j
                protected void a() {
                    Object obj = v.f1439m;
                    synchronized (obj) {
                        try {
                            obj.wait();
                            d.b();
                        } catch (Throwable th) {
                            FlyLog.getInstance().d(th);
                        }
                    }
                }
            }.start();
        }
    }

    public String d() {
        String strB = b(f1072l, (String) null);
        if (TextUtils.isEmpty(strB)) {
            return strB;
        }
        try {
            String strV = v();
            return Data.AES128PaddingDecode(strV.getBytes("UTF-8"), Base64.decode(strB, 0));
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return strB;
        }
    }

    public String e() {
        String strB = b("key_gfrt", (String) null);
        if (TextUtils.isEmpty(strB)) {
            return strB;
        }
        try {
            String strV = v();
            return Data.AES128PaddingDecode(strV.getBytes("UTF-8"), Base64.decode(strB, 0));
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return strB;
        }
    }

    public void f() {
        c((String) null);
        d((String) null);
    }

    public HashMap<String, Object> g() {
        String strB = b(f1075o, (String) null);
        if (TextUtils.isEmpty(strB)) {
            return null;
        }
        return HashonHelper.fromJson(strB);
    }

    public int h() {
        return b("key_mstrgy", 0);
    }

    @Deprecated
    public long i() {
        return b("key_a_rmt_tm", 0L);
    }

    @Deprecated
    public int j() {
        return b("key_lch_tms", 0);
    }

    @Deprecated
    public boolean k() {
        return b("keyR_drt_lch", false);
    }

    public String l() {
        return b("key_chd_ak", (String) null);
    }

    public String m() {
        return b("key_chd_as", (String) null);
    }

    public HashMap<String, HashMap<String, ArrayList<String>>> n() {
        return HashonHelper.fromJson(b("key_chd_busi_dm", (String) null));
    }

    public HashMap<String, HashMap<String, ArrayList<String>>> o() {
        return HashonHelper.fromJson(b("key_chd_ckd_busi_dm", (String) null));
    }

    public HashMap<String, String> p() {
        return HashonHelper.fromJson(b("key_ckd_busi_dm", (String) null));
    }

    public ArrayList<String> q() {
        HashMap mapFromJson = HashonHelper.fromJson(b("key_chd_prx_dm", (String) null));
        return (mapFromJson == null || mapFromJson.isEmpty()) ? new ArrayList<>() : (ArrayList) mapFromJson.get(m.a("008Wgh_f<gjWhiZfkhkOk"));
    }

    public Long r() {
        return Long.valueOf(b("key_dm_lit", 0L));
    }

    @Deprecated
    public long s() {
        return b("key_fst_lnch_tm", 0L);
    }

    public String t() {
        return b("key_rid", (String) null);
    }

    public void a(String str, long j10) {
        this.f1080t.putLong(str, Long.valueOf(j10));
    }

    public void a(String str, int i10) {
        this.f1080t.putInt(str, Integer.valueOf(i10));
    }

    public void f(String str) {
        a("key_chd_as", str);
    }

    public void a(String str, boolean z10) {
        this.f1080t.putBoolean(str, Boolean.valueOf(z10));
    }

    public long b(String str, long j10) {
        return this.f1080t.getLong(str, j10);
    }

    public void g(String str) {
        a("key_rid", str);
    }

    public void a(String str, String str2) {
        if (str2 == null) {
            this.f1080t.remove(str);
        } else {
            this.f1080t.putString(str, str2);
        }
    }

    public int b(String str, int i10) {
        return this.f1080t.getInt(str, i10);
    }

    public Object c(String str, Object obj) {
        return this.f1080t.get(str, obj);
    }

    public boolean b(String str, boolean z10) {
        return this.f1080t.getBoolean(str, z10);
    }

    public void c(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                str = Base64.encodeToString(Data.AES128Encode(v(), str), 0);
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        a(f1072l, str);
    }

    public void a(String str, Object obj) {
        this.f1080t.put(str, obj);
    }

    public String b(String str, String str2) {
        return this.f1080t.getString(str, str2);
    }

    public void d(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                str = Base64.encodeToString(Data.AES128Encode(v(), str), 0);
                a(f1073m, System.currentTimeMillis());
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        a("key_gfrt", str);
    }

    public void e(String str) {
        a("key_chd_ak", str);
    }

    public Object a(String str) {
        return this.f1080t.get(str);
    }

    public void b(String str, Object obj) {
        this.f1080t.put(str, obj);
    }

    public void a(HashMap<String, Object> map) {
        a(f1075o, HashonHelper.fromHashMap(map));
    }

    public void b(String str) {
        this.f1080t.remove(str);
    }

    public void a(int i10) {
        if (i10 >= 0) {
            a("key_mstrgy", i10);
        }
    }

    @Deprecated
    public int b(int i10) {
        return b("key_wt_dys", i10);
    }

    public void a(ArrayList<String> arrayList) {
        a("key_chd_prx_dm", (arrayList == null || arrayList.isEmpty()) ? null : HashonHelper.fromObject(arrayList));
    }

    public void b(HashMap<String, HashMap<String, ArrayList<String>>> map) {
        a("key_chd_busi_dm", HashonHelper.fromHashMap(map));
    }

    public int c(int i10) {
        return b("key_wt_tms", i10);
    }

    public void c(HashMap<String, HashMap<String, ArrayList<String>>> map) {
        a("key_chd_ckd_busi_dm", HashonHelper.fromHashMap(map));
    }

    public void a(Long l10) {
        a("key_dm_lit", l10.longValue());
    }

    public void d(HashMap<String, String> map) {
        a("key_ckd_busi_dm", HashonHelper.fromHashMap(map));
    }
}
