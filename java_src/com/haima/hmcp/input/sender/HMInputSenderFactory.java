package com.haima.hmcp.input.sender;

import com.haima.hmcp.input.HMInputType;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.AbsIjkVideoView;

/* JADX INFO: loaded from: classes5.dex */
public class HMInputSenderFactory implements IHMInputSenderFactory {
    private static final String TAG = "HMInputSenderFactory";
    private IHMInputSender mHmInputSender;

    /* JADX INFO: renamed from: com.haima.hmcp.input.sender.HMInputSenderFactory$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$haima$hmcp$input$HMInputType;

        static {
            int[] iArr = new int[HMInputType.values().length];
            $SwitchMap$com$haima$hmcp$input$HMInputType = iArr;
            try {
                iArr[HMInputType.ARM_WEB_RTC_DC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$haima$hmcp$input$HMInputType[HMInputType.ARM_WEB_SOCKET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.haima.hmcp.input.sender.IHMInputSenderFactory
    public IHMInputSender getInputSender(AbsIjkVideoView absIjkVideoView, HMInputType hMInputType) {
        LogUtils.d(TAG, "getInput inputType: " + hMInputType);
        int i10 = AnonymousClass1.$SwitchMap$com$haima$hmcp$input$HMInputType[hMInputType.ordinal()];
        if (i10 == 1) {
            this.mHmInputSender = new RtcDatachannelSender(absIjkVideoView);
        } else if (i10 == 2) {
            this.mHmInputSender = new WebSocketInputSender(absIjkVideoView);
        }
        return this.mHmInputSender;
    }

    public void release() {
        if (this.mHmInputSender != null) {
            this.mHmInputSender = null;
        }
    }
}
