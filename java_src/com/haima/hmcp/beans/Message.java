package com.haima.hmcp.beans;

import com.alibaba.fastjson.a;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class Message implements Serializable {
    public static final int ACK_CLIENT_RECEIVE = 1;
    public static final int ACK_CLIENT_SEND = 0;
    public static final int TYPE_AD_MESSAGE = 3;
    public static final int TYPE_INTERACTIVE_MESSAGE = 4;
    public static final int TYPE_PAY_MESSAGE = 1;
    public static final int TYPE_SYSTEM_MESSAGE = 2;
    public int ack;
    public String code;
    public String from;
    public String mid;
    public String msg;
    public String payload;
    public String to;
    public int type;
    public String uid;

    public String toString() {
        return a.toJSONString(this);
    }
}
