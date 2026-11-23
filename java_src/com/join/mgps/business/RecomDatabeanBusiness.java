package com.join.mgps.business;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.dto.RecomDatabean;

/* JADX INFO: loaded from: classes3.dex */
public class RecomDatabeanBusiness extends RecomDatabean {
    private DownloadTask downloadTask;
    private String moretype;
    private long videoSeekCurrent;

    public RecomDatabeanBusiness(RecomDatabean recomDatabean) {
        super(recomDatabean);
    }

    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    public String getMoretype() {
        return this.moretype;
    }

    public long getVideoSeekCurrent() {
        return this.videoSeekCurrent;
    }

    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    public void setMoretype(String moretype) {
        this.moretype = moretype;
    }

    public void setVideoSeekCurrent(long videoSeekCurrent) {
        this.videoSeekCurrent = videoSeekCurrent;
    }
}
