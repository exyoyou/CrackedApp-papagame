package com.czhj.volley.toolbox;

import android.os.Looper;
import com.czhj.volley.RequestQueue;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class FileDownloader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final RequestQueue f25782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f25783b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LinkedList<DownloadController> f25784c;

    public class DownloadController {
        public static final int STATUS_DISCARD = 4;
        public static final int STATUS_DOWNLOADING = 1;
        public static final int STATUS_PAUSE = 2;
        public static final int STATUS_SUCCESS = 3;
        public static final int STATUS_WAITING = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        FileDownloadRequest.FileDownloadListener f25785a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f25786b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private FileDownloadRequest f25788d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private DownloadItem f25789e;

        DownloadController(DownloadItem downloadItem, FileDownloadRequest.FileDownloadListener fileDownloadListener) {
            this.f25785a = fileDownloadListener;
            this.f25789e = downloadItem;
        }

        boolean a() {
            if (this.f25786b != 0) {
                return false;
            }
            FileDownloadRequest fileDownloadRequestBuildRequest = FileDownloader.this.buildRequest(this.f25789e, new FileDownloadRequest.FileDownloadListener() { // from class: com.czhj.volley.toolbox.FileDownloader.DownloadController.1

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                boolean f25790a;

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void downloadProgress(DownloadItem downloadItem, long j10, long j11) {
                    FileDownloadRequest.FileDownloadListener fileDownloadListener = DownloadController.this.f25785a;
                    if (fileDownloadListener != null) {
                        fileDownloadListener.downloadProgress(downloadItem, j10, j11);
                    }
                }

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void onCancel(DownloadItem downloadItem) {
                    this.f25790a = true;
                    FileDownloadRequest.FileDownloadListener fileDownloadListener = DownloadController.this.f25785a;
                    if (fileDownloadListener != null) {
                        fileDownloadListener.onCancel(downloadItem);
                    }
                    DownloadController downloadController = DownloadController.this;
                    FileDownloader.this.a(downloadController);
                }

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void onErrorResponse(DownloadItem downloadItem) {
                    FileDownloadRequest.FileDownloadListener fileDownloadListener = DownloadController.this.f25785a;
                    if (fileDownloadListener != null && !this.f25790a) {
                        fileDownloadListener.onErrorResponse(downloadItem);
                    }
                    DownloadController downloadController = DownloadController.this;
                    FileDownloader.this.a(downloadController);
                }

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void onSuccess(DownloadItem downloadItem) {
                    DownloadController downloadController = DownloadController.this;
                    downloadController.f25786b = 3;
                    FileDownloadRequest.FileDownloadListener fileDownloadListener = downloadController.f25785a;
                    if (fileDownloadListener != null && !this.f25790a) {
                        fileDownloadListener.onSuccess(downloadItem);
                    }
                    DownloadController downloadController2 = DownloadController.this;
                    FileDownloader.this.a(downloadController2);
                }
            });
            this.f25788d = fileDownloadRequestBuildRequest;
            this.f25786b = 1;
            RequestQueue requestQueue = FileDownloader.this.f25782a;
            if (requestQueue == null) {
                return false;
            }
            requestQueue.add(fileDownloadRequestBuildRequest);
            return true;
        }

        public boolean discard() {
            int i10 = this.f25786b;
            if (i10 == 0) {
                this.f25786b = 4;
                FileDownloader.this.a(this);
                FileDownloadRequest.FileDownloadListener fileDownloadListener = this.f25785a;
                if (fileDownloadListener != null) {
                    fileDownloadListener.onCancel(this.f25789e);
                }
                return true;
            }
            if (i10 == 4 || i10 == 3) {
                return false;
            }
            if (i10 == 1) {
                this.f25788d.cancel();
            }
            this.f25786b = 4;
            FileDownloader.this.a(this);
            return true;
        }

        public DownloadItem getDownloadItem() {
            return this.f25789e;
        }

        public FileDownloadRequest.FileDownloadListener getDownloadListener() {
            return this.f25785a;
        }

        public int getStatus() {
            return this.f25786b;
        }

        public String getStorePath() {
            return this.f25789e.filePath;
        }

        public String getUrl() {
            return this.f25789e.url;
        }

        public boolean isDownloading() {
            return this.f25786b == 1;
        }

        public boolean pause() {
            if (this.f25786b != 1) {
                return false;
            }
            this.f25786b = 2;
            this.f25788d.cancel();
            FileDownloader.this.a();
            return true;
        }

        public boolean resume() {
            if (this.f25786b != 2) {
                return false;
            }
            this.f25786b = 0;
            FileDownloader.this.a();
            return true;
        }

        public void setDownloadListener(FileDownloadRequest.FileDownloadListener fileDownloadListener) {
            this.f25785a = fileDownloadListener;
        }
    }

    public FileDownloader(RequestQueue requestQueue) {
        this(requestQueue, 0);
    }

    private void b() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("FileDownloader must be invoked from the main thread.");
        }
    }

    void a() {
        synchronized (this.f25784c) {
            Iterator<DownloadController> it2 = this.f25784c.iterator();
            int i10 = 0;
            while (it2.hasNext()) {
                if (it2.next().isDownloading()) {
                    i10++;
                }
            }
            if (i10 >= this.f25783b) {
                return;
            }
            Iterator<DownloadController> it3 = this.f25784c.iterator();
            while (it3.hasNext()) {
                if (it3.next().a() && (i10 = i10 + 1) == this.f25783b) {
                    return;
                }
            }
        }
    }

    public DownloadController add(DownloadItem downloadItem, FileDownloadRequest.FileDownloadListener fileDownloadListener) {
        DownloadController downloadController = get(downloadItem.filePath, downloadItem.url);
        if (downloadController == null) {
            downloadController = new DownloadController(downloadItem, fileDownloadListener);
            synchronized (this.f25784c) {
                this.f25784c.add(downloadController);
            }
            a();
        }
        return downloadController;
    }

    public FileDownloadRequest buildRequest(DownloadItem downloadItem, FileDownloadRequest.FileDownloadListener fileDownloadListener) {
        return new FileDownloadRequest(downloadItem, fileDownloadListener);
    }

    public void clearAll() {
        synchronized (this.f25784c) {
            while (this.f25784c.size() > 0) {
                this.f25784c.get(0).discard();
            }
        }
    }

    public DownloadController get(String str, String str2) {
        synchronized (this.f25784c) {
            for (DownloadController downloadController : this.f25784c) {
                if (downloadController.getStorePath().equals(str) && downloadController.getUrl().equals(str2)) {
                    return downloadController;
                }
            }
            return null;
        }
    }

    public List<DownloadController> getAll() {
        LinkedList<DownloadController> linkedList;
        synchronized (this.f25784c) {
            linkedList = this.f25784c;
        }
        return linkedList;
    }

    public FileDownloader(RequestQueue requestQueue, int i10) {
        this.f25784c = new LinkedList<>();
        this.f25783b = i10;
        this.f25782a = requestQueue;
    }

    void a(DownloadController downloadController) {
        synchronized (this.f25784c) {
            this.f25784c.remove(downloadController);
        }
        a();
    }
}
