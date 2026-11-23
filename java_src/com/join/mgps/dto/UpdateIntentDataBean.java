package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.db.tables.EMUApkTable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class UpdateIntentDataBean implements Serializable {
    private DownloadTask downloadTask;
    private EMUApkTable emuApkTable;
    private boolean isFight;
    private boolean peizhiMustUpdate;
    private boolean peizhiNewUpdate;
    private boolean romeMustUpdate;
    private boolean romeNewUpdate;
    private boolean sourceMustUpdate;
    private boolean sourceNewUpdate;

    public UpdateIntentDataBean() {
    }

    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    public EMUApkTable getEmuApkTable() {
        return this.emuApkTable;
    }

    public boolean isFight() {
        return this.isFight;
    }

    public boolean isPeizhiMustUpdate() {
        return this.peizhiMustUpdate;
    }

    public boolean isPeizhiNewUpdate() {
        return this.peizhiNewUpdate;
    }

    public boolean isRomeMustUpdate() {
        return this.romeMustUpdate;
    }

    public boolean isRomeNewUpdate() {
        return this.romeNewUpdate;
    }

    public boolean isSourceMustUpdate() {
        return this.sourceMustUpdate;
    }

    public boolean isSourceNewUpdate() {
        return this.sourceNewUpdate;
    }

    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    public void setEmuApkTable(EMUApkTable emuApkTable) {
        this.emuApkTable = emuApkTable;
    }

    public void setFight(boolean isFight) {
        this.isFight = isFight;
    }

    public void setPeizhiMustUpdate(boolean peizhiMustUpdate) {
        this.peizhiMustUpdate = peizhiMustUpdate;
    }

    public void setPeizhiNewUpdate(boolean peizhiNewUpdate) {
        this.peizhiNewUpdate = peizhiNewUpdate;
    }

    public void setRomeMustUpdate(boolean romeMustUpdate) {
        this.romeMustUpdate = romeMustUpdate;
    }

    public void setRomeNewUpdate(boolean romeNewUpdate) {
        this.romeNewUpdate = romeNewUpdate;
    }

    public void setSourceMustUpdate(boolean sourceMustUpdate) {
        this.sourceMustUpdate = sourceMustUpdate;
    }

    public void setSourceNewUpdate(boolean sourceNewUpdate) {
        this.sourceNewUpdate = sourceNewUpdate;
    }

    public UpdateIntentDataBean(boolean romeMustUpdate, boolean romeNewUpdate, boolean peizhiMustUpdate, boolean peizhiNewUpdate, boolean sourceMustUpdate, boolean sourceNewUpdate, DownloadTask downloadTask, EMUApkTable emuApkTable, boolean isFight) {
        this.romeMustUpdate = romeMustUpdate;
        this.romeNewUpdate = romeNewUpdate;
        this.peizhiMustUpdate = peizhiMustUpdate;
        this.peizhiNewUpdate = peizhiNewUpdate;
        this.sourceMustUpdate = sourceMustUpdate;
        this.sourceNewUpdate = sourceNewUpdate;
        this.downloadTask = downloadTask;
        this.emuApkTable = emuApkTable;
        this.isFight = isFight;
    }
}
