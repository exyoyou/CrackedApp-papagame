package com.haima.hmcp.beans;

import com.haima.hmcp.Constants;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class FileUploadBean {
    public static final int FILE_SEGMENT_SIZE = 204800;
    private static final String TAG = "FileUploadBean";
    public static final int UPLOAD_RETRY_TIMES = 3;
    public byte[] blockData;
    public long blockIndex;
    public String blockMd5;
    public int blockSize;
    public String cloudPath;
    public String md5;
    public String name;
    public String path;
    public int retryCount = 0;
    public long size;
    public long totalBlocks;
    public int type;

    public long getIntervalTime() {
        long j10 = 1000 / ((long) 5);
        LogUtils.d(TAG, " getIntervalTime = " + j10);
        return j10;
    }

    public String getPathName() {
        if (!Constants.CONFIG_IS_UPLOAD_PATH_CONTAINS_NAME) {
            return this.path + this.name;
        }
        LogUtils.d(TAG, "internalUploadX86:path contains name path=" + this.path);
        return this.path;
    }

    public boolean isUploadFinish() {
        return this.blockIndex == this.totalBlocks - 1;
    }

    public void resetRetryConfig() {
        this.retryCount = 0;
    }
}
