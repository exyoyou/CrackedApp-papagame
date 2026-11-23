package com.haima.hmcp.input.sender;

import com.haima.hmcp.input.HMInputType;
import com.haima.hmcp.widgets.AbsIjkVideoView;

/* JADX INFO: loaded from: classes5.dex */
public interface IHMInputSenderFactory {
    IHMInputSender getInputSender(AbsIjkVideoView absIjkVideoView, HMInputType hMInputType);
}
