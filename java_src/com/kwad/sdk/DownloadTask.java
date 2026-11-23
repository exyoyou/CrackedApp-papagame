package com.kwad.sdk;

import android.net.NetworkInfo;
import android.text.TextUtils;
import com.kwad.framework.filedownloader.exception.FileDownloadNetworkPolicyException;
import com.kwad.framework.filedownloader.r;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.az;
import com.kwad.sdk.utils.y;
import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadTask implements Serializable {
    private static final long serialVersionUID = -7092669850073266500L;
    public int downloadType;
    private int mAllowedNetworkTypes;
    protected transient com.kwad.framework.filedownloader.a mBaseDownloadTask;
    private String mDestinationDir;
    private String mDestinationFileName;
    private int mNotificationVisibility;
    private Map<String, String> mRequestHeaders;
    private Serializable mTag;
    private String mUrl;
    private boolean mUserPause;
    private boolean mWakeInstallApk;
    private transient List<a> mDownloadListeners = new ArrayList();
    private boolean mIsCanceled = false;
    public boolean downloadEnablePause = false;
    private boolean notificationRemoved = false;

    public static class DownloadRequest implements Serializable {
        private static final long serialVersionUID = -3638290207248829674L;
        private int mAllowedNetworkTypes;
        private String mDestinationFileName;
        private String mDownloadUrl;
        private Serializable mTag;
        private final Map<String, String> mRequestHeaders = new HashMap();
        private boolean mInstallAfterDownload = true;

        @Deprecated
        private boolean mIsPhotoAdDownloadRequest = false;
        private int mNotificationVisibility = 0;
        public boolean downloadEnablePause = false;
        private String mDestinationDir = c.Ey().Ez().getPath();

        public DownloadRequest(String str) {
            this.mAllowedNetworkTypes = 3;
            this.mDownloadUrl = str;
            NetworkInfo networkInfoDz = aq.dz(c.Ey().getContext());
            if (networkInfoDz == null || networkInfoDz.getType() != 0) {
                this.mAllowedNetworkTypes = 2;
            } else {
                this.mAllowedNetworkTypes = 3;
            }
        }

        public DownloadRequest addRequestHeader(String str, String str2) {
            az.hY(str);
            if (str.contains(":")) {
                throw new IllegalArgumentException("header may not contain ':'");
            }
            if (str2 == null) {
                str2 = "";
            }
            this.mRequestHeaders.put(str, str2);
            return this;
        }

        public int getAllowedNetworkTypes() {
            return this.mAllowedNetworkTypes;
        }

        public String getDestinationDir() {
            return this.mDestinationDir;
        }

        public String getDestinationFileName() {
            return this.mDestinationFileName;
        }

        public String getDownloadUrl() {
            return this.mDownloadUrl;
        }

        public Serializable getTag() {
            return this.mTag;
        }

        public boolean isDownloadEnablePause() {
            return this.downloadEnablePause;
        }

        public boolean isPhotoAdDownloadRequest() {
            return this.mIsPhotoAdDownloadRequest;
        }

        public DownloadRequest setAllowedNetworkTypes(int i10) {
            this.mAllowedNetworkTypes = i10;
            return this;
        }

        public DownloadRequest setDestinationDir(String str) {
            this.mDestinationDir = str;
            return this;
        }

        public DownloadRequest setDestinationFileName(String str) {
            this.mDestinationFileName = str;
            return this;
        }

        public void setDownloadEnablePause(boolean z10) {
            this.downloadEnablePause = z10;
        }

        public DownloadRequest setInstallAfterDownload(boolean z10) {
            this.mInstallAfterDownload = z10;
            return this;
        }

        public void setIsPhotoAdDownloadRequest() {
            this.mIsPhotoAdDownloadRequest = true;
        }

        public DownloadRequest setNotificationVisibility(int i10) {
            this.mNotificationVisibility = i10;
            return this;
        }

        public DownloadRequest setTag(Serializable serializable) {
            this.mTag = serializable;
            return this;
        }
    }

    public DownloadTask(DownloadRequest downloadRequest) {
        initDownloadRequestParams(downloadRequest);
        instantiateDownloadTask();
        initDownloadTaskParams();
    }

    private void initDownloadRequestParams(DownloadRequest downloadRequest) {
        this.mWakeInstallApk = downloadRequest.mInstallAfterDownload;
        this.mUrl = downloadRequest.mDownloadUrl;
        this.mAllowedNetworkTypes = downloadRequest.mAllowedNetworkTypes;
        this.mNotificationVisibility = downloadRequest.mNotificationVisibility;
        this.mDestinationDir = downloadRequest.mDestinationDir;
        this.mDestinationFileName = downloadRequest.mDestinationFileName;
        this.mRequestHeaders = downloadRequest.mRequestHeaders;
        this.mTag = downloadRequest.mTag;
        this.downloadEnablePause = downloadRequest.isDownloadEnablePause();
    }

    private void initDownloadTaskParams() {
        this.mBaseDownloadTask.i(this.mTag);
        this.mBaseDownloadTask.bu((this.mAllowedNetworkTypes ^ 2) == 0);
        for (Map.Entry<String, String> entry : this.mRequestHeaders.entrySet()) {
            this.mBaseDownloadTask.bU(entry.getKey());
            this.mBaseDownloadTask.y(entry.getKey(), entry.getValue());
        }
    }

    private void notify(DownloadTask downloadTask, com.kwad.sdk.g.a<d> aVar) {
        d dVarEA = c.Ey().EA();
        if (dVarEA == null) {
            return;
        }
        if (downloadTask.isCanceled()) {
            dVarEA.dn(downloadTask.getId());
        } else {
            aVar.accept(dVarEA);
        }
    }

    private void notifyDownloadCanceled() {
        d dVarEA = c.Ey().EA();
        if (dVarEA == null) {
            return;
        }
        dVarEA.dn(getId());
    }

    private void notifyDownloadCompleted(com.kwad.framework.filedownloader.a aVar) {
        if ((this.mNotificationVisibility & 2) != 0) {
            notify(this, new com.kwad.sdk.g.a<d>() { // from class: com.kwad.sdk.DownloadTask.3
                /* JADX INFO: Access modifiers changed from: private */
                @Override // com.kwad.sdk.g.a
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void accept(d dVar) {
                    dVar.k(DownloadTask.this);
                }
            });
        }
    }

    private void notifyDownloadError(com.kwad.framework.filedownloader.a aVar) {
        if ((this.mNotificationVisibility & 1) != 0) {
            notify(this, new com.kwad.sdk.g.a<d>() { // from class: com.kwad.sdk.DownloadTask.5
                /* JADX INFO: Access modifiers changed from: private */
                @Override // com.kwad.sdk.g.a
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void accept(d dVar) {
                    dVar.j(DownloadTask.this);
                }
            });
        }
    }

    private void notifyDownloadPending() {
        if ((this.mNotificationVisibility & 2) != 0) {
            notify(this, new com.kwad.sdk.g.a<d>() { // from class: com.kwad.sdk.DownloadTask.2
                /* JADX INFO: Access modifiers changed from: private */
                @Override // com.kwad.sdk.g.a
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void accept(d dVar) {
                    dVar.i(DownloadTask.this);
                }
            });
        }
    }

    private void notifyDownloadProgress(com.kwad.framework.filedownloader.a aVar, final boolean z10) {
        if ((aVar.getSmallFileTotalBytes() == 0 && aVar.getSmallFileSoFarBytes() == 0) || TextUtils.isEmpty(aVar.getFilename()) || (this.mNotificationVisibility & 1) == 0) {
            return;
        }
        notify(this, new com.kwad.sdk.g.a<d>() { // from class: com.kwad.sdk.DownloadTask.4
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.kwad.sdk.g.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void accept(d dVar) {
                dVar.a(DownloadTask.this, z10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBlockCompleted(com.kwad.framework.filedownloader.a aVar) {
        try {
            Iterator<a> it2 = this.mDownloadListeners.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void onCanceled(com.kwad.framework.filedownloader.a aVar) {
        try {
            this.mIsCanceled = true;
            Iterator<a> it2 = this.mDownloadListeners.iterator();
            while (it2.hasNext()) {
                it2.next().d(this);
            }
            aVar.cancel();
            notifyDownloadCanceled();
            r.BG().v(getId(), this.mBaseDownloadTask.getTargetFilePath());
            releaseDownloadTask();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCompleted(com.kwad.framework.filedownloader.a aVar) {
        try {
            Iterator<a> it2 = this.mDownloadListeners.iterator();
            while (it2.hasNext()) {
                it2.next().a(this);
            }
            notifyDownloadCompleted(aVar);
            if (this.mWakeInstallApk) {
                installApk();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x002d, code lost:
    
        r5 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onConnected(com.kwad.framework.filedownloader.a r2, java.lang.String r3, boolean r4, int r5, int r6) {
        /*
            r1 = this;
            long r3 = (long) r6
            java.io.File r5 = new java.io.File     // Catch: java.lang.Exception -> L28
            java.lang.String r6 = r1.mDestinationDir     // Catch: java.lang.Exception -> L28
            r5.<init>(r6)     // Catch: java.lang.Exception -> L28
            boolean r5 = r5.exists()     // Catch: java.lang.Exception -> L28
            if (r5 == 0) goto L15
            java.lang.String r5 = r1.mDestinationDir     // Catch: java.lang.Exception -> L28
            long r5 = com.kwad.sdk.crash.utils.h.getAvailableBytes(r5)     // Catch: java.lang.Exception -> L28
            goto L2d
        L15:
            boolean r5 = com.kwad.sdk.utils.be.useStoragePermissionDisable()     // Catch: java.lang.Exception -> L28
            if (r5 != 0) goto L2c
            java.io.File r5 = android.os.Environment.getExternalStorageDirectory()     // Catch: java.lang.Exception -> L28
            java.lang.String r5 = r5.getPath()     // Catch: java.lang.Exception -> L28
            long r5 = com.kwad.sdk.crash.utils.h.getAvailableBytes(r5)     // Catch: java.lang.Exception -> L28
            goto L2d
        L28:
            r5 = move-exception
            r5.printStackTrace()
        L2c:
            r5 = r3
        L2d:
            int r0 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r0 >= 0) goto L43
            com.kwad.sdk.c r3 = com.kwad.sdk.c.Ey()
            int r4 = r2.getId()
            r3.cancel(r4)
            r1.notifyDownloadCanceled()
            r1.onLowStorage(r2)
            return
        L43:
            java.util.List<com.kwad.sdk.a> r3 = r1.mDownloadListeners     // Catch: java.lang.Exception -> L58
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Exception -> L58
        L49:
            boolean r4 = r3.hasNext()     // Catch: java.lang.Exception -> L58
            if (r4 == 0) goto L53
            r3.next()     // Catch: java.lang.Exception -> L58
            goto L49
        L53:
            r3 = 0
            r1.notifyDownloadProgress(r2, r3)     // Catch: java.lang.Exception -> L58
            return
        L58:
            r2 = move-exception
            r2.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.DownloadTask.onConnected(com.kwad.framework.filedownloader.a, java.lang.String, boolean, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDownloading(com.kwad.framework.filedownloader.a aVar, int i10, int i11) {
        try {
            Iterator<a> it2 = this.mDownloadListeners.iterator();
            while (it2.hasNext()) {
                it2.next().a(this, i10, i11);
            }
            notifyDownloadProgress(this.mBaseDownloadTask, false);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onError(com.kwad.framework.filedownloader.a aVar, Throwable th) {
        try {
            Iterator<a> it2 = this.mDownloadListeners.iterator();
            while (it2.hasNext()) {
                it2.next().a(this, th);
            }
            notifyDownloadError(aVar);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void onLowStorage(com.kwad.framework.filedownloader.a aVar) {
        try {
            Iterator<a> it2 = this.mDownloadListeners.iterator();
            while (it2.hasNext()) {
                it2.next().f(this);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPause(com.kwad.framework.filedownloader.a aVar, int i10, int i11) {
        try {
            Iterator<a> it2 = this.mDownloadListeners.iterator();
            while (it2.hasNext()) {
                it2.next().c(this);
            }
            notifyDownloadProgress(aVar, true);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPending(com.kwad.framework.filedownloader.a aVar, int i10, int i11) {
        try {
            Iterator<a> it2 = this.mDownloadListeners.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
            notifyDownloadPending();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void onResume(com.kwad.framework.filedownloader.a aVar, int i10, int i11) {
        try {
            Iterator<a> it2 = this.mDownloadListeners.iterator();
            while (it2.hasNext()) {
                it2.next().e(this);
            }
            notifyDownloadProgress(aVar, true);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStarted(com.kwad.framework.filedownloader.a aVar) {
        try {
            Iterator<a> it2 = this.mDownloadListeners.iterator();
            while (it2.hasNext()) {
                it2.next().b(this);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onWarn(com.kwad.framework.filedownloader.a aVar) {
        try {
            Iterator<a> it2 = this.mDownloadListeners.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.mDownloadListeners = new ArrayList();
    }

    private void releaseDownloadTask() {
        this.mBaseDownloadTask.a(null);
        clearListener();
    }

    public void addListener(a aVar) {
        if (aVar == null || this.mDownloadListeners.contains(aVar)) {
            return;
        }
        this.mDownloadListeners.add(aVar);
    }

    void cancel() {
        try {
            onCanceled(this.mBaseDownloadTask);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void clearListener() {
        this.mDownloadListeners.clear();
    }

    int downLoadProgress() {
        long smallFileTotalBytes = this.mBaseDownloadTask.getSmallFileTotalBytes();
        int smallFileSoFarBytes = smallFileTotalBytes != 0 ? (int) ((this.mBaseDownloadTask.getSmallFileSoFarBytes() * 100.0f) / smallFileTotalBytes) : 0;
        if (smallFileSoFarBytes != 100 || y.R(new File(this.mBaseDownloadTask.getTargetFilePath()))) {
            return smallFileSoFarBytes;
        }
        return 0;
    }

    public int getAllowedNetworkTypes() {
        return this.mAllowedNetworkTypes;
    }

    public String getDestinationDir() {
        return this.mDestinationDir;
    }

    public String getFilename() {
        return this.mBaseDownloadTask.getFilename();
    }

    public int getId() {
        return this.mBaseDownloadTask.getId();
    }

    public int getNotificationVisibility() {
        return this.mNotificationVisibility;
    }

    public String getPath() {
        return this.mBaseDownloadTask.getPath();
    }

    public int getSmallFileSoFarBytes() {
        return this.mBaseDownloadTask.getSmallFileSoFarBytes();
    }

    public int getSmallFileTotalBytes() {
        return this.mBaseDownloadTask.getSmallFileTotalBytes();
    }

    public int getSpeed() {
        return this.mBaseDownloadTask.getSpeed();
    }

    public int getStatus() {
        return this.mBaseDownloadTask.AH();
    }

    public long getStatusUpdateTime() {
        return this.mBaseDownloadTask.getStatusUpdateTime();
    }

    public Object getTag() {
        return this.mBaseDownloadTask.getTag();
    }

    public String getTargetFilePath() {
        return this.mBaseDownloadTask.getTargetFilePath();
    }

    public String getUrl() {
        return this.mUrl;
    }

    void installApk() {
        try {
            c.Ey().g(this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void instantiateDownloadTask() {
        r.BG();
        this.mBaseDownloadTask = r.bV(this.mUrl).bs(true).cp(3).c(TextUtils.isEmpty(this.mDestinationFileName) ? this.mDestinationDir : new File(this.mDestinationDir, this.mDestinationFileName).getPath(), TextUtils.isEmpty(this.mDestinationFileName)).a(new com.kwad.framework.filedownloader.i() { // from class: com.kwad.sdk.DownloadTask.1
            @Override // com.kwad.framework.filedownloader.i
            public final void a(com.kwad.framework.filedownloader.a aVar, String str, boolean z10, int i10, int i11) {
                DownloadTask.this.onConnected(aVar, str, z10, i10, i11);
            }

            @Override // com.kwad.framework.filedownloader.i
            public final void b(com.kwad.framework.filedownloader.a aVar, int i10, int i11) {
                DownloadTask.this.onDownloading(aVar, i10, i11);
            }

            @Override // com.kwad.framework.filedownloader.i
            public final void c(com.kwad.framework.filedownloader.a aVar, int i10, int i11) {
                DownloadTask.this.onPause(aVar, i10, i11);
            }

            @Override // com.kwad.framework.filedownloader.i
            public final void d(com.kwad.framework.filedownloader.a aVar) {
                DownloadTask.this.onBlockCompleted(aVar);
            }

            @Override // com.kwad.framework.filedownloader.i
            public final void a(com.kwad.framework.filedownloader.a aVar) {
                DownloadTask.this.onStarted(aVar);
            }

            @Override // com.kwad.framework.filedownloader.i
            public final void b(com.kwad.framework.filedownloader.a aVar) {
                DownloadTask.this.onCompleted(aVar);
            }

            @Override // com.kwad.framework.filedownloader.i
            public final void c(com.kwad.framework.filedownloader.a aVar) {
                DownloadTask.this.onWarn(aVar);
            }

            @Override // com.kwad.framework.filedownloader.i
            public final void a(com.kwad.framework.filedownloader.a aVar, int i10, int i11) {
                DownloadTask.this.onPending(aVar, i10, i11);
            }

            @Override // com.kwad.framework.filedownloader.i
            public final void a(com.kwad.framework.filedownloader.a aVar, Throwable th) {
                DownloadTask.this.onError(aVar, th);
            }
        });
    }

    public boolean isCanceled() {
        return this.mIsCanceled;
    }

    public boolean isCompleted() {
        return this.mBaseDownloadTask.AH() == -3;
    }

    public boolean isError() {
        return this.mBaseDownloadTask.AH() == -1;
    }

    public boolean isErrorBecauseWifiRequired() {
        return this.mBaseDownloadTask.AO() && isError() && (this.mBaseDownloadTask.AJ() instanceof FileDownloadNetworkPolicyException);
    }

    public boolean isInvalid() {
        return this.mBaseDownloadTask.AH() == 0;
    }

    public boolean isNotificationRemoved() {
        return this.notificationRemoved;
    }

    public boolean isPaused() {
        return this.mBaseDownloadTask.AH() == -2;
    }

    public boolean isRunning() {
        return this.mBaseDownloadTask.isRunning();
    }

    boolean isUserPause() {
        return this.mUserPause;
    }

    void pause() {
        this.mBaseDownloadTask.pause();
        notifyDownloadProgress(this.mBaseDownloadTask, true);
    }

    public void removeListener(a aVar) {
        if (aVar != null) {
            this.mDownloadListeners.remove(aVar);
        }
    }

    void resume(DownloadRequest downloadRequest) {
        if (aq.isNetworkConnected(c.Ey().getContext())) {
            if (downloadRequest != null) {
                initDownloadRequestParams(downloadRequest);
                initDownloadTaskParams();
            }
            this.mUserPause = false;
            if (this.mBaseDownloadTask.isRunning()) {
                com.kwad.framework.filedownloader.a aVar = this.mBaseDownloadTask;
                onResume(aVar, aVar.getSmallFileSoFarBytes(), this.mBaseDownloadTask.getSmallFileTotalBytes());
                return;
            }
            try {
                if (com.kwad.framework.filedownloader.d.d.cX(this.mBaseDownloadTask.AH())) {
                    this.mBaseDownloadTask.Ax();
                }
                submit();
                com.kwad.framework.filedownloader.a aVar2 = this.mBaseDownloadTask;
                onResume(aVar2, aVar2.getSmallFileSoFarBytes(), this.mBaseDownloadTask.getSmallFileTotalBytes());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void setAllowedNetworkTypes(int i10) {
        this.mAllowedNetworkTypes = i10;
        this.mBaseDownloadTask.bu((i10 ^ 2) == 0);
    }

    public void setNotificationRemoved(boolean z10) {
        this.notificationRemoved = z10;
    }

    public void submit() {
        try {
            if (this.mBaseDownloadTask.isRunning()) {
                return;
            }
            this.mBaseDownloadTask.start();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    com.kwad.framework.filedownloader.a unwrap() {
        return this.mBaseDownloadTask;
    }

    void userPause() {
        this.mUserPause = true;
        pause();
    }
}
