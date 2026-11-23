package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestClassifyArgs extends BaseDto {

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68091pc;
    private int pn;
    private int ranking_type;
    private String rom_type;
    private int[] showtag;
    private String sort_type;
    private String type;

    public RequestClassifyArgs() {
    }

    public int getPc() {
        return this.f68091pc;
    }

    public int getPn() {
        return this.pn;
    }

    public int getRanking_type() {
        return this.ranking_type;
    }

    public String getRom_type() {
        return this.rom_type;
    }

    public int[] getShowtag() {
        return this.showtag;
    }

    public String getSort_type() {
        return this.sort_type;
    }

    public String getType() {
        return this.type;
    }

    public void setPc(int pc2) {
        this.f68091pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setRanking_type(int ranking_type) {
        this.ranking_type = ranking_type;
    }

    public void setRom_type(String rom_type) {
        this.rom_type = rom_type;
    }

    public void setShowtag(int[] showtag) {
        this.showtag = showtag;
    }

    public void setSort_type(String sort_type) {
        this.sort_type = sort_type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public RequestClassifyArgs(int pn, int pc2, int[] showtag, String type, String rom_type, int ranking_type, String sort_type) {
        this.showtag = showtag;
        this.pn = pn;
        this.f68091pc = pc2;
        this.type = type;
        this.ranking_type = ranking_type;
        this.rom_type = rom_type;
        this.sort_type = sort_type;
    }
}
