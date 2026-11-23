package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ResolutionInfo implements Serializable {
    public String bitRate;
    public String close;
    public String defaultChoice;
    public int frameRate;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public String f33828id;
    public String name;
    public String peakBitRate;
    public String resolution;

    public String toString() {
        return "ResolutionInfo{id='" + this.f33828id + "', name='" + this.name + "', resolution='" + this.resolution + "', peakBitRate='" + this.peakBitRate + "', frameRate='" + this.frameRate + "', bitRate=' " + this.bitRate + "', defaultChoice='" + this.defaultChoice + "', close='" + this.close + "'}";
    }
}
