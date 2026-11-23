package com.join.android.app.common.utils;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.widget.Toast;
import com.byazt.quv.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f34801b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34800a = "PermissionPageManager";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f34802c = "com.join.android.app.mgsim.wufun";

    public n(Context context) {
        this.f34801b = context;
    }

    private void a(String packagename) {
        PackageInfo packageInfo;
        try {
            try {
                packageInfo = this.f34801b.getPackageManager().getPackageInfo(packagename, 0);
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                packageInfo = null;
            }
            if (packageInfo == null) {
                f();
                return;
            }
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(packageInfo.packageName);
            List<ResolveInfo> listQueryIntentActivities = this.f34801b.getPackageManager().queryIntentActivities(intent, 0);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("resolveinfoList");
            sb2.append(listQueryIntentActivities.size());
            for (int i10 = 0; i10 < listQueryIntentActivities.size(); i10++) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(listQueryIntentActivities.get(i10).activityInfo.packageName);
                sb3.append(listQueryIntentActivities.get(i10).activityInfo.name);
            }
            ResolveInfo next = listQueryIntentActivities.iterator().next();
            if (next != null) {
                ActivityInfo activityInfo = next.activityInfo;
                String str = activityInfo.packageName;
                String str2 = activityInfo.name;
                Intent intent2 = new Intent("android.intent.action.MAIN");
                intent2.addCategory("android.intent.category.LAUNCHER");
                intent2.setComponent(new ComponentName(str, str2));
                try {
                    this.f34801b.startActivity(intent2);
                } catch (Exception e11) {
                    f();
                    e11.printStackTrace();
                }
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    private Intent b() {
        Intent intent = new Intent();
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, this.f34801b.getPackageName(), null));
        return intent;
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x004f: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]) (LINE:80), block:B:23:0x004f */
    private static String c() throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.miui.ui.version.name").getInputStream()), 1024);
                try {
                    String line = bufferedReader.readLine();
                    bufferedReader.close();
                    try {
                        bufferedReader.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                    return line;
                } catch (IOException e11) {
                    e = e11;
                    e.printStackTrace();
                    try {
                        bufferedReader.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                bufferedReader3 = bufferedReader2;
                try {
                    bufferedReader3.close();
                } catch (IOException e13) {
                    e13.printStackTrace();
                }
                throw th;
            }
        } catch (IOException e14) {
            e = e14;
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
            bufferedReader3.close();
            throw th;
        }
    }

    private void d() {
        a("com.yulong.android.security:remote");
    }

    private void e() {
        try {
            Intent intent = new Intent(this.f34802c);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.PermissionSettingActivity"));
            this.f34801b.startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
            try {
                Intent intent2 = new Intent(this.f34802c);
                intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                intent2.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.SingleAppActivity"));
                this.f34801b.startActivity(intent2);
            } catch (Exception e11) {
                try {
                    Intent intent3 = new Intent(this.f34802c);
                    intent3.setFlags(C.ENCODING_PCM_MU_LAW);
                    intent3.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.MainActivity"));
                    this.f34801b.startActivity(intent3);
                } catch (Exception e12) {
                    e12.printStackTrace();
                    f();
                }
                e11.printStackTrace();
            }
        }
    }

    private void f() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, this.f34801b.getPackageName(), null));
        try {
            this.f34801b.startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void g() {
        try {
            Intent intent = new Intent(this.f34802c);
            intent.setComponent(new ComponentName("com.android.settings", "com.android.settings.Settings$AccessLockSummaryActivity"));
            this.f34801b.startActivity(intent);
        } catch (Exception e10) {
            Toast.makeText(this.f34801b, "跳转失败", 1).show();
            e10.printStackTrace();
            f();
        }
    }

    private void h() {
        try {
            Intent intent = new Intent("com.meizu.safe.security.SHOW_APPSEC");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.putExtra("packageName", this.f34802c);
            this.f34801b.startActivity(intent);
        } catch (ActivityNotFoundException e10) {
            e10.printStackTrace();
            f();
        }
    }

    private void i() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setComponent(new ComponentName("com.oppo.launcher", "com.oppo.launcher.shortcut.ShortcutSettingsActivity"));
        try {
            this.f34801b.startActivity(intent);
        } catch (Exception e10) {
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setComponent(new ComponentName("com.color.safecenter", "com.color.safecenter.permission.PermissionManagerActivity"));
            try {
                this.f34801b.startActivity(intent);
            } catch (Exception e11) {
                a("com.coloros.safecenter");
                e11.printStackTrace();
            }
            e10.printStackTrace();
        }
    }

    private void j() {
        f();
    }

    private void k() {
        try {
            Intent intent = new Intent(this.f34802c);
            intent.setComponent(new ComponentName("com.sonymobile.cta", "com.sonymobile.cta.SomcCTAMainActivity"));
            this.f34801b.startActivity(intent);
        } catch (Exception e10) {
            Toast.makeText(this.f34801b, "跳转失败", 1).show();
            e10.printStackTrace();
            f();
        }
    }

    private void l() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setComponent(new ComponentName("com.bbk.launcher2", "com.bbk.launcher2.installshortcut.PurviewActivity"));
        try {
            this.f34801b.startActivity(intent);
        } catch (Exception e10) {
            a("com.iqoo.secure");
            e10.printStackTrace();
        }
    }

    private void m() throws Throwable {
        String strC = c();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("goMiaoMiMainager --- rom : ");
        sb2.append(strC);
        Intent intent = new Intent();
        if ("V6".equals(strC) || "V7".equals(strC)) {
            intent.setAction("miui.intent.action.APP_PERM_EDITOR");
            intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
            intent.putExtra("extra_pkgname", this.f34802c);
            this.f34801b.startActivity(intent);
        }
        f();
    }

    public void n() throws Throwable {
        String str = Build.MANUFACTURER;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("jumpPermissionPage --- name : ");
        sb2.append(str);
        str.hashCode();
        switch (str) {
            case "Coolpad":
                d();
                break;
            case "Xiaomi":
                m();
                break;
            case "LG":
                g();
                break;
            case "OPPO":
                i();
                break;
            case "Sony":
                k();
                break;
            case "vivo":
                l();
                break;
            case "Meizu":
                h();
                break;
            case "samsung":
                j();
                break;
            case "HUAWEI":
                e();
                break;
            default:
                f();
                break;
        }
    }
}
