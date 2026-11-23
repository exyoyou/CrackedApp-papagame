package com.sigmob.windad.rewardVideo;

import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class WindRewardInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f82207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, String> f82208b;

    public WindRewardInfo(boolean isReward) {
        this.f82207a = isReward;
    }

    public HashMap<String, String> getOptions() {
        return this.f82208b;
    }

    public boolean isReward() {
        return this.f82207a;
    }

    public void setOptions(HashMap<String, String> options) {
        this.f82208b = options;
    }

    public String toString() {
        return "WindRewardInfo{isReward=" + this.f82207a + ", options=" + this.f82208b + '}';
    }

    public WindRewardInfo(boolean isReward, HashMap<String, String> options) {
        this.f82207a = isReward;
        this.f82208b = options;
    }
}
