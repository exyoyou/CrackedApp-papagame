package com.haima.hmcp.beans;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public class RecordStreamInfo {
    public String filePath;

    public RecordStreamInfo(String str) {
        this.filePath = str;
    }

    @NonNull
    public String toString() {
        return "RecordStreamInfo:" + this.filePath;
    }
}
