package com.xinzhu.overmind.server;

import android.content.pm.PackageManager;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.server.accounts.MindAccountManagerService;
import com.xinzhu.overmind.server.pm.MindPackageManagerService;

/* JADX INFO: loaded from: classes8.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static i f89674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f89675b;

    public static i a() {
        if (f89674a == null) {
            synchronized (i.class) {
                if (f89674a == null) {
                    f89674a = new i();
                }
            }
        }
        return f89674a;
    }

    public void b() throws Throwable {
        f89675b = true;
        com.xinzhu.overmind.a.f0();
        com.xinzhu.overmind.server.user.c.get().systemReady();
        MindPackageManagerService.get().systemReady();
        com.xinzhu.overmind.server.am.f.get().systemReady();
        com.xinzhu.overmind.server.am.g.get().systemReady();
        com.xinzhu.overmind.server.os.i.get().systemReady();
        com.xinzhu.overmind.server.pm.i.get().systemReady();
        com.xinzhu.overmind.server.os.h.get().systemReady();
        MindAccountManagerService.get().systemReady();
        for (String str : na.c.a()) {
            try {
                MindPackageManagerService mindPackageManagerService = MindPackageManagerService.get();
                if (!mindPackageManagerService.isInstalled(str, 0)) {
                    mindPackageManagerService.installPackageAsUser(Overmind.getContext().getPackageManager().getPackageInfo(str, 0).applicationInfo.publicSourceDir, InstallOption.d(), 0);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        f89675b = false;
    }
}
