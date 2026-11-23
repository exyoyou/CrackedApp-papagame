package com.byazt.zz;

import android.content.Context;
import com.byazt.c.IDownloadFileUriProvider;
import com.byazt.c.IDownloadListener;
import com.byazt.c.md;
import com.byazt.c.yv;
import com.byazt.t.DownloadInfo;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 189, 1481})
public class Downloader extends tt {
    public static volatile Downloader instance;

    static {
        ve.c(new qy());
        instance = null;
    }

    private Downloader() {
    }

    public static Downloader getInstance(Context context) {
        if (instance == null) {
            synchronized (Downloader.class) {
                if (instance == null) {
                    ve.c(context);
                    instance = new Downloader();
                }
            }
        }
        return instance;
    }

    public static synchronized void init(DownloaderBuilder downloaderBuilder) {
        initOrCover(downloaderBuilder, false);
    }

    public static synchronized void initOrCover(DownloaderBuilder downloaderBuilder, boolean z10) {
        if (downloaderBuilder == null) {
            return;
        }
        if (instance == null) {
            instance = downloaderBuilder.build();
        } else if (!ve.l()) {
            ve.c(downloaderBuilder);
        } else {
            if (z10) {
                ve.tt(downloaderBuilder);
            }
        }
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void addMainThreadListener(int i10, IDownloadListener iDownloadListener) {
        super.addMainThreadListener(i10, iDownloadListener);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void addNotificationListener(int i10, IDownloadListener iDownloadListener) {
        super.addNotificationListener(i10, iDownloadListener);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void addSubThreadListener(int i10, IDownloadListener iDownloadListener) {
        super.addSubThreadListener(i10, iDownloadListener);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ boolean canResume(int i10) {
        return super.canResume(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void cancel(int i10) {
        super.cancel(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void clearDownloadData(int i10) {
        super.clearDownloadData(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void destoryDownloader() {
        super.destoryDownloader();
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void forceDownloadIngoreRecommendSize(int i10) {
        super.forceDownloadIngoreRecommendSize(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ List getAllDownloadInfo() {
        return super.getAllDownloadInfo();
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ long getCurBytes(int i10) {
        return super.getCurBytes(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ IDownloadFileUriProvider getDownloadFileUriProvider(int i10) {
        return super.getDownloadFileUriProvider(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ int getDownloadId(String str, String str2) {
        return super.getDownloadId(str, str2);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ DownloadInfo getDownloadInfo(int i10) {
        return super.getDownloadInfo(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ List getDownloadInfoList(String str) {
        return super.getDownloadInfoList(str);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ yv getDownloadNotificationEventListener(int i10) {
        return super.getDownloadNotificationEventListener(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ List getDownloadingDownloadInfosWithMimeType(String str) {
        return super.getDownloadingDownloadInfosWithMimeType(str);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ List getFailedDownloadInfosWithMimeType(String str) {
        return super.getFailedDownloadInfosWithMimeType(str);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ File getGlobalSaveDir() {
        return super.getGlobalSaveDir();
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ File getGlobalSaveTempDir() {
        return super.getGlobalSaveTempDir();
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ rh getReserveWifiStatusListener() {
        return super.getReserveWifiStatusListener();
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ int getStatus(int i10) {
        return super.getStatus(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ List getSuccessedDownloadInfosWithMimeType(String str) {
        return super.getSuccessedDownloadInfosWithMimeType(str);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ List getUnCompletedDownloadInfosWithMimeType(String str) {
        return super.getUnCompletedDownloadInfosWithMimeType(str);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ boolean isDownloadCacheSyncSuccess() {
        return super.isDownloadCacheSyncSuccess();
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ boolean isDownloadServiceForeground(int i10) {
        return super.isDownloadServiceForeground(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ boolean isDownloadSuccessAndFileNotExist(DownloadInfo downloadInfo) {
        return super.isDownloadSuccessAndFileNotExist(downloadInfo);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ boolean isDownloading(int i10) {
        return super.isDownloading(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ boolean isHttpServiceInit() {
        return super.isHttpServiceInit();
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void pause(int i10) {
        super.pause(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void pauseAll() {
        super.pauseAll();
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void registerDownloadCacheSyncListener(com.byazt.c.sl slVar) {
        super.registerDownloadCacheSyncListener(slVar);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void registerDownloaderProcessConnectedListener(md mdVar) {
        super.registerDownloaderProcessConnectedListener(mdVar);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void removeMainThreadListener(int i10, IDownloadListener iDownloadListener) {
        super.removeMainThreadListener(i10, iDownloadListener);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void removeNotificationListener(int i10, IDownloadListener iDownloadListener) {
        super.removeNotificationListener(i10, iDownloadListener);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void removeSubThreadListener(int i10, IDownloadListener iDownloadListener) {
        super.removeSubThreadListener(i10, iDownloadListener);
    }

    @Override // com.byazt.zz.tt
    @Deprecated
    public /* bridge */ /* synthetic */ void removeTaskMainListener(int i10) {
        super.removeTaskMainListener(i10);
    }

    @Override // com.byazt.zz.tt
    @Deprecated
    public /* bridge */ /* synthetic */ void removeTaskNotificationListener(int i10) {
        super.removeTaskNotificationListener(i10);
    }

    @Override // com.byazt.zz.tt
    @Deprecated
    public /* bridge */ /* synthetic */ void removeTaskSubListener(int i10) {
        super.removeTaskSubListener(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void restart(int i10) {
        super.restart(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void restartAllFailedDownloadTasks(List list) {
        super.restartAllFailedDownloadTasks(list);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void restartAllPauseReserveOnWifiDownloadTasks(List list) {
        super.restartAllPauseReserveOnWifiDownloadTasks(list);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void resume(int i10) {
        super.resume(i10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void setDefaultSavePath(String str) {
        super.setDefaultSavePath(str);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void setDefaultSaveTempPath(String str) {
        super.setDefaultSaveTempPath(str);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void setDownloadInMultiProcess() {
        super.setDownloadInMultiProcess();
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void setDownloadNotificationEventListener(int i10, yv yvVar) {
        super.setDownloadNotificationEventListener(i10, yvVar);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void setLogLevel(int i10) {
        super.setLogLevel(i10);
    }

    @Override // com.byazt.zz.tt
    @Deprecated
    public /* bridge */ /* synthetic */ void setMainThreadListener(int i10, IDownloadListener iDownloadListener) {
        super.setMainThreadListener(i10, iDownloadListener);
    }

    @Override // com.byazt.zz.tt
    @Deprecated
    public /* bridge */ /* synthetic */ void setNotificationListener(int i10, IDownloadListener iDownloadListener) {
        super.setNotificationListener(i10, iDownloadListener);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void setReserveWifiStatusListener(rh rhVar) {
        super.setReserveWifiStatusListener(rhVar);
    }

    @Override // com.byazt.zz.tt
    @Deprecated
    public /* bridge */ /* synthetic */ void setSubThreadListener(int i10, IDownloadListener iDownloadListener) {
        super.setSubThreadListener(i10, iDownloadListener);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void setThrottleNetSpeed(int i10, long j10) {
        super.setThrottleNetSpeed(i10, j10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void unRegisterDownloadCacheSyncListener(com.byazt.c.sl slVar) {
        super.unRegisterDownloadCacheSyncListener(slVar);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void unRegisterDownloaderProcessConnectedListener(md mdVar) {
        super.unRegisterDownloaderProcessConnectedListener(mdVar);
    }

    public Downloader(DownloaderBuilder downloaderBuilder) {
        ve.c(downloaderBuilder);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void cancel(int i10, boolean z10) {
        super.cancel(i10, z10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ void clearDownloadData(int i10, boolean z10) {
        super.clearDownloadData(i10, z10);
    }

    @Override // com.byazt.zz.tt
    public /* bridge */ /* synthetic */ DownloadInfo getDownloadInfo(String str, String str2) {
        return super.getDownloadInfo(str, str2);
    }

    @Override // com.byazt.zz.tt
    @Deprecated
    public /* bridge */ /* synthetic */ void setMainThreadListener(int i10, IDownloadListener iDownloadListener, boolean z10) {
        super.setMainThreadListener(i10, iDownloadListener, z10);
    }
}
