package org.webrtc.haima;

import com.haima.hmcp.Constants;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.List;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class HmDCObserverVQA implements HmDCSimple.Observer {
    private static final String TAG = "vqa_chn";
    private final List<HmStatsCollector.FieldInfo> mFieldInfoList;
    private final HmStatsCollector mStats;

    public HmDCObserverVQA() {
        ArrayList arrayList = new ArrayList();
        this.mFieldInfoList = arrayList;
        HmStatsCollector.FieldType fieldType = HmStatsCollector.FieldType.kLong;
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_utcTimeMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_captureSJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_captureJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_captureBJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_encodeSJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_encodeJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_encodeBJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_sentSJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_sentJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_sentBJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_rtpSJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_rtpJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_rtpBJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_realSJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_realJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        arrayList.add(new HmStatsCollector.FieldInfo(fieldType, "Streamer_realBJankDurationMs", WMConstants.TIMER_STAGE_NONE));
        this.mStats = new HmStatsCollector((HmStatsCollector.FieldInfo[]) arrayList.toArray(new HmStatsCollector.FieldInfo[arrayList.size()]));
    }

    private void handleMessage(String str) {
        if (str == null) {
            return;
        }
        Logging.v(TAG, str);
        String[] strArrSplit = str.split(Constants.TIPS_SPECIAL_TAG);
        if (strArrSplit.length >= 1 && strArrSplit.length >= this.mFieldInfoList.size() + 1) {
            this.mStats.setValues(1, strArrSplit);
        }
    }

    HmStatsCollector getStatCollector() {
        return this.mStats;
    }

    @Override // org.webrtc.haima.HmDCSimple.Observer
    public void onReceiveMessage(Object obj, String str) {
        Logging.v(TAG, str);
        handleMessage(str);
    }
}
