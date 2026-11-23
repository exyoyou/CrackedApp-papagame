package com.aggmoread.sdk.client;

/* JADX INFO: loaded from: classes7.dex */
public class AMChannelIdInfo {
    public AMAdType adType;
    public AMAdLoadSlot amAdLoadSlot;
    public String channelId;

    public AMChannelIdInfo(String str, AMAdType aMAdType) {
        this.channelId = str;
        this.adType = aMAdType;
    }

    public void setAmAdLoadSlot(AMAdLoadSlot aMAdLoadSlot) {
        this.amAdLoadSlot = aMAdLoadSlot;
    }
}
