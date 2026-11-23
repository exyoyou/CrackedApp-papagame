package com.sigmob.sdk.base.common;

import android.app.DownloadManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.webkit.MimeTypeMap;
import com.byazt.tk.AdBaseConstants;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.common.utils.ReflectionUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.windad.WindAds;
import java.io.File;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes5.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79245a = "q";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<String, String> f79246b = new Hashtable();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Set<r> f79247c = new CopyOnWriteArraySet();

    public static DownloadManager a() {
        Context contextE = com.sigmob.sdk.b.e();
        if (contextE == null) {
            return null;
        }
        return (DownloadManager) contextE.getSystemService("download");
    }

    private static long b(String downloadUrl, String apkName, String title) {
        if (downloadUrl != null) {
            try {
                if (!downloadUrl.isEmpty()) {
                    String strTrim = downloadUrl.trim();
                    if (com.sigmob.sdk.base.utils.t.a((CharSequence) Uri.parse(strTrim).getScheme())) {
                        strTrim = "http://" + strTrim;
                    }
                    if (!strTrim.startsWith("http")) {
                        return -2L;
                    }
                    DownloadManager.Request request = new DownloadManager.Request(Uri.parse(strTrim));
                    File file = new File(apkName);
                    request.setTitle(title);
                    request.setAllowedNetworkTypes(3);
                    request.setAllowedOverRoaming(true);
                    request.setVisibleInDownloadsUi(true);
                    request.setNotificationVisibility(1);
                    File parentFile = file.getParentFile();
                    if (parentFile == null) {
                        return -1L;
                    }
                    if (parentFile.exists()) {
                        if (!parentFile.isDirectory()) {
                            parentFile.delete();
                            if (!parentFile.mkdirs()) {
                                return -3L;
                            }
                        }
                    } else if (!parentFile.mkdirs()) {
                        return -4L;
                    }
                    request.addRequestHeader("User-Agent", Networking.getUserAgent());
                    request.setDestinationUri(Uri.fromFile(file));
                    DownloadManager downloadManagerA = a();
                    if (downloadManagerA == null) {
                        return -1L;
                    }
                    return downloadManagerA.enqueue(request);
                }
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
            }
        }
        return -1L;
    }

    public static Long c(long downloadId, String filePath) {
        for (r rVar : f79247c) {
            if (rVar.f79260c == downloadId || rVar.f79258a.equalsIgnoreCase(filePath)) {
                return Long.valueOf(rVar.f79260c);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(String str, Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            ((PointEntitySigmobError) obj).setFinal_url(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(String str, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setFinal_url(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(String str, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).getOptions().put("url", str);
        }
    }

    public static String a(File file) {
        String name = file.getName();
        return MimeTypeMap.getSingleton().getMimeTypeFromExtension(name.substring(name.lastIndexOf(com.join.mgps.Util.o0.f49827a) + 1).toLowerCase());
    }

    public static HashMap<String, Object> b() {
        Cursor cursorQuery;
        try {
            DownloadManager downloadManagerA = a();
            if (downloadManagerA == null) {
                return null;
            }
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterByStatus(3);
            cursorQuery = downloadManagerA.query(query);
            try {
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    cursorQuery.close();
                    return null;
                }
                HashMap<String, Object> map = new HashMap<>();
                do {
                    Long lValueOf = Long.valueOf(cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("_id")));
                    String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("local_uri"));
                    if (!com.sigmob.sdk.base.utils.t.a((CharSequence) string)) {
                        map.put(string, lValueOf);
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return map;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        try {
            SigmobLog.e(th.getMessage());
            return null;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(String str, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setFinal_url(str);
        }
    }

    public static Map<String, Object> a(long downloadID) {
        Cursor cursorQuery;
        try {
            DownloadManager downloadManagerA = a();
            if (downloadManagerA == null) {
                return null;
            }
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterById(downloadID);
            Uri uriForDownloadedFile = downloadManagerA.getUriForDownloadedFile(downloadID);
            cursorQuery = downloadManagerA.query(query);
            try {
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    cursorQuery.close();
                    return null;
                }
                int i10 = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("status"));
                int i11 = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(MediationConstant.KEY_REASON));
                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("local_uri"));
                HashMap map = new HashMap();
                map.put("fileName", string);
                map.put("status", Integer.valueOf(i10));
                map.put(ContentProviderManager.PROVIDER_URI, uriForDownloadedFile);
                map.put(MediationConstant.KEY_REASON, Integer.valueOf(i11));
                cursorQuery.close();
                return map;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        try {
            SigmobLog.e(th.getMessage());
            return null;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    public static void b(long downloadId, String filePath) {
        for (r rVar : f79247c) {
            if (rVar.f79260c == downloadId || rVar.f79258a.equalsIgnoreCase(filePath)) {
                f79247c.remove(rVar);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String apkName, final String url, String title) {
        Long lValueOf;
        if (!com.sigmob.sdk.base.utils.t.b(apkName)) {
            apkName = Md5Util.md5(url) + ".apk";
        }
        File fileA = com.sigmob.sdk.base.utils.o.a(com.sigmob.sdk.base.utils.o.a(com.sigmob.sdk.b.e()), apkName);
        if (com.sigmob.sdk.base.utils.w.b(fileA)) {
            String absolutePath = fileA.getAbsolutePath();
            if (com.sigmob.sdk.base.utils.w.a((Number) c(-1L, absolutePath))) {
                try {
                    aj.a(com.sigmob.sdk.b.e(), "正在下载", 1).show();
                    return;
                } catch (Throwable unused) {
                    return;
                }
            }
            lValueOf = Long.valueOf(b(url, absolutePath, title));
            if (lValueOf.longValue() > 0) {
                aj.a(com.sigmob.sdk.b.e(), "开始下载", 1).show();
                File fileA2 = com.sigmob.sdk.base.utils.o.a(lValueOf);
                if (!fileA2.exists()) {
                    fileA2.delete();
                }
                FileUtil.writeToCache(apkName, fileA2.getAbsolutePath());
            }
        } else {
            lValueOf = null;
        }
        ad.a("download_start", (lValueOf == null || lValueOf.longValue() <= 0) ? "0" : "1", (BaseAdUnit) null, new ad.a() { // from class: com.sigmob.sdk.base.common.e2
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                q.f(url, obj);
            }
        });
    }

    private static void a(Context context, BaseAdUnit adUnit, final String url, final File file) {
        if (adUnit.isRecord()) {
            ad.a("download_start", "1", adUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.j2
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    q.a(url, file, obj);
                }
            });
        }
        String uuid = adUnit.getUuid();
        Long downloadId = adUnit.getDownloadId();
        HashMap map = new HashMap();
        map.put("result", "1");
        map.put("downloadId", downloadId);
        BaseBroadcastReceiver.a(context, uuid, map, IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(String str, Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            ((PointEntitySigmobError) obj).setFinal_url(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Context context, File file, BaseAdUnit baseAdUnit) {
        a(context, file.getAbsolutePath(), baseAdUnit);
    }

    public static boolean b(File file) {
        return (file == null || !file.exists() || ClientMetadata.getPackageInfoWithUri(com.sigmob.sdk.b.e(), file.getAbsolutePath()) == null) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:44:0x0101  */
    /* JADX WARN: Code duplicated, block: B:46:0x0104  */
    /* JADX WARN: Code duplicated, block: B:48:0x0109 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:49:0x010a  */
    /* JADX WARN: Code duplicated, block: B:51:0x0118  */
    /* JADX WARN: Code duplicated, block: B:52:0x011a  */
    /* JADX WARN: Code duplicated, block: B:55:0x012f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x0132  */
    /* JADX WARN: Code duplicated, block: B:60:0x00d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:49:0x010a, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Context context, final String str, BaseAdUnit baseAdUnit) {
        PackageInfo packageInfoWithUri;
        Object[] objArr;
        File fileA;
        Class<?> cls;
        File file = new File(str);
        SigmobLog.i("installAPK:" + file.getAbsolutePath() + ":" + file.exists());
        Intent action = new Intent().addFlags(268468224).setAction("android.intent.action.VIEW");
        boolean z10 = true;
        try {
            aj.a(context, "开始安装", 1).show();
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
        if (Build.VERSION.SDK_INT >= 24 && context.getApplicationInfo().targetSdkVersion >= 24) {
            packageInfoWithUri = null;
            Uri uri = null;
            try {
                cls = Class.forName("androidx.core.content.FileProvider");
            } catch (Throwable unused) {
                cls = null;
            }
            try {
                cls = Class.forName("androidx.core.content.FileProvider");
            } catch (Throwable unused2) {
            }
            if (cls != null) {
                try {
                    ReflectionUtil.MethodBuilder methodBuilder = new ReflectionUtil.MethodBuilder(cls, "getUriForFile");
                    methodBuilder.addParam(Context.class, context);
                    methodBuilder.addParam(String.class, context.getPackageName() + ".sigprovider");
                    methodBuilder.addParam(File.class, file);
                    uri = (Uri) methodBuilder.execute();
                } catch (Exception e10) {
                    SigmobLog.e(e10.getMessage());
                }
                if (uri != null) {
                    action.addFlags(1);
                    action.setDataAndType(uri, AdBaseConstants.MIME_APK);
                }
            }
            if (packageInfoWithUri != null) {
                fileA = com.sigmob.sdk.base.utils.o.a((Object) packageInfoWithUri.packageName);
                com.sigmob.sdk.base.network.h.a(baseAdUnit, a.E);
                try {
                    context.startActivity(action);
                    if (baseAdUnit != null) {
                        try {
                            FileUtil.writeToCache(baseAdUnit, fileA.getAbsolutePath());
                        } catch (Throwable th2) {
                            th = th2;
                            if (fileA != null && fileA.exists()) {
                                fileA.delete();
                            }
                            ad.a(PointCategory.APP_INSTALL_START, 0, th.getMessage(), baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.f2
                                @Override // com.sigmob.sdk.base.common.ad.a
                                public final void onAddExtra(Object obj) {
                                    q.a(str, obj);
                                }
                            });
                            SigmobLog.e("install apk fail", th);
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            if (!z10) {
                FileUtil.deleteFile(str);
            }
            if (baseAdUnit == null) {
                return;
            }
            com.sigmob.sdk.base.network.h.a(baseAdUnit, a.E);
            HashMap map = new HashMap();
            if (z10) {
                objArr = "1";
            } else {
                objArr = "0";
            }
            map.put("result", objArr);
            BaseBroadcastReceiver.a(context, baseAdUnit.getUuid(), map, IntentActions.ACTION_INTERSTITIAL_INSTALL_START);
            if (baseAdUnit.isRecord()) {
                ad.a(baseAdUnit, PointCategory.APP_INSTALL_START, packageInfoWithUri, z10 ? "1" : "0");
            }
        }
        action.setDataAndType(Uri.fromFile(file), a(file));
        packageInfoWithUri = ClientMetadata.getPackageInfoWithUri(context, str);
        if (packageInfoWithUri != null) {
            fileA = com.sigmob.sdk.base.utils.o.a((Object) packageInfoWithUri.packageName);
            com.sigmob.sdk.base.network.h.a(baseAdUnit, a.E);
            context.startActivity(action);
            if (baseAdUnit != null) {
                FileUtil.writeToCache(baseAdUnit, fileA.getAbsolutePath());
            }
        } else {
            z10 = false;
        }
        if (!z10) {
            FileUtil.deleteFile(str);
        }
        if (baseAdUnit == null) {
            return;
        }
        com.sigmob.sdk.base.network.h.a(baseAdUnit, a.E);
        HashMap map2 = new HashMap();
        if (z10) {
            objArr = "1";
        } else {
            objArr = "0";
        }
        map2.put("result", objArr);
        BaseBroadcastReceiver.a(context, baseAdUnit.getUuid(), map2, IntentActions.ACTION_INTERSTITIAL_INSTALL_START);
        if (baseAdUnit.isRecord()) {
            ad.a(baseAdUnit, PointCategory.APP_INSTALL_START, packageInfoWithUri, z10 ? "1" : "0");
        }
    }

    public static void a(final String url, final BaseAdUnit adUnit) {
        String str;
        final Context contextE = com.sigmob.sdk.b.e();
        try {
            ad.a(PointCategory.APK_CLICK, "download", adUnit, (ad.a) null);
            SigmobLog.i("download apk:" + url);
            h.a(adUnit);
            int apkDownloadType = adUnit.getApkDownloadType();
            Long downloadId = adUnit.getDownloadId();
            String apkMd5 = adUnit.getApkMd5();
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) apkMd5)) {
                str = Md5Util.md5(url) + ".apk";
            } else {
                String str2 = apkMd5 + ".apk";
                File fileA = com.sigmob.sdk.base.utils.o.a(contextE);
                final File file = new File(fileA, str2);
                boolean zExists = file.exists();
                boolean zB = apkDownloadType == 0 ? true : com.sigmob.sdk.downloader.l.b(url, fileA.getAbsolutePath(), str2);
                if (zExists && zB && adUnit.canUseDownloadApk() && b(file)) {
                    adUnit.setApkName(str2);
                    if (downloadId == null) {
                        ad.a(PointCategory.EXIT_APK_INSTALL, "", adUnit, (ad.a) null);
                    }
                    WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.common.g2
                        @Override // java.lang.Runnable
                        public final void run() {
                            q.a(contextE, file, adUnit);
                        }
                    });
                    return;
                }
                str = str2;
            }
            adUnit.setApkName(str);
            adUnit.setDownloadUrl(url);
            if (apkDownloadType == 0) {
                a(str, url, adUnit);
                return;
            }
            if (apkDownloadType == 1) {
                o.a(url, adUnit, false);
                return;
            }
            if (apkDownloadType == 2) {
                o.a(url, adUnit, true);
                return;
            }
            SigmobLog.e("not support Download Type: " + apkDownloadType);
            throw new Exception("not support Download Type: " + apkDownloadType);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            if (adUnit.isRecord()) {
                ad.a("download_start", "0", adUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.h2
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        q.c(url, obj);
                    }
                });
                ad.a("download_start", 0, th.getMessage(), adUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.i2
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        q.b(url, obj);
                    }
                });
            }
            try {
                aj.a(contextE, "下载失败", 1).show();
            } catch (Throwable th2) {
                SigmobLog.e(th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, File file, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setFinal_url(str);
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put("apkfile", file.getAbsolutePath());
            options.put("apkurl", str);
            pointEntitySigmob.setOptions(options);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            ((PointEntitySigmobError) obj).setFile_name(str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0105  */
    private static void a(String apkName, final String url, BaseAdUnit adUnit) {
        String str;
        String str2;
        String str3 = IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START;
        Context contextE = com.sigmob.sdk.b.e();
        String uuid = adUnit.getUuid();
        try {
            String str4 = com.sigmob.sdk.base.utils.t.b(apkName) ? apkName : Md5Util.md5(adUnit.getLanding_page()) + ".apk";
            File file = new File(com.sigmob.sdk.base.utils.o.a(contextE), str4);
            final String absolutePath = file.getAbsolutePath();
            Long lC = c(-1L, absolutePath);
            if (com.sigmob.sdk.base.utils.w.a((Number) lC)) {
                try {
                    aj.a(contextE, "正在下载", 1).show();
                    if (adUnit.getDownloadId() == null) {
                        adUnit.setDownloadId(lC);
                        File fileA = com.sigmob.sdk.base.utils.o.a(lC);
                        if (fileA.exists()) {
                            fileA.delete();
                        }
                        FileUtil.writeToCache(adUnit, fileA.getAbsolutePath());
                        a(contextE, adUnit, url, file);
                        return;
                    }
                    return;
                } catch (Throwable unused) {
                    return;
                }
            }
            HashMap<String, Object> mapB = b();
            if (com.sigmob.sdk.base.utils.e.b(mapB)) {
                for (String str5 : mapB.keySet()) {
                    if (com.sigmob.sdk.base.utils.t.a((CharSequence) str5, (CharSequence) absolutePath)) {
                        try {
                            aj.a(contextE, "正在下载", 1).show();
                        } catch (Throwable unused2) {
                        }
                        try {
                            Object obj = mapB.get(str5);
                            if (obj instanceof Long) {
                                adUnit.setDownloadId((Long) obj);
                                File fileA2 = com.sigmob.sdk.base.utils.o.a(lC);
                                if (fileA2.exists()) {
                                    fileA2.delete();
                                }
                                FileUtil.writeToCache(adUnit, fileA2.getAbsolutePath());
                                a(contextE, adUnit, url, file);
                                return;
                            }
                            return;
                        } catch (Throwable unused3) {
                            return;
                        }
                    }
                }
            }
            Map<String, String> map = f79246b;
            boolean zContainsKey = map.containsKey(uuid);
            if (!file.exists() || zContainsKey) {
                str = IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START;
            } else {
                try {
                    if (a(contextE, absolutePath)) {
                        str = IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START;
                    } else {
                        boolean zDeleteFile = FileUtil.deleteFile(absolutePath);
                        StringBuilder sb2 = new StringBuilder();
                        str = IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START;
                        try {
                            sb2.append("cacheFile deleteFile:");
                            sb2.append(zDeleteFile);
                            SigmobLog.i(sb2.toString());
                        } catch (Throwable th) {
                            th = th;
                            str3 = str;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            SigmobLog.i(str4 + " exists:" + file.exists() + " containsKey:" + zContainsKey);
            if (file.exists()) {
                if (zContainsKey) {
                    a(contextE, absolutePath, adUnit);
                    return;
                }
                long jLastModified = file.lastModified();
                int iY = com.sigmob.sdk.base.o.a().Y();
                if (iY == 0) {
                    str2 = "default deleteFile:" + FileUtil.deleteFile(absolutePath);
                } else {
                    if (System.currentTimeMillis() - jLastModified <= ((long) iY) * 1000) {
                        a(contextE, absolutePath, adUnit);
                        return;
                    }
                    str2 = "timeOut deleteFile:" + FileUtil.deleteFile(absolutePath);
                }
                SigmobLog.i(str2);
            }
            map.put(uuid, str4);
            String appName = adUnit.getAppName();
            if (!com.sigmob.sdk.base.utils.t.b(appName)) {
                appName = file.getName();
            }
            long jB = b(url, absolutePath, appName);
            if (jB >= 0) {
                try {
                    aj.a(contextE, "已开始下载，可在通知栏尝试取消", 1).show();
                } catch (Throwable th3) {
                    SigmobLog.e(th3.getMessage());
                }
                a(jB, absolutePath);
                adUnit.setDownloadId(Long.valueOf(jB));
                FileUtil.writeToCache(adUnit, com.sigmob.sdk.base.utils.o.a(Long.valueOf(jB)).getAbsolutePath());
                a(contextE, adUnit, url, file);
                str3 = str;
            } else {
                if (adUnit.isRecord()) {
                    ad.a("download_start", "0", adUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.k2
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj2) {
                            q.a(url, absolutePath, obj2);
                        }
                    });
                    ad.a(PointCategory.DOWNLOAD_FAILED, (int) jB, "下载失败，错误码 " + jB, adUnit, (ad.a) null);
                }
                aj.a(contextE, "下载失败,错误码 " + jB, 0).show();
                HashMap map2 = new HashMap();
                map2.put("result", "0");
                map2.put("downloadId", -1);
                str3 = str;
                BaseBroadcastReceiver.a(contextE, uuid, map2, str3);
            }
            if (adUnit.isRecord()) {
                com.sigmob.sdk.base.network.h.a(adUnit, "download_start");
                return;
            }
            return;
        } catch (Throwable th4) {
            th = th4;
        }
        SigmobLog.e(th.getMessage());
        if (adUnit.isRecord()) {
            ad.a("download_start", "0", adUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.l2
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj2) {
                    q.e(url, obj2);
                }
            });
            ad.a("download_start", 0, th.getMessage(), adUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.m2
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj2) {
                    q.d(url, obj2);
                }
            });
        }
        HashMap map3 = new HashMap();
        map3.put("result", "0");
        map3.put("downloadId", -1);
        BaseBroadcastReceiver.a(contextE, uuid, map3, str3);
        try {
            aj.a(contextE, "请先给予应用权限", 1).show();
        } catch (Throwable unused4) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, String str2, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setFinal_url(str);
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put("apkfile", str2);
            options.put("apkurl", str);
            pointEntitySigmob.setOptions(options);
        }
    }

    public static void a(final String url, final String icon_url, final String product_name, final int downloadType) throws Exception {
        s.a(url, new s.a() { // from class: com.sigmob.sdk.base.common.q.1
            @Override // com.sigmob.sdk.base.common.s.a
            public void a(String fileName, String url2) {
                String str;
                String str2 = com.sigmob.sdk.base.utils.t.a((CharSequence) product_name) ? fileName : product_name;
                int i10 = downloadType;
                boolean z10 = true;
                if (i10 == 1) {
                    str = icon_url;
                    z10 = false;
                } else {
                    if (i10 != 2) {
                        q.c(fileName, url2, str2);
                        return;
                    }
                    str = icon_url;
                }
                o.a(fileName, url2, str, str2, z10);
            }

            @Override // com.sigmob.sdk.base.common.s.a
            public void a(String message, Throwable throwable) {
                String str = Md5Util.md5(url) + ".apk";
                String str2 = com.sigmob.sdk.base.utils.t.a((CharSequence) product_name) ? str : product_name;
                int i10 = downloadType;
                if (i10 == 1) {
                    o.a(str, url, icon_url, str2, false);
                } else if (i10 != 2) {
                    q.c(str, url, str2);
                } else {
                    o.a(str, url, icon_url, str2, true);
                }
            }
        });
    }

    public static boolean a(long downloadId, String filePath) {
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) filePath)) {
            return false;
        }
        f79247c.add(new r(filePath, null, downloadId));
        return true;
    }

    public static boolean a(Context context, String filePath) {
        try {
            return com.sigmob.sdk.base.utils.w.b(context.getPackageManager().getPackageArchiveInfo(filePath, 1));
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean a(String downloadUrl) {
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) downloadUrl)) {
            return false;
        }
        Cursor cursor = null;
        try {
            DownloadManager downloadManagerA = a();
            if (downloadManagerA == null) {
                return false;
            }
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterByStatus(3);
            Cursor cursorQuery = downloadManagerA.query(query);
            if (!cursorQuery.moveToFirst()) {
                cursorQuery.close();
                cursorQuery.close();
                return false;
            }
            do {
                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(ContentProviderManager.PROVIDER_URI));
                if (!com.sigmob.sdk.base.utils.t.a((CharSequence) string) && downloadUrl.equalsIgnoreCase(string)) {
                    cursorQuery.close();
                    return true;
                }
            } while (cursorQuery.moveToNext());
            cursorQuery.close();
            return false;
        } catch (Throwable th) {
            try {
                SigmobLog.e(th.getMessage());
                return false;
            } finally {
                if (0 != 0) {
                    cursor.close();
                }
            }
        }
    }

    public static long[] a(Context context, Long downloadId) {
        long[] jArr = {-1, -1, 0};
        if (downloadId == null || downloadId.longValue() < 0) {
            return jArr;
        }
        Cursor cursorQuery = null;
        try {
            cursorQuery = ((DownloadManager) context.getSystemService("download")).query(new DownloadManager.Query().setFilterById(downloadId.longValue()));
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                jArr[0] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("bytes_so_far"));
                jArr[1] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("total_size"));
                jArr[2] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("status"));
            }
            return jArr;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }
}
