package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaFilterConfig implements Serializable {
    private List<ArenaCat> cat_list;
    private boolean is_show_empty_disk;
    private boolean is_show_look_disk;
    private List<Integer> rom_list;
    private List<ArenaServerGroup> server_group;

    public List<ArenaCat> getCat_list() {
        return this.cat_list;
    }

    public List<Integer> getRom_list() {
        return this.rom_list;
    }

    public List<ArenaServerGroup> getServer_group() {
        return this.server_group;
    }

    public boolean is_show_empty_disk() {
        return this.is_show_empty_disk;
    }

    public boolean is_show_look_disk() {
        return this.is_show_look_disk;
    }

    public void setCat_list(List<ArenaCat> cat_list) {
        this.cat_list = cat_list;
    }

    public void setIs_show_empty_disk(boolean is_show_empty_disk) {
        this.is_show_empty_disk = is_show_empty_disk;
    }

    public void setIs_show_look_disk(boolean is_show_look_disk) {
        this.is_show_look_disk = is_show_look_disk;
    }

    public void setRom_list(List<Integer> rom_list) {
        this.rom_list = rom_list;
    }

    public void setServer_group(List<ArenaServerGroup> server_group) {
        this.server_group = server_group;
    }

    public String toString() {
        return "ArenaFilterConfig{is_show_empty_disk=" + this.is_show_empty_disk + ", is_show_look_disk=" + this.is_show_look_disk + ", cat_list=" + this.cat_list + ", rom_list=" + this.rom_list + ", server_group=" + this.server_group + '}';
    }
}
