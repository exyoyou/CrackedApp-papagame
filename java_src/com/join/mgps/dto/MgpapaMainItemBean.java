package com.join.mgps.dto;

import com.join.mgps.business.RecomDatabeanBusiness;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MgpapaMainItemBean {
    private boolean hasExposure;
    private int moreType;
    private String moreType2;
    private Object object;
    private int page;
    private String reMarks;
    private RecomDatabeanBusiness recomDatabeanLeft;
    private RecomDatabeanBusiness recomDatabeanRight;
    private List<RecomDatabeanBusiness> recomDatabeans;
    private List<RecomDatabeanBusiness> recomDatabeans2;
    private List<RecomDatabeanBusiness> recomDatabeans3;
    private int showtype;

    public MgpapaMainItemBean() {
    }

    public int getMoreType() {
        return this.moreType;
    }

    public String getMoreType2() {
        return this.moreType2;
    }

    public Object getObject() {
        return this.object;
    }

    public int getPage() {
        return this.page;
    }

    public String getReMarks() {
        return this.reMarks;
    }

    public RecomDatabeanBusiness getRecomDatabeanLeft() {
        return this.recomDatabeanLeft;
    }

    public RecomDatabeanBusiness getRecomDatabeanRight() {
        return this.recomDatabeanRight;
    }

    public List<RecomDatabeanBusiness> getRecomDatabeans() {
        return this.recomDatabeans;
    }

    public List<RecomDatabeanBusiness> getRecomDatabeans2() {
        return this.recomDatabeans2;
    }

    public List<RecomDatabeanBusiness> getRecomDatabeans3() {
        return this.recomDatabeans3;
    }

    public int getShowtype() {
        return this.showtype;
    }

    public boolean isHasExposure() {
        return this.hasExposure;
    }

    public void setHasExposure(boolean hasExposure) {
        this.hasExposure = hasExposure;
    }

    public void setMoreType(int moreType) {
        this.moreType = moreType;
    }

    public void setMoreType2(String moreType2) {
        this.moreType2 = moreType2;
    }

    public void setObject(Object object) {
        this.object = object;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setReMarks(String reMarks) {
        this.reMarks = reMarks;
    }

    public void setRecomDatabeanLeft(RecomDatabeanBusiness recomDatabeanLeft) {
        this.recomDatabeanLeft = recomDatabeanLeft;
    }

    public void setRecomDatabeanRight(RecomDatabeanBusiness recomDatabeanRight) {
        this.recomDatabeanRight = recomDatabeanRight;
    }

    public void setRecomDatabeans(List<RecomDatabeanBusiness> recomDatabeans) {
        this.recomDatabeans = recomDatabeans;
    }

    public void setRecomDatabeans2(List<RecomDatabeanBusiness> recomDatabeans2) {
        this.recomDatabeans2 = recomDatabeans2;
    }

    public void setRecomDatabeans3(List<RecomDatabeanBusiness> recomDatabeans3) {
        this.recomDatabeans3 = recomDatabeans3;
    }

    public void setShowtype(int showtype) {
        this.showtype = showtype;
    }

    public MgpapaMainItemBean(int showtype, List<RecomDatabeanBusiness> recomDatabeans) {
        this.showtype = showtype;
        this.recomDatabeans = recomDatabeans;
    }

    public MgpapaMainItemBean(int showtype, List<RecomDatabeanBusiness> recomDatabeans, List<RecomDatabeanBusiness> recomDatabeans2, List<RecomDatabeanBusiness> recomDatabeans3) {
        this.showtype = showtype;
        this.recomDatabeans = recomDatabeans;
        this.recomDatabeans2 = recomDatabeans2;
        this.recomDatabeans3 = recomDatabeans3;
    }
}
