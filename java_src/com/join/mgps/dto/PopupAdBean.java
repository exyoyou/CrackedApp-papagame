package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class PopupAdBean implements Serializable {
    private String ad_switch;
    private List<RecomDatabean> big_pic;
    private List<RecomDatabean> more;
    private List<RecomDatabean> small_pic;
    private int start_up_counts;
    private String tag;

    public String getAd_switch() {
        return this.ad_switch;
    }

    public List<RecomDatabean> getBig_pic() {
        return this.big_pic;
    }

    public List<RecomDatabean> getMore() {
        return this.more;
    }

    public List<RecomDatabean> getSmall_pic() {
        return this.small_pic;
    }

    public int getStart_up_counts() {
        return this.start_up_counts;
    }

    public String getTag() {
        return this.tag;
    }

    public void setAd_switch(String ad_switch) {
        this.ad_switch = ad_switch;
    }

    public void setBig_pic(List<RecomDatabean> big_pic) {
        this.big_pic = big_pic;
    }

    public void setMore(List<RecomDatabean> more) {
        this.more = more;
    }

    public void setSmall_pic(List<RecomDatabean> small_pic) {
        this.small_pic = small_pic;
    }

    public void setStart_up_counts(int start_up_counts) {
        this.start_up_counts = start_up_counts;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }
}
