package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class WebDiskInfo implements Serializable {
    private String gameId;
    private String wb_file_date;
    private String wb_file_size;
    private int wb_switch;
    private String wb_url;

    public String getGameId() {
        return this.gameId;
    }

    public String getWb_file_date() {
        return this.wb_file_date;
    }

    public String getWb_file_size() {
        return this.wb_file_size;
    }

    public int getWb_switch() {
        return this.wb_switch;
    }

    public String getWb_url() {
        return this.wb_url;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setWb_file_date(String wb_file_date) {
        this.wb_file_date = wb_file_date;
    }

    public void setWb_file_size(String wb_file_size) {
        this.wb_file_size = wb_file_size;
    }

    public void setWb_switch(int wb_switch) {
        this.wb_switch = wb_switch;
    }

    public void setWb_url(String wb_url) {
        this.wb_url = wb_url;
    }
}
