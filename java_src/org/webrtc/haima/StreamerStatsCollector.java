package org.webrtc.haima;

import com.haima.hmcp.Constants;
import com.windmill.sdk.WMConstants;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.hmwebrtc.DataChannel;
import org.hmwebrtc.Logging;
import org.hmwebrtc.StatsReport;

/* JADX INFO: loaded from: classes10.dex */
class StreamerStatsCollector implements DataChannel.Observer {
    private static final int MAX_STAT_COUNT = 4;
    private static final String kAvailableBandWidth_kbps = "available_bw_kbps";
    private StatsReport.Value[] mReportArray;
    private DataChannel mStatsDataChannel;

    public StreamerStatsCollector(DataChannel dataChannel) {
        StatsReport.Value[] valueArr = new StatsReport.Value[4];
        this.mReportArray = valueArr;
        valueArr[0] = new StatsReport.Value("inputFps", "0");
        this.mReportArray[1] = new StatsReport.Value("sendFps", "0");
        this.mReportArray[2] = new StatsReport.Value("sendKbps", "0");
        this.mReportArray[3] = new StatsReport.Value(kAvailableBandWidth_kbps, WMConstants.TIMER_STAGE_NONE);
        this.mStatsDataChannel = dataChannel;
        if (dataChannel != null) {
            dataChannel.registerObserver(this);
        }
    }

    private String getSendKbps(String str, String str2) {
        if (str2 == null) {
            return str;
        }
        try {
            long j10 = Long.parseLong(str2);
            if (j10 / 1000 <= Long.parseLong(str)) {
                return str;
            }
            return "" + (j10 / 1000);
        } catch (Exception unused) {
            return str;
        }
    }

    private void parseStats(String str) {
        if (str == null) {
            return;
        }
        Logging.e("stats_chn", str);
        String[] strArrSplit = str.split(Constants.TIPS_SPECIAL_TAG);
        if (strArrSplit == null || strArrSplit.length < 3) {
            return;
        }
        synchronized (this.mReportArray) {
            this.mReportArray[0] = new StatsReport.Value("inputFps", strArrSplit[0]);
            this.mReportArray[1] = new StatsReport.Value("sendFps", strArrSplit[1]);
            if (strArrSplit.length > 3) {
                this.mReportArray[2] = new StatsReport.Value("sendKbps", getSendKbps(strArrSplit[2], strArrSplit[3]));
            } else {
                this.mReportArray[2] = new StatsReport.Value("sendKbps", strArrSplit[2]);
            }
            if (strArrSplit.length > 4) {
                this.mReportArray[3] = new StatsReport.Value(kAvailableBandWidth_kbps, strArrSplit[4]);
            }
        }
    }

    public StatsReport.Value[] getStats() {
        StatsReport.Value[] valueArr;
        synchronized (this.mReportArray) {
            valueArr = (StatsReport.Value[]) this.mReportArray.clone();
        }
        return valueArr;
    }

    @Override // org.hmwebrtc.DataChannel.Observer
    public void onBufferedAmountChange(long j10) {
    }

    @Override // org.hmwebrtc.DataChannel.Observer
    public void onMessage(DataChannel.Buffer buffer) {
        ByteBuffer byteBuffer;
        if (buffer.binary || (byteBuffer = buffer.data) == null || byteBuffer.capacity() == 0) {
            Logging.e("stats_chn:", "DataChannel data is null!");
            return;
        }
        byte[] bArr = new byte[buffer.data.capacity()];
        buffer.data.get(bArr);
        parseStats(new String(bArr, Charset.forName("UTF-8")));
    }

    @Override // org.hmwebrtc.DataChannel.Observer
    public void onStateChange() {
    }

    @Override // org.hmwebrtc.DataChannel.Observer
    public /* synthetic */ void onWritableState(boolean z10) {
        org.hmwebrtc.g.a(this, z10);
    }

    public void release() {
        DataChannel dataChannel = this.mStatsDataChannel;
        if (dataChannel != null) {
            dataChannel.unregisterObserver();
        }
    }
}
