package com.sigmob.sdk.base.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.util.Base64;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.aj;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.n;
import com.sigmob.sdk.base.o;
import com.sigmob.sdk.base.utils.k;
import com.sigmob.sdk.base.utils.t;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.windad.WindAdError;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
class a extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79680a = "a";

    a() {
    }

    protected String a(PackageManager pm, PackageInfo info) {
        if (pm != null && info != null) {
            try {
                String strValueOf = String.valueOf(pm.getApplicationLabel(info.applicationInfo));
                k.f(f79680a, "getAppLabel: label = " + strValueOf, new Object[0]);
                return strValueOf;
            } catch (Throwable th) {
                k.f(f79680a, "getAppLabel: error = " + th.getMessage(), new Object[0]);
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00dc  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PackageInfo packageInfo;
        BaseAdUnit baseAdUnit;
        byte b10;
        try {
            PackageManager packageManager = context.getPackageManager();
            Uri data = intent.getData();
            String action = intent.getAction();
            if (data != null && action != null) {
                String schemeSpecificPart = data.getSchemeSpecificPart();
                SigmobLog.d(String.format("onReceive: packageName = %s, action = %s", schemeSpecificPart, action));
                boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
                String strEncodeToString = Base64.encodeToString(action.getBytes(), 2);
                if (!strEncodeToString.equals(n.I) || booleanExtra) {
                    try {
                        if (!com.sigmob.sdk.base.i.a().i() || o.a().S()) {
                            packageInfo = null;
                        } else {
                            packageInfo = packageManager.getPackageInfo(schemeSpecificPart, 0);
                            try {
                                ad.a(packageInfo, 1);
                            } catch (Exception unused) {
                            }
                        }
                    } catch (Exception unused2) {
                    }
                    if (t.b(schemeSpecificPart)) {
                        String absolutePath = com.sigmob.sdk.base.utils.o.a((Object) schemeSpecificPart).getAbsolutePath();
                        Object fromCache = FileUtil.readFromCache(absolutePath);
                        if (w.b(fromCache) && (fromCache instanceof BaseAdUnit)) {
                            baseAdUnit = (BaseAdUnit) fromCache;
                            BaseAdUnit baseAdUnitC = com.sigmob.sdk.base.common.h.c(baseAdUnit.getUuid());
                            if (baseAdUnitC != null) {
                                baseAdUnit = baseAdUnitC;
                            }
                        } else {
                            baseAdUnit = null;
                        }
                        FileUtil.deleteFile(absolutePath);
                    } else {
                        baseAdUnit = null;
                    }
                    if (baseAdUnit == null) {
                        return;
                    }
                    String appName = baseAdUnit.getAppName();
                    if (t.a((CharSequence) appName)) {
                        String strA = a(packageManager, packageInfo);
                        if (!t.a((CharSequence) strA)) {
                            schemeSpecificPart = strA;
                        }
                        appName = schemeSpecificPart;
                    }
                    switch (strEncodeToString.hashCode()) {
                        case -1380358613:
                            if (!strEncodeToString.equals(n.K)) {
                                b10 = -1;
                            } else {
                                b10 = 2;
                            }
                            break;
                        case -248756734:
                            if (!strEncodeToString.equals(n.I)) {
                                b10 = -1;
                            } else {
                                b10 = 1;
                            }
                            break;
                        case 1293128098:
                            if (!strEncodeToString.equals(n.J)) {
                                b10 = -1;
                            } else {
                                b10 = 0;
                            }
                            break;
                        case 1931663641:
                            if (!strEncodeToString.equals(n.M)) {
                                b10 = -1;
                            } else {
                                b10 = 3;
                            }
                            break;
                        default:
                            b10 = -1;
                            break;
                    }
                    if (b10 != 0) {
                        if (b10 != 1) {
                            if (b10 != 2) {
                                if (b10 != 3) {
                                    return;
                                }
                                if (n.f79579f.booleanValue()) {
                                    aj.a(context, appName + " 安装失败", 0).show();
                                }
                                StringBuilder sb2 = new StringBuilder();
                                WindAdError windAdError = WindAdError.ERROR_SIGMOB_INSTALL_FAIL;
                                sb2.append(windAdError);
                                sb2.append(",System");
                                ad.a(baseAdUnit, PointCategory.APP_INSTALL_END, packageInfo, sb2.toString());
                                ad.a(PointCategory.APP_INSTALL_END, windAdError.getErrorCode(), "system", baseAdUnit, (ad.a) null);
                                HashMap map = new HashMap();
                                map.put("result", "0");
                                BaseBroadcastReceiver.a(context, baseAdUnit.getUuid(), map, IntentActions.ACTION_INTERSTITIAL_INSTALL_END);
                                return;
                            }
                            if (n.f79579f.booleanValue()) {
                                aj.a(context, appName + " 替换成功", 1).show();
                            }
                        } else {
                            if (!booleanExtra) {
                                if (n.f79579f.booleanValue()) {
                                    aj.a(context, appName + " 卸载成功", 1).show();
                                    return;
                                }
                                return;
                            }
                            aj.a(context, appName + " 替换成功", 1).show();
                        }
                    } else if (n.f79579f.booleanValue()) {
                        aj.a(context, appName + " 安装成功", 1).show();
                    }
                    a(context, baseAdUnit, packageInfo);
                    return;
                }
                return;
            }
            SigmobLog.e("data or action is null");
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    private void a(Context context, PackageInfo info, String action) {
        ad.a((BaseAdUnit) null, PointCategory.APP_INSTALL_MONITOR, info, action);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Context context, BaseAdUnit baseAdUnit) {
        FileUtil.deleteFile(new File(com.sigmob.sdk.base.utils.o.a(context.getApplicationContext()), baseAdUnit.getApkName()).getAbsolutePath());
    }

    private void a(final Context context, final BaseAdUnit adUnit, PackageInfo info) {
        com.sigmob.sdk.base.network.h.a(adUnit, com.sigmob.sdk.base.common.a.F);
        ad.a(adUnit, PointCategory.APP_INSTALL_END, info, "1");
        HashMap map = new HashMap();
        map.put("result", "1");
        BaseBroadcastReceiver.a(context, adUnit.getUuid(), map, IntentActions.ACTION_INTERSTITIAL_INSTALL_END);
        adUnit.setApkPackageName(info.packageName);
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.sigmob.sdk.base.services.h
            @Override // java.lang.Runnable
            public final void run() {
                a.a(context, adUnit);
            }
        });
        t.a((CharSequence) adUnit.getDeeplinkUrl());
    }
}
