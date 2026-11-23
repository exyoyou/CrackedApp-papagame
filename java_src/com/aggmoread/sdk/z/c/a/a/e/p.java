package com.aggmoread.sdk.z.c.a.a.e;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.aggmoread.sdk.client.AMConst;
import com.join.mgps.Util.o0;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.qq.e.comm.managers.status.SDKStatus;
import com.windmill.sdk.WMConstants;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class p {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5260a;

        static {
            int[] iArr = new int[com.aggmoread.sdk.z.c.a.a.c.j.values().length];
            f5260a = iArr;
            try {
                iArr[com.aggmoread.sdk.z.c.a.a.c.j.REWARD_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static int a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar) {
        com.aggmoread.sdk.z.c.a.a.a aVar;
        if (eVar != null && (aVar = eVar.f4965u) != null) {
            Object objA = aVar.a("ext_rdi", 1);
            e.b("AM3RHTAG", "rdio = " + objA);
            if (objA instanceof Integer) {
                return ((Integer) objA).intValue();
            }
        }
        e.b("AM3RHTAG", "return rdi = 1");
        return 1;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0045  */
    public static int b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, int i10) {
        int iB;
        if (i10 > 0) {
            return i10;
        }
        if (fVar != null) {
            try {
                f fVar2 = fVar.f5004d;
                double dA = fVar2 != null ? fVar2.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.J) : -1.0d;
                iB = fVar.f5003c.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5033j0);
                if (iB <= 0) {
                    iB = -1;
                } else if (dA > 0.0d && dA <= 1.0d) {
                    iB = (int) (((double) iB) / dA);
                }
            } catch (Exception e10) {
                e.a("rpr 2 err " + e10.getMessage());
            }
        } else {
            iB = -1;
        }
        e.a("rpr 2 e " + iB);
        return iB;
    }

    public static String c() {
        try {
            Method method = SDKStatus.class.getMethod("getPluginVersion", new Class[0]);
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, new Object[0]);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("plg version ");
            sb2.append(objInvoke);
            return objInvoke + "";
        } catch (Exception e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("get version failed! ");
            sb3.append(e10.getMessage());
            boolean z10 = e10 instanceof NoSuchMethodException;
            return null;
        }
    }

    public static com.aggmoread.sdk.z.a.i.b d(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        f fVar2;
        if (fVar != null && (fVar2 = fVar.f5004d) != null) {
            int iB = fVar2.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.M);
            e.a("clks " + iB);
            if (iB == 0) {
                return com.aggmoread.sdk.z.a.i.b.DEFAULT;
            }
            if (iB == 1) {
                return com.aggmoread.sdk.z.a.i.b.TOAST;
            }
            if (iB == 2) {
                com.aggmoread.sdk.z.c.a.a.d.b.e eVar = fVar.f5001a;
                if (eVar.f4949e != com.aggmoread.sdk.z.c.a.a.c.j.SPLASH || eVar.B != 0) {
                    return com.aggmoread.sdk.z.a.i.b.SHAKE;
                }
                e.a("c shake ");
                return com.aggmoread.sdk.z.a.i.b.TOAST;
            }
            if (iB == 3) {
                return com.aggmoread.sdk.z.a.i.b.FULL_SCREEN;
            }
            if (iB == 4) {
                return com.aggmoread.sdk.z.a.i.b.MIXED;
            }
        }
        return com.aggmoread.sdk.z.a.i.b.DEFAULT;
    }

    public static int e() {
        int iA = h.a().a("sce_count", 0);
        e.b("AM3RHTAG", "sec c " + iA);
        return iA;
    }

    public static double f(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        f fVar2;
        if (fVar == null || (fVar2 = fVar.f5003c) == null) {
            return -1.0d;
        }
        return fVar2.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5035k0, -1.0d);
    }

    public static double g(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        f fVar2;
        if (fVar == null || (fVar2 = fVar.f5003c) == null) {
            return -1.0d;
        }
        return fVar2.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5037l0, -1.0d);
    }

    public static double h(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        if (fVar == null || fVar.f5003c == null) {
            return -1.0d;
        }
        int iA = fVar.f5004d.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.H, -1);
        e.b("xxxx", "owc " + iA);
        return iA;
    }

    public static double i(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        f fVar2;
        if (fVar == null || (fVar2 = fVar.f5004d) == null) {
            return 1.0d;
        }
        double dA = fVar2.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.O);
        e.a("gr " + dA);
        if (dA > 0.0d) {
            return dA;
        }
        return 1.0d;
    }

    public static String j(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        int iF = fVar.f();
        if (iF == 1) {
            return com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.b();
        }
        if (iF == 107) {
            return com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b();
        }
        if (iF != 100) {
            return iF != 101 ? "" : com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.b();
        }
        return b();
    }

    public static boolean k(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        if (fVar != null) {
            if (fVar.d() && !TextUtils.isEmpty(fVar.f5001a.f4967w)) {
                return false;
            }
            f fVar2 = fVar.f5004d;
            if (fVar2 != null) {
                double dA = fVar2.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.J);
                if (dA > 0.0d && dA <= 1.0d) {
                    return false;
                }
            }
        }
        return l(fVar);
    }

    public static boolean l(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        f fVar2;
        if (fVar != null && (fVar2 = fVar.f5004d) != null) {
            int iB = fVar2.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.K);
            e.a("close report bid  " + iB);
            if (iB == 2) {
                return true;
            }
        }
        e.a("not need close report bid win ");
        return false;
    }

    public static boolean m(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        return fVar != null && fVar.f5004d.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5054y, 0) == 4;
    }

    public static boolean n(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        f fVar2;
        if (fVar != null && (fVar2 = fVar.f5004d) != null) {
            int iB = fVar2.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.K);
            e.a("bidding bid  " + iB);
            if (iB == 1) {
                return true;
            }
        }
        e.a("not need bidding floor ");
        return false;
    }

    public static Activity a(View view) {
        try {
            for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
                if (context instanceof Activity) {
                    return (Activity) context;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0042 A[Catch: Exception -> 0x0059, TryCatch #1 {Exception -> 0x0059, blocks: (B:15:0x003c, B:17:0x0042, B:19:0x004a, B:20:0x0050), top: B:31:0x003c }] */
    /* JADX WARN: Code duplicated, block: B:19:0x004a A[Catch: Exception -> 0x0059, TryCatch #1 {Exception -> 0x0059, blocks: (B:15:0x003c, B:17:0x0042, B:19:0x004a, B:20:0x0050), top: B:31:0x003c }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0050 A[Catch: Exception -> 0x0059, TRY_LEAVE, TryCatch #1 {Exception -> 0x0059, blocks: (B:15:0x003c, B:17:0x0042, B:19:0x004a, B:20:0x0050), top: B:31:0x003c }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0057  */
    public static int b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map) {
        String str;
        int iIntValue;
        int i10 = -1;
        try {
            try {
                if (fVar.d()) {
                    str = eVar.f4969y;
                } else {
                    Object obj = map.get("ext.AD_TIME");
                    e.a("tm " + obj);
                    if (!(obj instanceof String)) {
                        if (obj instanceof Integer) {
                            iIntValue = ((Integer) obj).intValue();
                            str = null;
                        } else {
                            str = null;
                        }
                        if (!TextUtils.isEmpty(str)) {
                            if (str.contains(o0.f49827a)) {
                                iIntValue = (int) Double.parseDouble(str);
                            } else {
                                iIntValue = Integer.parseInt(str);
                            }
                        }
                        if (iIntValue >= 0) {
                            i10 = iIntValue;
                        }
                        e.a("rpr r e " + i10);
                        return i10;
                    }
                    str = (String) obj;
                }
                if (!TextUtils.isEmpty(str)) {
                    if (str.contains(o0.f49827a)) {
                        iIntValue = (int) Double.parseDouble(str);
                    } else {
                        iIntValue = Integer.parseInt(str);
                    }
                }
                if (iIntValue >= 0) {
                    i10 = iIntValue;
                }
            } catch (Exception e10) {
                e = e10;
                i10 = iIntValue;
                e.a("rpe  err " + e.getMessage());
            }
            iIntValue = -1;
        } catch (Exception e11) {
            e = e11;
        }
        e.a("rpr r e " + i10);
        return i10;
    }

    public static String c(String str) {
        try {
            TextUtils.isEmpty(str);
            return str;
        } catch (Exception e10) {
            e.a("drv err " + e10.getMessage());
            return str;
        }
    }

    public static String d() {
        try {
            Method method = SDKStatus.class.getMethod("getSDKVersion", new Class[0]);
            method.setAccessible(true);
            String str = (String) method.invoke(null, new Object[0]);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("version ");
            sb2.append(str);
            return str;
        } catch (Exception e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("get version failed! ");
            sb3.append(e10.getMessage());
            boolean z10 = e10 instanceof NoSuchMethodException;
            return null;
        }
    }

    public static int e(String str) {
        e.b("AM3RHTAG", "pv v " + str);
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        int i10 = Integer.parseInt(str.replace(o0.f49827a, ""));
        e.b("AM3RHTAG", "pv i " + i10);
        return i10;
    }

    public static String f(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer("");
            for (int i10 = 0; i10 < bArrDigest.length; i10++) {
                int i11 = bArrDigest[i10];
                if (i11 < 0) {
                    i11 += 256;
                }
                if (i11 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i11));
            }
            return stringBuffer.toString();
        } catch (Exception e10) {
            e10.printStackTrace();
            return str;
        }
    }

    public static boolean g() {
        return false;
    }

    public static Pair<Integer, Integer> a(int i10, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        e.a("ecpm  " + i10);
        int i11 = -1;
        if (fVar != null) {
            f fVar2 = fVar.f5004d;
            double dA = fVar2 != null ? fVar2.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.J) : -1.0d;
            if (dA != 2.0d) {
                int iB = fVar.f5003c.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5033j0);
                if (iB > 0) {
                    if (i10 > 0) {
                        i11 = iB;
                    } else if (dA <= 0.0d || dA > 1.0d) {
                        i10 = iB;
                        i11 = i10;
                    } else {
                        i10 = (int) (((double) iB) / dA);
                        i11 = iB;
                    }
                } else if (i10 > 0 && dA > 0.0d && dA <= 1.0d) {
                    i11 = (int) (((double) i10) * dA);
                }
            }
        }
        e.a("price  " + i11);
        return new Pair<>(Integer.valueOf(i11), Integer.valueOf(i10));
    }

    public static String b() {
        try {
            Method method = SDKStatus.class.getMethod("getIntegrationSDKVersion", new Class[0]);
            method.setAccessible(true);
            return (String) method.invoke(null, new Object[0]);
        } catch (Exception e10) {
            e.a("AM3RHTAG", "err  = %s", e10);
            if (e10 instanceof NoSuchMethodException) {
                return "unknown";
            }
            return null;
        }
    }

    public static boolean c(Context context) {
        boolean zB = b(context);
        boolean zD = d(context);
        e.a("p " + zB + ", v " + zD);
        return zB || zD;
    }

    public static String d(String str) {
        try {
            TextUtils.isEmpty(str);
            return str;
        } catch (Exception e10) {
            e.a("erv err " + e10.getMessage());
            return str;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String e(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        if (fVar != null) {
            int iF = fVar.f();
            if (iF == 1) {
                return GlobalSetting.BD_SDK_WRAPPER;
            }
            if (iF != 10086) {
                if (iF == 100) {
                    return "GDT";
                }
                if (iF == 101) {
                    return "CSJ_M";
                }
                switch (iF) {
                    case 105:
                        break;
                    case 106:
                        return "XM";
                    case 107:
                        return GlobalSetting.KS_SDK_WRAPPER;
                    default:
                        switch (iF) {
                            case 500:
                                return "HW";
                            case 501:
                                return "UM";
                            case TypedValues.PositionType.TYPE_DRAWPATH /* 502 */:
                                return "QM";
                            case TypedValues.PositionType.TYPE_PERCENT_WIDTH /* 503 */:
                                return "VIVO";
                            case TypedValues.PositionType.TYPE_PERCENT_X /* 506 */:
                                return "JD";
                        }
                }
            }
            return "AM";
        }
        return "unknown";
    }

    public static boolean f() {
        return false;
    }

    public static String a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, int i10) {
        String strValueOf;
        try {
            if (fVar.d()) {
                strValueOf = eVar.f4969y;
            } else {
                e.a("p " + i10);
                f fVar2 = fVar.f5004d;
                if (fVar2 != null) {
                    double dA = fVar2.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.J);
                    if (dA > 0.0d && dA <= 1.0d) {
                        i10 = (int) (((double) i10) * dA);
                    }
                }
                if (i10 < 0) {
                    i10 = -1;
                }
                strValueOf = String.valueOf(i10);
            }
        } catch (Exception e10) {
            e.a("rpt err " + e10.getMessage());
            strValueOf = WMConstants.TIMER_STAGE_NONE;
        }
        e.a("rpt e " + strValueOf);
        return strValueOf;
    }

    public static String b(String str) {
        return str;
    }

    public static boolean c(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        return true;
    }

    private static boolean d(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (Build.VERSION.SDK_INT < 23) {
                e.a("vpn #2");
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(17);
                return networkInfo != null && networkInfo.isConnected();
            }
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            e.a("vpn #1 ");
            if (networkCapabilities != null) {
                return networkCapabilities.hasTransport(4);
            }
            return false;
        } catch (Exception e10) {
            e.a("vpn err " + e10);
        }
    }

    public static String a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map) {
        String strValueOf;
        int i10;
        try {
            if (fVar.d()) {
                strValueOf = eVar.f4969y;
            } else {
                Object obj = map.get(AMConst.ExtrasKey.AD_PRICE);
                e.a("eStr " + obj);
                int i11 = -1;
                if (obj instanceof String) {
                    String str = (String) obj;
                    i10 = str.contains(o0.f49827a) ? (int) Double.parseDouble(str) : Integer.parseInt((String) obj);
                } else {
                    i10 = -1;
                }
                if (i10 >= 0) {
                    i11 = i10;
                }
                strValueOf = String.valueOf(i11);
            }
        } catch (Exception e10) {
            e.a("rpt err " + e10.getMessage());
            strValueOf = WMConstants.TIMER_STAGE_NONE;
        }
        e.a("rpt exp e " + strValueOf);
        return strValueOf;
    }

    public static Map<String, String> b(String str, String str2) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str2)) {
            map.put(ForumPostsTagSelectActivity_.PID_EXTRA, str2);
        }
        if (!TextUtils.isEmpty(str)) {
            map.put("ext", str);
        }
        e.b("AM3RHTAG", "extra map " + map);
        return map;
    }

    public static String a(String str, String str2) {
        try {
            String string = new JSONObject(b(str, str2).toString()).toString();
            e.b("AM3RHTAG", "extras json = " + string);
            return string;
        } catch (JSONException e10) {
            e10.printStackTrace();
            e.b("AM3RHTAG", "extra err " + e10.getMessage());
            return "";
        }
    }

    private static boolean b(Context context) {
        try {
            String property = System.getProperty("http.proxyHost");
            String property2 = System.getProperty("http.proxyPort");
            return ((TextUtils.isEmpty(property2) ? -1 : Integer.parseInt(property2)) == -1 || TextUtils.isEmpty(property)) ? false : true;
        } catch (Exception e10) {
            e.a("proxy err " + e10);
            return false;
        }
    }

    public static Map<String, Object> a(Map<String, Object> map) {
        if (map != null) {
            map.put("EXTRA_network_csj_placementId", "");
            map.remove("ext.AD_AID");
            map.remove("ext.AD_BU");
        }
        return map;
    }

    public static boolean b(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        double dA = fVar.f5004d.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.L, 1.0d);
        e.a("esr " + dA);
        boolean z10 = dA >= 1.0d || i.a(dA);
        e.a("esr " + z10);
        return z10;
    }

    public static void a(Map<String, Object> map, String str) {
        if (map == null || TextUtils.isEmpty(str)) {
            return;
        }
        map.put(AMConst.ExtrasKey.AD_TITLE_INFO, str);
    }

    public static boolean a() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            e.b("AM3RHTAG", "UI Thread");
            return true;
        }
        e.b("AM3RHTAG", "Work Thread");
        return false;
    }

    public static boolean a(int i10) {
        return Build.VERSION.SDK_INT <= i10;
    }

    public static boolean a(Context context) {
        boolean z10 = false;
        if (context == null) {
            return false;
        }
        if (context.getApplicationInfo() != null && (context.getApplicationInfo().flags & 2) != 0) {
            z10 = true;
        }
        e.a("deg " + z10);
        return z10;
    }

    public static boolean a(Context context, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        f fVar2;
        if (context == null || fVar == null || (fVar2 = fVar.f5003c) == null) {
            return false;
        }
        String strA = fVar2.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5043o0, (String) null);
        String strA2 = fVar.f5003c.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5045p0, (String) null);
        if (TextUtils.isEmpty(strA) && TextUtils.isEmpty(strA2)) {
            return false;
        }
        if (fVar.f() == 100 || fVar.f() == 107) {
            return true;
        }
        String packageName = context.getPackageName();
        String strC = fVar.f5003c.c(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5031i0);
        return (TextUtils.isEmpty(strC) || packageName.equals(strC)) ? false : true;
    }

    public static boolean a(com.aggmoread.sdk.z.c.a.a.c.j jVar) {
        int i10 = a.f5260a[jVar.ordinal()];
        return true;
    }

    public static boolean a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        f fVar2;
        if (fVar != null && (fVar2 = fVar.f5004d) != null) {
            int iB = fVar2.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.I);
            e.b("xxx", "ov = " + iB + ", bov = 0");
            if (iB == 0) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, int i10) {
        if (fVar == null || !n(fVar)) {
            return false;
        }
        int iB = fVar.f5003c.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5033j0);
        e.a("ec " + iB);
        if (iB > 0) {
            return false;
        }
        int iB2 = fVar.f5003c.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5029h0);
        e.a("e " + i10 + ", pr " + iB2);
        return i10 < iB2;
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int iE = e(str);
        int iE2 = e(d());
        e.a("gdt_ad_mobile " + iE2);
        return iE2 != 0 && iE2 >= iE;
    }
}
