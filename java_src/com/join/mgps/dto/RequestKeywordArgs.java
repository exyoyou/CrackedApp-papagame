package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestKeywordArgs extends BaseDto {
    private String game_id;
    private String keyword;
    int lang_id;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68097pc;
    int plugin_num;
    private int pn;

    public RequestKeywordArgs() {
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public int getLang_id() {
        return this.lang_id;
    }

    public int getPc() {
        return this.f68097pc;
    }

    public int getPlugin_num() {
        return this.plugin_num;
    }

    public int getPn() {
        return this.pn;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public void setLang_id(int lang_id) {
        this.lang_id = lang_id;
    }

    public void setPc(int pc2) {
        this.f68097pc = pc2;
    }

    public void setPlugin_num(int plugin_num) {
        this.plugin_num = plugin_num;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public RequestKeywordArgs(String keyword, int pn, int pc2) {
        this.keyword = keyword;
        this.pn = pn;
        this.f68097pc = pc2;
    }

    public RequestKeywordArgs(String keyword, int pn, int pc2, int plugin_num, int lang_id) {
        this.keyword = keyword;
        this.pn = pn;
        this.f68097pc = pc2;
        this.plugin_num = plugin_num;
        this.lang_id = lang_id;
    }
}
