package com.haima.hmcp.beans;

import com.haima.hmcp.utils.JsonUtil;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class RequestJoinBattle implements IParameter {
    public String appChannel;
    public int battleOnlineType;
    public String cToken;
    public String clientCity;
    public String clientISP;
    public String clientProvince;
    public String envType;
    public int gamePad;
    public boolean openOwnerResolution = true;
    public String ownerCid;
    public String pkgName;
    public long playingTime;
    public String protoData;
    public String routingIp;
    public long[] sdkAbility;
    public List<String> streamingTypes;
    public UserInfo2 userInfo;

    public String toString() {
        return JsonUtil.toJsonString(this);
    }
}
