package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaGameInfo implements Serializable {
    private String icon;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68017id;
    private String name;
    private String result_show_type;
    private String rom_type;

    public String getIcon() {
        return this.icon;
    }

    public String getId() {
        return this.f68017id;
    }

    public String getName() {
        return this.name;
    }

    public String getResult_show_type() {
        return this.result_show_type;
    }

    public String getRom_type() {
        return this.rom_type;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public void setId(String id2) {
        this.f68017id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setResult_show_type(String result_show_type) {
        this.result_show_type = result_show_type;
    }

    public void setRom_type(String rom_type) {
        this.rom_type = rom_type;
    }

    public String toString() {
        return "ArenaGameInfo{id='" + this.f68017id + "', name='" + this.name + "', icon='" + this.icon + "', rom_type='" + this.rom_type + "'}";
    }
}
