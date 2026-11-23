package com.haima.hmcp.virtual;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bn;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.bean.HmVirtualLayoutBean;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.volley.RequestQueue;
import com.haima.hmcp.volley.VolleyError;
import com.haima.hmcp.volley.toolbox.ImageLoader;
import com.haima.hmcp.volley.toolbox.Volley;
import com.kuaishou.weapon.p0.bg;
import java.io.File;
import java.io.FileOutputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public class HmNetworkBitmapLoader {
    private static final String CACHE_DIR_NAME = "hmcp_network_bitmap_cache";
    private static final int CACHE_EXPIRE_DAYS = 7;
    private static final int CORE_POOL_SIZE = 2;
    private static final int DEFAULT_CACHE_MAX_SIZE_MB = 100;
    private static final int MAX_POOL_SIZE = 3;
    private static final int QUEUE_CAPACITY = 128;
    private static final String TAG = "HmNetworkBitmapLoader";
    private static final int TEMP_FILE_EXPIRE_HOURS = 1;
    private static volatile HmNetworkBitmapLoader sInstance;
    private ThreadPoolExecutor mCacheCleanupExecutor;
    private File mCacheDir;
    private ThreadPoolExecutor mDiskCacheExecutor;
    private ImageLoader mImageLoader;
    private RequestQueue mRequestQueue;
    private ConcurrentHashMap<String, Object> mWritingUrls = new ConcurrentHashMap<>();
    private AtomicBoolean mIsCleaningCache = new AtomicBoolean(false);
    private int mCacheMaxSizeMB = 100;
    private Set<String> mDownloadingUrls = Collections.newSetFromMap(new ConcurrentHashMap());
    private ConcurrentHashMap<String, CopyOnWriteArrayList<DownloadListener>> mDownloadListeners = new ConcurrentHashMap<>();

    public interface BitmapLoadCallback {
        void onError(String str);

        void onSuccess(Bitmap bitmap, boolean z10);
    }

    public interface DownloadListener {
        void onDownloadComplete(String str, Bitmap bitmap);

        void onDownloadFailed(String str, String str2);
    }

    private HmNetworkBitmapLoader() {
    }

    private void addUrlIfNotEmpty(List<String> list, String str) {
        if (TextUtils.isEmpty(str) || list.contains(str)) {
            return;
        }
        list.add(str);
        LogUtils.d(TAG, "extractUrls: found URL: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:21:0x008f  */
    public void checkCacheSize() {
        File[] fileArrListFiles;
        long j10;
        if (!isCacheDirValid()) {
            return;
        }
        try {
            File[] fileArrListFiles2 = this.mCacheDir.listFiles();
            if (fileArrListFiles2 != null && fileArrListFiles2.length != 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() - bg.f74510s;
                int length = fileArrListFiles2.length;
                int i10 = 0;
                int i11 = 0;
                long j11 = 0;
                while (i10 < length) {
                    File file = fileArrListFiles2[i10];
                    if (!file.getName().endsWith(".tmp") || file.lastModified() >= jCurrentTimeMillis) {
                        j10 = bg.f74510s;
                    } else {
                        long length2 = file.length();
                        if (file.delete()) {
                            i11++;
                            j11 += length2;
                            long jCurrentTimeMillis2 = System.currentTimeMillis() - file.lastModified();
                            j10 = bg.f74510s;
                            LogUtils.d(TAG, "checkCacheSize: deleted stale temp file " + file.getName() + ", age=" + (jCurrentTimeMillis2 / bg.f74510s) + " hours, size=" + (length2 / 1024) + "KB");
                        } else {
                            j10 = bg.f74510s;
                        }
                    }
                    i10++;
                    fileArrListFiles2 = fileArrListFiles2;
                    jCurrentTimeMillis = jCurrentTimeMillis;
                }
                File[] fileArr = fileArrListFiles2;
                if (i11 > 0) {
                    LogUtils.d(TAG, String.format("checkCacheSize: [Temp cleanup] deleted %d stale temp files, freed %.2fMB", Integer.valueOf(i11), Double.valueOf((j11 / 1024.0d) / 1024.0d)));
                    fileArrListFiles = this.mCacheDir.listFiles();
                    if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                        return;
                    }
                } else {
                    fileArrListFiles = fileArr;
                }
                long jCurrentTimeMillis3 = System.currentTimeMillis() - bn.f7592d;
                ArrayList<File> arrayList = new ArrayList();
                long j12 = 0;
                int i12 = 0;
                for (File file2 : fileArrListFiles) {
                    try {
                        if (file2.lastModified() < jCurrentTimeMillis3) {
                            long length3 = file2.length();
                            if (file2.delete()) {
                                i12++;
                                LogUtils.d(TAG, "checkCacheSize: time-based deleted " + file2.getName() + ", age=" + ((System.currentTimeMillis() - file2.lastModified()) / 86400000) + " days, size=" + (length3 / 1024) + "KB");
                                j12 += length3;
                            }
                        } else {
                            arrayList.add(file2);
                        }
                    } catch (Exception e10) {
                        e = e10;
                        LogUtils.e(TAG, "checkCacheSize error: " + e.getMessage());
                    }
                }
                if (i12 > 0) {
                    LogUtils.d(TAG, String.format("checkCacheSize: [Time-based] cleaned %d expired files, freed %.2fMB", Integer.valueOf(i12), Double.valueOf((j12 / 1024.0d) / 1024.0d)));
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                Iterator it2 = arrayList.iterator();
                long length4 = 0;
                while (it2.hasNext()) {
                    length4 += ((File) it2.next()).length();
                }
                double d10 = (length4 / 1024.0d) / 1024.0d;
                LogUtils.d(TAG, String.format("checkCacheSize: current cache size = %.2fMB, files count = %d", Double.valueOf(d10), Integer.valueOf(arrayList.size())));
                try {
                    if (d10 <= this.mCacheMaxSizeMB) {
                        LogUtils.d(TAG, "checkCacheSize: cache size within limit, no size-based cleanup needed");
                        return;
                    }
                    LogUtils.d(TAG, String.format("checkCacheSize: cache size (%.2fMB) exceeds limit (%dMB), starting size-based cleanup...", Double.valueOf(d10), Integer.valueOf(this.mCacheMaxSizeMB)));
                    Collections.sort(arrayList, new Comparator<File>() { // from class: com.haima.hmcp.virtual.HmNetworkBitmapLoader.9
                        @Override // java.util.Comparator
                        public int compare(File file3, File file4) {
                            return Long.compare(file3.lastModified(), file4.lastModified());
                        }
                    });
                    long j13 = ((long) this.mCacheMaxSizeMB) * 1024 * 1024;
                    long j14 = 0;
                    int i13 = 0;
                    for (File file3 : arrayList) {
                        if (length4 <= j13) {
                            break;
                        }
                        long length5 = file3.length();
                        if (file3.delete()) {
                            i13++;
                            j14 += length5;
                            LogUtils.d(TAG, "checkCacheSize: size-based deleted " + file3.getName() + ", age=" + ((System.currentTimeMillis() - file3.lastModified()) / 86400000) + " days, size=" + (length5 / 1024) + "KB");
                            length4 -= length5;
                        }
                    }
                    if (i13 > 0) {
                        LogUtils.d(TAG, String.format("checkCacheSize: [Size-based] cleaned %d files, freed %.2fMB, new cache size = %.2fMB", Integer.valueOf(i13), Double.valueOf((j14 / 1024.0d) / 1024.0d), Double.valueOf((length4 / 1024.0d) / 1024.0d)));
                    }
                } catch (Exception e11) {
                    e = e11;
                    LogUtils.e(TAG, "checkCacheSize error: " + e.getMessage());
                }
            }
        } catch (Exception e12) {
            e = e12;
        }
    }

    private boolean ensureCacheDirExists() {
        File file = this.mCacheDir;
        if (file == null) {
            LogUtils.e(TAG, "ensureCacheDirExists: mCacheDir is null, not initialized");
            return false;
        }
        if (file.exists()) {
            return true;
        }
        LogUtils.w(TAG, "ensureCacheDirExists: cache dir was deleted externally, recreating...");
        if (this.mCacheDir.mkdirs()) {
            LogUtils.d(TAG, "ensureCacheDirExists: cache dir recreated successfully");
            return true;
        }
        LogUtils.e(TAG, "ensureCacheDirExists: failed to recreate cache dir");
        return false;
    }

    private void extractUrlsFromViewBean(HmVirtualViewBean hmVirtualViewBean, List<String> list) {
        if (hmVirtualViewBean == null || list == null) {
            return;
        }
        addUrlIfNotEmpty(list, hmVirtualViewBean.getPicUnselectedUrl());
        addUrlIfNotEmpty(list, hmVirtualViewBean.getPicSelectedUrl());
        addUrlIfNotEmpty(list, hmVirtualViewBean.getPicCenterUrl());
        addUrlIfNotEmpty(list, hmVirtualViewBean.getCrossPicRockerDirectionUrl());
        if (hmVirtualViewBean.getDrawerList() != null) {
            Iterator<HmVirtualViewBean> it2 = hmVirtualViewBean.getDrawerList().iterator();
            while (it2.hasNext()) {
                extractUrlsFromViewBean(it2.next(), list);
            }
        }
    }

    private void extractUrlsFromViewBeanList(List<HmVirtualViewBean> list, List<String> list2) {
        if (list == null || list2 == null) {
            return;
        }
        Iterator<HmVirtualViewBean> it2 = list.iterator();
        while (it2.hasNext()) {
            extractUrlsFromViewBean(it2.next(), list2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap getBitmapFromDiskCache(String str) {
        Bitmap bitmapDecodeFile;
        if (TextUtils.isEmpty(str) || !isCacheDirValid()) {
            return null;
        }
        try {
            File file = new File(this.mCacheDir, getMD5(str));
            if (file.exists() && (bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath())) != null) {
                updateFileAccessTime(file);
                LogUtils.d(TAG, "getBitmapFromDiskCache: hit cache for " + str + ", size=" + bitmapDecodeFile.getWidth() + "x" + bitmapDecodeFile.getHeight());
                return bitmapDecodeFile;
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, "getBitmapFromDiskCache error: " + e10.getMessage());
        }
        return null;
    }

    public static HmNetworkBitmapLoader getInstance() {
        if (sInstance == null) {
            synchronized (HmNetworkBitmapLoader.class) {
                if (sInstance == null) {
                    sInstance = new HmNetworkBitmapLoader();
                }
            }
        }
        return sInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getMD5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb2.append(String.format("%02x", Integer.valueOf(b10 & 255)));
            }
            return sb2.toString();
        } catch (Exception e10) {
            LogUtils.e(TAG, "getMD5 error: " + e10.getMessage());
            return String.valueOf(str.hashCode());
        }
    }

    private void initCacheDir(Context context) {
        if (context == null) {
            LogUtils.e(TAG, "initCacheDir: context is null");
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (this.mCacheDir == null) {
            this.mCacheDir = new File(applicationContext.getFilesDir(), CACHE_DIR_NAME);
            LogUtils.d(TAG, "initCacheDir: cache dir = " + this.mCacheDir.getAbsolutePath());
        }
        if (this.mCacheDir.exists()) {
            return;
        }
        if (this.mCacheDir.mkdirs()) {
            LogUtils.w(TAG, "initCacheDir: cache dir was deleted, recreated");
        } else {
            LogUtils.e(TAG, "initCacheDir: failed to create cache dir");
        }
    }

    private void initDownloadComponents(Context context) {
        if (context == null) {
            LogUtils.e(TAG, "initDownloadComponents: context is null");
            return;
        }
        try {
            Context applicationContext = context.getApplicationContext();
            initCacheDir(applicationContext);
            if (this.mDiskCacheExecutor == null) {
                this.mDiskCacheExecutor = new ThreadPoolExecutor(2, 3, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(128), new ThreadFactory() { // from class: com.haima.hmcp.virtual.HmNetworkBitmapLoader.3
                    private final AtomicInteger mCount = new AtomicInteger(1);

                    @Override // java.util.concurrent.ThreadFactory
                    public Thread newThread(Runnable runnable) {
                        return new Thread(runnable, "HmcpDiskCache-" + this.mCount.getAndIncrement());
                    }
                }, new RejectedExecutionHandler() { // from class: com.haima.hmcp.virtual.HmNetworkBitmapLoader.4
                    @Override // java.util.concurrent.RejectedExecutionHandler
                    public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                        LogUtils.w(HmNetworkBitmapLoader.TAG, "Disk cache task rejected! Queue is full. Active=" + threadPoolExecutor.getActiveCount() + ", Queue=" + threadPoolExecutor.getQueue().size() + ", Completed=" + threadPoolExecutor.getCompletedTaskCount());
                    }
                });
                LogUtils.d(TAG, "initDownloadComponents: disk cache executor created (core=2, max=3, queue=128)");
            }
            if (this.mRequestQueue == null) {
                this.mRequestQueue = Volley.newRequestQueue(applicationContext);
                LogUtils.d(TAG, "initDownloadComponents: RequestQueue created");
            }
            if (this.mImageLoader == null) {
                this.mImageLoader = new ImageLoader(this.mRequestQueue, new ImageLoader.ImageCache() { // from class: com.haima.hmcp.virtual.HmNetworkBitmapLoader.5
                    @Override // com.haima.hmcp.volley.toolbox.ImageLoader.ImageCache
                    public Bitmap getBitmap(String str) {
                        return HmNetworkBitmapLoader.this.getBitmapFromDiskCache(str);
                    }

                    @Override // com.haima.hmcp.volley.toolbox.ImageLoader.ImageCache
                    public void putBitmap(String str, Bitmap bitmap) {
                        HmNetworkBitmapLoader.this.putBitmapToDiskCache(str, bitmap);
                    }
                });
                LogUtils.d(TAG, "initDownloadComponents: ImageLoader initialized with disk cache");
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, "initDownloadComponents failed: " + e10.getMessage());
        }
    }

    private boolean isCacheDirValid() {
        File file = this.mCacheDir;
        if (file == null) {
            return false;
        }
        return file.exists();
    }

    private boolean isCachedOnDisk(String str) {
        if (TextUtils.isEmpty(str) || !isCacheDirValid()) {
            return false;
        }
        try {
            File file = new File(this.mCacheDir, getMD5(str));
            return file.exists() && file.length() > 0;
        } catch (Exception e10) {
            LogUtils.e(TAG, "isCachedOnDisk error: " + e10.getMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDownloadFailed(String str, String str2) {
        CopyOnWriteArrayList<DownloadListener> copyOnWriteArrayList = this.mDownloadListeners.get(str);
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return;
        }
        LogUtils.d(TAG, "notifyDownloadFailed: notifying " + copyOnWriteArrayList.size() + " listeners for " + str);
        Iterator<DownloadListener> it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            try {
                it2.next().onDownloadFailed(str, str2);
            } catch (Exception e10) {
                LogUtils.e(TAG, "notifyDownloadFailed: listener error: " + e10.getMessage());
            }
        }
        this.mDownloadListeners.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDownloadSuccess(String str, Bitmap bitmap) {
        CopyOnWriteArrayList<DownloadListener> copyOnWriteArrayList = this.mDownloadListeners.get(str);
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return;
        }
        LogUtils.d(TAG, "notifyDownloadSuccess: notifying " + copyOnWriteArrayList.size() + " listeners for " + str);
        Iterator<DownloadListener> it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            try {
                it2.next().onDownloadComplete(str, bitmap);
            } catch (Exception e10) {
                LogUtils.e(TAG, "notifyDownloadSuccess: listener error: " + e10.getMessage());
            }
        }
        this.mDownloadListeners.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void putBitmapToDiskCache(final String str, final Bitmap bitmap) {
        if (TextUtils.isEmpty(str) || bitmap == null || !ensureCacheDirExists()) {
            return;
        }
        if (this.mDiskCacheExecutor == null) {
            LogUtils.e(TAG, "putBitmapToDiskCache: executor not initialized");
            return;
        }
        if (this.mWritingUrls.putIfAbsent(str, str) == null) {
            this.mDiskCacheExecutor.execute(new Runnable() { // from class: com.haima.hmcp.virtual.HmNetworkBitmapLoader.8
                /* JADX WARN: Code duplicated, block: B:50:0x0154 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    FileOutputStream fileOutputStream;
                    FileOutputStream fileOutputStream2 = null;
                    File file = null;
                    try {
                        try {
                            String md5 = HmNetworkBitmapLoader.this.getMD5(str);
                            LogUtils.d(HmNetworkBitmapLoader.TAG, "putBitmapToDiskCache: start caching, url=" + str + ", fileName=" + md5 + ", tempFile=" + md5 + ".tmp");
                            File file2 = new File(HmNetworkBitmapLoader.this.mCacheDir, md5);
                            File file3 = HmNetworkBitmapLoader.this.mCacheDir;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(md5);
                            sb2.append(".tmp");
                            File file4 = new File(file3, sb2.toString());
                            try {
                                if (file4.exists()) {
                                    LogUtils.w(HmNetworkBitmapLoader.TAG, "putBitmapToDiskCache: found stale temp file " + file4.getName() + ", age=" + ((System.currentTimeMillis() - file4.lastModified()) / 60000) + " minutes, deleting...");
                                    file4.delete();
                                }
                                FileOutputStream fileOutputStream3 = new FileOutputStream(file4);
                                try {
                                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream3);
                                    fileOutputStream3.flush();
                                    fileOutputStream3.close();
                                    if (file2.exists()) {
                                        file2.delete();
                                    }
                                    if (file4.renameTo(file2)) {
                                        LogUtils.d(HmNetworkBitmapLoader.TAG, "putBitmapToDiskCache: cached successfully, url=" + str + ", fileName=" + md5 + ", size=" + (file2.length() / 1024) + " KB");
                                    } else {
                                        LogUtils.e(HmNetworkBitmapLoader.TAG, "putBitmapToDiskCache: rename failed for " + str);
                                        if (file4.exists()) {
                                            file4.delete();
                                        }
                                    }
                                } catch (Exception e10) {
                                    file = file4;
                                    fileOutputStream = fileOutputStream3;
                                    e = e10;
                                    try {
                                        LogUtils.e(HmNetworkBitmapLoader.TAG, "putBitmapToDiskCache error: " + e.getMessage());
                                        if (file != null && file.exists()) {
                                            file.delete();
                                        }
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (Exception unused) {
                                            }
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        fileOutputStream2 = fileOutputStream;
                                        if (fileOutputStream2 != null) {
                                            try {
                                                fileOutputStream2.close();
                                            } catch (Exception unused2) {
                                            }
                                        }
                                        HmNetworkBitmapLoader.this.mWritingUrls.remove(str);
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    fileOutputStream2 = fileOutputStream3;
                                    th = th2;
                                    if (fileOutputStream2 != null) {
                                        fileOutputStream2.close();
                                    }
                                    HmNetworkBitmapLoader.this.mWritingUrls.remove(str);
                                    throw th;
                                }
                            } catch (Exception e11) {
                                e = e11;
                                fileOutputStream = null;
                                file = file4;
                            }
                        } catch (Exception e12) {
                            e = e12;
                            fileOutputStream = null;
                        }
                        HmNetworkBitmapLoader.this.mWritingUrls.remove(str);
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            });
            return;
        }
        LogUtils.d(TAG, "putBitmapToDiskCache: skip, already writing " + str);
    }

    private void startPreload(Context context, final String str, final int i10, final int i11) {
        LogUtils.d(TAG, "startPreload: starting download for " + str);
        loadBitmap(context, str, new BitmapLoadCallback() { // from class: com.haima.hmcp.virtual.HmNetworkBitmapLoader.10
            @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.BitmapLoadCallback
            public void onError(String str2) {
                LogUtils.e(HmNetworkBitmapLoader.TAG, "startPreload: download failed for " + str + ", error: " + str2);
                HmNetworkBitmapLoader.this.mDownloadingUrls.remove(str);
                HmNetworkBitmapLoader.this.notifyDownloadFailed(str, str2);
            }

            @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.BitmapLoadCallback
            public void onSuccess(Bitmap bitmap, boolean z10) {
                int i12;
                LogUtils.d(HmNetworkBitmapLoader.TAG, "startPreload: download success for " + str + ", from cache: " + z10);
                HmNetworkBitmapLoader.this.mDownloadingUrls.remove(str);
                int i13 = i10;
                if (i13 <= 0 || (i12 = i11) <= 0) {
                    LogUtils.d(HmNetworkBitmapLoader.TAG, "startPreload: success without scaling, size=" + bitmap.getWidth() + "x" + bitmap.getHeight() + ", isFromCache=" + z10);
                } else {
                    Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i13, i12, true);
                    LogUtils.d(HmNetworkBitmapLoader.TAG, "startPreload: scaled from " + bitmap.getWidth() + "x" + bitmap.getHeight() + " to " + i10 + "x" + i11 + ", isFromCache=" + z10);
                    bitmap = bitmapCreateScaledBitmap;
                }
                HmNetworkBitmapLoader.this.notifyDownloadSuccess(str, bitmap);
            }
        });
    }

    private void updateFileAccessTime(File file) {
        if (file != null) {
            try {
                if (file.exists()) {
                    if (file.setLastModified(System.currentTimeMillis())) {
                        LogUtils.d(TAG, "updateFileAccessTime success: " + file.getName());
                        return;
                    }
                    LogUtils.w(TAG, "updateFileAccessTime failed: " + file.getName());
                    return;
                }
            } catch (Exception e10) {
                LogUtils.e(TAG, "updateFileAccessTime error: " + e10.getMessage());
                return;
            }
        }
        LogUtils.w(TAG, "updateFileAccessTime: file not exists");
    }

    public void addDownloadListener(Context context, String str, DownloadListener downloadListener, int i10, int i11) {
        CopyOnWriteArrayList<DownloadListener> copyOnWriteArrayListPutIfAbsent;
        if (TextUtils.isEmpty(str) || downloadListener == null) {
            return;
        }
        CopyOnWriteArrayList<DownloadListener> copyOnWriteArrayList = this.mDownloadListeners.get(str);
        if (copyOnWriteArrayList == null && (copyOnWriteArrayListPutIfAbsent = this.mDownloadListeners.putIfAbsent(str, (copyOnWriteArrayList = new CopyOnWriteArrayList<>()))) != null) {
            copyOnWriteArrayList = copyOnWriteArrayListPutIfAbsent;
        }
        if (!copyOnWriteArrayList.contains(downloadListener)) {
            copyOnWriteArrayList.add(downloadListener);
            LogUtils.d(TAG, "addDownloadListener: added listener for " + str + ", total listeners: " + copyOnWriteArrayList.size());
        }
        if (!this.mDownloadingUrls.add(str)) {
            LogUtils.d(TAG, "addDownloadListener: URL already downloading, waiting: " + str);
            return;
        }
        LogUtils.d(TAG, "addDownloadListener: download triggered for " + str);
        if (context == null) {
            LogUtils.w(TAG, "addDownloadListener: cannot trigger download without Context for " + str);
            this.mDownloadingUrls.remove(str);
            return;
        }
        if (this.mImageLoader == null || this.mRequestQueue == null || this.mDiskCacheExecutor == null) {
            LogUtils.d(TAG, "addDownloadListener: auto initializing download components");
            initDownloadComponents(context);
        }
        startPreload(context, str, i10, i11);
    }

    public Bitmap getBitmapSync(String str, int i10, int i11) {
        if (TextUtils.isEmpty(str) || !isCacheDirValid()) {
            return null;
        }
        try {
            String md5 = getMD5(str);
            File file = new File(this.mCacheDir, md5);
            if (!file.exists()) {
                return null;
            }
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath());
            if (bitmapDecodeFile == null) {
                LogUtils.w(TAG, "getBitmapSync: failed to decode " + str);
                return null;
            }
            if (i10 > 0 && i11 > 0 && (bitmapDecodeFile.getWidth() != i10 || bitmapDecodeFile.getHeight() != i11)) {
                bitmapDecodeFile = Bitmap.createScaledBitmap(bitmapDecodeFile, i10, i11, true);
            }
            updateFileAccessTime(file);
            LogUtils.d(TAG, "getBitmapSync: hit cache for " + str + ", size=" + bitmapDecodeFile.getWidth() + "x" + bitmapDecodeFile.getHeight() + " fileName " + md5);
            return bitmapDecodeFile;
        } catch (Exception e10) {
            LogUtils.e(TAG, "getBitmapSync error: " + e10.getMessage());
            return null;
        }
    }

    public int getCacheMaxSize() {
        return this.mCacheMaxSizeMB;
    }

    public void initCleanup(Context context) {
        if (context == null) {
            LogUtils.e(TAG, "initCleanup: context is null");
            return;
        }
        try {
            initCacheDir(context.getApplicationContext());
            if (this.mCacheCleanupExecutor == null) {
                this.mCacheCleanupExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(1), new ThreadFactory() { // from class: com.haima.hmcp.virtual.HmNetworkBitmapLoader.1
                    private final AtomicInteger mCount = new AtomicInteger(1);

                    @Override // java.util.concurrent.ThreadFactory
                    public Thread newThread(Runnable runnable) {
                        Thread thread = new Thread(runnable, "HmcpBitmapCacheCleanup-" + this.mCount.getAndIncrement());
                        thread.setPriority(1);
                        return thread;
                    }
                }, new RejectedExecutionHandler() { // from class: com.haima.hmcp.virtual.HmNetworkBitmapLoader.2
                    @Override // java.util.concurrent.RejectedExecutionHandler
                    public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                        LogUtils.w(HmNetworkBitmapLoader.TAG, "Cache cleanup task rejected! Already has a pending cleanup task.");
                    }
                });
                LogUtils.d(TAG, "initCleanup: cache cleanup executor created (single thread, low priority)");
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, "initCleanup failed: " + e10.getMessage());
        }
    }

    public void loadBitmap(Context context, final String str, final BitmapLoadCallback bitmapLoadCallback) {
        if (context == null || TextUtils.isEmpty(str)) {
            LogUtils.e(TAG, "loadBitmap: invalid params");
            if (bitmapLoadCallback != null) {
                bitmapLoadCallback.onError("Invalid parameters: context or url is null");
                return;
            }
            return;
        }
        if (bitmapLoadCallback == null) {
            LogUtils.e(TAG, "loadBitmap: callback is null");
            return;
        }
        if (this.mImageLoader == null) {
            LogUtils.e(TAG, "loadBitmap: ImageLoader not initialized");
            bitmapLoadCallback.onError("ImageLoader initialization failed");
            return;
        }
        LogUtils.d(TAG, "loadBitmap: start download task, url=" + str + ", md5=" + getMD5(str));
        this.mImageLoader.get(str, new ImageLoader.ImageListener() { // from class: com.haima.hmcp.virtual.HmNetworkBitmapLoader.7
            @Override // com.haima.hmcp.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                String string = volleyError != null ? volleyError.toString() : "Unknown error";
                LogUtils.e(HmNetworkBitmapLoader.TAG, "loadBitmap failed: " + str + ", error: " + string);
                bitmapLoadCallback.onError(string);
            }

            @Override // com.haima.hmcp.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z10) {
                Bitmap bitmap = imageContainer.getBitmap();
                if (bitmap != null) {
                    LogUtils.d(HmNetworkBitmapLoader.TAG, "loadBitmap success: " + str + ", size=" + bitmap.getWidth() + "x" + bitmap.getHeight() + ", from cache: " + z10);
                    bitmapLoadCallback.onSuccess(bitmap, z10);
                }
            }
        }, 0, 0);
    }

    public void preloadBitmaps(Context context, List<String> list) {
        if (context == null || list == null || list.isEmpty()) {
            LogUtils.w(TAG, "preloadBitmaps: invalid params");
            return;
        }
        if (this.mImageLoader == null) {
            LogUtils.e(TAG, "preloadBitmaps: ImageLoader not initialized");
            return;
        }
        int size = list.size();
        LogUtils.d(TAG, "preloadBitmaps: received " + size + " URLs");
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        for (String str : list) {
            if (!TextUtils.isEmpty(str)) {
                if (isCachedOnDisk(str)) {
                    i11++;
                    LogUtils.d(TAG, "preloadBitmaps: skip cached URL: " + str);
                } else if (this.mDownloadingUrls.contains(str)) {
                    i12++;
                    LogUtils.d(TAG, "preloadBitmaps: skip downloading URL: " + str);
                } else {
                    this.mDownloadingUrls.add(str);
                    i10++;
                    startPreload(context, str, -1, -1);
                }
            }
        }
        LogUtils.d(TAG, String.format("preloadBitmaps: total=%d, started=%d, skipped_cached=%d, skipped_downloading=%d", Integer.valueOf(size), Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12)));
    }

    public void preloadBitmapsFromLayoutBean(Context context) {
        HmVirtualLayoutBean.ConfigDTO config;
        if (context == null) {
            LogUtils.w(TAG, "preloadBitmapsFromLayoutBean: invalid params");
            return;
        }
        List<HmVirtualViewBean> keyboardLayout = HmVirtualDeviceManager.get().getKeyboardLayout();
        List<HmVirtualViewBean> xboxLayout = HmVirtualDeviceManager.get().getXboxLayout();
        try {
            if (this.mImageLoader == null || this.mRequestQueue == null || this.mDiskCacheExecutor == null) {
                LogUtils.d(TAG, "preloadBitmapsFromLayoutBean: auto initializing download components...");
                initDownloadComponents(context);
            }
            LogUtils.d(TAG, "preloadBitmapsFromLayoutBean: extracting URLs from layoutBean...");
            ArrayList arrayList = new ArrayList();
            HmVirtualLayoutBean layoutBean = HmVirtualDeviceManager.get().getLayoutBean();
            String default_layout = null;
            if (layoutBean != null && (config = layoutBean.getConfig()) != null) {
                addUrlIfNotEmpty(arrayList, config.getPic_rocker_center_url());
                addUrlIfNotEmpty(arrayList, config.getPic_rocker_direction_url());
                addUrlIfNotEmpty(arrayList, config.getPic_common_drawer_bg_selected_url());
                addUrlIfNotEmpty(arrayList, config.getPic_common_drawer_bg_unselected_url());
                addUrlIfNotEmpty(arrayList, config.getPic_common_drawer_icon_url());
                addUrlIfNotEmpty(arrayList, config.getPic_common_bg_selected_url());
                addUrlIfNotEmpty(arrayList, config.getPic_common_bg_unselected_url());
                default_layout = layoutBean.getConfig() != null ? layoutBean.getConfig().getDefault_layout() : null;
                LogUtils.d(TAG, "preloadBitmapsFromLayoutBean: default_layout=" + default_layout);
            }
            if ("xbox".equals(default_layout)) {
                LogUtils.d(TAG, "preloadBitmapsFromLayoutBean: prioritizing xbox layout");
                extractUrlsFromViewBeanList(xboxLayout, arrayList);
                extractUrlsFromViewBeanList(keyboardLayout, arrayList);
            } else if ("keyboard".equals(default_layout)) {
                LogUtils.d(TAG, "preloadBitmapsFromLayoutBean: prioritizing keyboard layout");
                extractUrlsFromViewBeanList(keyboardLayout, arrayList);
                extractUrlsFromViewBeanList(xboxLayout, arrayList);
            } else {
                LogUtils.d(TAG, "preloadBitmapsFromLayoutBean: using default order,xbox first");
                extractUrlsFromViewBeanList(xboxLayout, arrayList);
                extractUrlsFromViewBeanList(keyboardLayout, arrayList);
            }
            if (arrayList.isEmpty()) {
                LogUtils.d(TAG, "preloadBitmapsFromLayoutBean: no URLs found");
                return;
            }
            LogUtils.d(TAG, "preloadBitmapsFromLayoutBean: extracted " + arrayList.size() + " URLs, starting preload...");
            preloadBitmaps(context, arrayList);
        } catch (Exception e10) {
            LogUtils.e(TAG, "preloadBitmapsFromLayoutBean error: " + e10.getMessage());
        }
    }

    public void release() {
        try {
            LogUtils.d(TAG, "release: starting...");
            releaseDownload();
            releaseCleanup();
            if (this.mCacheDir != null) {
                this.mCacheDir = null;
                LogUtils.d(TAG, "release: cache dir reference cleared");
            }
            sInstance = null;
            LogUtils.d(TAG, "release: completed");
        } catch (Exception e10) {
            LogUtils.e(TAG, "release error: " + e10.getMessage());
        }
    }

    public void releaseCleanup() {
        try {
            LogUtils.d(TAG, "releaseCleanup: starting...");
            ThreadPoolExecutor threadPoolExecutor = this.mCacheCleanupExecutor;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.shutdownNow();
                this.mCacheCleanupExecutor = null;
                LogUtils.d(TAG, "releaseCleanup: cache cleanup executor stopped");
            }
            this.mIsCleaningCache.set(false);
            LogUtils.d(TAG, "releaseCleanup: cleanup flag reset");
            LogUtils.d(TAG, "releaseCleanup: completed");
        } catch (Exception e10) {
            LogUtils.e(TAG, "releaseCleanup error: " + e10.getMessage());
        }
    }

    public void releaseDownload() {
        try {
            LogUtils.d(TAG, "releaseDownload: starting...");
            ThreadPoolExecutor threadPoolExecutor = this.mDiskCacheExecutor;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.shutdownNow();
                this.mDiskCacheExecutor = null;
                LogUtils.d(TAG, "releaseDownload: disk cache executor stopped");
            }
            RequestQueue requestQueue = this.mRequestQueue;
            if (requestQueue != null) {
                requestQueue.stop();
                this.mRequestQueue = null;
                LogUtils.d(TAG, "releaseDownload: request queue stopped");
            }
            if (this.mImageLoader != null) {
                this.mImageLoader = null;
                LogUtils.d(TAG, "releaseDownload: image loader cleared");
            }
            ConcurrentHashMap<String, Object> concurrentHashMap = this.mWritingUrls;
            if (concurrentHashMap != null) {
                concurrentHashMap.clear();
                LogUtils.d(TAG, "releaseDownload: writing urls map cleared");
            }
            Set<String> set = this.mDownloadingUrls;
            if (set != null) {
                set.clear();
                LogUtils.d(TAG, "releaseDownload: downloading urls cleared");
            }
            ConcurrentHashMap<String, CopyOnWriteArrayList<DownloadListener>> concurrentHashMap2 = this.mDownloadListeners;
            if (concurrentHashMap2 != null) {
                concurrentHashMap2.clear();
                LogUtils.d(TAG, "releaseDownload: download listeners cleared");
            }
            LogUtils.d(TAG, "releaseDownload: completed");
        } catch (Exception e10) {
            LogUtils.e(TAG, "releaseDownload error: " + e10.getMessage());
        }
    }

    public void removeDownloadListener(String str, DownloadListener downloadListener) {
        CopyOnWriteArrayList<DownloadListener> copyOnWriteArrayList;
        if (TextUtils.isEmpty(str) || downloadListener == null || (copyOnWriteArrayList = this.mDownloadListeners.get(str)) == null) {
            return;
        }
        copyOnWriteArrayList.remove(downloadListener);
        LogUtils.d(TAG, "removeDownloadListener: removed listener for " + str + ", remaining listeners: " + copyOnWriteArrayList.size());
        if (copyOnWriteArrayList.isEmpty()) {
            this.mDownloadListeners.remove(str);
        }
    }

    public void setCacheMaxSize(int i10) {
        if (i10 > 0) {
            this.mCacheMaxSizeMB = i10;
            LogUtils.d(TAG, "setCacheMaxSize: cache max size set to " + i10 + "MB");
            return;
        }
        this.mCacheMaxSizeMB = 100;
        LogUtils.d(TAG, "setCacheMaxSize: invalid size (" + i10 + "), using default 100MB");
    }

    public void startCacheCleanup(Context context) {
        if (!this.mIsCleaningCache.compareAndSet(false, true)) {
            LogUtils.d(TAG, "startCacheCleanup: skip, cleanup task is already running");
            return;
        }
        if (this.mCacheCleanupExecutor == null) {
            if (context == null) {
                LogUtils.e(TAG, "startCacheCleanup: context is null, required for initialization");
                this.mIsCleaningCache.set(false);
                return;
            }
            LogUtils.d(TAG, "startCacheCleanup: auto initializing cache cleanup components...");
            initCleanup(context.getApplicationContext());
            if (this.mCacheCleanupExecutor == null) {
                LogUtils.e(TAG, "startCacheCleanup: cleanup executor init failed");
                this.mIsCleaningCache.set(false);
                return;
            }
        }
        this.mCacheCleanupExecutor.execute(new Runnable() { // from class: com.haima.hmcp.virtual.HmNetworkBitmapLoader.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HmNetworkBitmapLoader.this.checkCacheSize();
                } finally {
                    HmNetworkBitmapLoader.this.mIsCleaningCache.set(false);
                    LogUtils.d(HmNetworkBitmapLoader.TAG, "startCacheCleanup: cleanup task completed, flag reset");
                }
            }
        });
        LogUtils.d(TAG, "startCacheCleanup: scheduled cache cleanup task (low priority, independent)");
    }
}
