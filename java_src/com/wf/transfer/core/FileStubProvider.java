package com.wf.transfer.core;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.quv.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class FileStubProvider extends ContentProvider {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f85810c = "FileTransfer";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Binder f85811b = new a();

    class a extends e.b {
        a() {
        }

        @Override // com.wf.transfer.core.e
        public FileInfo checkFile(String str) throws RemoteException {
            return new FileInfo(new File(str));
        }

        @Override // com.wf.transfer.core.e
        public void copyDir(String str, String str2) throws RemoteException {
            com.wf.transfer.core.a.c().b(str, str2);
        }

        @Override // com.wf.transfer.core.e
        public void copyFile(String str, String str2) throws RemoteException {
            com.wf.transfer.core.a.c().a(str, str2);
        }

        @Override // com.wf.transfer.core.e
        public void deleteFileOrDir(String str) throws RemoteException {
            com.wf.transfer.utils.b.i(str);
        }

        @Override // com.wf.transfer.core.e
        public void initSourceBinder(String str, String str2, String str3) throws RemoteException {
            try {
                c.d(FileStubProvider.this.getContext());
                d dVarAsInterface = d.b.asInterface(com.wf.transfer.utils.a.d(str2 + ".transfer.BindProvider", "source"));
                if (dVarAsInterface == null || FileStubProvider.this.getContext() == null) {
                    return;
                }
                List<FileInfo> listListFiles = dVarAsInterface.listFiles(str3);
                if (!FileStubProvider.this.c(listListFiles, str2)) {
                    FileStubProvider.this.d(dVarAsInterface, listListFiles, str2);
                }
                Intent intent = new Intent("com.papa.emu.broadcast.source_ready");
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                FileStubProvider.this.getContext().sendBroadcast(intent);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.wf.transfer.core.e
        public List<FileInfo> listFiles(String str) throws RemoteException {
            ArrayList arrayList = new ArrayList();
            File[] fileArrListFiles = new File(str).listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    arrayList.add(new FileInfo(file));
                }
            }
            return arrayList;
        }

        @Override // com.wf.transfer.core.e
        public ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException {
            try {
                return ParcelFileDescriptor.open(new File(str), C.ENCODING_PCM_MU_LAW);
            } catch (FileNotFoundException e10) {
                e10.printStackTrace();
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(List<FileInfo> list, String str) {
        String strReplace;
        for (FileInfo fileInfo : list) {
            if (fileInfo.f85806b.startsWith("/storage/emulated/0/Android/data/")) {
                strReplace = fileInfo.f85806b.replace(str, getContext().getPackageName());
            } else if (fileInfo.f85806b.startsWith("/storage/emulated/0/wufan91/")) {
                strReplace = "/storage/emulated/0/Android/data/" + getContext().getPackageName() + "/files/" + fileInfo.f85806b.replace("/storage/emulated/0/", "");
            } else {
                strReplace = "";
            }
            File file = new File(strReplace);
            if (!file.exists() || file.length() != fileInfo.f85809e) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(d dVar, List<FileInfo> list, String str) throws RemoteException, IOException {
        String strReplace;
        for (FileInfo fileInfo : list) {
            if (fileInfo.f85808d.booleanValue()) {
                d(dVar, dVar.listFiles(fileInfo.f85806b), str);
            } else {
                ParcelFileDescriptor parcelFileDescriptorOpenAsParcelFile = dVar.openAsParcelFile(fileInfo.f85806b);
                if (getContext() != null) {
                    if (fileInfo.f85806b.startsWith("/storage/emulated/0/Android/data/")) {
                        strReplace = fileInfo.f85806b.replace(str, getContext().getPackageName());
                    } else if (fileInfo.f85806b.startsWith("/storage/emulated/0/wufan91/")) {
                        strReplace = "/storage/emulated/0/Android/data/" + getContext().getPackageName() + "/files/" + fileInfo.f85806b.replace("/storage/emulated/0/", "");
                    } else {
                        strReplace = "";
                    }
                    File file = new File(strReplace);
                    if (!file.exists() || file.length() != fileInfo.f85809e) {
                        File externalFilesDir = getContext().getExternalFilesDir("wufan91");
                        if (externalFilesDir != null && externalFilesDir.isDirectory() && !externalFilesDir.exists()) {
                            externalFilesDir.mkdirs();
                        }
                        if (file.getParentFile() != null && !file.getParentFile().exists()) {
                            file.getParentFile().mkdirs();
                        }
                        com.wf.transfer.utils.b.g(strReplace);
                        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptorOpenAsParcelFile);
                        com.wf.transfer.utils.b.c(autoCloseInputStream, new File(strReplace));
                        autoCloseInputStream.close();
                    }
                }
            }
        }
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Bundle call(@NonNull String str, @Nullable String str2, @Nullable Bundle bundle) {
        if (!str.equals("init")) {
            return super.call(str, str2, bundle);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putBinder(AbsServerManager.BUNDLE_BINDER, this.f85811b);
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
        return false;
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
