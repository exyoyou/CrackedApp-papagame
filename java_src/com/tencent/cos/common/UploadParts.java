package com.tencent.cos.common;

/* JADX INFO: loaded from: classes2.dex */
public final class UploadParts {
    private static UploadParts key;
    public final String OFFSET = "offset";
    public final String DATA_LEN = COSHttpResponseKey.Data.DATALEN;
    public final String DATA_SHA = "datasha";

    private UploadParts() {
    }

    public static synchronized UploadParts getInstance() {
        if (key == null) {
            key = new UploadParts();
        }
        return key;
    }
}
