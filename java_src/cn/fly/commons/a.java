package cn.fly.commons;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.network.NetCommunicator;
import cn.fly.tools.network.NetworkHelper;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.FileLocker;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.ResHelper;
import com.haima.hmcp.ConstantsInternal;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final a f915d = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f916a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f917b = new byte[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f918c = new byte[0];

    private a() {
    }

    private String g() {
        return n.a("016Adgbacfbj7aObibdbdbiXcbhPbjdgbacf");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File h() {
        return ResHelper.getDataCacheFile(FlySDK.getContext(), n.f1406b, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i() {
        ae aeVarB = ae.b();
        String str = ae.f1061a;
        long jB = aeVarB.b(str, -1L);
        if (jB != -1) {
            return System.currentTimeMillis() >= jB + (((Long) cn.fly.commons.c.a(n.a("005AbabgchSbh"), 2592000L)).longValue() * 1000);
        }
        ae.b().a(str, System.currentTimeMillis());
        return false;
    }

    synchronized String e() {
        String strD;
        Throwable th;
        try {
            strD = d();
            try {
                if (!TextUtils.isEmpty(strD) && !TextUtils.equals("null", strD)) {
                    return strD;
                }
                C0027a c0027aA = new b().a();
                if (c0027aA != null) {
                    strD = c0027aA.c();
                }
            } catch (Throwable th2) {
                th = th2;
                FlyLog.getInstance().d(th);
            }
        } catch (Throwable th3) {
            strD = null;
            th = th3;
        }
        return strD;
    }

    HashMap<String, Object> f() {
        synchronized (this.f918c) {
            final byte[][] bArr = new byte[1][];
            try {
                v.a(v.a(v.f1429c), new u() { // from class: cn.fly.commons.a.2
                    @Override // cn.fly.commons.u
                    public boolean a(FileLocker fileLocker) {
                        bArr[0] = ResHelper.readFromFileNoCompress(a.this.h());
                        return false;
                    }
                });
                if (bArr[0] != null) {
                    return a(DH.SyncMtd.getModelForFly(), bArr[0]);
                }
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
            return new HashMap<>();
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final List<String> f932a = Arrays.asList("4c5f81a0-4728-476f-a57f-b46fa44f07d3", "f6af99e2-2b64-4eb6-aba6-4d44fb935939", "00000000-0000-0000-0000-000000000000");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<String> f933b;

        private b() {
        }

        private void c() {
            c cVarB = FlySDK.SDK_VERSION_CODE + 30 >= d() ? a.b() : e();
            if (cVarB != null && cVarB.c() != null) {
                this.f933b = cVarB.c();
            }
            if (this.f933b == null) {
                this.f933b = f932a;
            }
        }

        private int d() {
            return Integer.parseInt(new SimpleDateFormat("yyyyMMdd").format(new Date()));
        }

        private c e() {
            try {
                NetworkHelper networkHelper = new NetworkHelper();
                NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                networkTimeOut.connectionTimeout = 2000;
                networkTimeOut.readTimout = 5000;
                String strHttpPostNew = networkHelper.httpPostNew(j.a().a("dg") + "/getDuidBlacklist", null, null, networkTimeOut);
                HashMap mapFromJson = HashonHelper.fromJson(strHttpPostNew);
                if (mapFromJson != null && !mapFromJson.isEmpty()) {
                    if (!ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS.equals(String.valueOf(mapFromJson.get(n.a("006)dg'gbg,bedg"))))) {
                        throw new Throwable("RS is illegal: " + strHttpPostNew);
                    }
                    String strValueOf = String.valueOf(mapFromJson.get(n.a("004AbaTbgb")));
                    if (!TextUtils.isEmpty(strValueOf)) {
                        c cVarA = c.a(Data.AES128Decode(f(), Base64.decode(strValueOf, 0)));
                        a.b(cVarA);
                        return cVarA;
                    }
                }
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
            return null;
        }

        private String f() {
            String[] strArr = {"QvxJJ", "FYsAX", "cvWe", "MqlWJL"};
            return strArr[1] + strArr[3] + new String[]{"akuRE", "wbMqR", "uBs", "CDpnc"}[3];
        }

        public C0027a a() {
            c();
            return b();
        }

        public C0027a b() {
            String strByteToHex;
            try {
                String modelForFly = DH.SyncMtd.getModelForFly();
                String strTrim = modelForFly == null ? null : modelForFly.trim();
                boolean z10 = false;
                String strM = cn.fly.tools.b.c.a(FlySDK.getContext()).d().m(false);
                if (TextUtils.isEmpty(strM)) {
                    strM = cn.fly.tools.b.c.a(FlySDK.getContext()).d().j();
                    if (TextUtils.isEmpty(strM) || this.f933b.contains(strM)) {
                        strM = null;
                    } else {
                        FlyLog.getInstance().d("ddsrc: " + n.a("002bUba"), new Object[0]);
                    }
                } else {
                    FlyLog.getInstance().d("ddsrc: dd", new Object[0]);
                }
                if (TextUtils.isEmpty(strM)) {
                    strM = a(SystemClock.elapsedRealtime());
                    FlyLog.getInstance().d("ddsrc: " + n.a("0021beba"), new Object[0]);
                    z10 = true;
                }
                String str = strTrim + ":" + strM + ":" + ((Object) null) + ":" + ((Object) null);
                try {
                    strByteToHex = !TextUtils.isEmpty(str) ? Data.byteToHex(Data.SHA1(str)) : null;
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                }
                if (z10) {
                    strByteToHex = "s_" + strByteToHex;
                }
                C0027a c0027a = new C0027a(strByteToHex, System.currentTimeMillis(), "client", 0L, Base64.encodeToString(str.getBytes(), 2));
                a.b(c0027a);
                return c0027a;
            } catch (Throwable th2) {
                FlyLog.getInstance().d(th2);
                return null;
            }
        }

        private String a(long j10) {
            String string = UUID.randomUUID().toString();
            return TextUtils.isEmpty(string) ? b(j10) : string;
        }

        private String b(long j10) {
            ByteArrayOutputStream byteArrayOutputStream;
            DataOutputStream dataOutputStream;
            String strByteToHex = null;
            try {
                long jNextLong = new SecureRandom().nextLong();
                long jCurrentTimeMillis = j10 + System.currentTimeMillis();
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    try {
                        dataOutputStream.writeLong(jNextLong);
                        dataOutputStream.writeLong(jCurrentTimeMillis);
                        strByteToHex = Data.byteToHex(byteArrayOutputStream.toByteArray());
                        C1293r.a(dataOutputStream, byteArrayOutputStream);
                    } catch (Throwable th) {
                        th = th;
                        try {
                            FlyLog.getInstance().d(th);
                            C1293r.a(dataOutputStream, byteArrayOutputStream);
                        } catch (Throwable th2) {
                            C1293r.a(dataOutputStream, byteArrayOutputStream);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    dataOutputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                byteArrayOutputStream = null;
                dataOutputStream = null;
            }
            return strByteToHex;
        }
    }

    static c b() {
        return c.a(ae.b().b("key_duid_param_blacklist", (String) null));
    }

    static C0027a c() {
        try {
            String strB = ae.b().b("key_duid_entity", (String) null);
            if (!TextUtils.isEmpty(strB)) {
                return C0027a.a(Data.AES128Decode(DH.SyncMtd.getModelForFly(), Base64.decode(strB, 0)));
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        return null;
    }

    synchronized String d() {
        C0027a c0027aC = c();
        if (c0027aC == null || TextUtils.isEmpty(c0027aC.c())) {
            return null;
        }
        return c0027aC.c();
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<String> f934a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<String> f935b;

        public c(List<String> list, List<String> list2) {
            this.f934a = list;
            this.f935b = list2;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0025  */
        /* JADX WARN: Code duplicated, block: B:21:0x0040  */
        public static c a(String str) {
            List<String> listB;
            List<String> listB2;
            if (!TextUtils.isEmpty(str)) {
                try {
                    HashMap mapFromJson = HashonHelper.fromJson(str);
                    Object obj = mapFromJson.get("idfas");
                    if (obj == null) {
                        listB = null;
                    } else if (obj instanceof String) {
                        listB = b((String) obj);
                    } else if (obj instanceof List) {
                        listB = (List) obj;
                    } else {
                        listB = null;
                    }
                    Object obj2 = mapFromJson.get("oiid");
                    if (obj2 == null) {
                        listB2 = null;
                    } else if (obj2 instanceof String) {
                        listB2 = b((String) obj2);
                    } else if (obj2 instanceof List) {
                        listB2 = (List) obj2;
                    } else {
                        listB2 = null;
                    }
                    return new c(listB, listB2);
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                }
            }
            return null;
        }

        public HashMap<String, Object> b() {
            HashMap<String, Object> map = new HashMap<>();
            map.put("idfas", this.f934a);
            map.put("oiid", this.f935b);
            return map;
        }

        public List<String> c() {
            return this.f934a;
        }

        public List<String> d() {
            return this.f935b;
        }

        private static List<String> b(String str) {
            String[] strArrSplit;
            if (!TextUtils.isEmpty(str) && (strArrSplit = str.split(",")) != null && strArrSplit.length > 0) {
                return new ArrayList(Arrays.asList(strArrSplit));
            }
            return new ArrayList();
        }

        public String a() {
            return HashonHelper.fromHashMap(b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(c cVar) {
        ae.b().a("key_duid_param_blacklist", cVar != null ? cVar.a() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(C0027a c0027a) {
        String strA;
        if (c0027a != null) {
            try {
                strA = c0027a.a();
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
                return;
            }
        } else {
            strA = null;
        }
        ae.b().a("key_duid_entity", Base64.encodeToString(Data.EncodeNoPadding(DH.SyncMtd.getModelForFly(), strA), 0));
    }

    static a a() {
        return f915d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] b(String str, HashMap<String, Object> map) {
        String strFromHashMap = HashonHelper.fromHashMap(map);
        try {
            return Data.AES128Encode(str, strFromHashMap);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return strFromHashMap.getBytes();
        }
    }

    void a(final FlyProduct flyProduct, final cn.fly.tools.utils.d<Void> dVar) {
        ac.f1042a.execute(new cn.fly.tools.utils.i() { // from class: cn.fly.commons.a.1
            @Override // cn.fly.tools.utils.i
            protected void a() {
                if (cn.fly.commons.c.a(n.a("002,babg"))) {
                    if (!cn.fly.commons.c.e()) {
                        int i10 = 0;
                        while (i10 < 5) {
                            i10++;
                            try {
                                Thread.sleep(5000L);
                                if (cn.fly.commons.c.e()) {
                                    break;
                                }
                            } catch (Throwable unused) {
                            }
                        }
                    }
                    if (cn.fly.commons.c.e()) {
                        FlyLog.getInstance().d("di init", new Object[0]);
                        DH.RequestBuilder dm = DH.requester(FlySDK.getContext()).getAdvertisingID().getCarrierStrict(false).getMemoryInfo().getSizeInfo().cx().isRooted().getDeviceType().checkPad().getScreenSize().getDetailNetworkTypeForStatic().getODH().getOD().getAppLastUpdateTime().getMIUIVersionForFly().getInnerAppLanguage().getGrammaticalGender().getDM(false);
                        if (((Integer) cn.fly.commons.c.a("ndi", 0)).intValue() == 1) {
                            dm.getLATime(n.a("028jUbaLbgbj*dgcadgBgd)bdOjebDdg3gAfiPfdbSba5dJbhbjQg cgMg")).getLATime(n.a("035jRba4bgbj,dgcadg4gd=bdEjFde7bgafeBbgdg%g=bfdg dggFbg0c^chdgbjcgbdWe")).getLATime(n.a("028j[ba0bgbj[dgcadg%gdHbd;je'bi:aYcfdg9dggLbg%c4chdgbjbadd")).getLATime(n.a("005jGbaIbgb")).getLATime(n.a("012jJbaLbgbj%dgcadgGgd^bd")).getLATime(n.a("018jMba^bgbj_dgcadg gd0bd=j(bedgQdXbhdg")).getLATime(n.a("045j!ba;bgbjUdgcadgPgd%bdYj^bedg d^bhdgOjXdf-jBdgGdgg*bg=c-chdgbfcdbg4c7ch(d5bhLhWbhbg(cg'bjcgbd,e"));
                        }
                        dm.request(new DH.DHResponder() { // from class: cn.fly.commons.a.1.1
                            @Override // cn.fly.tools.utils.DH.DHResponder
                            public void onResponse(DH.DHResponse dHResponse) {
                                try {
                                    synchronized (a.this.f917b) {
                                        String strA = a.this.a(f.f1326a, dHResponse);
                                        HashMap<String, Object> mapF = a.this.f();
                                        boolean zA = a.this.a(mapF, dHResponse);
                                        boolean zI = a.this.i();
                                        a.this.f916a = zA || zI;
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        boolean zA2 = a.this.a(mapF, flyProduct, dHResponse);
                                        FlyLog.getInstance().d("map: " + mapF + "\nisCh: " + zA + ", isG: " + zI + ", isReg: " + zA2, ", udif:" + a.this.f916a);
                                        if (a.this.f916a) {
                                            if (TextUtils.isEmpty(strA)) {
                                                strA = f.f1326a;
                                            }
                                            a.this.a(mapF, strA, dHResponse);
                                        }
                                        if (zA || zA2) {
                                            a.this.a(mapF);
                                        }
                                    }
                                    dVar.a(null);
                                } catch (Throwable th) {
                                    dVar.a(null);
                                    throw th;
                                }
                            }
                        });
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, DH.DHResponse dHResponse) {
        try {
            if (!cn.fly.commons.c.d()) {
                return null;
            }
            C0027a c0027aC = c();
            if (c0027aC != null && !c0027aC.a(ae.b().b("key_request_duid_time", 0L)) && !ab.a().d()) {
                return null;
            }
            HashMap<String, Object> map = new HashMap<>();
            map.put(n.a("004hebg"), 1);
            map.put(n.a("005RbdbibaKde"), DH.SyncMtd.getModelForFly());
            map.put(n.a("007[cdMbag9bibhca"), DH.SyncMtd.getManufacturerForFly());
            map.put("admt", dHResponse.getAdvertisingID());
            map.put("oamt", cn.fly.tools.b.c.a(FlySDK.getContext()).d().ao());
            map.put("btt", Long.valueOf(SystemClock.elapsedRealtime()));
            map.put(n.a("004Dbhbabgba"), ab.a().e());
            map.put("v", ab.a().b());
            map.put(n.a("004hYbebgba"), ab.a().f());
            map.put(n.a("005'babhbdbgba"), dHResponse.getDM());
            map.put(n.a("008g6biTh2bfbabhbddg"), ab.a().i());
            if (c0027aC == null) {
                map.put(n.a("004)babebgba"), str);
                map.put("genType", "common");
            } else {
                map.put(n.a("004Lbabebgba"), c0027aC.c());
                map.put("gt", Long.valueOf(c0027aC.d()));
                map.put("genType", c0027aC.e());
                map.put("expTime", Long.valueOf(c0027aC.f()));
                map.put(n.a("002_ch%h"), c0027aC.g());
            }
            HashMap map2 = (HashMap) new NetCommunicator(1024, "ceeef5035212dfe7c6a0acdc0ef35ce5b118aab916477037d7381f85c6b6176fcf57b1d1c3296af0bb1c483fe5e1eb0ce9eb2953b44e494ca60777a1b033cc07", "191737288d17e660c4b61440d5d14228a0bf9854499f9d68d8274db55d6d954489371ecf314f26bec236e58fac7fffa9b27bcf923e1229c4080d49f7758739e5bd6014383ed2a75ce1be9b0ab22f283c5c5e11216c5658ba444212b6270d629f2d615b8dfdec8545fb7d4f935b0cc10b6948ab4fc1cb1dd496a8f94b51e888dd").requestWithoutEncode(true, null, map, j.a().a("dg") + "/v4/dgen", true);
            if (map2 != null) {
                ae.b().a("key_request_duid_time", System.currentTimeMillis());
                String str2 = (String) map2.get(n.a("004)bhbabgba"));
                if (!TextUtils.isEmpty(str2)) {
                    ab.a().a(str2);
                }
                C0027a c0027aA = C0027a.a(HashonHelper.fromHashMap(map2));
                if (c0027aA != null) {
                    b(c0027aA);
                    return c0027aA.c();
                }
            }
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
        }
        return null;
    }

    /* JADX INFO: renamed from: cn.fly.commons.a$a, reason: collision with other inner class name */
    static class C0027a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f927a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f928b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f929c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f930d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f931e;

        public C0027a(String str, long j10, String str2, long j11, String str3) {
            this.f927a = str;
            this.f928b = j10;
            this.f929c = str2;
            this.f930d = j11;
            this.f931e = str3;
        }

        /* JADX WARN: Code duplicated, block: B:31:0x007a  */
        /* JADX WARN: Code duplicated, block: B:41:0x009b  */
        public static C0027a a(String str) {
            long jIntValue;
            long j10;
            long jIntValue2;
            if (!TextUtils.isEmpty(str)) {
                try {
                    HashMap mapFromJson = HashonHelper.fromJson(str);
                    String str2 = (String) mapFromJson.get(n.a("004Fbabebgba"));
                    if (TextUtils.isEmpty(str2) || TextUtils.equals("null", str2)) {
                        str2 = null;
                    }
                    String str3 = (String) mapFromJson.get("genType");
                    String str4 = (TextUtils.isEmpty(str3) || TextUtils.equals("null", str3)) ? null : str3;
                    String str5 = (String) mapFromJson.get(n.a("002@chPh"));
                    String str6 = (TextUtils.isEmpty(str5) || TextUtils.equals("null", str5)) ? null : str5;
                    Object obj = mapFromJson.get("gt");
                    if (obj == null) {
                        jIntValue = 0;
                    } else if (obj instanceof Long) {
                        jIntValue = ((Long) obj).longValue();
                    } else if (obj instanceof Integer) {
                        jIntValue = ((Integer) obj).intValue();
                    } else {
                        jIntValue = 0;
                    }
                    Object obj2 = mapFromJson.get("expTime");
                    if (obj2 == null) {
                        j10 = 0;
                    } else {
                        if (obj2 instanceof Long) {
                            jIntValue2 = ((Long) obj2).longValue();
                        } else if (obj2 instanceof Integer) {
                            jIntValue2 = ((Integer) obj2).intValue();
                        } else {
                            j10 = 0;
                        }
                        j10 = jIntValue2;
                    }
                    return new C0027a(str2, jIntValue, str4, j10, str6);
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                }
            }
            return null;
        }

        public HashMap<String, Object> b() {
            HashMap<String, Object> map = new HashMap<>();
            map.put(n.a("004$babebgba"), this.f927a);
            map.put("gt", Long.valueOf(this.f928b));
            map.put("genType", this.f929c);
            map.put("expTime", Long.valueOf(this.f930d));
            map.put(n.a("002JchSh"), this.f931e);
            return map;
        }

        public String c() {
            return this.f927a;
        }

        public long d() {
            return this.f928b;
        }

        public String e() {
            return this.f929c;
        }

        public long f() {
            return this.f930d;
        }

        public String g() {
            return this.f931e;
        }

        public String a() {
            return HashonHelper.fromHashMap(b());
        }

        public boolean a(long j10) {
            long j11 = this.f930d;
            return j11 == 0 || j10 + (j11 * 1000) <= System.currentTimeMillis();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(HashMap<String, Object> map, FlyProduct flyProduct, DH.DHResponse dHResponse) {
        if (flyProduct == null) {
            flyProduct = new FlyProduct() { // from class: cn.fly.commons.Authorizer$2
                @Override // cn.fly.commons.FlyProduct
                public String getProductTag() {
                    return n.a("0064cbeffafaefce");
                }

                @Override // cn.fly.commons.FlyProduct
                public int getSdkver() {
                    return FlySDK.SDK_VERSION_CODE;
                }
            };
        }
        boolean z10 = false;
        try {
            HashMap map2 = (HashMap) map.get(n.a("007bhh7cc^c*cdbi"));
            if (map2 == null) {
                map2 = new HashMap();
                map.put(n.a("007bhh-cc2cMcdbi"), map2);
                z10 = true;
            }
            HashMap map3 = (HashMap) map2.get(DH.SyncMtd.getPackageName());
            String str = map3 != null ? (String) map3.get(flyProduct.getProductTag()) : null;
            String strA = q.a();
            if ((str == null || !str.equals(strA)) && a(flyProduct, map, dHResponse)) {
                return true;
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        return z10;
    }

    private boolean a(FlyProduct flyProduct, HashMap<String, Object> map, DH.DHResponse dHResponse) throws Throwable {
        if (!cn.fly.commons.c.d()) {
            return false;
        }
        HashMap<String, Object> map2 = new HashMap<>();
        map2.put(n.a("007hSbhbibabe,ag"), flyProduct.getProductTag());
        C0027a c0027aC = c();
        String strC = c0027aC != null ? c0027aC.c() : null;
        String strValueOf = String.valueOf(DH.SyncMtd.getPackageName());
        map2.put(n.a("006bhh[cfCdHca"), q.a());
        map2.put(n.a("004Mbabebgba"), strC);
        map2.put(n.a("006bhhhDcfch"), strValueOf);
        map2.put(n.a("006bhh*bbTd?bh"), String.valueOf(DH.SyncMtd.getAppVersion()));
        map2.put(n.a("006+dgbacfbbRd3bh"), String.valueOf(flyProduct.getSdkver()));
        map2.put(n.a("007cdg$debibhcf"), String.valueOf(dHResponse.getDetailNetworkTypeForStatic()));
        String str = j.a().a("dg") + n.a("006j9badgbgch:c");
        HashMap<String, String> map3 = new HashMap<>();
        map3.put(n.a("0131cidg,d7bhficcba]dcg;bgHg2ca"), ad.e());
        map3.put(n.a("004Zbdbibgba"), dHResponse.getODH());
        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
        networkTimeOut.readTimout = 10000;
        networkTimeOut.connectionTimeout = 10000;
        HashMap mapFromJson = HashonHelper.fromJson(new NetworkHelper().httpPostNew(str, map2, map3, networkTimeOut));
        if (n.a("004g_bhbe;d").equals(String.valueOf(mapFromJson.get(n.a("0047bh6d!be!h"))))) {
            this.f916a = true;
        }
        if (!ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS.equals(String.valueOf(mapFromJson.get(n.a("006:dg]gbgYbedg"))))) {
            return false;
        }
        HashMap map4 = (HashMap) map.get(n.a("007bhh8ccGcZcdbi"));
        HashMap map5 = (HashMap) map4.get(strValueOf);
        if (map5 == null) {
            map5 = new HashMap();
        }
        map5.put(flyProduct.getProductTag(), q.a());
        map4.put(strValueOf, map5);
        map.put(n.a("007bhh)cc9cHcdbi"), map4);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(HashMap<String, Object> map, String str, DH.DHResponse dHResponse) {
        try {
            if (cn.fly.commons.c.d()) {
                HashMap map2 = (HashMap) map.get(n.a("010Hba-dVbbbgXadQcc3c*cdbi"));
                HashMap map3 = new HashMap();
                map3.put(n.a("005g3bicfLdc"), af.a().b());
                for (Map.Entry entry : map2.entrySet()) {
                    map3.put(entry.getKey(), entry.getValue());
                }
                try {
                    map3.put(n.a("007ab-bhbhbgId[bh"), Integer.valueOf(Integer.parseInt(String.valueOf(map3.get(n.a("007ab,bhbhbg'd;bh"))))));
                } catch (Throwable unused) {
                }
                map3.put(n.a("004>babebgba"), str);
                HashMap<String, Long> memoryInfo = dHResponse.getMemoryInfo();
                HashMap<String, HashMap<String, Long>> sizeInfo = dHResponse.getSizeInfo();
                if (memoryInfo != null) {
                    map3.put(n.a("003JbhUbObd"), memoryInfo.get(n.a("005g)biFgbe")));
                }
                if (sizeInfo != null) {
                    HashMap<String, Long> map4 = sizeInfo.get(n.a("0063dgba)ab1bhba"));
                    if (map4 != null) {
                        map3.put(n.a("013XdgbaBab8bhbacj1g0bibh5bBch<d"), map4.get(n.a("005gAbiQgbe")));
                    }
                    HashMap<String, Long> map5 = sizeInfo.get(n.a("004Fba0bgb"));
                    if (map5 != null) {
                        map3.put(n.a("011Kba+bgb6cj7g bibh,b*chGd"), map5.get(n.a("005gEbi9gbe")));
                    }
                }
                try {
                    String str2 = (String) map3.get("fsuud");
                    if (!TextUtils.isEmpty(str2)) {
                        map3.put("fsuud", HashonHelper.fromJson(str2));
                    }
                } catch (Throwable unused2) {
                }
                map3.put(n.a("006Ibhbibdccbdch"), dHResponse.getMIUIVersionForFly());
                String strEncodeToString = Base64.encodeToString(Data.AES128Encode(g(), HashonHelper.fromHashMap(map3)), 2);
                HashMap<String, Object> map6 = new HashMap<>();
                map6.put(com.kuaishou.weapon.p0.t.f74888m, strEncodeToString);
                NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                networkTimeOut.readTimout = 30000;
                networkTimeOut.connectionTimeout = 30000;
                NetworkHelper networkHelper = new NetworkHelper();
                String str3 = j.a().a("dg") + n.a("006jBbabg[c_cdbi");
                HashMap<String, String> map7 = new HashMap<>();
                map7.put(n.a("013GcidgMd+bhficcba%dcg)bgMg!ca"), ad.e());
                map7.put(n.a("004Pbdbibgba"), cn.fly.tools.b.c.a(FlySDK.getContext()).d().ap());
                if (ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS.equals(String.valueOf(HashonHelper.fromJson(networkHelper.httpPostNew(str3, map6, map7, networkTimeOut)).get(n.a("0069dgLgbgJbedg"))))) {
                    ae.b().a(ae.f1061a, System.currentTimeMillis());
                }
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    void a(final HashMap<String, Object> map) {
        if (map != null) {
            synchronized (this.f918c) {
                v.a(v.a(v.f1429c), new u() { // from class: cn.fly.commons.a.3
                    @Override // cn.fly.commons.u
                    public boolean a(FileLocker fileLocker) {
                        ResHelper.writeToFileNoCompress(a.this.h(), a.b(DH.SyncMtd.getModelForFly(), map));
                        return false;
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:114:0x0317  */
    public boolean a(HashMap<String, Object> map, DH.DHResponse dHResponse) {
        boolean z10;
        boolean z11;
        int i10;
        boolean z12 = true;
        if (map == null) {
            map = new HashMap<>();
            z10 = true;
        } else {
            z10 = false;
        }
        HashMap map2 = (HashMap) map.get(n.a("010PbaRd:bbbgVadScc4cWcdbi"));
        if (map2 == null) {
            map2 = new HashMap();
            map.put(n.a("010?baZd^bbbg5adKccAcVcdbi"), map2);
            z10 = true;
        }
        Object obj = map2.get("admt");
        String advertisingID = dHResponse.getAdvertisingID();
        if (advertisingID == null || advertisingID.equals(obj)) {
            z11 = false;
        } else {
            map2.put("admt", advertisingID);
            z11 = true;
        }
        Object obj2 = map2.get(n.a("0041biGbQbgba"));
        String od = dHResponse.getOD();
        if ((obj2 != null || TextUtils.isEmpty(od)) && (obj2 == null || TextUtils.isEmpty(od) || String.valueOf(obj2).equals(od))) {
            i10 = 0;
        } else {
            map2.put(n.a("004GbiTb$bgba"), od);
            z11 = true;
            i10 = 1;
        }
        Object obj3 = map2.get(n.a("004Zbhbabgba"));
        String strC = ab.a().c();
        if ((obj3 == null && !TextUtils.isEmpty(strC)) || (obj3 != null && !TextUtils.isEmpty(strC) && !String.valueOf(obj3).equals(strC))) {
            map2.put(n.a("004Tbhbabgba"), strC);
            i10 |= 2;
            z11 = true;
        }
        Object obj4 = map2.get(n.a("005Fbabhbdbgba"));
        String dm = dHResponse.getDM();
        if ((obj4 == null && !TextUtils.isEmpty(dm)) || (obj4 != null && !TextUtils.isEmpty(dm) && !String.valueOf(obj4).equals(dm))) {
            map2.put(n.a("005+babhbdbgba"), dm);
            i10 |= 4;
            z11 = true;
        }
        Object obj5 = map2.get(n.a("004hFbebgba"));
        String strF = ab.a().f();
        if ((obj5 == null && !TextUtils.isEmpty(strF)) || (obj5 != null && !TextUtils.isEmpty(strF) && !String.valueOf(obj5).equals(strF))) {
            map2.put(n.a("004hJbebgba"), strF);
            i10 |= 8;
            z11 = true;
        }
        Object obj6 = map2.get("v");
        String strB = ab.a().b();
        if ((obj6 == null && !TextUtils.isEmpty(strB)) || (obj6 != null && !TextUtils.isEmpty(strB) && !String.valueOf(obj6).equals(strB))) {
            map2.put("v", strB);
            z11 = true;
        }
        map2.put("cid_modify", Integer.valueOf(i10));
        if (z11) {
            z10 = true;
        }
        Object obj7 = map2.get(n.a("005Ubdbiba'de"));
        String modelForFly = DH.SyncMtd.getModelForFly();
        if (modelForFly != null && !modelForFly.equals(obj7)) {
            map2.put(n.a("005<bdbibaTde"), modelForFly);
            z10 = true;
        }
        Object obj8 = map2.get(n.a("007AcdPbagMbibhca"));
        String manufacturerForFly = DH.SyncMtd.getManufacturerForFly();
        if (manufacturerForFly != null && !manufacturerForFly.equals(obj8)) {
            map2.put(n.a("007!cd[bag=bibhca"), manufacturerForFly);
            z10 = true;
        }
        Object obj9 = map2.get(n.a("007abPbhbhbg-d(bh"));
        String carrierStrict = dHResponse.getCarrierStrict(new int[0]);
        if (carrierStrict != null && !carrierStrict.equals(obj9)) {
            map2.put(n.a("007abPbhbhbg!dMbh"), carrierStrict);
            z10 = true;
        }
        Object obj10 = map2.get(n.a("006Fdgcadgbb7d$bh"));
        String oSVersionNameForFly = DH.SyncMtd.getOSVersionNameForFly();
        if (oSVersionNameForFly != null && !oSVersionNameForFly.equals(obj10)) {
            map2.put(n.a("006Rdgcadgbb)d7bh"), oSVersionNameForFly);
            z10 = true;
        }
        Object obj11 = map2.get(n.a("002*cgCh"));
        boolean zCx = dHResponse.cx();
        if (obj11 == null || !String.valueOf(zCx ? 1 : 0).equals(String.valueOf(obj11))) {
            map2.put(n.a("002WcgYh"), Integer.valueOf(zCx ? 1 : 0));
            z10 = true;
        }
        Object obj12 = map2.get(n.a("007OddbhRdbIcf:d_ba"));
        boolean zIsRooted = dHResponse.isRooted();
        map2.put(n.a("007HddbhZdbXcf:dHba"), Boolean.valueOf(zIsRooted));
        if ((obj12 == null && zIsRooted) || (obj12 != null && !String.valueOf(obj12).equals(String.valueOf(zIsRooted)))) {
            z10 = true;
        }
        String strValueOf = String.valueOf(map2.get("prelangmt"));
        String strValueOf2 = String.valueOf(dHResponse.getInnerAppLanguage());
        if (!TextUtils.equals(strValueOf, strValueOf2)) {
            map2.put("prelangmt", strValueOf2);
            z10 = true;
        }
        Object obj13 = map2.get("gramgendt");
        int grammaticalGender = dHResponse.getGrammaticalGender();
        if (obj13 == null || !TextUtils.equals(String.valueOf(obj13), String.valueOf(grammaticalGender))) {
            map2.put("gramgendt", Integer.valueOf(grammaticalGender));
            z10 = true;
        }
        if (((Integer) cn.fly.commons.c.a("ndi", 0)).intValue() == 1) {
            String str = (String) map2.get("fsuud");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("fbt", Long.valueOf(dHResponse.getLATime(0)));
            linkedHashMap.put("fwt", Long.valueOf(dHResponse.getLATime(1)));
            linkedHashMap.put("fls", Long.valueOf(dHResponse.getLATime(2)));
            linkedHashMap.put("fda", Long.valueOf(dHResponse.getLATime(3)));
            linkedHashMap.put("fsm", Long.valueOf(dHResponse.getLATime(4)));
            linkedHashMap.put("fus", Long.valueOf(dHResponse.getLATime(5)));
            linkedHashMap.put("fsf", Long.valueOf(dHResponse.getLATime(6)));
            String strFromHashMap = HashonHelper.fromHashMap(linkedHashMap);
            if (TextUtils.equals(str, strFromHashMap)) {
                z12 = z10;
            } else {
                map2.put("fsuud", strFromHashMap);
            }
        } else {
            z12 = z10;
        }
        map2.put(n.a("004hebg"), Integer.valueOf(DH.SyncMtd.getPlatformCode()));
        map2.put(n.a("010!ba,dIbbbgQad3dacaShd"), dHResponse.getDeviceType());
        map2.put(n.a("003hbLba"), Integer.valueOf(dHResponse.checkPad() ? 1 : 0));
        map2.put(n.a("010ZdgHaYbh!ddcSdgbgebVd"), dHResponse.getScreenSize());
        HashMap<String, Object> mapA = cn.fly.commons.c.d.a(FlySDK.getContext());
        if (mapA != null && mapA.size() > 0) {
            map2.putAll(mapA);
        }
        return z12;
    }

    private static HashMap<String, Object> a(String str, byte[] bArr) throws Throwable {
        return HashonHelper.fromJson(Data.AES128Decode(str, bArr));
    }
}
