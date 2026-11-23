package com.sigmob.sdk.base.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.text.TextUtils;
import com.czhj.sdk.common.mta.PointEntitySuper;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.AppInfo;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.windad.WindAdError;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f79064a;

    public static String[] a() {
        Context contextE = com.sigmob.sdk.b.e();
        if (contextE == null) {
            return null;
        }
        try {
            return contextE.getPackageManager().getPackageInfo(contextE.getPackageName(), 4096).requestedPermissions;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static WindAdError b() {
        Context contextE = com.sigmob.sdk.b.e();
        try {
            SigmobLog.d("checkActivity: " + AdActivity.class.getName());
            contextE.getPackageManager().getActivityInfo(new ComponentName(contextE, (Class<?>) AdActivity.class), 128);
        } catch (PackageManager.NameNotFoundException e10) {
            SigmobLog.e("checkActivity: " + e10.getMessage());
            return WindAdError.ERROR_LOAD_FILTER_FOR_ACTIVITY_ERROR;
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            if (!Ad.class.getName().endsWith("base.models.rtb.Ad")) {
                SigmobLog.e("checkProguard Ad: " + Ad.class.getName());
                return WindAdError.ERROR_LOAD_FILTER_FOR_PROGUARD_ERROR;
            }
            if (!MaterialMeta.class.getName().endsWith("base.models.rtb.MaterialMeta")) {
                SigmobLog.e("checkProguard Strategy: " + MaterialMeta.class.getName());
                return WindAdError.ERROR_LOAD_FILTER_FOR_PROGUARD_ERROR;
            }
            if (!AppInfo.class.getName().endsWith("base.models.AppInfo")) {
                SigmobLog.e("checkProguard AppInfo: " + AppInfo.class.getName());
                return WindAdError.ERROR_LOAD_FILTER_FOR_PROGUARD_ERROR;
            }
            if (PointEntitySuper.class.getName().endsWith("common.mta.PointEntitySuper")) {
                return null;
            }
            SigmobLog.e("checkProguard PointCategory: " + PointEntitySuper.class.getName());
            return WindAdError.ERROR_LOAD_FILTER_FOR_PROGUARD_ERROR;
        } catch (Throwable th2) {
            SigmobLog.e("checkProguard: " + th2.getMessage());
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004f A[Catch: all -> 0x0138, TRY_LEAVE, TryCatch #3 {, blocks: (B:4:0x0003, B:6:0x0007, B:21:0x0049, B:23:0x004f, B:26:0x0057, B:28:0x005c, B:30:0x006e, B:32:0x0072, B:35:0x0079, B:37:0x0090, B:39:0x00a5, B:46:0x00cb, B:49:0x00d3, B:64:0x0130, B:43:0x00b0, B:20:0x0031, B:11:0x0010, B:13:0x001e, B:15:0x0022), top: B:77:0x0003, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0057 A[Catch: all -> 0x0138, TRY_ENTER, TRY_LEAVE, TryCatch #3 {, blocks: (B:4:0x0003, B:6:0x0007, B:21:0x0049, B:23:0x004f, B:26:0x0057, B:28:0x005c, B:30:0x006e, B:32:0x0072, B:35:0x0079, B:37:0x0090, B:39:0x00a5, B:46:0x00cb, B:49:0x00d3, B:64:0x0130, B:43:0x00b0, B:20:0x0031, B:11:0x0010, B:13:0x001e, B:15:0x0022), top: B:77:0x0003, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x006e A[Catch: Exception -> 0x00af, all -> 0x0138, TryCatch #2 {Exception -> 0x00af, blocks: (B:28:0x005c, B:30:0x006e, B:32:0x0072, B:35:0x0079, B:37:0x0090, B:39:0x00a5), top: B:75:0x005c, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0072 A[Catch: Exception -> 0x00af, all -> 0x0138, TryCatch #2 {Exception -> 0x00af, blocks: (B:28:0x005c, B:30:0x006e, B:32:0x0072, B:35:0x0079, B:37:0x0090, B:39:0x00a5), top: B:75:0x005c, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0078  */
    /* JADX WARN: Code duplicated, block: B:35:0x0079 A[Catch: Exception -> 0x00af, all -> 0x0138, TryCatch #2 {Exception -> 0x00af, blocks: (B:28:0x005c, B:30:0x006e, B:32:0x0072, B:35:0x0079, B:37:0x0090, B:39:0x00a5), top: B:75:0x005c, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a5 A[Catch: Exception -> 0x00af, all -> 0x0138, EDGE_INSN: B:39:0x00a5->B:45:0x00c9 BREAK  A[LOOP:1: B:31:0x0070->B:41:0x00ac], TRY_LEAVE, TryCatch #2 {Exception -> 0x00af, blocks: (B:28:0x005c, B:30:0x006e, B:32:0x0072, B:35:0x0079, B:37:0x0090, B:39:0x00a5), top: B:75:0x005c, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00c8 A[EDGE_INSN: B:44:0x00c8->B:45:0x00c9 BREAK  A[LOOP:1: B:31:0x0070->B:41:0x00ac]] */
    /* JADX WARN: Code duplicated, block: B:46:0x00cb A[Catch: all -> 0x0138, TRY_LEAVE, TryCatch #3 {, blocks: (B:4:0x0003, B:6:0x0007, B:21:0x0049, B:23:0x004f, B:26:0x0057, B:28:0x005c, B:30:0x006e, B:32:0x0072, B:35:0x0079, B:37:0x0090, B:39:0x00a5, B:46:0x00cb, B:49:0x00d3, B:64:0x0130, B:43:0x00b0, B:20:0x0031, B:11:0x0010, B:13:0x001e, B:15:0x0022), top: B:77:0x0003, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00d3 A[Catch: all -> 0x0138, TRY_ENTER, TRY_LEAVE, TryCatch #3 {, blocks: (B:4:0x0003, B:6:0x0007, B:21:0x0049, B:23:0x004f, B:26:0x0057, B:28:0x005c, B:30:0x006e, B:32:0x0072, B:35:0x0079, B:37:0x0090, B:39:0x00a5, B:46:0x00cb, B:49:0x00d3, B:64:0x0130, B:43:0x00b0, B:20:0x0031, B:11:0x0010, B:13:0x001e, B:15:0x0022), top: B:77:0x0003, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:81:0x0090 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x00c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:35:0x0079, please report this as an issue */
    public static synchronized boolean c() {
        Context contextE;
        int i10;
        XmlResourceParser xml;
        int eventType;
        String packageName;
        ProviderInfo[] providerInfoArr;
        int length;
        int i11;
        ProviderInfo providerInfo;
        String str;
        Bundle bundle;
        Boolean bool = f79064a;
        if (bool != null) {
            return bool.booleanValue();
        }
        String str2 = "";
        try {
            f79064a = Boolean.FALSE;
            String[] strArrA = a();
            if (!com.sigmob.sdk.base.utils.e.b(strArrA)) {
                if (TextUtils.isEmpty(str2)) {
                    return f79064a.booleanValue();
                }
                contextE = com.sigmob.sdk.b.e();
                packageName = contextE.getPackageName();
                providerInfoArr = contextE.getPackageManager().getPackageInfo(packageName, 8).providers;
                if (providerInfoArr != null) {
                    i10 = -1;
                    break;
                }
                length = providerInfoArr.length;
                i11 = 0;
                while (true) {
                    if (i11 >= length) {
                        providerInfo = providerInfoArr[i11];
                        str = providerInfo.authority;
                        if (str == null) {
                            if (str.equals(packageName + ".sigprovider")) {
                                bundle = contextE.getPackageManager().getProviderInfo(new ComponentName(contextE, providerInfo.name), 128).metaData;
                                if (bundle != null) {
                                    i10 = bundle.getInt("android.support.FILE_PROVIDER_PATHS");
                                    break;
                                }
                            }
                        }
                        i11++;
                    }
                    i10 = -1;
                    break;
                }
                if (i10 == -1) {
                    return f79064a.booleanValue();
                }
                xml = contextE.getResources().getXml(i10);
                for (eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                    if (eventType != 2) {
                    }
                }
                xml.close();
                return f79064a.booleanValue();
            }
            for (String str3 : strArrA) {
                if (str3.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
                    str2 = str3;
                }
            }
            if (TextUtils.isEmpty(str2)) {
                return f79064a.booleanValue();
            }
            contextE = com.sigmob.sdk.b.e();
            try {
                packageName = contextE.getPackageName();
                providerInfoArr = contextE.getPackageManager().getPackageInfo(packageName, 8).providers;
                if (providerInfoArr != null) {
                    i10 = -1;
                    break;
                }
                length = providerInfoArr.length;
                i11 = 0;
                while (true) {
                    if (i11 >= length) {
                        providerInfo = providerInfoArr[i11];
                        str = providerInfo.authority;
                        if (str == null) {
                            if (str.equals(packageName + ".sigprovider")) {
                                bundle = contextE.getPackageManager().getProviderInfo(new ComponentName(contextE, providerInfo.name), 128).metaData;
                                if (bundle != null) {
                                    i10 = bundle.getInt("android.support.FILE_PROVIDER_PATHS");
                                    break;
                                }
                            }
                        }
                        i11++;
                    }
                    i10 = -1;
                    break;
                }
            } catch (Exception e10) {
                SigmobLog.e("check targetAuthority:" + e10.getMessage());
            }
            if (i10 == -1) {
                return f79064a.booleanValue();
            }
            xml = contextE.getResources().getXml(i10);
            try {
                while (eventType != 1) {
                    if (eventType != 2 && xml.getName().equals("external-cache-path") && xml.getAttributeCount() >= 2) {
                        String attributeValue = xml.getAttributeValue(0);
                        String attributeValue2 = xml.getAttributeValue(1);
                        if (attributeValue.equals("SigMob_root")) {
                            f79064a = Boolean.TRUE;
                            SigmobLog.d("check name: " + attributeValue + " path :" + attributeValue2);
                            break;
                        }
                    }
                }
                xml.close();
            } catch (Throwable unused) {
            }
            return f79064a.booleanValue();
        } catch (Throwable th) {
            SigmobLog.e("checkPermission: error = " + th.getMessage());
        }
        throw th;
    }

    public static boolean d() {
        String[] strArrA = a();
        if (strArrA == null) {
            return false;
        }
        for (String str : strArrA) {
            if (str.equals("android.permission.QUERY_ALL_PACKAGES")) {
                return true;
            }
        }
        return false;
    }
}
