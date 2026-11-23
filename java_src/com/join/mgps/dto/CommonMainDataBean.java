package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CommonMainDataBean {
    private String ico_local;
    private String ico_remote;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68042id;
    private String index_number;
    private String info;
    private String label;
    private String pic_local;
    private String pic_remote;
    private String setup_count;
    private String show_index;
    private String show_type;
    private String title;
    private String title_type;

    public CommonMainDataBean() {
    }

    public String getIco_local() {
        return this.ico_local;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getId() {
        return this.f68042id;
    }

    public String getInfo() {
        return this.info;
    }

    public String getLabel() {
        return this.label;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTitle_type() {
        return this.title_type;
    }

    public void setIco_local(String ico_local) {
        this.ico_local = ico_local;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setId(String id2) {
        this.f68042id = id2;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public void setPic_remote(String pic_remote) {
        this.pic_remote = pic_remote;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTitle_type(String title_type) {
        this.title_type = title_type;
    }

    public CommonMainDataBean(String id2, String title, String label, String pic_local, String pic_remote, String ico_local, String ico_remote, String show_index, String info, String setup_count, String show_type, String index_number, String title_type) {
        this.f68042id = id2;
        this.title = title;
        this.label = label;
        this.pic_local = pic_local;
        this.pic_remote = pic_remote;
        this.ico_local = ico_local;
        this.ico_remote = ico_remote;
        this.show_index = show_index;
        this.info = info;
        this.setup_count = setup_count;
        this.show_type = show_type;
        this.index_number = index_number;
        this.title_type = title_type;
    }
}
