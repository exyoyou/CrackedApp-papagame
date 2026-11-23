package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ClassifyCommonDataBean {
    private List<CollectionDataBean> first;
    private CommonMainDataBean main;
    private List<Object> more;
    private String position;
    private List<SubAppDataBean> sub;

    public ClassifyCommonDataBean() {
    }

    public List<CollectionDataBean> getFirst() {
        return this.first;
    }

    public CommonMainDataBean getMain() {
        return this.main;
    }

    public List<Object> getMore() {
        return this.more;
    }

    public String getPosition() {
        return this.position;
    }

    public List<SubAppDataBean> getSub() {
        return this.sub;
    }

    public void setFirst(List<CollectionDataBean> first) {
        this.first = first;
    }

    public void setMain(CommonMainDataBean main) {
        this.main = main;
    }

    public void setMore(List<Object> more) {
        this.more = more;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public void setSub(List<SubAppDataBean> sub) {
        this.sub = sub;
    }

    public ClassifyCommonDataBean(CommonMainDataBean main, List<Object> more, String position, List<SubAppDataBean> sub, List<CollectionDataBean> first) {
        this.main = main;
        this.more = more;
        this.position = position;
        this.sub = sub;
        this.first = first;
    }
}
