package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.RtcSeiData;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ISeiListener {
    void onData(List<RtcSeiData> list);
}
