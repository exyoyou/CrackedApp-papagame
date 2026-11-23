package com.xinzhu.overmind.virtual.oem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static List<ComponentName> f90151a = Arrays.asList(new ComponentName("com.huawei.systemmanager", "com.huawei.systemmanager.startupmgr.ui.StartupNormalAppListActivity"), new ComponentName("com.huawei.systemmanager", "com.huawei.systemmanager.optimize.bootstart.BootStartActivity"), new ComponentName("com.huawei.systemmanager", "com.huawei.systemmanager.appcontrol.activity.StartupAppControlActivity"), new ComponentName("com.huawei.systemmanager", "com.huawei.systemmanager.startupmgr.ui.StartupAwakedAppListActivity"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static List<ComponentName> f90152b = Arrays.asList(new ComponentName("com.meizu.safe", "com.meizu.safe.permission.SmartBGActivity"), new ComponentName("com.meizu.safe", "com.meizu.safe.security.HomeActivity"));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static List<ComponentName> f90153c = Arrays.asList(new ComponentName("com.iqoo.secure", "com.iqoo.secure.ui.phoneoptimize.BgStartUpManager"), new ComponentName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.PurviewTabActivity"), new ComponentName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.SoftPermissionDetailActivity"), new ComponentName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.PurviewActivity"));

    /* JADX INFO: renamed from: com.xinzhu.overmind.virtual.oem.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C1139a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f90154a;

        static {
            int[] iArr = new int[BuildCompat.ROMType.values().length];
            f90154a = iArr;
            try {
                iArr[BuildCompat.ROMType.EMUI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f90154a[BuildCompat.ROMType.MIUI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f90154a[BuildCompat.ROMType.FLYME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f90154a[BuildCompat.ROMType.COLOR_OS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f90154a[BuildCompat.ROMType.LETV.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f90154a[BuildCompat.ROMType.VIVO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f90154a[BuildCompat.ROMType._360.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static Intent a(Context context) {
        switch (C1139a.f90154a[BuildCompat.b().ordinal()]) {
            case 1:
                for (ComponentName componentName : f90151a) {
                    Intent intent = new Intent();
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                    intent.setComponent(componentName);
                    if (b(context, intent)) {
                        return intent;
                    }
                }
                return null;
            case 2:
                Intent intent2 = new Intent();
                intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                intent2.setClassName("com.miui.securitycenter", "com.miui.permcenter.autostart.AutoStartManagementActivity");
                if (b(context, intent2)) {
                    return intent2;
                }
                return null;
            case 3:
                for (ComponentName componentName2 : f90152b) {
                    Intent intent3 = new Intent();
                    intent3.addFlags(C.ENCODING_PCM_MU_LAW);
                    intent3.setComponent(componentName2);
                    if (b(context, intent3)) {
                        return intent3;
                    }
                }
                return null;
            case 4:
                Intent intent4 = new Intent();
                intent4.addFlags(C.ENCODING_PCM_MU_LAW);
                intent4.setClassName("com.coloros.safecenter", "com.coloros.safecenter.startupapp.StartupAppListActivity");
                if (b(context, intent4)) {
                    return intent4;
                }
                return null;
            case 5:
                Intent intent5 = new Intent();
                intent5.addFlags(C.ENCODING_PCM_MU_LAW);
                intent5.setClassName("com.letv.android.letvsafe", "com.letv.android.letvsafe.AutobootManageActivity");
                if (b(context, intent5)) {
                    return intent5;
                }
                return null;
            case 6:
                for (ComponentName componentName3 : f90153c) {
                    Intent intent6 = new Intent();
                    intent6.addFlags(C.ENCODING_PCM_MU_LAW);
                    intent6.setComponent(componentName3);
                    if (b(context, intent6)) {
                        return intent6;
                    }
                }
                return null;
            case 7:
                Intent intent7 = new Intent();
                intent7.addFlags(C.ENCODING_PCM_MU_LAW);
                intent7.setClassName("com.qihoo360.mobilesafe", "com.qihoo360.mobilesafe.ui.index.AppEnterActivity");
                if (b(context, intent7)) {
                    return intent7;
                }
                return null;
            default:
                return null;
        }
    }

    private static boolean b(Context context, Intent intent) {
        ActivityInfo activityInfo;
        ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        return (resolveInfoResolveActivity == null || (activityInfo = resolveInfoResolveActivity.activityInfo) == null || !activityInfo.exported) ? false : true;
    }
}
