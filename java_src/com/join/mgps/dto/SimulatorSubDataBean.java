package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorSubDataBean {
    private String ico_local;
    private String ico_remote;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68120id;
    private String info;
    private List<JumpInfoBean> jump_info;
    private String label;
    private String pic_local;
    private String pic_remote;
    private String show_index;
    private String title;

    public SimulatorSubDataBean() {
    }

    public String getIco_local() {
        return this.ico_local;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getId() {
        return this.f68120id;
    }

    public String getInfo() {
        return this.info;
    }

    public List<JumpInfoBean> getJump_info() {
        return this.jump_info;
    }

    public String getLabel() {
        return this.label;
    }

    public String getPic_local() {
        return this.pic_local;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getShow_index() {
        return this.show_index;
    }

    public String getTitle() {
        return this.title;
    }

    public void setIco_local(String ico_local) {
        this.ico_local = ico_local;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setId(String id2) {
        this.f68120id = id2;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public void setJump_info(List<JumpInfoBean> jump_info) {
        this.jump_info = jump_info;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public void setPic_local(String pic_local) {
        this.pic_local = pic_local;
    }

    public void setPic_remote(String pic_remote) {
        this.pic_remote = pic_remote;
    }

    public void setShow_index(String show_index) {
        this.show_index = show_index;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public SimulatorSubDataBean(String id2, String title, String label, String pic_local, String pic_remote, String ico_local, String ico_remote, String show_index, String info, List<JumpInfoBean> jump_info) {
        this.f68120id = id2;
        this.title = title;
        this.label = label;
        this.pic_local = pic_local;
        this.pic_remote = pic_remote;
        this.ico_local = ico_local;
        this.ico_remote = ico_remote;
        this.show_index = show_index;
        this.info = info;
        this.jump_info = jump_info;
    }
}
