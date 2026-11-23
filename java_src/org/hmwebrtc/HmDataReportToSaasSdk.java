package org.hmwebrtc;

import java.util.List;
import org.hmwebrtc.listener.IFrameCallback;

/* JADX INFO: loaded from: classes10.dex */
public class HmDataReportToSaasSdk implements SeiDataReportEvent {
    private static HmDataReportToSaasSdk instance = new HmDataReportToSaasSdk();
    private IFrameCallback mIFrameCallbck;
    boolean needToReportSeiData;
    int sampleInterval;
    SeiDataReportEvent seiDataReportCallback;

    public static HmDataReportToSaasSdk getInstance() {
        return instance;
    }

    public IFrameCallback getIFrameCallback() {
        return this.mIFrameCallbck;
    }

    public void initInstance(boolean z10, int i10, SeiDataReportEvent seiDataReportEvent) {
        this.needToReportSeiData = z10;
        this.sampleInterval = i10;
        this.seiDataReportCallback = seiDataReportEvent;
    }

    @Override // org.hmwebrtc.SeiDataReportEvent
    public void onFrameSeiDataReportCallback(List<SeiData> list) {
        SeiDataReportEvent seiDataReportEvent = this.seiDataReportCallback;
        if (seiDataReportEvent != null) {
            seiDataReportEvent.onFrameSeiDataReportCallback(list);
        }
    }

    public void setIFrameCallbck(IFrameCallback iFrameCallback) {
        this.mIFrameCallbck = iFrameCallback;
    }
}
