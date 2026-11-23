package org.repackage.com.meizu.flyme.openidsdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.haima.hmcp.beans.HmInputMappingContent;

/* JADX INFO: loaded from: classes10.dex */
class f {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile f f95974g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f95975h;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BroadcastReceiver f95981f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f95976a = new b("udid");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    b f95977b = new b("oaid");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    b f95979d = new b("vaid");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    b f95978c = new b("aaid");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f95980e = new d();

    private f() {
    }

    private static String b(PackageManager packageManager, String str) {
        ProviderInfo providerInfoResolveContentProvider;
        if (packageManager == null || (providerInfoResolveContentProvider = packageManager.resolveContentProvider(str, 0)) == null || (providerInfoResolveContentProvider.applicationInfo.flags & 1) == 0) {
            return null;
        }
        return providerInfoResolveContentProvider.packageName;
    }

    private static e c(Cursor cursor) {
        String str;
        e eVar = new e(null, 0);
        if (cursor == null) {
            str = "parseValue fail, cursor is null.";
        } else {
            if (!cursor.isClosed()) {
                cursor.moveToFirst();
                int columnIndex = cursor.getColumnIndex(HmInputMappingContent.FIELD_VALUE);
                if (columnIndex >= 0) {
                    eVar.f95971a = cursor.getString(columnIndex);
                } else {
                    e("parseValue fail, index < 0.");
                }
                int columnIndex2 = cursor.getColumnIndex("code");
                if (columnIndex2 >= 0) {
                    eVar.f95972b = cursor.getInt(columnIndex2);
                } else {
                    e("parseCode fail, index < 0.");
                }
                int columnIndex3 = cursor.getColumnIndex("expired");
                if (columnIndex3 >= 0) {
                    eVar.f95973c = cursor.getLong(columnIndex3);
                } else {
                    e("parseExpired fail, index < 0.");
                }
                return eVar;
            }
            str = "parseValue fail, cursor is closed.";
        }
        e(str);
        return eVar;
    }

    public static final f d() {
        if (f95974g == null) {
            synchronized (f.class) {
                if (f95974g == null) {
                    f95974g = new f();
                }
            }
        }
        return f95974g;
    }

    static void e(String str) {
    }

    public static void f(boolean z10) {
        f95975h = z10;
    }

    private static boolean g(Context context) {
        e("querySupport version : 1.0.8");
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"supported"}, null);
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return false;
                }
                e eVarC = c(cursorQuery);
                boolean z10 = 1000 != eVarC.f95972b || "0".equals(eVarC.f95971a);
                cursorQuery.close();
                return z10;
            } catch (Exception e10) {
                e("querySupport, Exception : " + e10.getMessage());
                if (cursorQuery != null) {
                }
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v9 */
    private String i(Context context, b bVar) throws Throwable {
        String str;
        String strConcat;
        String str2;
        e("queryId : " + bVar.f95965c);
        ?? r10 = 0;
        str = null;
        r10 = 0;
        String str3 = null;
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{bVar.f95965c}, null);
                try {
                    if (cursorQuery == null) {
                        if (h(context, false)) {
                            strConcat = "forceQuery isSupported : ".concat(String.valueOf(h(context, true)));
                            e(strConcat);
                            r10 = str3;
                        }
                        return r10;
                    }
                    e eVarC = c(cursorQuery);
                    str2 = eVarC.f95971a;
                    bVar.c(str2);
                    bVar.b(eVarC.f95973c);
                    bVar.a(eVarC.f95972b);
                    e(bVar.f95965c + " errorCode : " + bVar.f95966d);
                    if (eVarC.f95972b != 1000) {
                        k(context);
                        if (!h(context, false)) {
                            r10 = str2;
                            r10 = str2;
                            strConcat = "not support, forceQuery isSupported: ".concat(String.valueOf(h(context, true)));
                            str3 = str2;
                            e(strConcat);
                            r10 = str3;
                        }
                        return r10;
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception e10) {
                    e = e10;
                    str = str3;
                    cursor = cursorQuery;
                    e("queryId, Exception : " + e.getMessage());
                    if (cursor != null) {
                        cursor.close();
                    }
                    r10 = str;
                } catch (Throwable th) {
                    th = th;
                    r10 = cursorQuery;
                    if (r10 != 0) {
                        r10.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e11) {
            e = e11;
            str = null;
        }
        return r10;
    }

    private static String j(PackageManager packageManager, String str) {
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo != null) {
                return packageInfo.versionName;
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            e("getAppVersion, Exception : " + e10.getMessage());
            return null;
        }
    }

    private synchronized void k(Context context) {
        if (this.f95981f != null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE");
        a aVar = new a();
        this.f95981f = aVar;
        context.registerReceiver(aVar, intentFilter, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE", null);
    }

    final String a(Context context, b bVar) {
        String str;
        if (bVar == null) {
            str = "getId, openId = null.";
        } else {
            if (bVar.d()) {
                return bVar.f95964b;
            }
            if (h(context, true)) {
                return i(context, bVar);
            }
            str = "getId, isSupported = false.";
        }
        e(str);
        return null;
    }

    final boolean h(Context context, boolean z10) {
        if (this.f95980e.b() && !z10) {
            return this.f95980e.e();
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        String strB = b(packageManager, "com.meizu.flyme.openidsdk");
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        String strJ = j(packageManager, strB);
        if (this.f95980e.b() && this.f95980e.c(strJ)) {
            e("use same version cache, safeVersion : ".concat(String.valueOf(strJ)));
            return this.f95980e.e();
        }
        this.f95980e.d(strJ);
        boolean zG = g(context);
        e("query support, result : ".concat(String.valueOf(zG)));
        this.f95980e.a(zG);
        return zG;
    }
}
