package cn.fly.commons;

import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.log.NLog;
import cn.fly.tools.network.NetworkHelper;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.HashonHelper;
import com.haima.hmcp.ConstantsInternal;
import java.net.InetSocketAddress;
import java.nio.channels.ServerSocketChannel;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f1009a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static AtomicInteger f1010b = new AtomicInteger(-1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicBoolean f1011c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicBoolean f1012d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static y f1013e = new y();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile String f1014f;

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(boolean z10, boolean z11) {
        if (!z11) {
            f1013e.a();
        }
        if (!z10) {
            if (z11) {
                return;
            }
            f1013e.b();
            return;
        }
        if (TextUtils.isEmpty(x.f1473a)) {
            String strL = ae.b().l();
            if (TextUtils.isEmpty(strL)) {
                strL = i();
            }
            if (!TextUtils.isEmpty(strL)) {
                x.f1475c = strL;
                ae.b().e(strL);
            }
        } else {
            x.f1475c = x.f1473a;
            ae.b().e(x.f1473a);
        }
        if (TextUtils.isEmpty(x.f1474b)) {
            String strM = ae.b().m();
            if (!TextUtils.isEmpty(strM)) {
                x.f1476d = strM;
            }
        } else {
            x.f1476d = x.f1474b;
            ae.b().f(x.f1474b);
        }
        CountDownLatch countDownLatchG = g();
        FlyLog.getInstance().d(DH.SyncMtd.isInMainProcess() ? "main" : "sub", new Object[0]);
        if (!z11) {
            a(countDownLatchG);
        } else {
            ad.a();
            c.i();
        }
    }

    public static int d() {
        int iC = c();
        return iC != -1 ? iC : e();
    }

    public static int e() {
        int iB = ae.c() ? z.a().b() : -1;
        FlyLog.getInstance().d("get py grtd status cac: " + iB, new Object[0]);
        return iB;
    }

    public static String f() {
        return "ecpgnjvr<1fxsowaktq0{EKhPmziWUVCNdy2uDJFH|LYZQGTXRO:43l87;/6MI>\"@A?\\9[)_]5=.(S'~盺朼-";
    }

    public static CountDownLatch g() {
        return !f1012d.getAndSet(true) ? cn.fly.tools.b.c.a(FlySDK.getContext()).a() : new CountDownLatch(0);
    }

    public static boolean h() {
        String strA = q.a();
        return (TextUtils.isEmpty(strA) || TextUtils.isEmpty(strA.trim()) || TextUtils.equals(strA, i())) ? false : true;
    }

    public static String i() {
        if (f1014f == null) {
            try {
                String packageName = DH.SyncMtd.getPackageName();
                if (!TextUtils.isEmpty(packageName)) {
                    String strCRC32 = Data.CRC32(packageName.getBytes("utf-8"));
                    if (!TextUtils.isEmpty(strCRC32)) {
                        String strByteToHex = Data.byteToHex(strCRC32.getBytes());
                        if (!TextUtils.isEmpty(strByteToHex)) {
                            f1014f = "s" + strByteToHex;
                        }
                    }
                }
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return f1014f;
    }

    private static void k() {
        try {
            ServerSocketChannel serverSocketChannelOpen = ServerSocketChannel.open();
            serverSocketChannelOpen.configureBlocking(false);
            try {
                serverSocketChannelOpen.socket().bind(new InetSocketAddress(37926));
                w.f1443a = false;
                serverSocketChannelOpen.close();
            } catch (Throwable unused) {
                w.f1443a = true;
            }
        } catch (Throwable unused2) {
        }
    }

    private static void l() {
        m.a().a(new l() { // from class: cn.fly.commons.aa.2
            @Override // cn.fly.commons.l
            public void a(boolean z10, boolean z11, long j10) {
                if (z10) {
                    FlyLog.getInstance().d("fg.", new Object[0]);
                    boolean unused = aa.f1009a = true;
                } else {
                    FlyLog.getInstance().d("bg.", new Object[0]);
                    boolean unused2 = aa.f1009a = false;
                }
            }
        });
    }

    public static int c() {
        FlyLog.getInstance().d("get py grtd status mem: " + f1010b.get(), new Object[0]);
        return f1010b.get();
    }

    public static void a(final boolean z10) {
        ac.f1042a.execute(new cn.fly.tools.utils.i() { // from class: cn.fly.commons.aa.1
            @Override // cn.fly.tools.utils.i
            protected void a() {
                cn.fly.tools.c.a.f2024b.set(Boolean.TRUE);
                if (!TextUtils.isEmpty("M-")) {
                    Thread.currentThread().setName("M-" + cn.fly.commons.a.m.a("004<hmjmilig"));
                }
                int iB = ae.c() ? z.a().b() : -1;
                if (aa.f1010b.get() == -1) {
                    aa.f1010b.set(iB);
                }
                if (aa.f1010b.get() == 1) {
                    aa.b(true, z10);
                } else {
                    aa.b(false, z10);
                }
                NLog flyLog = FlyLog.getInstance();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(z10 ? cn.fly.commons.a.m.a("002Nek'g") : "");
                sb2.append("init cfg over. py ");
                sb2.append(aa.f1010b.get());
                flyLog.d(sb2.toString(), new Object[0]);
                cn.fly.tools.c.a.f2024b.set(Boolean.FALSE);
            }
        });
    }

    public static void a(CountDownLatch countDownLatch) {
        if (f1011c.compareAndSet(false, true)) {
            if (z.a().d() == 0) {
                z.a().a(System.currentTimeMillis()).h();
            }
            z.a().c();
            x.a(FlySDK.getContext());
            k();
            l();
            ad.a();
            c.a(countDownLatch);
        }
    }

    public static boolean a() {
        return f1009a;
    }

    public static boolean b() {
        return f1010b.get() == 1;
    }

    public static void b(final boolean z10) {
        f1010b.set(z10 ? 1 : 0);
        FlyLog.getInstance().d("submit py: " + z10, new Object[0]);
        new cn.fly.tools.utils.j(cn.fly.commons.a.m.a("004Uhmjmilif")) { // from class: cn.fly.commons.aa.3
            @Override // cn.fly.tools.utils.j
            protected void a() {
                int iE = aa.e();
                z.a().a(z10 ? 1 : 0);
                if (!z10 || iE == 1) {
                    return;
                }
                CountDownLatch countDownLatchG = aa.g();
                FlyLog.getInstance().d(DH.SyncMtd.isInMainProcess() ? "main" : "sub", new Object[0]);
                aa.a(countDownLatchG);
                DH.requester(FlySDK.getContext()).getDetailNetworkTypeForStatic().request(new DH.DHResponder() { // from class: cn.fly.commons.aa.3.1
                    @Override // cn.fly.tools.utils.DH.DHResponder
                    public void onResponse(DH.DHResponse dHResponse) {
                        try {
                            aa.b(z10, dHResponse.getDetailNetworkTypeForStatic());
                        } catch (Throwable th) {
                            FlyLog.getInstance().d(th);
                            try {
                                aa.b(z10, dHResponse.getDetailNetworkTypeForStatic());
                            } catch (Throwable th2) {
                                FlyLog.getInstance().d(th2);
                            }
                        }
                    }
                });
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(boolean z10, String str) throws Throwable {
        HashMap<String, Object> mapA = q.a(str);
        mapA.put(cn.fly.commons.a.m.a("009]ejgjgefkek?ggMhm(k"), String.valueOf(z10));
        String str2 = j.a().a("gclg") + cn.fly.commons.a.m.a("036mkFekejee9ed3fd+mkYel)h.ej2d]fd[meKeh-ji9elekejhe?ejHejel=fmSgj1jejBehgj");
        HashMap<String, String> map = new HashMap<>();
        map.put(cn.fly.commons.a.m.a("003$fi;g_fd"), q.a());
        map.put(cn.fly.commons.a.m.a("013>flgjAg?ekilffed.gfjOej!j5fd"), ad.h());
        String strHttpGet = new NetworkHelper().httpGet(str2, mapA, map);
        FlyLog.getInstance().d("RS sp: " + strHttpGet, new Object[0]);
        HashMap mapFromJson = HashonHelper.fromJson(strHttpGet);
        if (mapFromJson != null) {
            if (ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS.equals(String.valueOf(mapFromJson.get(cn.fly.commons.a.m.a("004d!eled*g"))))) {
                return;
            }
            throw new Throwable("RS code is not 200: " + strHttpGet);
        }
        throw new Throwable("RS is illegal: " + strHttpGet);
    }
}
