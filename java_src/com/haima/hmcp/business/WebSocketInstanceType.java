package com.haima.hmcp.business;

import com.haima.hmcp.Constants;
import com.umeng.analytics.pro.bm;

/* JADX INFO: loaded from: classes5.dex */
public enum WebSocketInstanceType {
    ACCESS(1),
    INPUT(2),
    SCREEN(3),
    TRANSFER(4);

    private int type;

    WebSocketInstanceType(int i10) {
        this.type = i10;
    }

    public String getType() {
        int i10 = this.type;
        if (i10 == 1) {
            return bm.Q;
        }
        if (i10 != 2) {
            return i10 != 3 ? "transfer" : Constants.WS_MESSAGE_TYPE_SCREEN;
        }
        return "input";
    }
}
