package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SearchGameListBean {
    private CommonGameInfoBean ad_info;
    private String area_name;
    private String keyword;
    private List<CommonGameInfoBean> list;
    private String page_first_gid;
    private DomainInfoBean pd_info;
    private List<CommonGameInfoBean> recommend_list;
    private SearchGameListSpecialZoneBean special_zone_info;

    public CommonGameInfoBean getAd_info() {
        return this.ad_info;
    }

    public String getArea_name() {
        return this.area_name;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public List<CommonGameInfoBean> getList() {
        return this.list;
    }

    public String getPage_first_gid() {
        return this.page_first_gid;
    }

    public DomainInfoBean getPd_info() {
        return this.pd_info;
    }

    public List<CommonGameInfoBean> getRecommend_list() {
        return this.recommend_list;
    }

    public SearchGameListSpecialZoneBean getSpecial_zone_info() {
        return this.special_zone_info;
    }

    public void setAd_info(CommonGameInfoBean ad_info) {
        this.ad_info = ad_info;
    }

    public void setArea_name(String area_name) {
        this.area_name = area_name;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public void setList(List<CommonGameInfoBean> list) {
        this.list = list;
    }

    public void setPage_first_gid(String page_first_gid) {
        this.page_first_gid = page_first_gid;
    }

    public void setPd_info(DomainInfoBean pd_info) {
        this.pd_info = pd_info;
    }

    public void setRecommend_list(List<CommonGameInfoBean> recommend_list) {
        this.recommend_list = recommend_list;
    }

    public void setSpecial_zone_info(SearchGameListSpecialZoneBean special_zone_info) {
        this.special_zone_info = special_zone_info;
    }
}
