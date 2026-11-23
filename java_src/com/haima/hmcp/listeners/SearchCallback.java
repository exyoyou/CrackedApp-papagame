package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.CloudFile;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface SearchCallback {
    void onSearchFail(int i10, String str);

    void onSearched(List<CloudFile> list);
}
