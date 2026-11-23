package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.CheckCloudServiceResult;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface OnGameIsAliveListener {
    void fail(String str);

    void success(List<CheckCloudServiceResult.ChannelInfo> list);
}
