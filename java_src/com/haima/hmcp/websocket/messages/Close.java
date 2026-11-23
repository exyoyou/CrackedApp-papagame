package com.haima.hmcp.websocket.messages;

/* JADX INFO: loaded from: classes5.dex */
public class Close extends Message {
    public int mCode;
    public boolean mIsReply;
    public String mReason;

    Close() {
        this.mCode = -1;
        this.mReason = null;
    }

    Close(int i10) {
        this.mCode = i10;
        this.mReason = null;
    }

    public Close(int i10, boolean z10) {
        this.mCode = i10;
        this.mIsReply = z10;
    }

    public Close(int i10, String str) {
        this.mCode = i10;
        this.mReason = str;
    }

    public Close(int i10, String str, boolean z10) {
        this.mCode = i10;
        this.mIsReply = z10;
        this.mReason = str;
    }
}
