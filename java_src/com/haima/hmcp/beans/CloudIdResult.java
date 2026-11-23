package com.haima.hmcp.beans;

import com.alibaba.fastjson.annotation.JSONField;
import com.join.mgps.dto.Constant;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class CloudIdResult extends BaseResult {

    @JSONField(name = "cidId")
    public String cloudId;

    @JSONField(name = "msgServInfo")
    public MessageServerInfo messageServerInfo;
    public List<ResolutionInfo> resolutionInfo;

    @JSONField(name = "secretKey")
    public String secretKey;

    @JSONField(name = Constant.MD5)
    public String signature;

    @Override // com.haima.hmcp.beans.BaseResult
    public String toString() {
        String str = "CloudIdResult{ " + super.toString() + ", cloudId = " + this.cloudId + ", signature = " + this.signature + ", secretKey = " + this.secretKey + ", resolutionInfo = " + this.resolutionInfo;
        if (this.messageServerInfo == null) {
            return str;
        }
        return str + ", ip: " + this.messageServerInfo.serverIp + ", serverPort = " + this.messageServerInfo.serverPort + ", socketUrl = " + this.messageServerInfo.socketUrl + '}';
    }
}
