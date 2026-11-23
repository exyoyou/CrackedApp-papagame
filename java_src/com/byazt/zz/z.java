package com.byazt.zz;

import android.app.Notification;
import android.content.Intent;
import android.os.IBinder;
import com.byazt.t.DownloadTask;
import com.byazt.zz.CSJDownloadService;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes9.dex */
public interface z<T extends CSJDownloadService> {
    IBinder c(Intent intent);

    void c(int i10);

    void c(int i10, Notification notification);

    void c(Intent intent, int i10, int i11);

    void c(yp ypVar);

    void c(WeakReference<T> weakReference);

    void c(boolean z10);

    boolean c();

    void startService();

    void tt(DownloadTask downloadTask);

    boolean tt();

    void uj();

    void ve();

    void ve(DownloadTask downloadTask);
}
