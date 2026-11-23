package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadHistoryTable {

    @DatabaseField
    private String crc_link_type_val;

    @DatabaseField
    private long create_time;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67242id;

    public DownloadHistoryTable() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public long getCreate_time() {
        return this.create_time;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setCreate_time(long create_time) {
        this.create_time = create_time;
    }

    public DownloadHistoryTable(long create_time, String crc_link_type_val) {
        this.create_time = create_time;
        this.crc_link_type_val = crc_link_type_val;
    }
}
