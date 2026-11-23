package com.haima.hmcp.input.sender;

import com.haima.hmcp.input.HMInputConfig;
import com.haima.hmcp.input.listener.HMInputCallback;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.AbsIjkVideoView;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbsHMInputSender implements IHMInputSender {
    private static final String TAG = "AbsHMInputSender";
    protected HMInputConfig mHmInputConfig = new HMInputConfig();
    protected HMInputCallback mHmInputSenderCallback;
    protected AbsIjkVideoView mIjkVideoView;

    public AbsHMInputSender(AbsIjkVideoView absIjkVideoView) {
        this.mIjkVideoView = absIjkVideoView;
    }

    @Override // com.haima.hmcp.input.sender.IHMInputSender
    public void setCallback(HMInputCallback hMInputCallback) {
        this.mHmInputSenderCallback = hMInputCallback;
    }

    @Override // com.haima.hmcp.input.sender.IHMInputSender
    public void setConfig(HMInputConfig hMInputConfig) {
        LogUtils.d(TAG, "setConfig:" + hMInputConfig);
        this.mHmInputConfig = hMInputConfig;
    }
}
