package cn.fly.tcp.e;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import cn.fly.FlySDK;
import cn.fly.commons.FlyProduct;
import cn.fly.commons.ad;
import cn.fly.commons.ae;
import cn.fly.commons.j;
import cn.fly.commons.m;
import cn.fly.commons.o;
import cn.fly.mcl.TcpStatus;
import cn.fly.tcp.lifecycle.PSIDManager;
import cn.fly.tools.network.NetworkHelper;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.HashonHelper;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.fly.tcp.a.c f1603a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.fly.tcp.d.b f1606d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f1607e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f1608f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<String> f1610h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f1613k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f1614l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f1615m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f1616n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f1617o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f1618p;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicLong f1609g = new AtomicLong(0);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f1611i = 270;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f1612j = 500;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NetworkHelper f1604b = new NetworkHelper();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashonHelper f1605c = new HashonHelper();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Context f1619q = FlySDK.getContext();

    public a(cn.fly.tcp.a.c cVar) {
        this.f1603a = cVar;
        this.f1606d = new cn.fly.tcp.d.b(cVar, q());
    }

    private String o() {
        ArrayList<FlyProduct> arrayListB = ad.b();
        HashMap<String, Object> mapB = o.a().b();
        StringBuilder sb2 = new StringBuilder("COMMON;" + FlySDK.SDK_VERSION_CODE);
        int size = arrayListB.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                FlyProduct flyProduct = arrayListB.get(i10);
                if (!TextUtils.equals(m.a("006Rgfijjejeijgi"), flyProduct.getProductTag())) {
                    sb2.append(",");
                    sb2.append(flyProduct.getProductTag());
                    sb2.append(";");
                    sb2.append(flyProduct.getSdkver());
                    sb2.append(";");
                    sb2.append(mapB.get(flyProduct.getProductTag()));
                }
            } catch (Throwable unused) {
            }
        }
        return sb2.toString();
    }

    private String p() {
        HashMap map = new HashMap();
        try {
            map.put(m.a("006fll_gj;hQge"), this.f1617o);
            map.put(m.a("006flllLgjgl"), this.f1619q.getPackageName());
            map.put(m.a("004lifk"), 1);
            map.put("pushId", PSIDManager.a().d());
            if (ad.d() == 2) {
                map.put(m.a("004_fefifkfe"), this.f1618p);
            }
            return HashonHelper.fromHashMap(map);
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().a(th);
            return null;
        }
    }

    private cn.fly.tcp.d.b.a q() {
        return new cn.fly.tcp.d.b.a() { // from class: cn.fly.tcp.e.a.2
            @Override // cn.fly.tcp.d.b.a
            public String a(String str, String str2) throws Throwable {
                return a.this.b(str, str2);
            }

            @Override // cn.fly.tcp.d.b.a
            public HashMap<String, Object> a(String str) {
                return a.this.b(str);
            }
        };
    }

    void a(String str, String str2) {
        this.f1617o = str;
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.f1618p = str2;
    }

    public void b() {
        try {
            l();
            cn.fly.tcp.a.c cVar = this.f1603a;
            if (cVar != null) {
                cVar.a();
            }
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().a(th);
        }
    }

    int c() {
        return this.f1611i;
    }

    int d() {
        return this.f1612j;
    }

    boolean e() {
        return this.f1616n;
    }

    boolean f() {
        return this.f1613k;
    }

    String g() {
        return "unavailable(global: " + this.f1613k + ", connect: " + this.f1614l + ", forceClose:" + this.f1616n + ")";
    }

    String h() {
        return "global: " + this.f1613k;
    }

    boolean i() {
        boolean zB;
        boolean zJ;
        cn.fly.tcp.a.c cVar = this.f1603a;
        boolean z10 = false;
        if (cVar != null) {
            zB = cVar.b();
            zJ = j();
            if (zB && zJ) {
                z10 = true;
            }
        } else {
            zB = false;
            zJ = false;
        }
        cn.fly.tcp.f.c.a().b("Tp sta: " + z10 + " [seSta: " + zB + ", hasTk: " + zJ + "]");
        return z10;
    }

    boolean j() {
        return this.f1609g.get() != 0;
    }

    boolean k() {
        ArrayList<String> arrayList;
        return this.f1613k && this.f1614l && !this.f1616n && (arrayList = this.f1610h) != null && arrayList.size() > 0 && !TextUtils.isEmpty(this.f1608f);
    }

    public void l() {
        this.f1609g.set(0L);
    }

    String m() {
        return a(this.f1609g.get());
    }

    void n() {
        boolean zBooleanValue;
        long jIntValue;
        if (TextUtils.isEmpty(this.f1618p) || this.f1619q == null) {
            cn.fly.tcp.f.c.a().b("TPH has not been initialized");
            return;
        }
        try {
            String strB = ae.b().b("tcp_config", (String) null);
            if (!TextUtils.isEmpty(strB)) {
                HashMap<String, Object> mapFromJson = HashonHelper.fromJson(strB);
                if (mapFromJson.containsKey("requestTimes")) {
                    Object obj = mapFromJson.get("requestTimes");
                    if (obj == null || !(obj instanceof Long)) {
                        jIntValue = (obj == null || !(obj instanceof Integer)) ? 0L : ((Integer) obj).intValue();
                    } else {
                        jIntValue = ((Long) obj).longValue();
                    }
                    if (jIntValue + 86400000 > System.currentTimeMillis() && b(mapFromJson) && ae.b().b("use_config", true)) {
                        cn.fly.tcp.f.c.a().b("TP cfg src: cc" + strB);
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().b(th.getMessage());
        }
        try {
            cn.fly.tcp.f.c.a().b("TP cfg no cc");
            HashMap map = (HashMap) cn.fly.commons.c.a("sti", (Object) null);
            HashMap<String, Object> map2 = new HashMap<>();
            if (map == null || map.isEmpty() || PSIDManager.a().e()) {
                final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
                DH.requester(FlySDK.getContext()).checkNetworkAvailableForce(true).request(new DH.DHResponder() { // from class: cn.fly.tcp.e.a.1
                    @Override // cn.fly.tools.utils.DH.DHResponder
                    public void onResponse(DH.DHResponse dHResponse) throws Throwable {
                        linkedBlockingQueue.offer(Boolean.valueOf(dHResponse.checkNetworkAvailableForce(new int[0])));
                    }
                });
                try {
                    zBooleanValue = ((Boolean) linkedBlockingQueue.poll(1000L, TimeUnit.MILLISECONDS)).booleanValue();
                } catch (Throwable th2) {
                    cn.fly.tcp.f.c.a().a(th2);
                    zBooleanValue = false;
                }
                cn.fly.tcp.f.c.a().b("TP cfg net: " + zBooleanValue);
                if (zBooleanValue) {
                    cn.fly.tcp.f.c.a().b("TP cfg src: init");
                    NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                    networkTimeOut.readTimout = 10000;
                    networkTimeOut.connectionTimeout = 5000;
                    String str = "/tcp/config/init";
                    HashMap<String, Object> map3 = new HashMap<>();
                    map3.put(m.a("006fll%gjMhIge"), this.f1617o);
                    map3.put("pushId", PSIDManager.a().d());
                    map3.put("products", o());
                    if (ad.d() == 2) {
                        map3.put(m.a("0041fefifkfe"), this.f1618p);
                        map3.put(m.a("006flll:gjgl"), DH.SyncMtd.getPackageName());
                        str = "/tcp/config/v2/init";
                    }
                    String str2 = j.a().a("tcig") + str;
                    cn.fly.tcp.f.c.a().b("TP cf url : " + str2 + " -> bd : " + map3);
                    String strHttpPostNew = this.f1604b.httpPostNew(str2, map3, null, networkTimeOut);
                    cn.fly.tcp.f.c.a().b("TP cf url : " + str2 + " -> rp : " + strHttpPostNew);
                    map2 = HashonHelper.fromJson(strHttpPostNew);
                }
            } else {
                cn.fly.tcp.f.c.a().b("TP cfg src: g*f");
                map2.put(m.a("004e5fmfe$h"), 200);
                map2.put(m.a("004Zfe-fkf"), map);
            }
            if (map2.isEmpty()) {
                return;
            }
            map2.put("requestTimes", Long.valueOf(System.currentTimeMillis()));
            if (b(map2)) {
                ae.b().a("use_config", true);
                ae.b().a("tcp_config", HashonHelper.fromHashMap(map2));
            }
        } catch (Throwable th3) {
            cn.fly.tcp.f.c.a().b(th3.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0056 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private InetSocketAddress c(String str) {
        int iLastIndexOf;
        int i10;
        if (!TextUtils.isEmpty(str) && (iLastIndexOf = str.lastIndexOf(":")) > 0 && iLastIndexOf < str.length() - 1) {
            String strSubstring = str.substring(0, iLastIndexOf);
            String strSubstring2 = str.substring(iLastIndexOf + 1);
            if (!strSubstring.startsWith("[") && !strSubstring.endsWith("]")) {
                if (TextUtils.isEmpty(strSubstring)) {
                    return null;
                }
                i10 = Integer.parseInt(strSubstring2);
                if (i10 > 0) {
                    return new InetSocketAddress(strSubstring, i10);
                }
                return null;
            }
            if (strSubstring.length() > 2 && strSubstring.startsWith("[") && strSubstring.endsWith("]")) {
                strSubstring = strSubstring.substring(1, strSubstring.length() - 1);
                if (TextUtils.isEmpty(strSubstring)) {
                    return null;
                }
                try {
                    i10 = Integer.parseInt(strSubstring2);
                    if (i10 > 0 && i10 <= 65535) {
                        return new InetSocketAddress(strSubstring, i10);
                    }
                    return null;
                } catch (Throwable unused) {
                    cn.fly.tcp.f.c.a().b("TP invalid port: " + strSubstring2);
                }
            }
        }
        return null;
    }

    public cn.fly.tcp.d.b a() {
        return this.f1606d;
    }

    private boolean b(HashMap<String, Object> map) {
        try {
            HashMap<String, Object> mapA = a(map);
            if (mapA.containsKey("domains") && mapA.containsKey("uniqueId") && mapA.containsKey("uniqueKey")) {
                ArrayList<String> arrayListB = b(mapA, "domains");
                long jA = a(mapA, "uniqueId", 0L);
                String strA = a(mapA, "uniqueKey");
                if (mapA.containsKey("determineDomain")) {
                    String strA2 = a(mapA, "determineDomain");
                    if (!TextUtils.isEmpty(strA2)) {
                        if (arrayListB == null) {
                            arrayListB = new ArrayList<>();
                        }
                        arrayListB.remove(strA2);
                        arrayListB.add(0, strA2);
                    }
                }
                if (arrayListB != null && arrayListB.size() != 0 && jA != 0 && !TextUtils.isEmpty(strA)) {
                    int i10 = this.f1611i;
                    int iA = a(mapA, "tick", i10);
                    if (iA > 0) {
                        i10 = iA;
                    } else {
                        cn.fly.tcp.f.c.a().b("TP cfg invalid tick: " + iA);
                    }
                    boolean z10 = a(mapA, "globalSwitch", 0) == 1;
                    boolean z11 = a(mapA, "connectSwitch", 0) == 1;
                    int i11 = this.f1612j;
                    int iA2 = a(mapA, "wr", i11);
                    if (iA2 > 0) {
                        i11 = iA2;
                    } else {
                        cn.fly.tcp.f.c.a().b("TP cfg invalid wr: " + iA2);
                    }
                    this.f1615m = false;
                    this.f1610h = arrayListB;
                    this.f1607e = jA;
                    this.f1608f = strA;
                    this.f1611i = i10;
                    this.f1613k = z10;
                    this.f1614l = z11;
                    this.f1612j = i11;
                    cn.fly.tcp.f.c.a().b("tp cfg load: s");
                    return true;
                }
                cn.fly.tcp.f.c.a().b("TP cfg invalid required fields");
                return false;
            }
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().a(th);
        }
        cn.fly.tcp.f.c.a().b("tp cfg load: f");
        return false;
    }

    HashMap<String, Object> a(String str, String str2, int i10) throws Throwable {
        if (this.f1603a == null) {
            return null;
        }
        cn.fly.tcp.f.c.a().b("TP rg main = " + str + " , bo = " + str2 + " , out = " + i10);
        InetSocketAddress inetSocketAddressC = c(str);
        if (inetSocketAddressC == null) {
            cn.fly.tcp.f.c.a().b("TP invalid domain: " + str);
            return null;
        }
        this.f1603a.a(inetSocketAddressC, true, true, 5000);
        cn.fly.tcp.b.a aVar = new cn.fly.tcp.b.a(1001, c(this.f1608f, str2));
        aVar.f1565c = this.f1607e;
        cn.fly.tcp.b.c<HashMap<String, Object>> cVarA = this.f1606d.a(aVar, this.f1608f, i10);
        if (cVarA.a()) {
            return cVarA.c();
        }
        return null;
    }

    HashMap<String, Object> a(int i10, int i11, String str) {
        cn.fly.tcp.b.a aVar;
        if (this.f1603a != null) {
            try {
                String strA = a(this.f1609g.get());
                cn.fly.tcp.f.c.a().b("TP sd ty = " + i10 + " , bo = " + str + " , out = " + i11);
                if (TextUtils.isEmpty(str)) {
                    aVar = new cn.fly.tcp.b.a(i10);
                } else {
                    aVar = new cn.fly.tcp.b.a(i10, c(strA, str));
                }
                cn.fly.tcp.b.c<HashMap<String, Object>> cVarA = this.f1606d.a(aVar, strA, i11);
                if (cVarA.a()) {
                    return cVarA.c();
                }
                return null;
            } catch (Throwable th) {
                cn.fly.tcp.f.c.a().a(th);
            }
        }
        return null;
    }

    String c(String str, String str2) throws Throwable {
        return Base64.encodeToString(Data.AES128Encode(str, str2), 2);
    }

    boolean a(int i10, int i11) {
        if (i11 >= 4) {
            return false;
        }
        if (a(1002, i10, (String) null) != null) {
            return true;
        }
        if (i11 != 0 && i11 != 1) {
            return a(3000, i11 + 1);
        }
        return a(1000, i11 + 1);
    }

    synchronized TcpStatus a(int i10) {
        if (k()) {
            String strP = p();
            if (TextUtils.isEmpty(strP)) {
                return TcpStatus.obtain(24).setDetailedMsg("Common body no psid");
            }
            return a(this.f1615m, this.f1610h.get(0), 0, strP, i10);
        }
        return TcpStatus.obtain(21).setDetailedMsg(g());
    }

    synchronized TcpStatus a(boolean z10, String str, int i10, String str2, int i11) {
        String message;
        try {
            if (i10 < this.f1610h.size() && i10 < 3) {
                cn.fly.tcp.f.c.a().b("TP rg domain : " + str + " count : " + i10);
                try {
                    HashMap<String, Object> mapA = a(str, str2, i11);
                    if (mapA != null && mapA.containsKey(m.a("004k5geNlh"))) {
                        int iA = a(mapA, m.a("004kOgeUlh"), 0);
                        if (iA == 1 && mapA.containsKey(m.a("005k^fmgjWhg"))) {
                            long jA = a(mapA, m.a("005k3fmgj9hg"), 0L);
                            if (jA != 0) {
                                this.f1609g.set(jA);
                                cn.fly.tcp.lifecycle.a.a().b();
                                cn.fly.tcp.f.c.a().a("TP register success");
                                PSIDManager.a().f();
                                return TcpStatus.obtain(10);
                            }
                            cn.fly.tcp.f.c.a().b("TP register token invalid");
                        } else if (iA == 2 && mapA.containsKey(m.a("006Qfefmfh;fMfk+g"))) {
                            String strA = a(mapA, m.a("006Rfefmfh*fFfkLg"));
                            if (!TextUtils.isEmpty(strA)) {
                                return a(true, strA, 0, str2, i11);
                            }
                        } else if (iA == 3) {
                            this.f1616n = true;
                            b();
                            PSIDManager.a().f();
                            return TcpStatus.obtain(24).setDetailedMsg("Connection out of limit");
                        }
                    }
                } catch (Throwable th) {
                    cn.fly.tcp.f.c.a().b("TP register exp : " + th.getMessage());
                }
                int i12 = i10 + 1;
                if (i12 < this.f1610h.size() && !z10) {
                    return a(false, this.f1610h.get(i12), i12, str2, i11);
                }
            }
            message = null;
            ae.b().a("tcp_config", (String) null);
            this.f1610h = null;
            b();
        } catch (Throwable th2) {
            message = th2.getMessage();
            cn.fly.tcp.f.c.a().a(th2);
        }
        PSIDManager.a().f();
        return TcpStatus.obtain(24).setDetailedMsg("Exception: " + message);
    }

    String b(String str, String str2) throws Throwable {
        return Data.AES128Decode(str, Base64.decode(str2, 2));
    }

    HashMap<String, Object> b(String str) {
        HashMap<String, Object> map = new HashMap<>();
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("{")) {
                cn.fly.tcp.f.c.a().b(str);
                return a(HashonHelper.fromJson(str));
            }
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().a(th);
        }
        return map;
    }

    private ArrayList<String> b(HashMap<String, Object> map, String str) {
        if (map == null) {
            return null;
        }
        Object obj = map.get(str);
        if (!(obj instanceof List)) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        for (Object obj2 : (List) obj) {
            if (obj2 instanceof String) {
                String str2 = (String) obj2;
                if (!TextUtils.isEmpty(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        return arrayList;
    }

    void a(String str) {
        this.f1615m = true;
        String strP = p();
        if (TextUtils.isEmpty(strP)) {
            cn.fly.tcp.f.c.a().b("TP redir common body no psid");
        } else {
            a(true, str, 0, strP, 5000);
        }
    }

    private String a(long j10) {
        return String.format("%16s", Integer.valueOf(Math.abs(Arrays.hashCode(new long[]{j10})))).replaceAll(" ", "0").substring(0, 16);
    }

    HashMap<String, Object> a(HashMap<String, Object> map) {
        HashMap<String, Object> map2 = new HashMap<>();
        if (a(map, m.a("004e$fmfeEh"), 0) == 200 && map.containsKey(m.a("004*feAfkf"))) {
            Object obj = map.get(m.a("004NfeJfkf"));
            if (obj instanceof Map) {
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    if (entry.getKey() instanceof String) {
                        map2.put((String) entry.getKey(), entry.getValue());
                    }
                }
            }
        }
        return map2;
    }

    public static int a(HashMap<String, Object> map, String str, int i10) {
        if (map != null && map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj instanceof Number) {
                return ((Number) obj).intValue();
            }
            if (obj instanceof String) {
                try {
                    return Integer.parseInt((String) obj);
                } catch (Throwable unused) {
                }
            }
        }
        return i10;
    }

    static long a(HashMap<String, Object> map, String str, long j10) {
        if (map != null && map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj instanceof Number) {
                return ((Number) obj).longValue();
            }
            if (obj instanceof String) {
                try {
                    return Long.parseLong((String) obj);
                } catch (Throwable unused) {
                }
            }
        }
        return j10;
    }

    static String a(HashMap<String, Object> map, String str) {
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj != null) {
            return String.valueOf(obj);
        }
        return null;
    }
}
