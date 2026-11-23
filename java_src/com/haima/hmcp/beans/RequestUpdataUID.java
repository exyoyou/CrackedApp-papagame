package com.haima.hmcp.beans;

import com.alibaba.fastjson.annotation.JSONField;

/* JADX INFO: loaded from: classes5.dex */
public class RequestUpdataUID implements IParameter {
    public String cToken;

    @JSONField(name = "cid")
    public String cloudId;
    public Boolean finishByServer = null;
    public long playingTime;
    public String protoData;
    public long[] sdkAbility;
    public int sdkType;
    public Long timestamp;
    public String tip;
    public UserInfo2 userInfo;

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("UserInfo:");
        stringBuffer.append(this.userInfo);
        stringBuffer.append("; ");
        stringBuffer.append("cloudId:");
        stringBuffer.append(this.cloudId);
        stringBuffer.append("; ");
        stringBuffer.append("playingTime:");
        stringBuffer.append(this.playingTime);
        stringBuffer.append("; ");
        stringBuffer.append("sdkType:");
        stringBuffer.append(this.sdkType);
        stringBuffer.append("; ");
        stringBuffer.append("tip:");
        stringBuffer.append(this.tip);
        stringBuffer.append("; ");
        stringBuffer.append("protoData:");
        stringBuffer.append(this.protoData);
        stringBuffer.append("; ");
        stringBuffer.append("cToken:");
        stringBuffer.append(this.cToken);
        stringBuffer.append("; ");
        stringBuffer.append("sdkAbility:");
        stringBuffer.append("[");
        long[] jArr = this.sdkAbility;
        if (jArr != null && jArr.length > 0) {
            int i10 = 0;
            while (true) {
                long[] jArr2 = this.sdkAbility;
                if (i10 >= jArr2.length) {
                    break;
                }
                stringBuffer.append(jArr2[i10]);
                stringBuffer.append(i10 == this.sdkAbility.length + (-1) ? "" : ",");
                i10++;
            }
        }
        stringBuffer.append("]");
        stringBuffer.append("; ");
        stringBuffer.append("timestamp:");
        stringBuffer.append(this.timestamp);
        stringBuffer.append("; ");
        stringBuffer.append("finishByServer:");
        stringBuffer.append(this.finishByServer);
        stringBuffer.append("; ");
        return stringBuffer.toString();
    }
}
