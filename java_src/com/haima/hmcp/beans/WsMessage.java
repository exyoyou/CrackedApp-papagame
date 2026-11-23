package com.haima.hmcp.beans;

import com.alibaba.fastjson.a;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class WsMessage implements Serializable {
    public String mid;
    public String payload;

    public String toString() {
        return a.toJSONString(this);
    }
}
