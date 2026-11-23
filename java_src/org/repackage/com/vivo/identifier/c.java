package org.repackage.com.vivo.identifier;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
public class c {
    private static boolean A = false;
    private static int B = 13;
    private static d C = null;
    private static d D = null;
    private static d E = null;
    private static d F = null;
    private static HandlerThread G = null;
    private static Handler H = null;
    private static String I = null;
    private static String J = null;
    private static String K = null;
    private static String L = null;
    private static String M = null;
    private static String N = null;
    private static String O = null;
    private static volatile c P = null;
    private static volatile org.repackage.com.vivo.identifier.b Q = null;
    private static int R = 0;
    private static int S = 0;
    private static int T = 0;
    private static int U = 0;
    private static int V = 0;
    private static int W = 0;
    private static int X = 0;
    private static int Y = 0;
    private static int Z = 0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static int f96008a0 = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f96009b = "VMS_SDK_Client";

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static int f96010b0 = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f96011c = "content://com.vivo.vms.IdProvider/IdentifierId";

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static int f96012c0 = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f96013d = "persist.sys.identifierid.supported";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f96014e = "persist.sys.identifierid";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f96015f = "com.vivo.vms";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f96016g = "appid";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f96017h = "type";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f96018i = "OAID";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f96019j = "VAID";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f96020k = "OAIDSTATUS";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static Object f96021l = new Object();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f96022m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f96023n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f96024o = 2;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f96025p = 3;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f96026q = 4;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f96027r = 5;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f96028s = 6;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f96029t = 7;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f96030u = 8;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f96031v = 9;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f96032w = 10;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f96033x = 11;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f96034y = 2000;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static Context f96035z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f96036a;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.R + c.S + c.X + c.f96008a0 + c.T + c.U + c.Z + c.f96008a0 + c.V + c.W + c.f96010b0 + c.f96012c0 > 0) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("oaid", c.this.g(c.R, c.S, c.X, c.Y));
                contentValues.put("vaid", c.this.g(c.T, c.U, c.Z, c.f96008a0));
                contentValues.put("aaid", c.this.g(c.V, c.W, c.f96010b0, c.f96012c0));
                c.Q.c(7, "vivo", new ContentValues[]{contentValues});
                int unused = c.R = c.S = c.T = c.U = c.V = c.W = 0;
                int unused2 = c.X = c.Y = c.Z = c.f96008a0 = c.f96010b0 = c.f96012c0 = 0;
            }
        }
    }

    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws Throwable {
            if (message.what == 11) {
                int i10 = message.getData().getInt("type");
                try {
                    String strA = c.Q.a(i10, message.getData().getString("appid"));
                    if (i10 == 0) {
                        String unused = c.I = strA;
                        c.z(8, c.I);
                    } else if (i10 == 1) {
                        if (strA != null) {
                            String unused2 = c.J = strA;
                        }
                        c.z(9, c.J);
                    } else if (i10 == 2) {
                        if (strA != null) {
                            String unused3 = c.K = strA;
                        }
                        c.z(10, c.K);
                    } else if (i10 != 3) {
                        if (i10 == 4) {
                            String unused4 = c.M = strA;
                        } else if (i10 == 5 && strA != null) {
                            String unused5 = c.N = strA;
                        }
                    } else if (strA != null) {
                        String unused6 = c.L = strA;
                    }
                } catch (Exception e10) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("readException:");
                    sb2.append(e10.toString());
                }
                synchronized (c.f96021l) {
                    c.f96021l.notify();
                }
            }
        }
    }

    private c() {
        d();
        Q = new org.repackage.com.vivo.identifier.b(f96035z);
        this.f96036a = w(f96035z);
    }

    private void D(int i10, String str) {
        l(i10, str);
    }

    private void H(int i10, String str) {
        synchronized (f96021l) {
            l(i10, str);
            long jUptimeMillis = SystemClock.uptimeMillis();
            try {
                f96021l.wait(2000L);
            } catch (InterruptedException unused) {
            }
            int i11 = ((SystemClock.uptimeMillis() - jUptimeMillis) > 2000L ? 1 : ((SystemClock.uptimeMillis() - jUptimeMillis) == 2000L ? 0 : -1));
        }
    }

    private void c() {
        Executors.newScheduledThreadPool(1).scheduleWithFixedDelay(new a(), 600L, 600L, TimeUnit.SECONDS);
    }

    private static void d() {
        HandlerThread handlerThread = new HandlerThread("SqlWorkThread");
        G = handlerThread;
        handlerThread.start();
        H = new b(G.getLooper());
    }

    private static void e() {
        A = "1".equals(i(f96013d, "0")) || "1".equals(i(f96014e, "0"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String g(int i10, int i11, int i12, int i13) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(i10);
        stringBuffer.append(",");
        stringBuffer.append(i11);
        stringBuffer.append(";");
        stringBuffer.append(i12);
        stringBuffer.append(",");
        stringBuffer.append(i13);
        return stringBuffer.toString();
    }

    private static String i(String str, String str2) {
        try {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "0");
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("getProperty: invoke is error");
                sb2.append(e10.getMessage());
                return str2;
            }
        } catch (Throwable unused) {
            return str2;
        }
    }

    static c k(Context context) {
        if (f96035z == null) {
            if (context == null) {
                return null;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            f96035z = context;
        }
        if (P == null) {
            synchronized (c.class) {
                if (P == null) {
                    P = new c();
                    P.c();
                }
            }
        }
        return P;
    }

    private static synchronized void m(Context context, int i10, String str) {
        try {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        if (E == null) {
                            E = new d(P, 2, str);
                            context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/" + context.getPackageName()), false, E);
                        }
                    }
                } else if (D == null) {
                    D = new d(P, 1, str);
                    context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + str), false, D);
                }
            } else if (C == null) {
                C = new d(P, 0, null);
                context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), true, C);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    static boolean n() {
        if (!A) {
            e();
        }
        return A;
    }

    static c t(Context context) {
        if (n()) {
            return k(context);
        }
        return null;
    }

    private static int w(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(f96015f, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void z(int i10, String str) {
        if (i10 == 0) {
            if (str == null) {
                S++;
                return;
            }
            R++;
        }
        if (i10 == 1) {
            if (str == null) {
                U++;
                return;
            } else {
                T++;
                return;
            }
        }
        if (i10 == 2) {
            if (str == null) {
                W++;
                return;
            } else {
                V++;
                return;
            }
        }
        switch (i10) {
            case 8:
                if (str != null) {
                    X++;
                } else {
                    Y++;
                }
                break;
            case 9:
                if (str != null) {
                    Z++;
                } else {
                    f96008a0++;
                }
                break;
            case 10:
                if (str != null) {
                    f96010b0++;
                } else {
                    f96012c0++;
                }
                break;
        }
    }

    String B() {
        String str = I;
        if (str != null) {
            z(0, str);
            return I;
        }
        D(0, null);
        if (C == null) {
            m(f96035z, 0, null);
        }
        z(0, I);
        return I;
    }

    String F() {
        String str = J;
        if (str != null) {
            z(1, str);
            return J;
        }
        H(1, "vivo");
        if (D == null) {
            m(f96035z, 1, "vivo");
        }
        z(1, J);
        return J;
    }

    String J() {
        String str = J;
        if (str != null) {
            z(1, str);
            return J;
        }
        D(1, "vivo");
        if (D == null) {
            m(f96035z, 1, "vivo");
        }
        z(1, J);
        return J;
    }

    String M() {
        String str = K;
        if (str != null) {
            z(2, str);
            return K;
        }
        H(2, "vivo");
        if (E == null) {
            m(f96035z, 2, "vivo");
        }
        z(2, K);
        return K;
    }

    String O() {
        String str = K;
        if (str != null) {
            z(2, str);
            return K;
        }
        D(2, "vivo");
        if (E == null) {
            m(f96035z, 2, "vivo");
        }
        z(2, K);
        return K;
    }

    String Q() {
        H(4, null);
        return M;
    }

    String S() {
        String str = N;
        if (str != null) {
            return str;
        }
        H(5, "vivo");
        return N;
    }

    String U() {
        String str = N;
        if (str != null) {
            return str;
        }
        D(5, "vivo");
        return N;
    }

    void l(int i10, String str) {
        Message messageObtainMessage = H.obtainMessage();
        messageObtainMessage.what = 11;
        Bundle bundle = new Bundle();
        bundle.putInt("type", i10);
        if (i10 == 1 || i10 == 2 || i10 == 6) {
            bundle.putString("appid", str);
        }
        messageObtainMessage.setData(bundle);
        H.sendMessage(messageObtainMessage);
    }

    boolean o(List<String> list) {
        if (this.f96036a >= B && list != null && list.size() != 0) {
            try {
                ContentValues[] contentValuesArr = new ContentValues[list.size()];
                String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
                for (int i10 = 0; i10 < list.size(); i10++) {
                    ContentValues contentValues = new ContentValues();
                    String[] strArrSplit = list.get(i10).split(":");
                    if (strArrSplit.length != 2) {
                        return false;
                    }
                    String str2 = strArrSplit[0];
                    String str3 = strArrSplit[1];
                    contentValues.put("packageName", str2);
                    contentValues.put("uid", str3);
                    contentValues.put(HmInputMappingContent.FIELD_VALUE, str);
                    contentValuesArr[i10] = contentValues;
                }
                return Q.c(6, "vivo", contentValuesArr);
            } catch (Exception unused) {
            }
        }
        return false;
    }

    String q() {
        String str = L;
        if (str != null) {
            return str;
        }
        H(3, null);
        return L;
    }

    List s(List<String> list) {
        if (this.f96036a >= B && list != null && list.size() != 0) {
            try {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < list.size(); i10++) {
                    String[] strArrSplit = list.get(i10).split(":");
                    if (strArrSplit.length == 2) {
                        arrayList.add(Boolean.valueOf(Q.b(6, "vivo", strArrSplit[0], strArrSplit[1])));
                    }
                }
                return arrayList;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    String x() {
        String str = I;
        if (str != null) {
            z(0, str);
            return I;
        }
        H(0, null);
        if (C == null) {
            m(f96035z, 0, null);
        }
        z(0, I);
        return I;
    }
}
