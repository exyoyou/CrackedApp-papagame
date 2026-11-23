package com.byazt.aas;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.Util.o0;
import com.kuaishou.weapon.p0.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 137})
public class nu {

    @com.byazt.zqa.c(c = {0, 1, 131, 475})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f11456c;
        public String tt;
        public String ve;

        public c(String str, String str2, String str3) {
            this.f11456c = str;
            this.tt = str2;
            this.ve = str3;
        }

        public boolean equals(Object obj) {
            String str;
            if (!(obj instanceof c)) {
                return super.equals(obj);
            }
            c cVar = (c) obj;
            String str2 = this.f11456c;
            return str2 != null && str2.equals(cVar.f11456c) && (str = this.ve) != null && str.equals(cVar.ve);
        }

        public String toString() {
            try {
                return SimpleComparison.LESS_THAN_OPERATION + this.f11456c + " name=\"" + this.tt + "\" path=\"" + this.ve + "\" />";
            } catch (Throwable unused) {
                return super.toString();
            }
        }
    }

    public static void c() {
        Context context = com.byazt.omf.gt.getContext();
        if (context != null && com.byazt.nr.m.ve()) {
            c(context);
            String packageName = context.getPackageName();
            int i10 = context.getApplicationInfo().targetSdkVersion;
            PackageManager packageManager = context.getPackageManager();
            boolean z10 = false;
            boolean z11 = false;
            for (ProviderInfo providerInfo : packageManager.queryContentProviders(context.getApplicationInfo().processName, context.getApplicationInfo().uid, 131072)) {
                if ("com.byazt.vf.TTMultiProvider".equals(providerInfo.name)) {
                    String str = packageName + ".TTMultiProvider";
                    if (TextUtils.isEmpty(str) || !str.equals(providerInfo.authority)) {
                        com.byazt.nr.m.uj("TTAdSdk-InitChecker", "AndroidManifest.xml中TTMultiProvider配置异常：android:authorities，请参考接入文档");
                        com.byazt.zlb.ve.ve(3, "0");
                    } else {
                        com.byazt.zlb.ve.ve(3, "1");
                    }
                    z10 = true;
                } else {
                    if (providerInfo.authority.equals(packageName + ".TTFileProvider")) {
                        int i11 = Build.VERSION.SDK_INT;
                        if (i11 < 24 || i10 < 24) {
                            com.byazt.nr.m.c("TTAdSdk-InitChecker", "TTFileProvider不需要适配：target=" + i10 + "&phone=" + i11 + ", require=24");
                            com.byazt.zlb.ve.ve(3, "1");
                        } else {
                            if (providerInfo.exported) {
                                com.byazt.nr.m.uj("TTAdSdk-InitChecker", "AndroidManifest.xml中TTFileProvider配置异常：android:exported，请参考接入文档");
                                com.byazt.zlb.ve.ve(3, "0");
                            }
                            if (!providerInfo.grantUriPermissions) {
                                com.byazt.nr.m.uj("TTAdSdk-InitChecker", "AndroidManifest.xml中TTFileProvider配置异常：android:grantUriPermissions，请参考接入文档");
                                com.byazt.zlb.ve.ve(3, "0");
                            }
                            try {
                                List<c> listC = c(context, Integer.valueOf(String.valueOf(packageManager.getProviderInfo(new ComponentName(packageName, providerInfo.name), 128).metaData.get("android.support.FILE_PROVIDER_PATHS"))).intValue());
                                if (listC == null || listC.isEmpty()) {
                                    com.byazt.nr.m.uj("TTAdSdk-InitChecker", "AndroidManifest.xml中TTFileProvider中路径配置异常，请参考接入文档");
                                    com.byazt.zlb.ve.ve(3, "0");
                                } else {
                                    List<c> listVe = ve();
                                    List<c> listUj = uj();
                                    for (c cVar : listC) {
                                        if (cVar != null) {
                                            listVe.remove(cVar);
                                            listUj.remove(cVar);
                                        }
                                    }
                                    if (listVe.isEmpty() && listUj.isEmpty()) {
                                        com.byazt.zlb.ve.ve(3, "1");
                                    } else {
                                        Iterator<c> it2 = listVe.iterator();
                                        while (it2.hasNext()) {
                                            com.byazt.nr.m.uj("TTAdSdk-InitChecker", "    TTFileProvider缺少必要路径：" + it2.next().toString());
                                        }
                                        Iterator<c> it3 = listUj.iterator();
                                        while (it3.hasNext()) {
                                            com.byazt.nr.m.uj("TTAdSdk-InitChecker", "    TTFileProvider缺少可选路径：" + it3.next().toString());
                                        }
                                        com.byazt.zlb.ve.ve(3, "0");
                                    }
                                }
                            } catch (Throwable th) {
                                com.byazt.nr.m.ve("TTAdSdk-InitChecker", "AndroidManifest.xml中TTFileProvider配置错误，请参考接入文档", th);
                                com.byazt.zlb.ve.ve(3, "0");
                            }
                        }
                        z11 = true;
                    }
                }
            }
            try {
                String[] strArr = packageManager.getPackageInfo(packageName, 4096).requestedPermissions;
                if (strArr == null || strArr.length <= 0) {
                    com.byazt.nr.m.uj("TTAdSdk-InitChecker", "AndroidManifest.xml中uses-permission配置丢失，请参考接入文档");
                } else {
                    List<String> listTt = tt();
                    for (String str2 : strArr) {
                        if (str2 != null) {
                            listTt.remove(str2);
                        }
                    }
                    if (!listTt.isEmpty()) {
                        Iterator<String> it4 = listTt.iterator();
                        while (it4.hasNext()) {
                            com.byazt.nr.m.uj("TTAdSdk-InitChecker", "    可能缺少权限：" + it4.next() + "，请参考接入文档");
                        }
                    }
                }
            } catch (Throwable th2) {
                com.byazt.nr.m.ve("TTAdSdk-InitChecker", "AndroidManifest.xml中uses-permission配置错误，请参考接入文档", th2);
            }
            try {
                int i12 = Build.VERSION.SDK_INT;
                if (i12 < 23 || i10 < 23) {
                    com.byazt.nr.m.c("TTAdSdk-InitChecker", "动态权限不需要适配：target=" + i10 + "&phone=" + i12 + ", require=23");
                } else {
                    boolean zC = com.byazt.xgx.n.c().c(context, g.f74779c);
                    boolean zC2 = com.byazt.xgx.n.c().c(context, g.f74784h);
                    boolean zC3 = com.byazt.xgx.n.c().c(context, g.f74783g);
                    boolean zC4 = com.byazt.xgx.n.c().c(context, g.f74786j);
                    if (!zC) {
                        com.byazt.nr.m.uj("TTAdSdk-InitChecker", "动态权限没有获取，可能影响转化：android.permission.READ_PHONE_STATE");
                    }
                    if (!zC2) {
                        com.byazt.nr.m.uj("TTAdSdk-InitChecker", "动态权限没有获取，可能影响转化：android.permission.ACCESS_COARSE_LOCATION");
                    }
                    if (!zC3) {
                        com.byazt.nr.m.uj("TTAdSdk-InitChecker", "动态权限没有获取，可能影响转化：android.permission.ACCESS_FINE_LOCATION");
                    }
                    if (!zC4) {
                        com.byazt.nr.m.uj("TTAdSdk-InitChecker", "动态权限没有获取，可能影响转化：android.permission.WRITE_EXTERNAL_STORAGE");
                    }
                }
            } catch (Throwable th3) {
                com.byazt.nr.m.ve("TTAdSdk-InitChecker", "动态权限获取异常，请检查并详细阅读接入文档", th3);
            }
            if (!z10) {
                com.byazt.nr.m.uj("TTAdSdk-InitChecker", "××您没有配置TTMultiProvider，请参考接入文档，否则影响转化××");
            }
            if (z11) {
                return;
            }
            com.byazt.nr.m.uj("TTAdSdk-InitChecker", "××您没有配置TTFileProvider，请参考接入文档，否则影响转化××");
        }
    }

    private static List<String> tt() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(g.f74777a);
        arrayList.add(g.f74778b);
        arrayList.add(g.f74780d);
        arrayList.add(g.f74779c);
        arrayList.add(g.f74786j);
        arrayList.add("android.permission.REQUEST_INSTALL_PACKAGES");
        arrayList.add(g.f74784h);
        arrayList.add(g.f74783g);
        return arrayList;
    }

    private static List<c> uj() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new c("external-path", "tt_external_root", o0.f49827a));
        return arrayList;
    }

    private static List<c> ve() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new c("external-path", "tt_external_download", "Download"));
        arrayList.add(new c("external-files-path", "tt_external_files_download", "Download"));
        arrayList.add(new c("files-path", "tt_internal_file_download", "Download"));
        arrayList.add(new c("cache-path", "tt_internal_cache_download", "Download"));
        return arrayList;
    }

    private static String c(Context context) {
        try {
            return com.byazt.nr.gt.tt(context);
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    private static List<c> c(Context context, int i10) {
        XmlResourceParser xml;
        try {
            ArrayList arrayList = new ArrayList();
            xml = context.getResources().getXml(i10);
            try {
                for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                    if (eventType == 2) {
                        String name = xml.getName();
                        int attributeCount = xml.getAttributeCount();
                        String attributeValue = null;
                        String attributeValue2 = null;
                        for (int i11 = 0; i11 < attributeCount; i11++) {
                            String attributeName = xml.getAttributeName(i11);
                            if (attributeName.equals("name")) {
                                attributeValue = xml.getAttributeValue(i11);
                            } else if (attributeName.equals("path")) {
                                attributeValue2 = xml.getAttributeValue(i11);
                            }
                        }
                        if (!TextUtils.isEmpty(name) && !TextUtils.isEmpty(attributeValue) && !TextUtils.isEmpty(attributeValue2)) {
                            arrayList.add(new c(name, attributeValue, attributeValue2));
                        }
                    }
                }
                xml.close();
                return arrayList;
            } catch (Throwable unused) {
                if (xml != null) {
                    xml.close();
                }
                return null;
            }
        } catch (Throwable unused2) {
            xml = null;
        }
    }
}
