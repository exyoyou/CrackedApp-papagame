package com.byazt.t;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.byazt.c.IDownloadFileUriProvider;
import com.byazt.c.IDownloadInterceptor;
import com.byazt.c.IDownloadListener;
import com.byazt.c.eo;
import com.byazt.c.gr;
import com.byazt.c.gu;
import com.byazt.c.rh;
import com.byazt.c.u;
import com.byazt.c.yp;
import com.byazt.c.yv;
import com.byazt.ev.EnqueueType;
import com.byazt.ev.a;
import com.byazt.m.BaseException;
import com.byazt.zz.m;
import com.byazt.zz.my;
import com.byazt.zz.sp;
import com.byazt.zz.x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 66, 1577})
public class DownloadTask {
    public boolean autoSetHashCodeForSameTask;
    public sp chunkAdjustCalculator;
    public x chunkStrategy;
    public yp depend;
    public rh diskSpaceHandler;
    public final List<u> downloadCompleteHandlers;
    public DownloadInfo downloadInfo;
    public DownloadInfo.c downloadInfoBuilder;
    public IDownloadFileUriProvider fileUriProvider;
    public gu forbiddenHandler;
    public int hashCodeForSameTask;
    public IDownloadInterceptor interceptor;
    public final SparseArray<IDownloadListener> mainThreadListeners;
    public gr monitorDepend;
    public boolean needDelayForCacheSync;
    public eo notificationClickCallback;
    public yv notificationEventListener;
    public final SparseArray<IDownloadListener> notificationListeners;
    public my retryDelayTimeCalculator;
    public final SparseArray<a> singleListenerHashCodeMap;
    public final Map<a, IDownloadListener> singleListenerMap;
    public final SparseArray<IDownloadListener> subThreadListeners;

    public DownloadTask() {
        this.singleListenerMap = new ConcurrentHashMap();
        this.singleListenerHashCodeMap = new SparseArray<>();
        this.needDelayForCacheSync = false;
        this.downloadCompleteHandlers = new ArrayList();
        this.autoSetHashCodeForSameTask = true;
        this.downloadInfoBuilder = new DownloadInfo.c();
        this.mainThreadListeners = new SparseArray<>();
        this.subThreadListeners = new SparseArray<>();
        this.notificationListeners = new SparseArray<>();
    }

    private void addAll(SparseArray sparseArray, SparseArray sparseArray2) {
        if (sparseArray == null || sparseArray2 == null) {
            return;
        }
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            sparseArray2.put(iKeyAt, sparseArray.get(iKeyAt));
        }
    }

    private void copyListeners(SparseArray<IDownloadListener> sparseArray, SparseArray<IDownloadListener> sparseArray2) {
        sparseArray.clear();
        for (int i10 = 0; i10 < sparseArray2.size(); i10++) {
            int iKeyAt = sparseArray2.keyAt(i10);
            IDownloadListener iDownloadListener = sparseArray2.get(iKeyAt);
            if (iDownloadListener != null) {
                sparseArray.put(iKeyAt, iDownloadListener);
            }
        }
    }

    private void removeAll(SparseArray sparseArray, SparseArray sparseArray2) {
        if (sparseArray == null || sparseArray2 == null) {
            return;
        }
        int size = sparseArray2.size();
        for (int i10 = 0; i10 < size; i10++) {
            sparseArray.remove(sparseArray2.keyAt(i10));
        }
    }

    private void setChunkCalculator() {
        if (this.downloadInfo.getThrottleNetSpeed() > 0) {
            chunkStategy(new x() { // from class: com.byazt.t.DownloadTask.2
                @Override // com.byazt.zz.x
                public int c(long j10) {
                    return 1;
                }
            });
        }
    }

    public DownloadTask addDownloadCompleteHandler(u uVar) {
        synchronized (this.downloadCompleteHandlers) {
            if (uVar != null) {
                if (!this.downloadCompleteHandlers.contains(uVar)) {
                    this.downloadCompleteHandlers.add(uVar);
                    return this;
                }
            }
            return this;
        }
    }

    public void addDownloadListener(int i10, IDownloadListener iDownloadListener, a aVar, boolean z10) {
        Map<a, IDownloadListener> map;
        if (iDownloadListener == null) {
            return;
        }
        if (z10 && (map = this.singleListenerMap) != null) {
            map.put(aVar, iDownloadListener);
            synchronized (this.singleListenerHashCodeMap) {
                this.singleListenerHashCodeMap.put(i10, aVar);
            }
        }
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(aVar);
        if (downloadListeners == null) {
            return;
        }
        synchronized (downloadListeners) {
            downloadListeners.put(i10, iDownloadListener);
        }
    }

    public void addListenerToDownloadingSameTask() {
        com.byazt.x.c.tt("DownloadTask", "same task just tryDownloading, so add listener in last task instead of tryDownload");
        DownloadInfo downloadInfo = this.downloadInfo;
        if (downloadInfo != null && !downloadInfo.isAddListenerToSameTask()) {
            this.downloadInfo.setAddListenerToSameTask(true);
        }
        addListenerToDownloadingSameTask(a.MAIN);
        addListenerToDownloadingSameTask(a.SUB);
        com.byazt.zl.c.c(this.monitorDepend, this.downloadInfo, new BaseException(1003, "has another same task, add Listener to old task"), 0);
    }

    public DownloadTask addListenerToSameTask(boolean z10) {
        this.downloadInfoBuilder.m(z10);
        return this;
    }

    public void asyncDownload(final m mVar) {
        com.byazt.u.uj.c(new Runnable() { // from class: com.byazt.t.DownloadTask.1
            @Override // java.lang.Runnable
            public void run() {
                DownloadTask.this.download();
            }
        });
    }

    public synchronized int autoCalAndGetHashCodeForSameTask() {
        IDownloadListener singleDownloadListener = getSingleDownloadListener(a.MAIN);
        if (singleDownloadListener == null) {
            singleDownloadListener = getSingleDownloadListener(a.SUB);
        }
        if (singleDownloadListener != null) {
            this.hashCodeForSameTask = singleDownloadListener.hashCode();
        }
        return this.hashCodeForSameTask;
    }

    public DownloadTask autoResumed(boolean z10) {
        this.downloadInfoBuilder.a(z10);
        return this;
    }

    public DownloadTask autoSetHashCodeForSameTask(boolean z10) {
        this.autoSetHashCodeForSameTask = z10;
        return this;
    }

    public DownloadTask backUpUrlRetryCount(int i10) {
        this.downloadInfoBuilder.ve(i10);
        return this;
    }

    public DownloadTask backUpUrls(List<String> list) {
        this.downloadInfoBuilder.tt(list);
        return this;
    }

    public boolean canShowNotification() {
        DownloadInfo downloadInfo = this.downloadInfo;
        if (downloadInfo != null) {
            return downloadInfo.canShowNotification();
        }
        return false;
    }

    public DownloadTask chunkAdjustCalculator(sp spVar) {
        this.chunkAdjustCalculator = spVar;
        return this;
    }

    public DownloadTask chunkStategy(x xVar) {
        this.chunkStrategy = xVar;
        return this;
    }

    public void copyInterfaceFromNewTask(DownloadTask downloadTask) {
        this.chunkAdjustCalculator = downloadTask.chunkAdjustCalculator;
        this.chunkStrategy = downloadTask.chunkStrategy;
        this.singleListenerMap.clear();
        this.singleListenerMap.putAll(downloadTask.singleListenerMap);
        synchronized (this.mainThreadListeners) {
            this.mainThreadListeners.clear();
            addAll(downloadTask.mainThreadListeners, this.mainThreadListeners);
        }
        synchronized (this.subThreadListeners) {
            this.subThreadListeners.clear();
            addAll(downloadTask.subThreadListeners, this.subThreadListeners);
        }
        synchronized (this.notificationListeners) {
            this.notificationListeners.clear();
            addAll(downloadTask.notificationListeners, this.notificationListeners);
        }
        this.notificationEventListener = downloadTask.notificationEventListener;
        this.interceptor = downloadTask.interceptor;
        this.depend = downloadTask.depend;
        this.monitorDepend = downloadTask.monitorDepend;
        this.forbiddenHandler = downloadTask.forbiddenHandler;
        this.diskSpaceHandler = downloadTask.diskSpaceHandler;
        this.retryDelayTimeCalculator = downloadTask.retryDelayTimeCalculator;
        this.notificationClickCallback = downloadTask.notificationClickCallback;
        this.fileUriProvider = downloadTask.fileUriProvider;
        synchronized (this.downloadCompleteHandlers) {
            this.downloadCompleteHandlers.clear();
            this.downloadCompleteHandlers.addAll(downloadTask.downloadCompleteHandlers);
        }
    }

    public void copyListenerFromPendingTask(DownloadTask downloadTask) {
        for (Map.Entry<a, IDownloadListener> entry : downloadTask.singleListenerMap.entrySet()) {
            if (entry != null && !this.singleListenerMap.containsKey(entry.getKey())) {
                this.singleListenerMap.put(entry.getKey(), entry.getValue());
            }
        }
        try {
            if (downloadTask.mainThreadListeners.size() != 0) {
                synchronized (this.mainThreadListeners) {
                    removeAll(this.mainThreadListeners, downloadTask.mainThreadListeners);
                    addAll(downloadTask.mainThreadListeners, this.mainThreadListeners);
                }
            }
            if (downloadTask.subThreadListeners.size() != 0) {
                synchronized (this.subThreadListeners) {
                    removeAll(this.subThreadListeners, downloadTask.subThreadListeners);
                    addAll(downloadTask.subThreadListeners, this.subThreadListeners);
                }
            }
            if (downloadTask.notificationListeners.size() != 0) {
                synchronized (this.notificationListeners) {
                    removeAll(this.notificationListeners, downloadTask.notificationListeners);
                    addAll(downloadTask.notificationListeners, this.notificationListeners);
                }
            }
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public DownloadTask deleteCacheIfCheckFailed(boolean z10) {
        this.downloadInfoBuilder.gt(z10);
        return this;
    }

    public DownloadTask depend(yp ypVar) {
        this.depend = ypVar;
        return this;
    }

    public DownloadTask diskSpaceHandler(rh rhVar) {
        this.diskSpaceHandler = rhVar;
        return this;
    }

    public DownloadTask distinctDirectory(boolean z10) {
        this.downloadInfoBuilder.rl(z10);
        return this;
    }

    public int download() {
        this.downloadInfo = this.downloadInfoBuilder.c();
        DownloadInfo downloadInfoTt = com.byazt.zz.ve.zm().tt(this.downloadInfo.getId());
        if (downloadInfoTt == null) {
            this.downloadInfo.generateTaskId();
            com.byazt.zl.c.c(this, (BaseException) null, 0);
        } else {
            this.downloadInfo.copyTaskIdFromCacheData(downloadInfoTt);
        }
        setChunkCalculator();
        com.byazt.zz.uj.c().c(this);
        DownloadInfo downloadInfo = this.downloadInfo;
        if (downloadInfo == null) {
            return 0;
        }
        return downloadInfo.getId();
    }

    public DownloadTask downloadSetting(JSONObject jSONObject) {
        this.downloadInfoBuilder.c(jSONObject);
        return this;
    }

    public DownloadTask enqueueType(EnqueueType enqueueType) {
        this.downloadInfoBuilder.c(enqueueType);
        return this;
    }

    public DownloadTask executorGroup(int i10) {
        this.downloadInfoBuilder.a(i10);
        return this;
    }

    public DownloadTask expectFileLength(long j10) {
        this.downloadInfoBuilder.c(j10);
        return this;
    }

    public DownloadTask expiredRedownload(boolean z10) {
        this.downloadInfoBuilder.my(z10);
        return this;
    }

    public DownloadTask extra(String str) {
        this.downloadInfoBuilder.sp(str);
        return this;
    }

    public DownloadTask extraHeaders(List<ve> list) {
        this.downloadInfoBuilder.c(list);
        return this;
    }

    public DownloadTask extraMonitorStatus(int[] iArr) {
        this.downloadInfoBuilder.tt(iArr);
        return this;
    }

    public DownloadTask fileUriProvider(IDownloadFileUriProvider iDownloadFileUriProvider) {
        this.fileUriProvider = iDownloadFileUriProvider;
        return this;
    }

    public DownloadTask forbiddenHandler(gu guVar) {
        this.forbiddenHandler = guVar;
        return this;
    }

    public DownloadTask force(boolean z10) {
        this.downloadInfoBuilder.tt(z10);
        return this;
    }

    public sp getChunkAdjustCalculator() {
        return this.chunkAdjustCalculator;
    }

    public x getChunkStrategy() {
        return this.chunkStrategy;
    }

    public yp getDepend() {
        return this.depend;
    }

    public rh getDiskSpaceHandler() {
        return this.diskSpaceHandler;
    }

    public u getDownloadCompleteHandlerByIndex(int i10) {
        synchronized (this.downloadCompleteHandlers) {
            if (i10 >= this.downloadCompleteHandlers.size()) {
                return null;
            }
            return this.downloadCompleteHandlers.get(i10);
        }
    }

    @NonNull
    public List<u> getDownloadCompleteHandlers() {
        return this.downloadCompleteHandlers;
    }

    public int getDownloadId() {
        DownloadInfo downloadInfo = this.downloadInfo;
        if (downloadInfo == null) {
            return 0;
        }
        return downloadInfo.getId();
    }

    public DownloadInfo getDownloadInfo() {
        return this.downloadInfo;
    }

    public IDownloadListener getDownloadListenerByIndex(a aVar, int i10) {
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(aVar);
        if (downloadListeners == null || i10 < 0) {
            return null;
        }
        synchronized (downloadListeners) {
            if (i10 >= downloadListeners.size()) {
                return null;
            }
            return downloadListeners.get(downloadListeners.keyAt(i10));
        }
    }

    public int getDownloadListenerSize(a aVar) {
        int size;
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(aVar);
        if (downloadListeners == null) {
            return 0;
        }
        synchronized (downloadListeners) {
            size = downloadListeners.size();
        }
        return size;
    }

    public SparseArray<IDownloadListener> getDownloadListeners(a aVar) {
        if (aVar == a.MAIN) {
            return this.mainThreadListeners;
        }
        if (aVar == a.SUB) {
            return this.subThreadListeners;
        }
        if (aVar == a.NOTIFICATION) {
            return this.notificationListeners;
        }
        return null;
    }

    public IDownloadFileUriProvider getFileUriProvider() {
        return this.fileUriProvider;
    }

    public gu getForbiddenHandler() {
        return this.forbiddenHandler;
    }

    public int getHashCodeForSameTask() {
        return this.hashCodeForSameTask;
    }

    public IDownloadInterceptor getInterceptor() {
        return this.interceptor;
    }

    public gr getMonitorDepend() {
        return this.monitorDepend;
    }

    public eo getNotificationClickCallback() {
        return this.notificationClickCallback;
    }

    public yv getNotificationEventListener() {
        return this.notificationEventListener;
    }

    public my getRetryDelayTimeCalculator() {
        return this.retryDelayTimeCalculator;
    }

    public IDownloadListener getSingleDownloadListener(a aVar) {
        return this.singleListenerMap.get(aVar);
    }

    public DownloadTask hashCodeForSameTask(int i10) {
        this.hashCodeForSameTask = i10;
        return this;
    }

    public DownloadTask headConnectionAvailable(boolean z10) {
        this.downloadInfoBuilder.u(z10);
        return this;
    }

    public DownloadTask iconUrl(String str) {
        this.downloadInfoBuilder.u(str);
        return this;
    }

    public DownloadTask ignoreDataVerify(boolean z10) {
        this.downloadInfoBuilder.yp(z10);
        return this;
    }

    public DownloadTask interceptor(IDownloadInterceptor iDownloadInterceptor) {
        this.interceptor = iDownloadInterceptor;
        return this;
    }

    public boolean isAutoSetHashCodeForSameTask() {
        return this.autoSetHashCodeForSameTask;
    }

    public boolean isNeedDelayForCacheSync() {
        return this.needDelayForCacheSync;
    }

    public DownloadTask isOpenLimitSpeed(boolean z10) {
        this.downloadInfoBuilder.rh(z10);
        return this;
    }

    public DownloadTask mainThreadListener(IDownloadListener iDownloadListener) {
        return iDownloadListener == null ? this : mainThreadListenerWithHashCode(iDownloadListener.hashCode(), iDownloadListener);
    }

    public DownloadTask mainThreadListenerWithHashCode(int i10, IDownloadListener iDownloadListener) {
        if (iDownloadListener != null) {
            synchronized (this.mainThreadListeners) {
                this.mainThreadListeners.put(i10, iDownloadListener);
            }
            Map<a, IDownloadListener> map = this.singleListenerMap;
            a aVar = a.MAIN;
            map.put(aVar, iDownloadListener);
            synchronized (this.singleListenerHashCodeMap) {
                this.singleListenerHashCodeMap.put(i10, aVar);
            }
        }
        return this;
    }

    public DownloadTask maxBytes(int i10) {
        this.downloadInfoBuilder.c(i10);
        return this;
    }

    public DownloadTask maxProgressCount(int i10) {
        this.downloadInfoBuilder.uj(i10);
        return this;
    }

    public DownloadTask md5(String str) {
        this.downloadInfoBuilder.da(str);
        return this;
    }

    public DownloadTask mimeType(String str) {
        this.downloadInfoBuilder.x(str);
        return this;
    }

    public DownloadTask minProgressTimeMsInterval(int i10) {
        this.downloadInfoBuilder.n(i10);
        return this;
    }

    public DownloadTask monitorDepend(gr grVar) {
        this.monitorDepend = grVar;
        return this;
    }

    public DownloadTask monitorScene(String str) {
        this.downloadInfoBuilder.t(str);
        return this;
    }

    public DownloadTask name(String str) {
        this.downloadInfoBuilder.c(str);
        return this;
    }

    public DownloadTask needChunkDowngradeRetry(boolean z10) {
        this.downloadInfoBuilder.z(z10);
        return this;
    }

    public DownloadTask needDefaultHttpServiceBackUp(boolean z10) {
        this.downloadInfoBuilder.x(z10);
        return this;
    }

    public DownloadTask needHttpsToHttpRetry(boolean z10) {
        this.downloadInfoBuilder.uj(z10);
        return this;
    }

    public DownloadTask needIndependentProcess(boolean z10) {
        this.downloadInfoBuilder.t(z10);
        return this;
    }

    public DownloadTask needPostProgress(boolean z10) {
        this.downloadInfoBuilder.ve(z10);
        return this;
    }

    public DownloadTask needRetryDelay(boolean z10) {
        this.downloadInfoBuilder.da(z10);
        return this;
    }

    public DownloadTask needReuseChunkRunnable(boolean z10) {
        this.downloadInfoBuilder.i(z10);
        return this;
    }

    public DownloadTask needReuseFirstConnection(boolean z10) {
        this.downloadInfoBuilder.sl(z10);
        return this;
    }

    public DownloadTask needSDKMonitor(boolean z10) {
        this.downloadInfoBuilder.nu(z10);
        return this;
    }

    @Deprecated
    public DownloadTask newSaveTempFileEnable(boolean z10) {
        return this;
    }

    public DownloadTask notificationClickCallback(eo eoVar) {
        this.notificationClickCallback = eoVar;
        return this;
    }

    public DownloadTask notificationEventListener(yv yvVar) {
        this.notificationEventListener = yvVar;
        return this;
    }

    public DownloadTask notificationListener(IDownloadListener iDownloadListener) {
        return iDownloadListener == null ? this : notificationListenerWithHashCode(iDownloadListener.hashCode(), iDownloadListener);
    }

    public DownloadTask notificationListenerWithHashCode(int i10, IDownloadListener iDownloadListener) {
        if (iDownloadListener != null) {
            synchronized (this.notificationListeners) {
                this.notificationListeners.put(i10, iDownloadListener);
            }
            Map<a, IDownloadListener> map = this.singleListenerMap;
            a aVar = a.NOTIFICATION;
            map.put(aVar, iDownloadListener);
            synchronized (this.singleListenerHashCodeMap) {
                this.singleListenerHashCodeMap.put(i10, aVar);
            }
        }
        return this;
    }

    public DownloadTask onlyWifi(boolean z10) {
        this.downloadInfoBuilder.c(z10);
        return this;
    }

    public DownloadTask outIp(String[] strArr) {
        this.downloadInfoBuilder.c(strArr);
        return this;
    }

    public DownloadTask outSize(int[] iArr) {
        this.downloadInfoBuilder.c(iArr);
        return this;
    }

    public DownloadTask packageName(String str) {
        this.downloadInfoBuilder.i(str);
        return this;
    }

    public void removeDownloadListener(int i10, IDownloadListener iDownloadListener, a aVar, boolean z10) {
        int iIndexOfValue;
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(aVar);
        if (downloadListeners == null) {
            if (z10 && this.singleListenerMap.containsKey(aVar)) {
                this.singleListenerMap.remove(aVar);
                return;
            }
            return;
        }
        synchronized (downloadListeners) {
            try {
                if (z10) {
                    if (this.singleListenerMap.containsKey(aVar)) {
                        iDownloadListener = this.singleListenerMap.get(aVar);
                        this.singleListenerMap.remove(aVar);
                    }
                    if (iDownloadListener != null && (iIndexOfValue = downloadListeners.indexOfValue(iDownloadListener)) >= 0 && iIndexOfValue < downloadListeners.size()) {
                        downloadListeners.removeAt(iIndexOfValue);
                    }
                } else {
                    downloadListeners.remove(i10);
                    synchronized (this.singleListenerHashCodeMap) {
                        a aVar2 = this.singleListenerHashCodeMap.get(i10);
                        if (aVar2 != null && this.singleListenerMap.containsKey(aVar2)) {
                            this.singleListenerMap.remove(aVar2);
                            this.singleListenerHashCodeMap.remove(i10);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public DownloadTask retryCount(int i10) {
        this.downloadInfoBuilder.tt(i10);
        return this;
    }

    public DownloadTask retryDelayTimeArray(String str) {
        this.downloadInfoBuilder.sl(str);
        return this;
    }

    public DownloadTask retryDelayTimeCalculator(my myVar) {
        this.retryDelayTimeCalculator = myVar;
        return this;
    }

    public DownloadTask savePath(String str) {
        this.downloadInfoBuilder.n(str);
        return this;
    }

    public DownloadTask setAutoInstall(boolean z10) {
        this.downloadInfoBuilder.qy(z10);
        return this;
    }

    public DownloadTask setDownloadCompleteHandlers(List<u> list) {
        if (list != null && !list.isEmpty()) {
            Iterator<u> it2 = list.iterator();
            while (it2.hasNext()) {
                addDownloadCompleteHandler(it2.next());
            }
        }
        return this;
    }

    public void setDownloadListeners(SparseArray<IDownloadListener> sparseArray, a aVar) {
        if (sparseArray == null) {
            return;
        }
        try {
            if (aVar == a.MAIN) {
                synchronized (this.mainThreadListeners) {
                    copyListeners(this.mainThreadListeners, sparseArray);
                }
                return;
            } else if (aVar == a.SUB) {
                synchronized (this.subThreadListeners) {
                    copyListeners(this.subThreadListeners, sparseArray);
                }
                return;
            } else {
                if (aVar == a.NOTIFICATION) {
                    synchronized (this.notificationListeners) {
                        copyListeners(this.notificationListeners, sparseArray);
                    }
                    return;
                }
                return;
            }
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
        com.byazt.nr.m.c(th);
    }

    public void setNeedDelayForCacheSync(boolean z10) {
        this.needDelayForCacheSync = z10;
    }

    public void setNotificationEventListener(yv yvVar) {
        this.notificationEventListener = yvVar;
    }

    public DownloadTask showNotification(boolean z10) {
        this.downloadInfoBuilder.n(z10);
        return this;
    }

    public DownloadTask showNotificationForAutoResumed(boolean z10) {
        this.downloadInfoBuilder.sp(z10);
        return this;
    }

    public DownloadTask subThreadListener(IDownloadListener iDownloadListener) {
        return iDownloadListener == null ? this : subThreadListenerWithHashCode(iDownloadListener.hashCode(), iDownloadListener);
    }

    public DownloadTask subThreadListenerWithHashCode(int i10, IDownloadListener iDownloadListener) {
        if (iDownloadListener != null) {
            synchronized (this.subThreadListeners) {
                this.subThreadListeners.put(i10, iDownloadListener);
            }
            Map<a, IDownloadListener> map = this.singleListenerMap;
            a aVar = a.SUB;
            map.put(aVar, iDownloadListener);
            synchronized (this.singleListenerHashCodeMap) {
                this.singleListenerHashCodeMap.put(i10, aVar);
            }
        }
        return this;
    }

    public DownloadTask taskKey(String str) {
        this.downloadInfoBuilder.uj(str);
        return this;
    }

    public DownloadTask tempPath(String str) {
        this.downloadInfoBuilder.a(str);
        return this;
    }

    public DownloadTask throttleNetSpeed(long j10) {
        this.downloadInfoBuilder.tt(j10);
        return this;
    }

    public DownloadTask title(String str) {
        this.downloadInfoBuilder.tt(str);
        return this;
    }

    public DownloadTask ttnetProtectTimeout(long j10) {
        this.downloadInfoBuilder.ve(j10);
        return this;
    }

    public DownloadTask url(String str) {
        this.downloadInfoBuilder.ve(str);
        return this;
    }

    private void addListenerToDownloadingSameTask(a aVar) {
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(aVar);
        synchronized (downloadListeners) {
            for (int i10 = 0; i10 < downloadListeners.size(); i10++) {
                IDownloadListener iDownloadListener = downloadListeners.get(downloadListeners.keyAt(i10));
                if (iDownloadListener != null) {
                    com.byazt.zz.uj.c().tt(getDownloadId(), iDownloadListener, aVar, false);
                }
            }
        }
    }

    public DownloadTask(DownloadInfo downloadInfo) {
        this();
        this.downloadInfo = downloadInfo;
    }
}
