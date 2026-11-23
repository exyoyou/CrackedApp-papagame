package com.join.mgps.Util;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import com.byazt.quv.AbsServerManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class v1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f50061a = "ro.miui.ui.version.code";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f50062b = "ro.miui.ui.version.name";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f50063c = "ro.miui.internal.storage";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f50064d = "ro.build.version.emui";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f50065e = "ro.build.hw_emui_api_level";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f50066f = "ro.confg.hw_systemversion";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f50067g = "ro.build.display.id";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f50068h = "Flyme";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f50069i = "persist.sys.use.flyme.icon";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f50070j = "ro.meizu.setupwizard.flyme";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f50071k = "ro.flyme.published";

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Properties f50072a;

        private a() throws IOException {
            Properties properties = new Properties();
            this.f50072a = properties;
            properties.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
        }

        public static a i() throws IOException {
            return new a();
        }

        public boolean a(final Object key) {
            return this.f50072a.containsKey(key);
        }

        public boolean b(final Object value) {
            return this.f50072a.containsValue(value);
        }

        public Set<Map.Entry<Object, Object>> c() {
            return this.f50072a.entrySet();
        }

        public String d(final String name) {
            return this.f50072a.getProperty(name);
        }

        public String e(final String name, final String defaultValue) {
            return this.f50072a.getProperty(name, defaultValue);
        }

        public boolean f() {
            return this.f50072a.isEmpty();
        }

        public Set<Object> g() {
            return this.f50072a.keySet();
        }

        public Enumeration<Object> h() {
            return this.f50072a.keys();
        }

        public int j() {
            return this.f50072a.size();
        }

        public Collection<Object> k() {
            return this.f50072a.values();
        }
    }

    public static boolean a(Context context) {
        try {
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
            boolean z10 = identifier > 0 ? resources.getBoolean(identifier) : false;
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
                if ("1".equals(str)) {
                    return false;
                }
                if ("0".equals(str)) {
                    return true;
                }
            } catch (Exception unused) {
            }
            return z10;
        } catch (Exception unused2) {
            return false;
        }
    }

    private static String b(String key, String defaultValue) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, key, defaultValue);
        } catch (Exception unused) {
            return defaultValue;
        }
    }

    public static boolean c() {
        return j(f50064d, f50065e, f50066f);
    }

    public static boolean d() {
        if (j(f50069i, f50070j, f50071k)) {
            return true;
        }
        try {
            a aVarI = a.i();
            if (!aVarI.a(f50067g)) {
                return false;
            }
            String strD = aVarI.d(f50067g);
            return !TextUtils.isEmpty(strD) && strD.contains(f50068h);
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean e() {
        return Build.MANUFACTURER.equalsIgnoreCase("HUAWEI");
    }

    public static boolean f(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), "navigationbar_is_min", 0) == 1;
    }

    public static boolean g() {
        return j(f50061a, f50062b, f50063c);
    }

    public static boolean h() {
        return Build.MANUFACTURER.equalsIgnoreCase("oppo");
    }

    public static boolean i(Context context) {
        if (g()) {
            return m(context);
        }
        if (k()) {
            return l(context);
        }
        return true;
    }

    private static boolean j(String... keys) {
        if (keys != null && keys.length != 0) {
            try {
                try {
                    a aVarI = a.i();
                    for (String str : keys) {
                        if (!TextUtils.isEmpty(aVarI.d(str))) {
                            return true;
                        }
                    }
                    return false;
                } catch (IOException unused) {
                    for (String str2 : keys) {
                        if (!TextUtils.isEmpty(b(str2, null))) {
                            return true;
                        }
                    }
                    return false;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public static boolean k() {
        return "vivo".equalsIgnoreCase(Build.MANUFACTURER) || Build.MODEL.toLowerCase().contains("vivo");
    }

    static boolean l(Context context) {
        int i10;
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.vivo.permissionmanager.provider.permission/start_bg_activity"), null, "pkgname = ?", new String[]{context.getPackageName()}, null);
            if (cursorQuery != null) {
                if (cursorQuery.moveToFirst()) {
                    int columnIndex = cursorQuery.getColumnIndex("currentstate");
                    if (columnIndex < 0) {
                        return false;
                    }
                    i10 = cursorQuery.getInt(columnIndex);
                    e.printStackTrace();
                } else {
                    i10 = 1;
                }
                try {
                    cursorQuery.close();
                } catch (Exception e10) {
                    e = e10;
                    e.printStackTrace();
                }
            } else {
                i10 = 1;
            }
        } catch (Exception e11) {
            e = e11;
            i10 = 1;
        }
        return i10 == 0;
    }

    static boolean m(Context context) {
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        try {
            Class<?> cls = appOpsManager.getClass();
            Class<?> cls2 = Integer.TYPE;
            Object objInvoke = cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, 10021, Integer.valueOf(Process.myUid()), context.getPackageName());
            return objInvoke != null && Integer.parseInt(objInvoke.toString()) == 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void n(Context context) {
        if (context == null) {
            return;
        }
        if (!g()) {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, context.getPackageName(), null));
            context.startActivity(intent);
            return;
        }
        try {
            try {
                Intent intent2 = new Intent("miui.intent.action.APP_PERM_EDITOR");
                intent2.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
                intent2.putExtra("extra_pkgname", context.getPackageName());
                context.startActivity(intent2);
            } catch (Exception unused) {
                Intent intent3 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent3.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, context.getPackageName(), null));
                context.startActivity(intent3);
            }
        } catch (Exception unused2) {
            Intent intent4 = new Intent("miui.intent.action.APP_PERM_EDITOR");
            intent4.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
            intent4.putExtra("extra_pkgname", context.getPackageName());
            context.startActivity(intent4);
        }
    }
}
