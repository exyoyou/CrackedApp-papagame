package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ProtoDataGameInfo implements Serializable {
    public String cid;
    public int payloadType;
    public String pkgName;
    public String protoData;
    public String userId;

    public enum PayloadType {
        TV_MIGU_COMPETITIVE_GAME(673);

        private int payloadType;

        PayloadType(int i10) {
            this.payloadType = i10;
        }
    }

    public ProtoDataGameInfo(String str, String str2, String str3, String str4, PayloadType payloadType) {
        this.userId = str;
        this.cid = str2;
        this.protoData = str3;
        this.pkgName = str4;
        this.payloadType = payloadType.payloadType;
    }

    public String toString() {
        return "ProtoDataGameInfo{userId='" + this.userId + "', cid='" + this.cid + "', protoData='" + this.protoData + "', pkgName='" + this.pkgName + "', payloadType=" + this.payloadType + '}';
    }
}
