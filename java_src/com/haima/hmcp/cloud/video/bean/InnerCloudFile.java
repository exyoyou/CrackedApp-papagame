package com.haima.hmcp.cloud.video.bean;

import android.text.TextUtils;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.cloud.video.strategy.DownloadRetryStrategy;
import com.haima.hmcp.utils.FileUtil;
import com.join.mgps.Util.o0;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class InnerCloudFile {
    public static final String DOWNLOAD_DEFAULT_PATH;
    public static final String DOWNLOAD_TEMP_FILE_PATH;
    private static final String TAG = "InnerCloudFile";
    public static final String TMP_MAP_NAME = "file-map";
    public CloudFile cloudFile;
    public DownloadRetryStrategy downloadRetryStrategy;
    public String tempFileName;
    public String tempPath;
    public String defaultPath = DOWNLOAD_DEFAULT_PATH;
    public long downloadedSize = 0;
    public boolean isSaveToGallery = false;

    static {
        String str = FileUtil.S_DEFAULT_STORAGE_PATH;
        DOWNLOAD_DEFAULT_PATH = str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("hm");
        String str2 = File.separator;
        sb2.append(str2);
        sb2.append("tmp");
        sb2.append(str2);
        DOWNLOAD_TEMP_FILE_PATH = sb2.toString();
    }

    public static String getDownloadMapFile(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str + File.separator + TMP_MAP_NAME;
    }

    public String getFileSuffix() {
        String name;
        int iLastIndexOf;
        int i10;
        CloudFile cloudFile = this.cloudFile;
        if (cloudFile == null || TextUtils.isEmpty(cloudFile.getName()) || (iLastIndexOf = (name = this.cloudFile.getName()).lastIndexOf(o0.f49827a)) == -1 || (i10 = iLastIndexOf + 1) > name.length()) {
            return null;
        }
        return name.substring(i10);
    }

    public String getTempFileNameWithPath() {
        return this.tempPath + File.separator + this.tempFileName;
    }

    public String toString() {
        return "InnerCloudFile{cloudFile=" + this.cloudFile + ", tempPath='" + this.tempPath + "', defaultPath='" + this.defaultPath + "', tempFileName='" + this.tempFileName + "', downloadedSize=" + this.downloadedSize + '}';
    }
}
