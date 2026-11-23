package com.haima.hmcp.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.ServiceState;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.content.PermissionChecker;
import com.haima.hmcp.enums.MobileNetworkType;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class NetworkUtil {
    private static final String TAG = "NetworkUtil";

    /* JADX WARN: Code duplicated, block: B:17:0x004d  */
    @SuppressLint({"MissingPermission"})
    private static String adjustNetworkType(Context context, TelephonyManager telephonyManager) {
        ServiceState serviceState;
        try {
            if (PermissionChecker.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74779c) == 0 && PermissionChecker.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74784h) == 0) {
                int subId = getSubId();
                if (subId == -1) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        serviceState = telephonyManager.getServiceState();
                    } else {
                        serviceState = null;
                    }
                    if (serviceState != null && isServiceState5GAvailable(serviceState.toString())) {
                        return MobileNetworkType.NETWORK_TYPE_5G.getNetworkTypeName();
                    }
                } else {
                    try {
                        Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getServiceStateForSubscriber", Integer.TYPE);
                        declaredMethod.setAccessible(true);
                        serviceState = (ServiceState) declaredMethod.invoke(telephonyManager, Integer.valueOf(subId));
                    } catch (Throwable unused) {
                        if (Build.VERSION.SDK_INT >= 26) {
                            serviceState = telephonyManager.getServiceState();
                        } else {
                            serviceState = null;
                        }
                    }
                    if (serviceState != null) {
                        return MobileNetworkType.NETWORK_TYPE_5G.getNetworkTypeName();
                    }
                }
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, e10.getMessage());
        }
        return MobileNetworkType.NETWORK_TYPE_4G.getNetworkTypeName();
    }

    public static String getMobileNetworkTypeName(int i10, String str) {
        if (i10 != 19) {
            if (i10 == 20) {
                return MobileNetworkType.NETWORK_TYPE_5G.getNetworkTypeName();
            }
            switch (i10) {
                case 1:
                case 2:
                    return MobileNetworkType.NETWORK_TYPE_2_5G.getNetworkTypeName();
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    return MobileNetworkType.NETWORK_TYPE_3G.getNetworkTypeName();
                case 4:
                case 7:
                case 11:
                    return MobileNetworkType.NETWORK_TYPE_2G.getNetworkTypeName();
                case 13:
                    break;
                default:
                    if ("TD-SCDMA".equalsIgnoreCase(str) || "WCDMA".equalsIgnoreCase(str) || "CDMA2000".equalsIgnoreCase(str)) {
                        return MobileNetworkType.NETWORK_TYPE_3G.getNetworkTypeName();
                    }
                    if ("TD-LTE_CA".equalsIgnoreCase(str) || "LTE_CA".equalsIgnoreCase(str) || "LTE".equalsIgnoreCase(str)) {
                        return MobileNetworkType.NETWORK_TYPE_4G.getNetworkTypeName();
                    }
                    return "NR".equalsIgnoreCase(str) ? MobileNetworkType.NETWORK_TYPE_5G.getNetworkTypeName() : MobileNetworkType.UNKNOWN.getNetworkTypeName();
            }
        }
        return MobileNetworkType.NETWORK_TYPE_4G.getNetworkTypeName();
    }

    public static String getNetworkMobileName(Context context, TelephonyManager telephonyManager, String str) {
        if (context == null || telephonyManager == null) {
            return MobileNetworkType.UNKNOWN.getNetworkTypeName();
        }
        int networkType = telephonyManager.getNetworkType();
        if (networkType == 20) {
            return MobileNetworkType.NETWORK_TYPE_5G.getNetworkTypeName();
        }
        switch (networkType) {
            case 1:
            case 2:
                return MobileNetworkType.NETWORK_TYPE_2_5G.getNetworkTypeName();
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return MobileNetworkType.NETWORK_TYPE_3G.getNetworkTypeName();
            case 4:
            case 7:
            case 11:
                return MobileNetworkType.NETWORK_TYPE_2G.getNetworkTypeName();
            case 13:
                return adjustNetworkType(context, telephonyManager);
            default:
                if ("TD-SCDMA".equalsIgnoreCase(str) || "WCDMA".equalsIgnoreCase(str) || "CDMA2000".equalsIgnoreCase(str)) {
                    return MobileNetworkType.NETWORK_TYPE_3G.getNetworkTypeName();
                }
                if ("TD-LTE_CA".equalsIgnoreCase(str) || "LTE_CA".equalsIgnoreCase(str) || "LTE".equalsIgnoreCase(str)) {
                    return MobileNetworkType.NETWORK_TYPE_4G.getNetworkTypeName();
                }
                return "NR".equalsIgnoreCase(str) ? MobileNetworkType.NETWORK_TYPE_5G.getNetworkTypeName() : MobileNetworkType.UNKNOWN.getNetworkTypeName();
        }
    }

    private static int getSubId() {
        if (Build.VERSION.SDK_INT >= 24) {
            return SubscriptionManager.getDefaultDataSubscriptionId();
        }
        return -1;
    }

    public static boolean isNetworkConnected(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null || (activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
            return false;
        }
        boolean zIsConnected = activeNetworkInfo.isConnected();
        String typeName = activeNetworkInfo.getTypeName();
        boolean zIsAvailable = activeNetworkInfo.isAvailable();
        LogUtils.d(TAG, "==isNetworkConnected:" + zIsAvailable + "; isConnect:" + zIsConnected + "; typeName:" + typeName);
        return zIsAvailable && zIsConnected;
    }

    private static boolean isServiceState5GAvailable(String str) {
        return !TextUtils.isEmpty(str) && (str.contains("nrState=NOT_RESTRICTED") || str.contains("nrState=CONNECTED"));
    }
}
