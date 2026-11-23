package com.kwad.sdk.resourceCache.model;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.commercial.c.a;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class WarmUpReportMessage extends a implements Serializable {
    public static final int STATUS_DOWNLOAD_FAILED = 3;
    public static final int STATUS_DOWNLOAD_SUCCESS = 2;
    public static final int STATUS_MD5_ERROR = 4;
    public static final int STATUS_START = 1;
    public static final int STATUS_UNZIP_FAILED = 6;
    public static final int STATUS_UNZIP_SUCCESS = 5;
    public static final int UNZIP_ERROR_FILE_NOT_EXIST = 2;
    public static final int UNZIP_ERROR_MD5_NOT_MATCH = 1;
    public static final int UNZIP_ERROR_UNKNOWN = 0;
    private static final long serialVersionUID = 368743526206619387L;
    public String configItems;
    public int downloadStatus;
    public long freeDisk;
    public String localItems;
    public String resourceKey;
    public int resourceType;
    public String url;
    public String zipFileMd5;

    public WarmUpReportMessage setConfigItems(String str) {
        this.configItems = str;
        return this;
    }

    public WarmUpReportMessage setDownloadStatus(int i10) {
        this.downloadStatus = i10;
        return this;
    }

    public WarmUpReportMessage setFreeDisk(long j10) {
        this.freeDisk = j10;
        return this;
    }

    public WarmUpReportMessage setLocalItems(String str) {
        this.localItems = str;
        return this;
    }

    public WarmUpReportMessage setResourceKey(String str) {
        this.resourceKey = str;
        return this;
    }

    public WarmUpReportMessage setResourceType(int i10) {
        this.resourceType = i10;
        return this;
    }

    public WarmUpReportMessage setUrl(String str) {
        this.url = str;
        return this;
    }

    public WarmUpReportMessage setZipFileMd5(String str) {
        this.zipFileMd5 = str;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    public WarmUpReportMessage setErrorCode(int i10) {
        this.errorCode = i10;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    public WarmUpReportMessage setErrorMsg(String str) {
        this.errorMsg = str;
        return this;
    }
}
