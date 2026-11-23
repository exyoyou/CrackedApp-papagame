package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CloudInfo implements Comparable<CloudInfo> {
    private DownloadTask downloadTask;
    private boolean isSelect;
    private int romArchivedNum;
    private long romArchivedSize;
    private List<RomArchived> romArchiveds;

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        return this.downloadTask.getCrc_link_type_val().equals(((CloudInfo) o10).downloadTask.getCrc_link_type_val());
    }

    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    public int getRomArchivedNum() {
        return this.romArchivedNum;
    }

    public long getRomArchivedSize() {
        return this.romArchivedSize;
    }

    public List<RomArchived> getRomArchiveds() {
        return this.romArchiveds;
    }

    public int hashCode() {
        return this.downloadTask.getCrc_link_type_val().hashCode();
    }

    public boolean isSelect() {
        return this.isSelect;
    }

    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    public void setRomArchivedNum(int romArchivedNum) {
        this.romArchivedNum = romArchivedNum;
    }

    public void setRomArchivedSize(long romArchivedSize) {
        this.romArchivedSize = romArchivedSize;
    }

    public void setRomArchiveds(List<RomArchived> romArchiveds) {
        this.romArchiveds = romArchiveds;
    }

    public void setSelect(boolean select) {
        this.isSelect = select;
    }

    @Override // java.lang.Comparable
    public int compareTo(CloudInfo o10) {
        if (this == o10) {
            return 0;
        }
        return (o10 == null || getDownloadTask().getFinishTime() <= o10.getDownloadTask().getFinishTime()) ? -1 : 1;
    }
}
