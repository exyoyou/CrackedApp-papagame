package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.HmInputOp;

/* JADX INFO: loaded from: classes5.dex */
public interface HmInputOpListener {
    void onSendFail(HmInputOp hmInputOp, String str);

    void onSendSuccess(HmInputOp hmInputOp);
}
