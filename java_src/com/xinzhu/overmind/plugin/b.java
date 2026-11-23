package com.xinzhu.overmind.plugin;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.C;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.g;
import com.xinzhu.overmind.server.i;
import com.xinzhu.overmind.server.os.MindShareFileInfo;
import com.xinzhu.overmind.utils.l;
import com.xinzhu.overmind.utils.wrappers.ContentProviderWrapper;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89528a = "b";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static com.xinzhu.overmind.plugin.a f89529b;

    class a implements IBinder.DeathRecipient {
        a() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            b.f89529b = null;
            com.xinzhu.overmind.b.c(b.f89528a, "sPluginMonitor disconnect " + b.f89529b);
        }
    }

    public static MindShareFileInfo b(String str) {
        if (i.f89675b) {
            return null;
        }
        try {
            if (i()) {
                return f89529b.checkFile(str);
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static boolean c() {
        try {
            com.xinzhu.overmind.plugin.a aVar = f89529b;
            if (aVar == null || !aVar.asBinder().isBinderAlive()) {
                com.xinzhu.overmind.plugin.a aVarAsInterface = com.xinzhu.overmind.plugin.a.b.asInterface(ContentProviderWrapper.acquire(g.b(), "init", null, null).getBinder("PluginMonitor"));
                f89529b = aVarAsInterface;
                aVarAsInterface.asBinder().linkToDeath(new a(), 0);
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void d(String str, String str2) {
        if (i.f89675b) {
            return;
        }
        try {
            if (i()) {
                f89529b.copyDir(str, str2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void e(String str, String str2) {
        try {
            List<MindShareFileInfo> listM = m(str);
            if (listM != null && !listM.isEmpty()) {
                l.p(new File(str2));
                for (MindShareFileInfo mindShareFileInfo : listM) {
                    File file = new File(mindShareFileInfo.f89714b);
                    File file2 = new File(str2, file.getName());
                    if (!mindShareFileInfo.f89716d.booleanValue()) {
                        g(mindShareFileInfo.f89714b, file2.getAbsolutePath());
                    } else if (!file.getName().equals("oat")) {
                        e(mindShareFileInfo.f89714b, file2.getAbsolutePath());
                    }
                }
                return;
            }
            com.xinzhu.overmind.b.c(f89528a, "copyDirReverse get empty file list");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void f(String str, String str2) {
        if (i.f89675b) {
            return;
        }
        try {
            if (i()) {
                f89529b.copyFile(str, str2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void g(String str, String str2) {
        try {
            l.p(new File(str2).getParentFile());
            ParcelFileDescriptor parcelFileDescriptorN = n(str);
            if (parcelFileDescriptorN != null) {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptorN);
                l.e(autoCloseInputStream, new File(str2));
                autoCloseInputStream.close();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void h(String str) {
        if (i.f89675b) {
            return;
        }
        try {
            if (i()) {
                f89529b.deleteFileOrDir(str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean i() {
        if (!Overmind.isPluginPkgInstalled()) {
            return false;
        }
        int i10 = 1;
        while (i10 > 0) {
            i10--;
            if (c()) {
                try {
                    f89529b.initWorks();
                } catch (RemoteException e10) {
                    e10.printStackTrace();
                }
                return true;
            }
            o();
        }
        return false;
    }

    public static List<ActivityManager.RecentTaskInfo> j(int i10, int i11) {
        try {
            if (i()) {
                return f89529b.getRecentTasks(i10, i11);
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static List<ActivityManager.RunningAppProcessInfo> k() {
        try {
            if (i()) {
                return f89529b.getRunningAppProcesses();
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static void l(int i10) {
        try {
            if (i()) {
                f89529b.killProcess(i10);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static List<MindShareFileInfo> m(String str) {
        try {
            if (i()) {
                return f89529b.listFiles(str);
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static ParcelFileDescriptor n(String str) {
        try {
            if (i()) {
                return f89529b.openAsParcelFile(str);
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static void o() {
        Context context = Overmind.getContext();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setPackage(Overmind.getPluginPkg());
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (listQueryIntentActivities.size() == 0) {
            return;
        }
        Intent intent2 = new Intent(intent);
        intent2.addFlags(65536);
        intent2.addFlags(C.ENCODING_PCM_MU_LAW);
        intent2.setClassName(listQueryIntentActivities.get(0).activityInfo.packageName, listQueryIntentActivities.get(0).activityInfo.name);
        com.xinzhu.overmind.b.c(f89528a, "try start plugin");
        context.startActivity(intent2);
    }

    public static void p() {
        if (i.f89675b) {
            return;
        }
        try {
            if (i()) {
                f89529b.syncAllPackages();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void q(String str, int i10) {
        if (i.f89675b) {
            return;
        }
        try {
            if (i()) {
                f89529b.syncPackage(str, i10);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
