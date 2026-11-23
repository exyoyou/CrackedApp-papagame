package com.xinzhu.overmind.plugin;

import android.app.ActivityManager;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.hv.TTDownloadField;
import com.bykv.vk.component.ttvideo.player.C;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.os.MindShareFileInfo;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import com.xinzhu.overmind.utils.l;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ma.d;
import sa.s;

/* JADX INFO: loaded from: classes8.dex */
public class MindPluginMonitor extends ContentProvider {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f89524c = "MindPluginMonitor";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Binder f89525b;

    class a extends com.xinzhu.overmind.plugin.a.b {
        a() {
        }

        private boolean isFileAccessible(File file) {
            try {
                if (!file.exists()) {
                    return false;
                }
                new FileInputStream(file).close();
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }

        @Override // com.xinzhu.overmind.plugin.a
        public MindShareFileInfo checkFile(String str) throws RemoteException {
            return new MindShareFileInfo(new File(str));
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void copyDir(String str, String str2) throws RemoteException {
            com.xinzhu.overmind.b.a(MindPluginMonitor.f89524c, "copyDir from :" + str + " to :" + str2);
            d.c().b(str, str2);
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void copyFile(String str, String str2) throws RemoteException {
            com.xinzhu.overmind.b.a(MindPluginMonitor.f89524c, "copyFile from :" + str + " to :" + str2);
            d.c().a(str, str2);
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void deleteAllPackages() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void deleteFileOrDir(String str) throws RemoteException {
            l.k(str);
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void deletePackage(String str, int i10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void finishPlugin() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public List<ActivityManager.RecentTaskInfo> getRecentTasks(int i10, int i11) throws RemoteException {
            return ((ActivityManager) Overmind.getContext().getSystemService(TTDownloadField.TT_ACTIVITY)).getRecentTasks(i10, i11);
        }

        @Override // com.xinzhu.overmind.plugin.a
        public List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses() throws RemoteException {
            return ((ActivityManager) Overmind.getContext().getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses();
        }

        @Override // com.xinzhu.overmind.plugin.a
        public int initWorks() throws RemoteException {
            com.xinzhu.overmind.b.c(MindPluginMonitor.f89524c, "MindPluginMonitor encureConnected");
            return 0;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void killProcess(int i10) throws RemoteException {
            Process.killProcess(i10);
        }

        @Override // com.xinzhu.overmind.plugin.a
        public List<MindShareFileInfo> listFiles(String str) throws RemoteException {
            ArrayList arrayList = new ArrayList();
            File[] fileArrListFiles = new File(str).listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                for (File file : fileArrListFiles) {
                    arrayList.add(new MindShareFileInfo(file));
                }
            }
            return arrayList;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException {
            try {
                return ParcelFileDescriptor.open(new File(str), C.ENCODING_PCM_MU_LAW);
            } catch (FileNotFoundException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void syncAllPackages() throws RemoteException {
            boolean z10;
            try {
                com.xinzhu.overmind.b.c(MindPluginMonitor.f89524c, "syncAllPackages invoked " + Overmind.getHostPkg() + " " + com.xinzhu.overmind.a.i().getAbsolutePath());
                List<MindShareFileInfo> listE = d.c().e(com.xinzhu.overmind.a.h().getAbsolutePath());
                if (com.xinzhu.overmind.a.i().listFiles() != null) {
                    for (File file : com.xinzhu.overmind.a.i().listFiles()) {
                        if (listE == null || listE.isEmpty()) {
                            z10 = false;
                        } else {
                            Iterator<MindShareFileInfo> it2 = listE.iterator();
                            z10 = false;
                            while (it2.hasNext()) {
                                if (file.getName().equals(new File(it2.next().f89714b).getName())) {
                                    z10 = true;
                                }
                            }
                        }
                        if (!z10) {
                            l.j(file);
                            com.xinzhu.overmind.b.c(MindPluginMonitor.f89524c, "syncAllPackages delete unexist package " + file.getName());
                        }
                    }
                }
                if (listE == null || listE.isEmpty()) {
                    return;
                }
                for (MindShareFileInfo mindShareFileInfo : listE) {
                    String name = new File(mindShareFileInfo.f89714b).getName();
                    MindPackageSettings mindPackageSettingsK = Overmind.getMindPackageManager().k(name);
                    if (mindPackageSettingsK != null && mindPackageSettingsK.M()) {
                        File fileE = com.xinzhu.overmind.a.e(name);
                        if (!fileE.exists()) {
                            com.xinzhu.overmind.b.c(MindPluginMonitor.f89524c, "syncAllPackages copy package " + name);
                            d.c().b(mindShareFileInfo.f89714b, fileE.getAbsolutePath());
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void syncPackage(String str, int i10) throws RemoteException {
            try {
                com.xinzhu.overmind.b.c(MindPluginMonitor.f89524c, "syncPackage invoked " + str + " " + i10);
                l.j(com.xinzhu.overmind.a.e(str));
                d.c().b(com.xinzhu.overmind.a.d(str).getAbsolutePath(), com.xinzhu.overmind.a.e(str).getAbsolutePath());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // android.content.ContentProvider
    public Bundle call(@NonNull String str, @Nullable String str2, @Nullable Bundle bundle) {
        if (!str.equals("init")) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        s.d(bundle2, "PluginMonitor", this.f89525b);
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f89525b = new a();
        return true;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }
}
