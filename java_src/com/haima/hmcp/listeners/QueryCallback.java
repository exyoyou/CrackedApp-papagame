package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.CloudFile;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface QueryCallback {
    void onQuery(List<CloudFile> list);

    void onQueryFail(int i10, String str);
}
