package com.haima.hmcp.cloud.video.bean;

import android.text.TextUtils;
import android.util.Log;
import com.haima.hmcp.Constants;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DownloadConfig {
    public static final String[] CONTENT_LIST_DEFAULT = {"application/octet-stream", "image/jpeg"};
    public static final String CONTENT_TYPE_JPEG = "image/jpeg";
    public static final String CONTENT_TYPE_STREAM = "application/octet-stream";
    public static final int KEEP_ALIVE_TIME_MAX = 3600;
    public static final int KEEP_ALIVE_TIME_MIN = 60;
    public static final int PROGRESS_FREEZE_COUNT = 10;
    private static final String TAG = "DownloadConfig";
    public List<String> contentTypeList;
    public Long[] downloadRetryStrategy;
    public int keepAliveDefaultTime;
    public Long[] keepAliveRetryStrategy;
    public Long[] keepAliveWaitStrategy;
    public long progressCheckInterval;
    public int progressFreezeCounts;

    public DownloadConfig() {
        this.keepAliveDefaultTime = 1800;
        this.progressCheckInterval = 1000L;
        this.progressFreezeCounts = 10;
        this.keepAliveRetryStrategy = new Long[]{1000L, Long.valueOf(BaseCloudFileManager.ACK_TIMEOUT), 5000L};
        this.keepAliveWaitStrategy = new Long[]{15000L, 15000L, 15000L};
        this.contentTypeList = new ArrayList(Arrays.asList(CONTENT_LIST_DEFAULT));
        this.downloadRetryStrategy = new Long[]{2000L, 2000L, 2000L};
    }

    private void parseConfig(HashMap<String, String> map) {
        String[] strArrSplit;
        String[] strArrSplit2;
        String[] strArrSplit3;
        this.keepAliveDefaultTime = 1800;
        if (map.containsKey(Constants.KEEP_ALIVE_DEFAULT_TIME)) {
            String str = map.get(Constants.KEEP_ALIVE_DEFAULT_TIME);
            LogUtils.d(TAG, "download-file:  config -> keep_alive_default_time = " + str);
            if (!TextUtils.isEmpty(str)) {
                try {
                    int i10 = Integer.parseInt(str);
                    if (i10 < 600 || i10 > 3600) {
                        this.keepAliveDefaultTime = 1800;
                    } else {
                        this.keepAliveDefaultTime = i10;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        this.progressCheckInterval = 1000L;
        if (map.containsKey(Constants.PROGRESS_CHECK_INTERVAL)) {
            String str2 = map.get(Constants.PROGRESS_CHECK_INTERVAL);
            LogUtils.d(TAG, "download-file:  config -> progress_check_interval = " + str2);
            if (!TextUtils.isEmpty(str2)) {
                try {
                    long j10 = Long.parseLong(str2);
                    if (j10 > 1000) {
                        this.progressCheckInterval = j10;
                    } else {
                        this.progressCheckInterval = 1000L;
                    }
                } catch (NumberFormatException unused2) {
                }
            }
        }
        this.progressFreezeCounts = 10;
        if (map.containsKey(Constants.PROGRESS_FREEZE_COUNTS)) {
            String str3 = map.get(Constants.PROGRESS_FREEZE_COUNTS);
            LogUtils.d(TAG, "download-file:  config -> progress_freeze_counts = " + str3);
            if (!TextUtils.isEmpty(str3)) {
                try {
                    int i11 = Integer.parseInt(str3);
                    if (i11 > 0) {
                        this.progressFreezeCounts = i11;
                    } else {
                        this.progressFreezeCounts = 10;
                    }
                } catch (NumberFormatException unused3) {
                }
            }
        }
        this.keepAliveRetryStrategy = new Long[]{1000L, Long.valueOf(BaseCloudFileManager.ACK_TIMEOUT), 5000L};
        if (map.containsKey(Constants.KEEP_ALIVE_RETRY_STRATEGY)) {
            String str4 = map.get(Constants.KEEP_ALIVE_RETRY_STRATEGY);
            LogUtils.d(TAG, "download-file:  config -> keep_alive_retry_strategy = " + str4);
            if (!TextUtils.isEmpty(str4) && (strArrSplit3 = str4.split(",")) != null && strArrSplit3.length > 0) {
                ArrayList arrayList = new ArrayList();
                int i12 = 0;
                for (String str5 : strArrSplit3) {
                    if (!TextUtils.isEmpty(str5)) {
                        int i13 = i12 + 1;
                        try {
                            long j11 = Long.parseLong(str5);
                            if (j11 >= 1000) {
                                arrayList.add(Long.valueOf(j11));
                            } else {
                                arrayList.add(Long.valueOf(((((long) i13) * 2) - 1) * 1000));
                            }
                        } catch (NumberFormatException e10) {
                            LogUtils.d(TAG, "download-file:  " + ("config -> keep_alive_retry_strategy parse error: " + Log.getStackTraceString(e10)));
                            arrayList.add(Long.valueOf(((((long) i13) * 2) - 1) * 1000));
                        }
                        i12 = i13;
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.keepAliveRetryStrategy = (Long[]) arrayList.toArray(new Long[arrayList.size()]);
                }
            }
        }
        this.keepAliveWaitStrategy = new Long[]{15000L, 15000L, 15000L};
        if (map.containsKey(Constants.KEEP_ALIVE_WAIT_STRATEGY)) {
            String str6 = map.get(Constants.KEEP_ALIVE_WAIT_STRATEGY);
            LogUtils.d(TAG, "download-file:  config -> keep_alive_wait_strategy = " + str6);
            if (!TextUtils.isEmpty(str6) && (strArrSplit2 = str6.split(",")) != null && strArrSplit2.length > 0) {
                ArrayList arrayList2 = new ArrayList();
                for (String str7 : strArrSplit2) {
                    if (!TextUtils.isEmpty(str7)) {
                        try {
                            long j12 = Long.parseLong(str7);
                            if (j12 >= 1000) {
                                arrayList2.add(Long.valueOf(j12));
                            } else {
                                arrayList2.add(15000L);
                            }
                        } catch (NumberFormatException e11) {
                            LogUtils.d(TAG, "download-file:  " + ("config -> keep_alive_wait_strategy parse error: " + Log.getStackTraceString(e11)));
                            arrayList2.add(15000L);
                        }
                    }
                }
                if (!arrayList2.isEmpty()) {
                    this.keepAliveWaitStrategy = (Long[]) arrayList2.toArray(new Long[arrayList2.size()]);
                }
            }
        }
        this.contentTypeList.clear();
        if (map.containsKey(Constants.CONTENT_TYPE_LIST)) {
            String str8 = map.get(Constants.CONTENT_TYPE_LIST);
            LogUtils.d(TAG, "download-file:  config -> content_type_list = " + str8);
            if (!TextUtils.isEmpty(str8)) {
                if ("all".contains(str8.toLowerCase())) {
                    this.contentTypeList.add("all");
                } else {
                    String[] strArrSplit4 = str8.split(",");
                    if (strArrSplit4.length > 0) {
                        for (String str9 : strArrSplit4) {
                            if (!TextUtils.isEmpty(str9)) {
                                this.contentTypeList.add(str9);
                            }
                        }
                    }
                }
            }
        }
        if (this.contentTypeList.isEmpty()) {
            this.contentTypeList = new ArrayList(Arrays.asList(CONTENT_LIST_DEFAULT));
        }
        this.downloadRetryStrategy = new Long[]{2000L, 2000L, 2000L};
        if (map.containsKey(Constants.DOWNLOAD_RETRY_STRATEGY)) {
            String str10 = map.get(Constants.DOWNLOAD_RETRY_STRATEGY);
            LogUtils.d(TAG, "download-file:  config -> download_retry_strategy = " + str10);
            if (TextUtils.isEmpty(str10) || (strArrSplit = str10.split(",")) == null || strArrSplit.length <= 0) {
                return;
            }
            ArrayList arrayList3 = new ArrayList();
            for (String str11 : strArrSplit) {
                if (!TextUtils.isEmpty(str11)) {
                    try {
                        long j13 = Long.parseLong(str11);
                        if (j13 >= 1000) {
                            arrayList3.add(Long.valueOf(j13));
                        } else {
                            arrayList3.add(2000L);
                        }
                    } catch (NumberFormatException e12) {
                        LogUtils.d(TAG, "download-file:  " + ("config -> download_retry_strategy parse error: " + Log.getStackTraceString(e12)));
                        arrayList3.add(2000L);
                    }
                }
            }
            if (arrayList3.isEmpty()) {
                return;
            }
            this.downloadRetryStrategy = (Long[]) arrayList3.toArray(new Long[arrayList3.size()]);
        }
    }

    public String toString() {
        return "DownloadConfig{keepAliveDefaultTime=" + this.keepAliveDefaultTime + ", progressCheckInterval=" + this.progressCheckInterval + ", progressFreezeCounts=" + this.progressFreezeCounts + ", keepAliveRetryStrategy=" + Arrays.toString(this.keepAliveRetryStrategy) + ", keepAliveWaitStrategy=" + Arrays.toString(this.keepAliveWaitStrategy) + ", contentTypeList=" + this.contentTypeList + '}';
    }

    public DownloadConfig(HashMap<String, String> map) {
        this.keepAliveDefaultTime = 1800;
        this.progressCheckInterval = 1000L;
        this.progressFreezeCounts = 10;
        this.keepAliveRetryStrategy = new Long[]{1000L, Long.valueOf(BaseCloudFileManager.ACK_TIMEOUT), 5000L};
        this.keepAliveWaitStrategy = new Long[]{15000L, 15000L, 15000L};
        this.contentTypeList = new ArrayList(Arrays.asList(CONTENT_LIST_DEFAULT));
        this.downloadRetryStrategy = new Long[]{2000L, 2000L, 2000L};
        parseConfig(map);
    }
}
