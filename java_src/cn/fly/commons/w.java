package cn.fly.commons;

import android.content.Intent;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.network.NetworkHelper;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.FileLocker;
import cn.fly.tools.utils.FlyRSA;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.ReflectHelper;
import com.tencent.stat.DeviceInfo;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes7.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f1443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static w f1444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private File f1445c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f1448f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile List<Pair<Integer, String>> f1449g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AtomicInteger f1450h = new AtomicInteger(100);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BigInteger f1446d = new BigInteger("f53c224aefb38daa0825c1b8ea691b16d2e16db10880548afddd780c6670a091a11dafa954ea4a9483797fda1045d2693a08daa48cf9cedce1e8733b857304cb", 16);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BigInteger f1447e = new BigInteger("27749621e6ca022469645faed16e8261acf6af822467382d55c24bb9bc02356ab16e76ddc799dc8ba6b4f110411996eeb63505c9dcf969d3fc085d712f0f1a9713b67aa1128d7cc41bda363afb0ec7ade60e542a4e22869395331cc0096de412034551e98bb2629ae1b7168b8bc82006d064ab335d8567283e70beb6a49e9423", 16);

    private static class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (cn.fly.commons.c.d()) {
                    DH.requester(FlySDK.getContext()).getDetailNetworkTypeForStatic().request(new DH.DHResponder() { // from class: cn.fly.commons.w.c.1
                        @Override // cn.fly.tools.utils.DH.DHResponder
                        public void onResponse(DH.DHResponse dHResponse) {
                            if (cn.fly.commons.a.m.a("004f?el1fg").equals(dHResponse.getDetailNetworkTypeForStatic())) {
                                return;
                            }
                            w.a().a(new cn.fly.tools.utils.i() { // from class: cn.fly.commons.w.c.1.1
                                @Override // cn.fly.tools.utils.i
                                protected void a() throws Throwable {
                                    FlyLog.getInstance().d("[LGSM] UCLR", new Object[0]);
                                    w.b(1).a(new b());
                                    w.b(4).a(new b());
                                }
                            });
                        }
                    });
                } else {
                    FlyLog.getInstance().d("[LGSM] ULR Ck nt: FBDN", new Object[0]);
                }
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
    }

    private w() {
    }

    public void b() {
        if (this.f1448f.compareAndSet(false, true)) {
            FlyLog.getInstance().d("[LGSM] Sd last", new Object[0]);
            ac.f1043b.execute(new c());
        }
    }

    public static synchronized w a() {
        if (f1444b == null) {
            f1444b = new w();
        }
        return f1444b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static cn.fly.tools.a b(int i10) {
        return new cn.fly.tools.a(cn.fly.commons.a.m.a("005,emegLdhVfk"), cn.fly.commons.a.m.a("005,emegLdhVfk") + "-" + i10, 50);
    }

    private static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1453a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1454b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f1455c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f1456d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<String> f1457e;

        private a() {
        }

        public a a(int i10, int i11, String str, String str2, List<String> list) {
            this.f1453a = i10;
            this.f1454b = i11;
            this.f1455c = str;
            this.f1456d = str2;
            this.f1457e = list;
            return this;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                List<String> list = this.f1457e;
                if (list != null && !list.isEmpty()) {
                    a(this.f1453a, this.f1454b, this.f1455c, this.f1457e);
                }
                if (TextUtils.isEmpty(this.f1456d)) {
                    return;
                }
                a(this.f1453a, this.f1454b, this.f1455c, this.f1456d);
            } catch (Throwable th) {
                FlyLog.getInstance().w(th);
            }
        }

        private void a(final int i10, final int i11, final String str, final String str2) {
            FlyLog.getInstance().d("[LGSM] SLR: onL", new Object[0]);
            if (w.a().a(new cn.fly.tools.utils.i() { // from class: cn.fly.commons.w.a.1
                @Override // cn.fly.tools.utils.i
                protected void a() throws Throwable {
                    FlyLog.getInstance().d("[LGSM] SLR: Ins", new Object[0]);
                    HashMap map = new HashMap();
                    map.put(cn.fly.commons.a.m.a("010Zgjedfihl@g-ekgjejel!f"), Integer.valueOf(i10));
                    map.put(cn.fly.commons.a.m.a("0060gjedfigd e?fk"), str);
                    map.put(cn.fly.commons.a.m.a("004j1fd.kg"), Integer.valueOf(i11));
                    map.put(cn.fly.commons.a.m.a("005g+ekek4ej"), Long.valueOf(System.currentTimeMillis()));
                    String strEncode = URLEncoder.encode(str2);
                    if (TextUtils.isEmpty(strEncode)) {
                        strEncode = str2;
                    }
                    map.put(cn.fly.commons.a.m.a("003_eggjfk"), Base64.encodeToString(strEncode.getBytes("utf-8"), 2));
                    map.put(cn.fly.commons.a.m.a("005j2ejegFgDgj"), 1);
                    FlyLog.getInstance().d("[LGSM] W l " + map, new Object[0]);
                    w.b(i11).a(HashonHelper.fromHashMap(map));
                }
            }) && aa.b()) {
                FlyLog.getInstance().d("[LGSM] SLR: U", new Object[0]);
                ac.f1043b.execute(new c());
            }
        }

        private void a(final int i10, final int i11, final String str, final List<String> list) {
            FlyLog.getInstance().d("[LGSM] SLR: onL", new Object[0]);
            if (w.a().a(new cn.fly.tools.utils.i() { // from class: cn.fly.commons.w.a.2
                @Override // cn.fly.tools.utils.i
                protected void a() throws Throwable {
                    FlyLog.getInstance().d("[LGSM] SLR: Ins", new Object[0]);
                    for (String str2 : list) {
                        HashMap map = new HashMap();
                        map.put(cn.fly.commons.a.m.a("010<gjedfihlUgMekgjejel'f"), Integer.valueOf(i10));
                        map.put(cn.fly.commons.a.m.a("006IgjedfigdGeXfk"), str);
                        map.put(cn.fly.commons.a.m.a("004j3fd2kg"), Integer.valueOf(i11));
                        map.put(cn.fly.commons.a.m.a("005gEekek?ej"), Long.valueOf(System.currentTimeMillis()));
                        String strEncode = URLEncoder.encode(str2);
                        if (!TextUtils.isEmpty(strEncode)) {
                            str2 = strEncode;
                        }
                        map.put(cn.fly.commons.a.m.a("003>eggjfk"), Base64.encodeToString(str2.getBytes("utf-8"), 2));
                        map.put(cn.fly.commons.a.m.a("005jJejegPgRgj"), 1);
                        FlyLog.getInstance().d("[LGSM] W l " + map, new Object[0]);
                        w.b(i11).a(HashonHelper.fromHashMap(map));
                    }
                }
            }) && aa.b()) {
                FlyLog.getInstance().d("[LGSM] SLR: U", new Object[0]);
                ac.f1043b.execute(new c());
            }
        }
    }

    private static class b implements cn.fly.tools.a.InterfaceC0037a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ArrayList<HashMap<String, Object>> f1468a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1469b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f1470c;

        private b() {
            this.f1468a = new ArrayList<>();
            this.f1469b = -1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private String b(String str) throws Throwable {
            ByteArrayInputStream byteArrayInputStream;
            Throwable th;
            byte[] bytes;
            GZIPOutputStream gZIPOutputStream;
            Throwable th2;
            try {
                bytes = str.getBytes();
                byteArrayInputStream = new ByteArrayInputStream(bytes);
                try {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                            try {
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int i10 = byteArrayInputStream.read(bArr, 0, 1024);
                                    if (i10 == -1) {
                                        gZIPOutputStream.flush();
                                        C1293r.a(gZIPOutputStream);
                                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                                        byteArrayOutputStream.flush();
                                        String strEncodeToString = Base64.encodeToString(byteArray, 2);
                                        C1293r.a(byteArrayOutputStream, byteArrayInputStream);
                                        return strEncodeToString;
                                    }
                                    gZIPOutputStream.write(bArr, 0, i10);
                                }
                            } catch (Throwable th3) {
                                th2 = th3;
                                C1293r.a(gZIPOutputStream);
                                throw th2;
                            }
                        } catch (Throwable th4) {
                            gZIPOutputStream = null;
                            th2 = th4;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        C1293r.a(bytes, byteArrayInputStream);
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    bytes = null;
                    C1293r.a(bytes, byteArrayInputStream);
                    throw th;
                }
            } catch (Throwable th7) {
                byteArrayInputStream = null;
                th = th7;
                bytes = null;
            }
        }

        @Override // cn.fly.tools.a.InterfaceC0037a
        public void a(String str) {
            FlyLog.getInstance().d("[LGSM] ULL onRd " + str, new Object[0]);
            HashMap<String, Object> mapFromJson = HashonHelper.fromJson(str);
            try {
                this.f1469b = Integer.parseInt(String.valueOf(mapFromJson.get(cn.fly.commons.a.m.a("010QgjedfihlEgGekgjejel0f"))));
            } catch (Throwable unused) {
            }
            this.f1470c = (String) mapFromJson.get(cn.fly.commons.a.m.a("0064gjedfigd7e6fk"));
            this.f1468a.add(mapFromJson);
        }

        @Override // cn.fly.tools.a.InterfaceC0037a
        public boolean a(DH.DHResponse dHResponse) {
            FlyLog.getInstance().d("[LGSM] ULL onUd", new Object[0]);
            HashMap<String, Object> mapA = a(dHResponse, this.f1469b, this.f1470c);
            mapA.put(cn.fly.commons.a.m.a("006gXekekeggjfk"), this.f1468a);
            try {
                String strB = b(HashonHelper.fromHashMap(mapA));
                this.f1468a.clear();
                HashMap<String, Object> map = new HashMap<>();
                map.put(com.kuaishou.weapon.p0.t.f74888m, strB);
                NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                networkTimeOut.readTimout = 10000;
                networkTimeOut.connectionTimeout = 10000;
                HashMap<String, String> map2 = new HashMap<>();
                map2.put(cn.fly.commons.a.m.a("013!flgj=g%ekilffedOgfj8ejRj4fd"), ad.e());
                map2.put(cn.fly.commons.a.m.a("0045egelejed"), dHResponse.getODH());
                String str = j.a().a(com.kuaishou.weapon.p0.t.f74889n) + "/errlog";
                FlyLog.getInstance().d("[LGSM] ULL onUd: Req", new Object[0]);
                String strHttpPostNew = new NetworkHelper().httpPostNew(str, map, map2, networkTimeOut);
                FlyLog.getInstance().d("[LGSM] ULL onUd: " + String.format("Resp(%s): %s", str, strHttpPostNew), new Object[0]);
                Object obj = HashonHelper.fromJson(strHttpPostNew).get(cn.fly.commons.a.m.a("006@gj!jejRehgj"));
                return (obj != null ? ((Integer) obj).intValue() : 0) == 200;
            } catch (Throwable th) {
                FlyLog.getInstance().d("[LGSM] ULL onUd: E", new Object[0]);
                FlyLog.getInstance().d(th);
            }
        }

        private HashMap<String, Object> a(DH.DHResponse dHResponse, int i10, String str) {
            HashMap<String, Object> map = new HashMap<>();
            map.put(cn.fly.commons.a.m.a("003;fiRg5fd"), q.a());
            map.put(cn.fly.commons.a.m.a("004;edehejed"), f.a((FlyProduct) null));
            map.put(cn.fly.commons.a.m.a("004khej"), Integer.valueOf(DH.SyncMtd.getPlatformCode()));
            map.put(cn.fly.commons.a.m.a("0032gjedfi"), str);
            map.put(cn.fly.commons.a.m.a("006JgjedfieeAgXek"), Integer.valueOf(i10));
            map.put(cn.fly.commons.a.m.a("007ekkfe@eg,g"), dHResponse.getAppName());
            map.put(cn.fly.commons.a.m.a("006ekkkTfifk"), DH.SyncMtd.getPackageName());
            map.put(cn.fly.commons.a.m.a("006ekkWee9gVek"), String.valueOf(DH.SyncMtd.getAppVersion()));
            map.put(cn.fly.commons.a.m.a("005OegeledRgh"), DH.SyncMtd.getModelForFly());
            if (cn.fly.commons.c.c()) {
                map.put(cn.fly.commons.a.m.a("008!ed gJeeej(dg4ejed"), dHResponse.getDeviceKey());
            }
            map.put(cn.fly.commons.a.m.a("006BgjfdgjeeGg(ek"), String.valueOf(DH.SyncMtd.getOSVersionIntForFly()));
            map.put(cn.fly.commons.a.m.a("011fgj!ghelekfiWjQfd0kg"), dHResponse.getDetailNetworkTypeForStatic());
            return map;
        }
    }

    private void b(int i10, String str) {
        Intent intent = new Intent();
        intent.setPackage(cn.fly.commons.a.m.a("015dfUemgjRie8ek=gXgjedfiem h^elfk"));
        intent.putExtra(cn.fly.commons.a.m.a("007ked:fi[e9fkBg"), FlySDK.getContext().getPackageName());
        intent.putExtra(cn.fly.commons.a.m.a("008k*ekejelekejVj6fd"), i10);
        intent.putExtra(DeviceInfo.TAG_VERSION, FlySDK.SDK_VERSION_CODE);
        intent.putExtra(cn.fly.commons.a.m.a("003Weggjfk"), a(str));
        ReflectHelper.invokeInstanceMethod(FlySDK.getContextSafely(), cn.fly.commons.a.m.a("013_gjPgfSedgkekelBeBedOde!gjQj"), new Object[]{intent}, new Class[]{Intent.class}, 0);
    }

    public void a(int i10, String str, int i11, String str2) {
        FlyLog.getInstance().d("[LGSM] Sd curr", new Object[0]);
        new a().a(i11, i10, str, str2, null).run();
    }

    public void a(int i10, String str, int i11, List<String> list) {
        FlyLog.getInstance().d("[LGSM] Sd curr", new Object[0]);
        if (list != null) {
            new a().a(i11, i10, str, null, new ArrayList(list)).run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(final Runnable runnable) {
        if (this.f1445c == null) {
            File file = new File(FlySDK.getContext().getFilesDir(), cn.fly.commons.a.m.a("005CemKhGel:dZfi"));
            this.f1445c = file;
            if (!file.exists()) {
                try {
                    this.f1445c.createNewFile();
                } catch (Throwable unused) {
                }
            }
        }
        return v.a(this.f1445c, new u() { // from class: cn.fly.commons.w.1
            @Override // cn.fly.commons.u
            public boolean a(FileLocker fileLocker) {
                runnable.run();
                return false;
            }
        });
    }

    public int a(int i10, String str) {
        if (FlySDK.getContextSafely() == null) {
            return 0;
        }
        if (!f1443a) {
            if (this.f1450h.get() < 0) {
                return 0;
            }
            if (this.f1450h.getAndDecrement() > 0) {
                this.f1449g.add(new Pair<>(Integer.valueOf(i10), str));
                return 0;
            }
            this.f1449g.clear();
            return 0;
        }
        if (!this.f1449g.isEmpty()) {
            synchronized (this.f1449g) {
                if (!this.f1449g.isEmpty()) {
                    for (Pair<Integer, String> pair : this.f1449g) {
                        b(((Integer) pair.first).intValue(), (String) pair.second);
                    }
                    this.f1449g.clear();
                }
            }
        }
        b(i10, str);
        return 0;
    }

    private String a(String str) {
        DataOutputStream dataOutputStream;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            byte[] bArrC = C1293r.c();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    byte[] bArrEncode = new FlyRSA(1024).encode(bArrC, this.f1446d, this.f1447e);
                    dataOutputStream.writeInt(bArrEncode.length);
                    dataOutputStream.write(bArrEncode);
                    byte[] bArrAES128Encode = Data.AES128Encode(bArrC, str.getBytes("utf-8"));
                    dataOutputStream.writeInt(bArrAES128Encode.length);
                    dataOutputStream.write(bArrAES128Encode);
                    dataOutputStream.flush();
                    C1293r.a(dataOutputStream, byteArrayOutputStream);
                    return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
                } catch (Throwable th) {
                    th = th;
                    C1293r.a(dataOutputStream, byteArrayOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                dataOutputStream = null;
            }
        } catch (Throwable th3) {
            FlyLog.getInstance().d(th3);
            return null;
        }
    }
}
