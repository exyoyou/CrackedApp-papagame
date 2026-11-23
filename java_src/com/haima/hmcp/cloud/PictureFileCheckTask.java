package com.haima.hmcp.cloud;

import androidx.collection.ArrayMap;

/* JADX INFO: loaded from: classes5.dex */
class PictureFileCheckTask extends BaseFileTypeCheckTask {
    PictureFileCheckTask() {
    }

    @Override // com.haima.hmcp.cloud.BaseFileTypeCheckTask
    protected ArrayMap<String, String> getFileHeaderTypeMap() {
        ArrayMap<String, String> arrayMap = new ArrayMap<>();
        arrayMap.put("jpg", "image/jpeg");
        arrayMap.put("png", "image/png");
        return arrayMap;
    }

    @Override // com.haima.hmcp.cloud.BaseFileTypeCheckTask
    protected ArrayMap<String, String> getFileSuffixMap() {
        ArrayMap<String, String> arrayMap = new ArrayMap<>();
        arrayMap.put("jpg", "jpg");
        arrayMap.put("png", "png");
        return arrayMap;
    }
}
