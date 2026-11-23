package com.haima.hmcp.beans;

import com.alibaba.fastjson.a;

/* JADX INFO: loaded from: classes5.dex */
public class MessagePayload {
    public static final int CODE_EXIT = 100;
    public static final int CODE_INVALID_UTOKEN = 101;
    public int code;
    public String description;
    public String uid;

    public String toString() {
        return a.toJSONString(this);
    }
}
