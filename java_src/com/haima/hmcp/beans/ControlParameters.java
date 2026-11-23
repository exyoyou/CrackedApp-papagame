package com.haima.hmcp.beans;

import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public class ControlParameters implements IParameter {
    public String clientCity;
    public String clientISP;
    public String clientProvince;
    public String ext;
    public String followCid;
    public int imeType;
    public String masterId;
    public String pin;
    public String routingIp;
    public int streamingMode;
    public List<String> streamingTypes;
    public String viewFrameRate;
    public String timeZone = TimeZone.getDefault().getDisplayName(false, 0, Locale.US);
    public Boolean enlargeBitRate = null;

    public String toString() {
        return "ControlParameters{masterId='" + this.masterId + "'followCid='" + this.followCid + "', pin='" + this.pin + "', imeType=" + this.imeType + ", streamingTypes=" + this.streamingTypes + ", clientISP='" + this.clientISP + "', clientProvince='" + this.clientProvince + "', clientCity='" + this.clientCity + "', routingIp='" + this.routingIp + "', ext='" + this.ext + "', enlargeBitRate=" + this.enlargeBitRate + ", timeZone='" + this.timeZone + "', viewFrameRate='" + this.viewFrameRate + "'}";
    }
}
