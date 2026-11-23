package com.haima.hmcp.beans;

import com.haima.hmcp.enums.ScreenOrientation;

/* JADX INFO: loaded from: classes5.dex */
public class JoinBattle {
    public String appChannel;
    public String cToken;
    public String cid;
    public boolean isIPV6;
    public String packageName;
    public String protoData;
    public int gamePad = 0;
    public ScreenOrientation orientation = ScreenOrientation.LANDSCAPE;
    public int streamingType = 1;
    public int playTime = 0;
    public String clientISP = "";
    public String clientProvince = "";
    public String clientCity = "";

    public String toString() {
        return "JoinBattle{gamePad=" + this.gamePad + ", cid='" + this.cid + "', appChannel='" + this.appChannel + "', cToken='" + this.cToken + "', packageName='" + this.packageName + "', orientation=" + this.orientation + ", streamingType=" + this.streamingType + ", playTime=" + this.playTime + ", isIPV6=" + this.isIPV6 + ", clientISP='" + this.clientISP + "', clientProvince='" + this.clientProvince + "', clientCity='" + this.clientCity + "', protoData='" + this.protoData + "'}";
    }
}
