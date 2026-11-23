package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameTransferBean {
    String filePath;
    String fileType;
    String gameName;
    String iconUrl;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    String f68071id;
    int progerss;
    boolean selectedTransfer;
    String size;
    int transferStatus;

    public String getFilePath() {
        return this.filePath;
    }

    public String getFileType() {
        return this.fileType;
    }

    public String getGameName() {
        return this.gameName;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public String getId() {
        return this.f68071id;
    }

    public int getProgerss() {
        return this.progerss;
    }

    public String getSize() {
        return this.size;
    }

    public int getTransferStatus() {
        return this.transferStatus;
    }

    public boolean isSelectedTransfer() {
        return this.selectedTransfer;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public void setIconUrl(String iconUrl) {
        this.iconUrl = iconUrl;
    }

    public void setId(String id2) {
        this.f68071id = id2;
    }

    public void setProgerss(int progerss) {
        this.progerss = progerss;
    }

    public void setSelectedTransfer(boolean selectedTransfer) {
        this.selectedTransfer = selectedTransfer;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public void setTransferStatus(int transferStatus) {
        this.transferStatus = transferStatus;
    }
}
