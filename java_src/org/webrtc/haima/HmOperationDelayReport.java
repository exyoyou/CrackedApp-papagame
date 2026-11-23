package org.webrtc.haima;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class HmOperationDelayReport {
    private static final int DELAY_LIST_MAX_LENGTH = 10;
    private static final int REPORT_INTERVAL_MS_MIN = 100;
    private static final String TAG = "HmOperationDelayReport";
    private boolean debugLog;
    private IOperationDelayEvent operationDelayEvent;
    private List<Long> operationDelayList = new ArrayList();
    private Timer reportTimer = new Timer();

    /* JADX INFO: Access modifiers changed from: private */
    public void outputDebugLog(String str) {
        if (this.debugLog) {
            Logging.d(TAG, str);
        }
    }

    public void addOperationDelay(long j10) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j10;
        outputDebugLog("addOperationDelay - inputTime:" + j10 + "ms, delay:" + jElapsedRealtime + "ms");
        if (jElapsedRealtime <= 0) {
            return;
        }
        synchronized (this.operationDelayList) {
            this.operationDelayList.add(Long.valueOf(jElapsedRealtime));
            if (this.operationDelayList.size() > 10) {
                this.operationDelayList.remove(0);
                outputDebugLog("operation delay list size > 10, remove the first data");
            }
        }
    }

    public void setOperationDelayEvent(IOperationDelayEvent iOperationDelayEvent) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setOperationDelayEvent");
        sb2.append(iOperationDelayEvent == null ? ":null." : com.join.mgps.Util.o0.f49827a);
        Logging.i(TAG, sb2.toString());
        this.operationDelayEvent = iOperationDelayEvent;
    }

    public void startReport(int i10, boolean z10, final long j10, final long j11, final HmRtcAdapterImpl hmRtcAdapterImpl) {
        Logging.i(TAG, "StartReport - interval:" + i10 + "ms, debugLog:" + z10 + ", maxDelay:" + j10 + "ms, salt:" + j11);
        if (i10 < 100) {
            Logging.e(TAG, "StartReport - interval < 100ms, stop.");
            return;
        }
        this.debugLog = z10;
        try {
            this.reportTimer.schedule(new TimerTask() { // from class: org.webrtc.haima.HmOperationDelayReport.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    long size;
                    synchronized (HmOperationDelayReport.this.operationDelayList) {
                        if (HmOperationDelayReport.this.operationDelayList.isEmpty()) {
                            size = 0;
                        } else {
                            long jLongValue = 0;
                            for (int i11 = 0; i11 < HmOperationDelayReport.this.operationDelayList.size(); i11++) {
                                jLongValue += ((Long) HmOperationDelayReport.this.operationDelayList.get(i11)).longValue();
                            }
                            size = jLongValue / ((long) HmOperationDelayReport.this.operationDelayList.size());
                            HmOperationDelayReport.this.operationDelayList.clear();
                        }
                    }
                    if (size > j10) {
                        HmOperationDelayReport.this.outputDebugLog("delay(" + size + ") > maxDelay(" + j10 + ")");
                        size = 0L;
                    }
                    if (size > 0) {
                        long j12 = j11;
                        if (size + j12 > 0) {
                            size += j12;
                        }
                    }
                    try {
                        if (HmOperationDelayReport.this.operationDelayEvent != null) {
                            HmOperationDelayReport.this.operationDelayEvent.onOperationDelayCallback(size);
                            HmRtcAdapterImpl hmRtcAdapterImpl2 = hmRtcAdapterImpl;
                            if (hmRtcAdapterImpl2 != null) {
                                hmRtcAdapterImpl2.getFrameDelayInfo().setOperationDelayMs(size);
                            }
                            HmOperationDelayReport.this.outputDebugLog("operation delay:" + size + "ms.");
                        }
                    } catch (Exception e10) {
                        Logging.e(HmOperationDelayReport.TAG, "operationDelayEvent - failed", e10);
                    }
                }
            }, 0L, i10);
        } catch (Exception e10) {
            Logging.e(TAG, "StartReport - failed to start report timer", e10);
        }
    }

    public void stopReport() {
        Logging.i(TAG, "stopReport");
        this.reportTimer.cancel();
        this.reportTimer = null;
        synchronized (this.operationDelayList) {
            this.operationDelayList.clear();
        }
        this.operationDelayEvent = null;
    }
}
