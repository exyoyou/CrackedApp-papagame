package com.haima.hmcp.beans;

import com.alibaba.fastjson.annotation.JSONField;
import com.join.mgps.dto.Constant;

/* JADX INFO: loaded from: classes5.dex */
public class GetCloudServiceParameters implements IParameter {
    public String appChannel;
    public int appId;

    @JSONField(name = "pakName")
    public String appName;
    public int bitRate;
    public String clientCity;
    public String clientISP;
    public String clientProvince;
    public int clientType;

    @JSONField(name = "cid")
    public String cloudId;
    public int confirm;
    public String envType;
    public boolean isArchive;
    public String knockKnock;
    public int opType;
    public int orientation;
    public String payStr;
    public long playingTime;
    public int priority;
    public String resolution;
    public String routingIp;

    @JSONField(name = Constant.MD5)
    public String signature;
    public boolean syncRefresh;
    public String viewFrameRate;
    public String viewResolution;
    public Boolean enlargeBitRate = null;
    public Integer devicePixelRatio = null;

    public String toString() {
        return "GetCloudServiceParameters{cloudId='" + this.cloudId + "', appId=" + this.appId + ", appName='" + this.appName + "', appChannel='" + this.appChannel + "', signature='" + this.signature + "', priority=" + this.priority + ", playingTime=" + this.playingTime + ", confirm=" + this.confirm + ", orientation=" + this.orientation + ", clientType=" + this.clientType + ", knockKnock='" + this.knockKnock + "', resolution='" + this.resolution + "', opType=" + this.opType + ", payStr='" + this.payStr + "', bitRate=" + this.bitRate + ", envType='" + this.envType + "', isArchive=" + this.isArchive + ", syncRefresh=" + this.syncRefresh + ", clientISP='" + this.clientISP + "', clientProvince='" + this.clientProvince + "', clientCity='" + this.clientCity + "', viewResolution='" + this.viewResolution + "', routingIp='" + this.routingIp + "', enlargeBitRate=" + this.enlargeBitRate + ", devicePixelRatio=" + this.devicePixelRatio + ", viewFrameRate=" + this.viewFrameRate + '}';
    }
}
