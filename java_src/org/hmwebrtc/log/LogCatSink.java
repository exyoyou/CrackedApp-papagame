package org.hmwebrtc.log;

/* JADX INFO: loaded from: classes10.dex */
class LogCatSink extends LogApi.LogSink {
    LogCatSink() {
    }

    @Override // org.hmwebrtc.log.LogApi.LogSink
    public void onLog(int i10, LogApi.LogMessage logMessage) {
        if (i10 == 0) {
            String str = logMessage.tag;
            return;
        }
        if (i10 == 2) {
            String str2 = logMessage.tag;
            return;
        }
        if (i10 == 1) {
            String str3 = logMessage.tag;
        } else if (i10 == 3) {
            String str4 = logMessage.tag;
        } else if (i10 == 4) {
            String str5 = logMessage.tag;
        }
    }
}
