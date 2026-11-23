package com.wf.transfer.core;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f85812b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f85813a = a.class.getSimpleName();

    public static a c() {
        return f85812b;
    }

    private d d() {
        try {
            return d.b.asInterface(c.b());
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void a(String str, String str2) {
        try {
            com.wf.transfer.utils.b.m(new File(str2).getParentFile());
            ParcelFileDescriptor parcelFileDescriptorF = f(str);
            if (parcelFileDescriptorF != null) {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptorF);
                com.wf.transfer.utils.b.c(autoCloseInputStream, new File(str2));
                autoCloseInputStream.close();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void b(String str, String str2) {
        try {
            List<FileInfo> listE = e(str);
            if (listE != null && !listE.isEmpty()) {
                com.wf.transfer.utils.b.m(new File(str2));
                for (FileInfo fileInfo : listE) {
                    File file = new File(fileInfo.f85806b);
                    File file2 = new File(str2, file.getName());
                    if (!fileInfo.f85808d.booleanValue()) {
                        a(fileInfo.f85806b, file2.getAbsolutePath());
                    } else if (!file.getName().equals("oat")) {
                        b(fileInfo.f85806b, file2.getAbsolutePath());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public List<FileInfo> e(String str) {
        try {
            return d().listFiles(str);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public ParcelFileDescriptor f(String str) {
        try {
            return d().openAsParcelFile(str);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
