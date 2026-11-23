package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class SScrollingTxtBeanV2 implements Serializable {
    private boolean hasExposure;
    private CommonGameInfoBean jumpModelDto;
    private String word;

    public CommonGameInfoBean getJumpModelDto() {
        return this.jumpModelDto;
    }

    public String getWord() {
        return this.word;
    }

    public boolean isHasExposure() {
        return this.hasExposure;
    }

    public void setHasExposure(boolean hasExposure) {
        this.hasExposure = hasExposure;
    }

    public void setJumpModelDto(CommonGameInfoBean jumpModelDto) {
        this.jumpModelDto = jumpModelDto;
    }

    public void setWord(String word) {
        this.word = word;
    }
}
