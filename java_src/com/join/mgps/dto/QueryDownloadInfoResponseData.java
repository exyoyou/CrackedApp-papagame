package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class QueryDownloadInfoResponseData implements Serializable {
    private long actualSize;
    private String btnStatus;
    private String downloadHTML;
    private List<String> downloadHtmls;
    private String downloadURL;
    private boolean forceShow;
    private String gameId;
    private String gameName;
    private long resourceSize;
    private String resourceURL;
    private boolean selectedNextTips;
    private boolean selectedUserProtocol;
    private String subTitle;
    private String title;
    private String userProtocolTxt;
    private String userProtocolURL;
    private String ver;
    private String ver_name;

    public long getActualSize() {
        return this.actualSize;
    }

    public String getBtnStatus() {
        return this.btnStatus;
    }

    public String getDownloadHTML() {
        return this.downloadHTML;
    }

    public List<String> getDownloadHtmls() {
        return this.downloadHtmls;
    }

    public String getDownloadURL() {
        return this.downloadURL;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGameName() {
        return this.gameName;
    }

    public long getResourceSize() {
        return this.resourceSize;
    }

    public String getResourceURL() {
        return this.resourceURL;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUserProtocolTxt() {
        return this.userProtocolTxt;
    }

    public String getUserProtocolURL() {
        return this.userProtocolURL;
    }

    public String getVer() {
        return this.ver;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    public boolean isForceShow() {
        return this.forceShow;
    }

    public boolean isSelectedNextTips() {
        return this.selectedNextTips;
    }

    public boolean isSelectedUserProtocol() {
        return this.selectedUserProtocol;
    }

    public void setActualSize(long actualSize) {
        this.actualSize = actualSize;
    }

    public void setBtnStatus(String btnStatus) {
        this.btnStatus = btnStatus;
    }

    public void setDownloadHTML(String downloadHTML) {
        this.downloadHTML = downloadHTML;
    }

    public void setDownloadHtmls(List<String> downloadHtmls) {
        this.downloadHtmls = downloadHtmls;
    }

    public void setDownloadURL(String downloadURL) {
        this.downloadURL = downloadURL;
    }

    public void setForceShow(boolean forceShow) {
        this.forceShow = forceShow;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public void setResourceSize(long resourceSize) {
        this.resourceSize = resourceSize;
    }

    public void setResourceURL(String resourceURL) {
        this.resourceURL = resourceURL;
    }

    public void setSelectedNextTips(boolean selectedNextTips) {
        this.selectedNextTips = selectedNextTips;
    }

    public void setSelectedUserProtocol(boolean selectedUserProtocol) {
        this.selectedUserProtocol = selectedUserProtocol;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setUserProtocolTxt(String userProtocolTxt) {
        this.userProtocolTxt = userProtocolTxt;
    }

    public void setUserProtocolURL(String userProtocolURL) {
        this.userProtocolURL = userProtocolURL;
    }

    public void setVer(String ver) {
        this.ver = ver;
    }

    public void setVer_name(String ver_name) {
        this.ver_name = ver_name;
    }
}
