package com.haima.hmcp.cloud.video.bean;

import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.enums.DownloadMode;
import com.haima.hmcp.listeners.DownloadCallback;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DownloadTransferData {
    public String cid;
    public DownloadCallback downloadCallback;
    public DownloadMode downloadMode;
    public List<CloudFile> files;
}
