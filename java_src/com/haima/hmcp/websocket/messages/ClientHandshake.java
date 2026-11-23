package com.haima.hmcp.websocket.messages;

import java.util.Map;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes5.dex */
public class ClientHandshake extends Message {
    public Map<String, String> mHeaderList;
    public String mHost;
    public String mOrigin;
    public String mPath;
    public String mQuery;
    public String[] mSubprotocols;

    public ClientHandshake(String str) {
        this.mHost = str;
        this.mPath = e.F0;
        this.mOrigin = null;
        this.mSubprotocols = null;
        this.mHeaderList = null;
    }

    ClientHandshake(String str, String str2, String str3) {
        this.mHost = str;
        this.mPath = str2;
        this.mOrigin = str3;
        this.mSubprotocols = null;
    }

    ClientHandshake(String str, String str2, String str3, String[] strArr) {
        this.mHost = str;
        this.mPath = str2;
        this.mOrigin = str3;
        this.mSubprotocols = strArr;
    }
}
