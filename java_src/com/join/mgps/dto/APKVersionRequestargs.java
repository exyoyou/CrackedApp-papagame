package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class APKVersionRequestargs {
    private int plugin;
    private int tag_id;
    private int target_version;
    private int type;
    private int uid;

    public APKVersionRequestargs() {
    }

    public int getPlugin() {
        return this.plugin;
    }

    public int getTag_id() {
        return this.tag_id;
    }

    public int getTarget_version() {
        return this.target_version;
    }

    public int getType() {
        return this.type;
    }

    public int getUid() {
        return this.uid;
    }

    public void setPlugin(int plugin) {
        this.plugin = plugin;
    }

    public void setTag_id(int tag_id) {
        this.tag_id = tag_id;
    }

    public void setTarget_version(int target_version) {
        this.target_version = target_version;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public APKVersionRequestargs(int type, int plugin, int tag_id, int target_version) {
        this.type = type;
        this.plugin = plugin;
        this.tag_id = tag_id;
        this.target_version = target_version;
    }

    public APKVersionRequestargs(int type, int plugin, int tag_id, int target_version, int uid) {
        this.type = type;
        this.plugin = plugin;
        this.tag_id = tag_id;
        this.target_version = target_version;
        this.uid = uid;
    }
}
