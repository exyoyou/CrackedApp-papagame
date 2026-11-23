package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.db.tables.FightMainTable;
import com.join.mgps.db.tables.WarMatchAndLocalTable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class LoadWarCenterBean {
    private Map<String, DownloadTask> downloadTasksMap;
    private List<FightMainTable> fightMainTables;
    private List<WarMatchAndLocalTable> hotGameInfoDataBeans;
    private List<WarMatchAndLocalTable> pkGameInfoDataBeans;
    private List<WarMatchAndLocalTable> pkLocalInfoDataBeans;
    private List<WarMatchAndLocalTable> pkMatchingInfoDataBeans;
    private List<WarMatchAndLocalTable> pkPassInfoDataBeans;
    private List<WarMatchAndLocalTable> pkRoomInfoDataBeans;
    private List<WarMatchAndLocalTable> waradInfoDataBeans;

    public LoadWarCenterBean() {
        this.downloadTasksMap = new ConcurrentHashMap();
        this.fightMainTables = new ArrayList();
        this.waradInfoDataBeans = new ArrayList();
        this.hotGameInfoDataBeans = new ArrayList();
        this.pkGameInfoDataBeans = new ArrayList();
        this.pkPassInfoDataBeans = new ArrayList();
        this.pkMatchingInfoDataBeans = new ArrayList();
        this.pkLocalInfoDataBeans = new ArrayList();
        this.pkRoomInfoDataBeans = new ArrayList();
    }

    public Map<String, DownloadTask> getDownloadTasksMap() {
        return this.downloadTasksMap;
    }

    public List<FightMainTable> getFightMainTables() {
        return this.fightMainTables;
    }

    public List<WarMatchAndLocalTable> getHotGameInfoDataBeans() {
        return this.hotGameInfoDataBeans;
    }

    public List<WarMatchAndLocalTable> getPkGameInfoDataBeans() {
        return this.pkGameInfoDataBeans;
    }

    public List<WarMatchAndLocalTable> getPkLocalInfoDataBeans() {
        return this.pkLocalInfoDataBeans;
    }

    public List<WarMatchAndLocalTable> getPkMatchingInfoDataBeans() {
        return this.pkMatchingInfoDataBeans;
    }

    public List<WarMatchAndLocalTable> getPkPassInfoDataBeans() {
        return this.pkPassInfoDataBeans;
    }

    public List<WarMatchAndLocalTable> getPkRoomInfoDataBeans() {
        return this.pkRoomInfoDataBeans;
    }

    public List<WarMatchAndLocalTable> getWaradInfoDataBeans() {
        return this.waradInfoDataBeans;
    }

    public void setDownloadTasksMap(Map<String, DownloadTask> downloadTasksMap) {
        this.downloadTasksMap = downloadTasksMap;
    }

    public void setFightMainTables(List<FightMainTable> fightMainTables) {
        this.fightMainTables = fightMainTables;
    }

    public void setHotGameInfoDataBeans(List<WarMatchAndLocalTable> hotGameInfoDataBeans) {
        this.hotGameInfoDataBeans = hotGameInfoDataBeans;
    }

    public void setPkGameInfoDataBeans(List<WarMatchAndLocalTable> pkGameInfoDataBeans) {
        this.pkGameInfoDataBeans = pkGameInfoDataBeans;
    }

    public void setPkLocalInfoDataBeans(List<WarMatchAndLocalTable> pkLocalInfoDataBeans) {
        this.pkLocalInfoDataBeans = pkLocalInfoDataBeans;
    }

    public void setPkMatchingInfoDataBeans(List<WarMatchAndLocalTable> pkMatchingInfoDataBeans) {
        this.pkMatchingInfoDataBeans = pkMatchingInfoDataBeans;
    }

    public void setPkPassInfoDataBeans(List<WarMatchAndLocalTable> pkPassInfoDataBeans) {
        this.pkPassInfoDataBeans = pkPassInfoDataBeans;
    }

    public void setPkRoomInfoDataBeans(List<WarMatchAndLocalTable> pkRoomInfoDataBeans) {
        this.pkRoomInfoDataBeans = pkRoomInfoDataBeans;
    }

    public void setWaradInfoDataBeans(List<WarMatchAndLocalTable> waradInfoDataBeans) {
        this.waradInfoDataBeans = waradInfoDataBeans;
    }

    public LoadWarCenterBean(Map<String, DownloadTask> downloadTasksMap, List<FightMainTable> fightMainTables, List<WarMatchAndLocalTable> waradInfoDataBeans, List<WarMatchAndLocalTable> hotGameInfoDataBeans, List<WarMatchAndLocalTable> pkGameInfoDataBeans, List<WarMatchAndLocalTable> pkPassInfoDataBeans, List<WarMatchAndLocalTable> pkMatchingInfoDataBeans, List<WarMatchAndLocalTable> pkLocalInfoDataBeans, List<WarMatchAndLocalTable> pkRoomInfoDataBeans) {
        this.downloadTasksMap = new ConcurrentHashMap();
        this.fightMainTables = new ArrayList();
        this.waradInfoDataBeans = new ArrayList();
        this.hotGameInfoDataBeans = new ArrayList();
        this.pkGameInfoDataBeans = new ArrayList();
        this.pkPassInfoDataBeans = new ArrayList();
        this.pkMatchingInfoDataBeans = new ArrayList();
        this.pkLocalInfoDataBeans = new ArrayList();
        new ArrayList();
        this.downloadTasksMap = downloadTasksMap;
        this.fightMainTables = fightMainTables;
        this.waradInfoDataBeans = waradInfoDataBeans;
        this.hotGameInfoDataBeans = hotGameInfoDataBeans;
        this.pkGameInfoDataBeans = pkGameInfoDataBeans;
        this.pkPassInfoDataBeans = pkPassInfoDataBeans;
        this.pkMatchingInfoDataBeans = pkMatchingInfoDataBeans;
        this.pkLocalInfoDataBeans = pkLocalInfoDataBeans;
        this.pkRoomInfoDataBeans = pkRoomInfoDataBeans;
    }
}
