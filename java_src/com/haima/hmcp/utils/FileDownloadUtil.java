package com.haima.hmcp.utils;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class FileDownloadUtil {
    public static final float SPEED_COEFFICIENT = 1.0f;
    private static final String TAG = "FileDownloadUtil";
    private OnSpeedTestCompletionListener mOnSpeedTestCompletionListener;
    private SpeedGather.URLInfo speedInfo;
    public boolean isAllowDownloadFlag = true;
    public int retry = 0;
    private boolean stopSpeedTest = false;

    public interface OnSpeedTestCompletionListener {
        void onCompletion(float f10, SpeedGather speedGather);
    }

    public FileDownloadUtil(Context context) {
        if (TextUtils.isEmpty(FileUtil.S_DEFAULT_STORAGE_PATH)) {
            String storagePath = FileUtil.getStoragePath(context);
            if (TextUtils.isEmpty(storagePath)) {
                return;
            }
            FileUtil.S_DEFAULT_STORAGE_PATH = storagePath + File.separator;
        }
    }

    public void advertDownloadFile(final Context context, final String str, final String str2) {
        if (TextUtils.isEmpty(str)) {
            LogUtils.i(TAG, "advert_url_isEmpty");
            DataUtils.getSharedInstance(context).putPreferences(DataUtils.ADVERT_NAME, "");
            return;
        }
        if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74786j) != 0) {
            LogUtils.d(TAG, "advertDownloadFile PERMISSION_GRANTED !");
            return;
        }
        if (TextUtils.isEmpty(FileUtil.S_DEFAULT_STORAGE_PATH)) {
            LogUtils.e(TAG, "S_DEFAULT_STORAGE_PATH is null !");
            return;
        }
        final String str3 = FileUtil.S_DEFAULT_STORAGE_PATH + str2;
        final File file = new File(str3);
        String preferences = DataUtils.getSharedInstance(context).getPreferences(DataUtils.ADVERT_NAME, "");
        if (file.exists() && TextUtils.equals(preferences, str2)) {
            LogUtils.i(TAG, "advert_file_exists");
            return;
        }
        CountlyUtil.recordEvent(Constants.COUNTYLY_VIDEO_TITLE_LOADING_START);
        final File file2 = new File(FileUtil.S_DEFAULT_STORAGE_PATH + preferences);
        if (!file2.exists()) {
            DataUtils.getSharedInstance(context).putPreferences(DataUtils.ADVERT_NAME, "");
        }
        new Thread() { // from class: com.haima.hmcp.utils.FileDownloadUtil.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                FileDownloadUtil fileDownloadUtil = FileDownloadUtil.this;
                fileDownloadUtil.retry = 0;
                if (!fileDownloadUtil.downFile(context, file, str, str3, str2)) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_VIDEO_TITLE_LOADING_FAIL);
                    return;
                }
                LogUtils.i(FileDownloadUtil.TAG, "advert_download_finshed =" + str3);
                File file3 = file2;
                if (file3 != null && file3.exists()) {
                    file2.delete();
                }
                DataUtils.getSharedInstance(context).putPreferences(DataUtils.ADVERT_NAME, str2);
                CountlyUtil.recordEvent(Constants.COUNTYLY_VIDEO_TITLE_LOADING_SUCCESS);
                FileDownloadUtil.this.retry = 0;
            }
        }.start();
    }

    /* JADX WARN: Code duplicated, block: B:60:0x0156 A[Catch: Exception -> 0x0152, all -> 0x01d8, TRY_LEAVE, TryCatch #7 {Exception -> 0x0152, blocks: (B:56:0x014e, B:60:0x0156), top: B:96:0x014e, outer: #3 }] */
    public synchronized boolean downFile(Context context, File file, String str, String str2, String str3) {
        boolean z10;
        try {
            this.isAllowDownloadFlag = true;
            InputStream inputStream = null;
            FileOutputStream fileOutputStream = null;
            z10 = false;
            while (!z10 && this.retry < 3 && this.isAllowDownloadFlag) {
                try {
                    try {
                        File file2 = new File(FileUtil.S_DEFAULT_STORAGE_PATH);
                        if (!file2.exists()) {
                            file2.mkdir();
                        }
                        if (file != null) {
                            file.createNewFile();
                        }
                        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
                        uRLConnectionOpenConnection.setConnectTimeout(5000);
                        inputStream = uRLConnectionOpenConnection.getInputStream();
                        byte[] bArr = new byte[1024];
                        FileOutputStream fileOutputStream2 = new FileOutputStream(str2);
                        while (true) {
                            try {
                                int i10 = inputStream.read(bArr);
                                if (i10 == -1 || !this.isAllowDownloadFlag) {
                                    break;
                                }
                                fileOutputStream2.write(bArr, 0, i10);
                            } catch (Exception e10) {
                                e = e10;
                                fileOutputStream = fileOutputStream2;
                                LogUtils.i(TAG, str + "DownloadFile Exception " + this.retry);
                                e.printStackTrace();
                                if (file != null) {
                                    file.delete();
                                }
                                int i11 = this.retry;
                                if (i11 < 3 && this.isAllowDownloadFlag) {
                                    this.retry = i11 + 1;
                                }
                                CountlyUtil.recordErrorEvent(str + "DownloadFile1::" + Log.getStackTraceString(e));
                                LogUtils.i(TAG, str + "DownloadFile finally " + this.retry);
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                    } catch (Exception e11) {
                                        e11.printStackTrace();
                                        CountlyUtil.recordErrorEvent(str + "DownloadFile2::" + Log.getStackTraceString(e11));
                                        if (this.isAllowDownloadFlag || this.retry >= 3) {
                                            this.isAllowDownloadFlag = false;
                                        }
                                    }
                                } else if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (this.isAllowDownloadFlag) {
                                }
                                this.isAllowDownloadFlag = false;
                            } catch (Throwable th) {
                                th = th;
                                fileOutputStream = fileOutputStream2;
                                LogUtils.i(TAG, str + "DownloadFile finally " + this.retry);
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (Exception e12) {
                                        e12.printStackTrace();
                                        CountlyUtil.recordErrorEvent(str + "DownloadFile2::" + Log.getStackTraceString(e12));
                                        if (!this.isAllowDownloadFlag && this.retry < 3) {
                                            throw th;
                                        }
                                        this.isAllowDownloadFlag = false;
                                        throw th;
                                    }
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (!this.isAllowDownloadFlag) {
                                }
                                this.isAllowDownloadFlag = false;
                                throw th;
                            }
                        }
                        if (this.isAllowDownloadFlag) {
                            LogUtils.i(TAG, str + ":download_finshed = " + str2);
                            this.retry = 0;
                            z10 = true;
                        } else {
                            if (file != null) {
                                file.delete();
                            }
                            LogUtils.i(TAG, str + ":stop_download");
                        }
                        LogUtils.i(TAG, str + "DownloadFile finally " + this.retry);
                        try {
                            fileOutputStream2.close();
                            inputStream.close();
                        } catch (Exception e13) {
                            e13.printStackTrace();
                            CountlyUtil.recordErrorEvent(str + "DownloadFile2::" + Log.getStackTraceString(e13));
                        }
                        if (!this.isAllowDownloadFlag || this.retry >= 3) {
                            this.isAllowDownloadFlag = false;
                        }
                        fileOutputStream = fileOutputStream2;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception e14) {
                    e = e14;
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return z10;
    }

    public boolean downloadImage(final Context context, final String str) {
        LogUtils.i(TAG, "downloadImage url =" + str);
        if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74786j) != 0) {
            LogUtils.d(TAG, "downloadImage PERMISSION_GRANTED !");
            return false;
        }
        if (TextUtils.isEmpty(FileUtil.S_DEFAULT_STORAGE_PATH)) {
            LogUtils.e(TAG, "S_DEFAULT_STORAGE_PATH is null !");
            return false;
        }
        final String strMd5 = CryptoUtils.md5(str);
        final String str2 = FileUtil.S_DEFAULT_STORAGE_PATH + strMd5;
        final File file = new File(str2);
        String preferences = DataUtils.getSharedInstance(context).getPreferences(str, "");
        LogUtils.d(TAG, "oldFileName = " + preferences);
        if (file.exists() && TextUtils.equals(preferences, str2)) {
            LogUtils.i(TAG, "Image_file_exists");
            return true;
        }
        new Thread() { // from class: com.haima.hmcp.utils.FileDownloadUtil.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                FileDownloadUtil fileDownloadUtil = FileDownloadUtil.this;
                fileDownloadUtil.retry = 2;
                if (fileDownloadUtil.downFile(context, file, str, str2, strMd5)) {
                    DataUtils.getSharedInstance(context).putPreferences(str, str2);
                }
            }
        }.start();
        return false;
    }

    public void setURLInfo(SpeedGather.URLInfo uRLInfo) {
        this.speedInfo = uRLInfo;
        LogUtils.i(TAG, "url: " + uRLInfo.url + ", " + uRLInfo.playTime + "standardDeviationCoefficient = " + uRLInfo.standardDeviationCoefficient + ",    skipNumber: " + uRLInfo.skipNumber + ", peakRateCoefficient " + uRLInfo.peakRateCoefficient);
    }

    public void speedTest(Context context, final OnSpeedTestCompletionListener onSpeedTestCompletionListener) {
        LogUtils.d(TAG, "speed test->prepare to speed test");
        final HashMap map = new HashMap();
        map.put("status", "prepare");
        CountlyUtil.recordEvent(Constants.COUNTLY_SPEED_TEST_STATUS, JsonUtil.getJsonObj(map).toString());
        this.stopSpeedTest = false;
        this.mOnSpeedTestCompletionListener = onSpeedTestCompletionListener;
        new Thread() { // from class: com.haima.hmcp.utils.FileDownloadUtil.3
            /* JADX WARN: Code duplicated, block: B:85:0x02b3  */
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Object obj;
                Object obj2;
                String str;
                long j10;
                long totalDownloadLen;
                float f10;
                String str2;
                String str3 = "speed test->";
                LogUtils.d(FileDownloadUtil.TAG, "speed test->speed test is running");
                map.clear();
                map.put("status", "running");
                String string = JsonUtil.getJsonObj(map).toString();
                String str4 = Constants.COUNTLY_SPEED_TEST_STATUS;
                CountlyUtil.recordEvent(Constants.COUNTLY_SPEED_TEST_STATUS, string);
                try {
                    long j11 = FileDownloadUtil.this.speedInfo.playTime * 1000;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("speed test->we have ");
                    sb2.append(2);
                    sb2.append(" thread to down file.");
                    LogUtils.i(FileDownloadUtil.TAG, sb2.toString());
                    URLConnection[] uRLConnectionArr = new URLConnection[2];
                    ThreadProgressTracker threadProgressTracker = new ThreadProgressTracker();
                    ArrayList arrayList = new ArrayList();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    int i10 = 0;
                    for (int i11 = 2; i10 < i11; i11 = 2) {
                        URL url = new URL(FileDownloadUtil.this.speedInfo.url);
                        URLConnection uRLConnectionOpenConnection = url.openConnection();
                        LogUtils.i(FileDownloadUtil.TAG, "speed test->openConnection success  url: " + url);
                        uRLConnectionOpenConnection.setConnectTimeout(1000);
                        uRLConnectionOpenConnection.setReadTimeout(1000);
                        uRLConnectionArr[i10] = uRLConnectionOpenConnection;
                        i10++;
                        str3 = str3;
                    }
                    String str5 = str3;
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                    if (jCurrentTimeMillis2 >= 2000) {
                        LogUtils.i(FileDownloadUtil.TAG, "speed test->speed Timeout");
                        map.clear();
                        map.put("status", "error");
                        map.put("msg", "time out");
                        CountlyUtil.recordEvent(Constants.COUNTLY_SPEED_TEST_STATUS, JsonUtil.getJsonObj(map).toString());
                        if (FileDownloadUtil.this.mOnSpeedTestCompletionListener != null) {
                            FileDownloadUtil.this.mOnSpeedTestCompletionListener.onCompletion(0.0f, null);
                            return;
                        }
                        return;
                    }
                    long j12 = j11 - jCurrentTimeMillis2;
                    obj = "msg";
                    obj2 = "error";
                    try {
                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                        LogUtils.i(FileDownloadUtil.TAG, "speed test->speed running time: " + jCurrentTimeMillis3);
                        for (int i12 = 0; i12 < 2; i12++) {
                            ClientThread clientThread = new ClientThread(uRLConnectionArr[i12], threadProgressTracker);
                            arrayList.add(clientThread);
                            clientThread.start();
                        }
                        int[] iArr = {100};
                        ArrayList arrayList2 = new ArrayList();
                        int i13 = 0;
                        while (i13 < 1) {
                            try {
                                str2 = str4;
                                try {
                                    arrayList2.add(new SpeedGather(iArr[i13], jCurrentTimeMillis3, FileDownloadUtil.this.speedInfo));
                                    i13++;
                                    str4 = str2;
                                    iArr = iArr;
                                } catch (Exception e10) {
                                    e = e10;
                                    str = str2;
                                    if (FileDownloadUtil.this.mOnSpeedTestCompletionListener != null) {
                                        FileDownloadUtil.this.mOnSpeedTestCompletionListener.onCompletion(0.0f, null);
                                    }
                                    e.printStackTrace();
                                    LogUtils.e(FileDownloadUtil.TAG, e.toString());
                                    map.clear();
                                    map.put("status", obj2);
                                    map.put(obj, Log.getStackTraceString(e));
                                    CountlyUtil.recordEvent(str, JsonUtil.getJsonObj(map).toString());
                                }
                            } catch (Exception e11) {
                                e = e11;
                                str2 = str4;
                            }
                        }
                        String str6 = str4;
                        long j13 = 0;
                        boolean z10 = false;
                        while (true) {
                            if (j13 >= j12 || FileDownloadUtil.this.stopSpeedTest) {
                                for (int i14 = 0; i14 < arrayList.size(); i14++) {
                                    ((ClientThread) arrayList.get(i14)).requestExit();
                                }
                                z10 = true;
                            } else {
                                Thread.sleep(10L);
                            }
                            if (threadProgressTracker.getThreadsDone() == arrayList.size()) {
                                z10 = true;
                            }
                            if (z10) {
                                Iterator it2 = arrayList.iterator();
                                while (it2.hasNext()) {
                                    ((ClientThread) it2.next()).join();
                                }
                            }
                            ThreadProgressTracker threadProgressTracker2 = threadProgressTracker;
                            long jCurrentTimeMillis4 = System.currentTimeMillis();
                            long j14 = j12;
                            j10 = jCurrentTimeMillis4 - jCurrentTimeMillis3;
                            long j15 = jCurrentTimeMillis3;
                            totalDownloadLen = 0;
                            for (int i15 = 0; i15 < arrayList.size(); i15++) {
                                totalDownloadLen += ((ClientThread) arrayList.get(i15)).getTotalDownloadLen();
                            }
                            for (int i16 = 0; i16 < arrayList2.size(); i16++) {
                                ((SpeedGather) arrayList2.get(i16)).speedTest(jCurrentTimeMillis4, totalDownloadLen);
                            }
                            if (z10) {
                                break;
                            }
                            threadProgressTracker = threadProgressTracker2;
                            jCurrentTimeMillis3 = j15;
                            j12 = j14;
                            j13 = j10;
                        }
                        if (FileDownloadUtil.this.stopSpeedTest) {
                            f10 = 0.0f;
                        } else {
                            f10 = totalDownloadLen / (j10 / 1000.0f);
                            LogUtils.d(FileDownloadUtil.TAG, "speed test->total_len: " + totalDownloadLen + "; total_time: " + j10 + "; downloadSpeed: " + f10);
                        }
                        LogUtils.d(FileDownloadUtil.TAG, str5 + Thread.currentThread().getName() + " test speed finish, stopSpeedTest:" + FileDownloadUtil.this.stopSpeedTest);
                        if (FileDownloadUtil.this.stopSpeedTest) {
                            FileDownloadUtil.this.stopSpeedTest = false;
                            LogUtils.d(FileDownloadUtil.TAG, str5 + Thread.currentThread().getName() + " is already stop and do not call back");
                            return;
                        }
                        if (FileDownloadUtil.this.mOnSpeedTestCompletionListener != null) {
                            onSpeedTestCompletionListener.onCompletion(f10 / 1000.0f, (SpeedGather) arrayList2.get(0));
                            return;
                        }
                        map.clear();
                        map.put("status", obj2);
                        map.put(obj, "call back is null");
                        str = str6;
                        try {
                            CountlyUtil.recordEvent(str, JsonUtil.getJsonObj(map).toString());
                            return;
                        } catch (Exception e12) {
                            e = e12;
                        }
                    } catch (Exception e13) {
                        e = e13;
                        str = Constants.COUNTLY_SPEED_TEST_STATUS;
                    }
                } catch (Exception e14) {
                    e = e14;
                    obj = "msg";
                    obj2 = "error";
                }
                str = Constants.COUNTLY_SPEED_TEST_STATUS;
                if (FileDownloadUtil.this.mOnSpeedTestCompletionListener != null) {
                    FileDownloadUtil.this.mOnSpeedTestCompletionListener.onCompletion(0.0f, null);
                }
                e.printStackTrace();
                LogUtils.e(FileDownloadUtil.TAG, e.toString());
                map.clear();
                map.put("status", obj2);
                map.put(obj, Log.getStackTraceString(e));
                CountlyUtil.recordEvent(str, JsonUtil.getJsonObj(map).toString());
            }
        }.start();
    }

    public void stopSpeedTest() {
        this.stopSpeedTest = true;
        this.mOnSpeedTestCompletionListener = null;
        LogUtils.d(TAG, "stop speed test by interface called");
    }
}
