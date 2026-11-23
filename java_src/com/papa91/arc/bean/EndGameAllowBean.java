package com.papa91.arc.bean;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class EndGameAllowBean {
    private List<EndGameAdBean> adVideoConfigList;
    private boolean allowed;
    private int awardCards;
    private boolean awardUnlimited;
    private int cards;
    private String challengeId;
    private String elapsedTimeHint;
    private int multipleAwardCards;
    private List<String> redPacketList;
    private int remainTimes;
    private boolean unlimited;
    private boolean watchAd;
    private boolean welfareSwitch;

    public List<EndGameAdBean> getAdVideoConfigList() {
        return this.adVideoConfigList;
    }

    public int getAwardCards() {
        return this.awardCards;
    }

    public int getCards() {
        return this.cards;
    }

    public String getChallengeId() {
        return this.challengeId;
    }

    public String getElapsedTimeHint() {
        return this.elapsedTimeHint;
    }

    public int getMultipleAwardCards() {
        return this.multipleAwardCards;
    }

    public List<String> getRedPacketList() {
        return this.redPacketList;
    }

    public int getRemainTimes() {
        return this.remainTimes;
    }

    public boolean isAllowed() {
        return this.allowed;
    }

    public boolean isAwardUnlimited() {
        return this.awardUnlimited;
    }

    public boolean isUnlimited() {
        return this.unlimited;
    }

    public boolean isWatchAd() {
        return this.watchAd;
    }

    public boolean isWelfareSwitch() {
        return this.welfareSwitch;
    }

    public void setAdVideoConfigList(List<EndGameAdBean> list) {
        this.adVideoConfigList = list;
    }

    public void setAllowed(boolean z10) {
        this.allowed = z10;
    }

    public void setAwardCards(int i10) {
        this.awardCards = i10;
    }

    public void setAwardUnlimited(boolean z10) {
        this.awardUnlimited = z10;
    }

    public void setCards(int i10) {
        this.cards = i10;
    }

    public void setChallengeId(String str) {
        this.challengeId = str;
    }

    public void setElapsedTimeHint(String str) {
        this.elapsedTimeHint = str;
    }

    public void setMultipleAwardCards(int i10) {
        this.multipleAwardCards = i10;
    }

    public void setRedPacketList(List<String> list) {
        this.redPacketList = list;
    }

    public void setRemainTimes(int i10) {
        this.remainTimes = i10;
    }

    public void setUnlimited(boolean z10) {
        this.unlimited = z10;
    }

    public void setWatchAd(boolean z10) {
        this.watchAd = z10;
    }

    public void setWelfareSwitch(boolean z10) {
        this.welfareSwitch = z10;
    }
}
