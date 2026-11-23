package cn.com.chinatelecom.account.api.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.CtAuth;
import com.baidu.mobads.sdk.internal.bn;
import com.sigmob.sdk.base.mta.PointType;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes7.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f874a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f875b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f876c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f877d = "0";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f878e = {"46000", "46002", "46004", "46007", "46008"};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f879f = {"46003", "46005", "46011"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f880g = {"46001", "46006", "46009"};

    private static int a(int i10) {
        int i11 = -101;
        if (i10 != -101) {
            i11 = -1;
            if (i10 != -1) {
                switch (i10) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return 1;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return 2;
                    case 13:
                    case 18:
                    case 19:
                        return 3;
                    case 20:
                        return 4;
                    default:
                        return i10;
                }
            }
        }
        return i11;
    }

    public static String b() {
        return f875b != null ? "https://open.e.189.cn/openapi/special/getTimeStamp.do".replace(cn.com.chinatelecom.account.api.a.d.a(b.f840h), f875b) : "https://open.e.189.cn/openapi/special/getTimeStamp.do";
    }

    public static String c() {
        String str = f876c;
        return str != null ? "https://api-e189.21cn.com/gw/client/accountMsg.do".replace("e189.21cn.com", str) : "https://api-e189.21cn.com/gw/client/accountMsg.do";
    }

    public static boolean d(Context context) {
        if (context == null) {
            return true;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
        } catch (Throwable th) {
            CtAuth.warn("NetUtil", "isMobileEnable error ", th);
            return true;
        }
    }

    public static String e(Context context) {
        int iM = m(context);
        if (iM == -101) {
            return t7.a.f97141e;
        }
        if (iM == -1 || iM == 0) {
            return "null";
        }
        if (iM == 1) {
            return "2G";
        }
        if (iM == 2) {
            return "3G";
        }
        if (iM != 3) {
            return iM != 4 ? Integer.toString(iM) : "5G";
        }
        return "4G";
    }

    public static String f(Context context) {
        String strE = e(context);
        return (strE != null && strE.equals(t7.a.f97141e) && d(context)) ? "BOTH" : strE;
    }

    public static String g(Context context) {
        String strF = f(context);
        if (!TextUtils.isEmpty(strF) && !strF.equals("null")) {
            if (strF.equals("2G")) {
                return "10";
            }
            if (strF.equals("3G")) {
                return "11";
            }
            if (strF.equals("4G")) {
                return "12";
            }
            if (strF.equals("5G")) {
                return "16";
            }
            if (strF.equals(t7.a.f97141e)) {
                return PointType.SIGMOB_REPORT_TRACKING;
            }
            if (strF.equals("BOTH")) {
                return "14";
            }
        }
        return "15";
    }

    public static String h(Context context) {
        try {
            String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
            return !TextUtils.isEmpty(simOperator) ? simOperator : "00000";
        } catch (Throwable th) {
            th.printStackTrace();
            return "00000";
        }
    }

    public static String i(Context context) {
        return a(context, true);
    }

    public static String j(Context context) {
        if (System.currentTimeMillis() - k(context) > bn.f7593e) {
            return null;
        }
        try {
            return c.b(context, "key_s_p_dm", (String) null);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static long k(Context context) {
        Long lValueOf;
        try {
            lValueOf = Long.valueOf(c.b(context, "key_s_p_dm_time", 0L));
        } catch (Exception e10) {
            e10.printStackTrace();
            lValueOf = null;
        }
        return lValueOf.longValue();
    }

    public static String l(Context context) {
        String strJ = j(context);
        String strA = h.a();
        return (TextUtils.isEmpty(strJ) || strJ.equals("1") || !strJ.equals("2")) ? strA : h.a().replace(cn.com.chinatelecom.account.api.a.d.a(b.f838f), cn.com.chinatelecom.account.api.a.d.a(b.f839g));
    }

    private static int m(Context context) {
        int subtype = 0;
        try {
            NetworkInfo networkInfoA = a(context);
            if (networkInfoA != null && networkInfoA.isAvailable() && networkInfoA.isConnected()) {
                int type = networkInfoA.getType();
                if (type == 1) {
                    subtype = -101;
                } else if (type == 0) {
                    try {
                        subtype = ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    if (subtype == 0) {
                        subtype = networkInfoA.getSubtype();
                    }
                }
            } else {
                subtype = -1;
            }
        } catch (NullPointerException | Exception e11) {
            e11.printStackTrace();
        }
        return a(subtype);
    }

    public static NetworkInfo a(Context context) {
        if (context == null) {
            return null;
        }
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    public static boolean b(Context context) {
        NetworkInfo networkInfoA = a(context);
        return networkInfoA != null && networkInfoA.isAvailable();
    }

    public static boolean c(Context context) {
        NetworkInfo networkInfoA = a(context);
        return networkInfoA != null && networkInfoA.getType() == 0;
    }

    public static String a() {
        return f874a;
    }

    public static String a(Context context, boolean z10) {
        String strH = h(context);
        if (strH != null) {
            for (String str : f879f) {
                if (strH.equals(str)) {
                    return z10 ? "1" : "CT";
                }
            }
            for (String str2 : f878e) {
                if (strH.equals(str2)) {
                    return z10 ? "2" : "CM";
                }
            }
            for (String str3 : f880g) {
                if (strH.equals(str3)) {
                    return z10 ? "3" : "CU";
                }
            }
        }
        return z10 ? "0" : "UN";
    }

    public static void a(Context context, long j10) {
        try {
            c.a(context, "key_s_p_dm_time", j10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void a(Context context, String str) {
        try {
            c.a(context, "key_s_p_dm", str);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
