package com.byazt.zz;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.c.IDownloadFileUriProvider;
import com.byazt.c.IDownloadListener;
import com.byazt.c.md;
import com.byazt.c.yv;
import com.byazt.t.DownloadInfo;
import com.byazt.t.DownloadTask;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 189, 13})
public class tt {
    public String globalDefaultSavePath;
    public String globalDefaultSaveTempPath;

    public static DownloadTask with(Context context) {
        Downloader.getInstance(context);
        return new DownloadTask();
    }

    public void addMainThreadListener(int i10, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        uj.c().tt(i10, iDownloadListener, com.byazt.ev.a.MAIN, false);
    }

    public void addNotificationListener(int i10, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        uj.c().tt(i10, iDownloadListener, com.byazt.ev.a.NOTIFICATION, false);
    }

    public void addSubThreadListener(int i10, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        uj.c().tt(i10, iDownloadListener, com.byazt.ev.a.SUB, false);
    }

    public boolean canResume(int i10) {
        return uj.c().n(i10);
    }

    public void cancel(int i10) {
        cancel(i10, true);
    }

    public void clearDownloadData(int i10) {
        uj.c().uj(i10, true);
    }

    public void destoryDownloader() {
        ve.c();
    }

    public void forceDownloadIngoreRecommendSize(int i10) {
        uj.c().yp(i10);
    }

    public List<DownloadInfo> getAllDownloadInfo() {
        return uj.c().n();
    }

    public long getCurBytes(int i10) {
        return uj.c().x(i10);
    }

    public IDownloadFileUriProvider getDownloadFileUriProvider(int i10) {
        return uj.c().rh(i10);
    }

    public int getDownloadId(String str, String str2) {
        return uj.c().c(str, str2);
    }

    public DownloadInfo getDownloadInfo(int i10) {
        return uj.c().sl(i10);
    }

    public List<DownloadInfo> getDownloadInfoList(String str) {
        return uj.c().c(str);
    }

    public yv getDownloadNotificationEventListener(int i10) {
        return uj.c().t(i10);
    }

    public List<DownloadInfo> getDownloadingDownloadInfosWithMimeType(String str) {
        return uj.c().n(str);
    }

    public List<DownloadInfo> getFailedDownloadInfosWithMimeType(String str) {
        return uj.c().tt(str);
    }

    public File getGlobalSaveDir() {
        return getGlobalSaveDir(this.globalDefaultSavePath, true);
    }

    public File getGlobalSaveTempDir() {
        return getGlobalSaveDir(this.globalDefaultSaveTempPath, false);
    }

    public rh getReserveWifiStatusListener() {
        return ve.lr();
    }

    public int getStatus(int i10) {
        return uj.c().i(i10);
    }

    public List<DownloadInfo> getSuccessedDownloadInfosWithMimeType(String str) {
        return uj.c().ve(str);
    }

    public List<DownloadInfo> getUnCompletedDownloadInfosWithMimeType(String str) {
        return uj.c().uj(str);
    }

    public boolean isDownloadCacheSyncSuccess() {
        return uj.c().a();
    }

    public boolean isDownloadServiceForeground(int i10) {
        return uj.c().ve(i10).tt();
    }

    public boolean isDownloadSuccessAndFileNotExist(DownloadInfo downloadInfo) {
        return uj.c().c(downloadInfo);
    }

    public boolean isDownloading(int i10) {
        boolean zDa;
        if (!com.byazt.w.c.c(4194304)) {
            return uj.c().da(i10);
        }
        synchronized (this) {
            zDa = uj.c().da(i10);
        }
        return zDa;
    }

    public boolean isHttpServiceInit() {
        return uj.c().uj();
    }

    public void pause(int i10) {
        uj.c().uj(i10);
    }

    public void pauseAll() {
        uj.c().ve();
    }

    public void registerDownloadCacheSyncListener(com.byazt.c.sl slVar) {
        uj.c().c(slVar);
    }

    public void registerDownloaderProcessConnectedListener(md mdVar) {
        uj.c().c(mdVar);
    }

    public void removeMainThreadListener(int i10, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        uj.c().c(i10, iDownloadListener, com.byazt.ev.a.MAIN, false);
    }

    public void removeNotificationListener(int i10, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        uj.c().c(i10, iDownloadListener, com.byazt.ev.a.NOTIFICATION, false);
    }

    public void removeSubThreadListener(int i10, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        uj.c().c(i10, iDownloadListener, com.byazt.ev.a.SUB, false);
    }

    @Deprecated
    public void removeTaskMainListener(int i10) {
        uj.c().c(i10, null, com.byazt.ev.a.MAIN, true);
    }

    @Deprecated
    public void removeTaskNotificationListener(int i10) {
        uj.c().c(i10, null, com.byazt.ev.a.NOTIFICATION, true);
    }

    @Deprecated
    public void removeTaskSubListener(int i10) {
        uj.c().c(i10, null, com.byazt.ev.a.SUB, true);
    }

    public void restart(int i10) {
        uj.c().sp(i10);
    }

    public void restartAllFailedDownloadTasks(List<String> list) {
        uj.c().c(list);
    }

    public void restartAllPauseReserveOnWifiDownloadTasks(List<String> list) {
        uj.c().tt(list);
    }

    public void resume(int i10) {
        uj.c().a(i10);
    }

    public void setDefaultSavePath(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.globalDefaultSavePath = str;
    }

    public void setDefaultSaveTempPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.globalDefaultSaveTempPath = str;
    }

    public void setDownloadInMultiProcess() {
        if (!com.byazt.w.c.c(4194304)) {
            ve.tt();
        } else {
            synchronized (this) {
                ve.tt();
            }
        }
    }

    public void setDownloadNotificationEventListener(int i10, yv yvVar) {
        uj.c().c(i10, yvVar);
    }

    public void setLogLevel(int i10) {
        uj.c().m(i10);
    }

    @Deprecated
    public void setMainThreadListener(int i10, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        uj.c().tt(i10, iDownloadListener, com.byazt.ev.a.MAIN, true);
    }

    @Deprecated
    public void setNotificationListener(int i10, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        uj.c().tt(i10, iDownloadListener, com.byazt.ev.a.NOTIFICATION, true);
    }

    public void setReserveWifiStatusListener(rh rhVar) {
        ve.c(rhVar);
    }

    @Deprecated
    public void setSubThreadListener(int i10, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        uj.c().tt(i10, iDownloadListener, com.byazt.ev.a.SUB, true);
    }

    public void setThrottleNetSpeed(int i10, long j10) {
        uj.c().c(i10, j10);
    }

    public void unRegisterDownloadCacheSyncListener(com.byazt.c.sl slVar) {
        uj.c().tt(slVar);
    }

    public void unRegisterDownloaderProcessConnectedListener(md mdVar) {
        uj.c().tt(mdVar);
    }

    private File getGlobalSaveDir(String str, boolean z10) {
        File file = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            File file2 = new File(str);
            try {
                if (!file2.exists()) {
                    file2.mkdirs();
                } else if (!file2.isDirectory()) {
                    if (!z10) {
                        return null;
                    }
                    file2.delete();
                    file2.mkdirs();
                }
                return file2;
            } catch (Throwable unused) {
                file = file2;
                return file;
            }
        } catch (Throwable unused2) {
        }
    }

    public void cancel(int i10, boolean z10) {
        uj.c().ve(i10, z10);
    }

    public void clearDownloadData(int i10, boolean z10) {
        uj.c().uj(i10, z10);
    }

    public DownloadInfo getDownloadInfo(String str, String str2) {
        return uj.c().tt(str, str2);
    }

    @Deprecated
    public void setMainThreadListener(int i10, IDownloadListener iDownloadListener, boolean z10) {
        if (iDownloadListener == null) {
            return;
        }
        uj.c().c(i10, iDownloadListener, com.byazt.ev.a.MAIN, true, z10);
    }
}
