package org.hmwebrtc.log;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.sigmob.sdk.archives.tar.e;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.webrtc.haima.HmDCLog;

/* JADX INFO: loaded from: classes10.dex */
public class LogMemSink extends LogApi.LogSink {
    public static final int MAXSIZE_ZIP = 1048576;
    public static final int MINSIZE_ZIP = 4096;
    public static final int MSG_ID_COMPRESS = 1000;
    public static final int MSG_ID_UPLOAD = 1001;
    private static final String TAG = "LogMemSink";
    private static int mCurrentMemSize;
    private static LogUploadCallBack mUploadLogCB;
    private final String LOGDCNAME = HmDCLog.LOGDCNAME;
    private String mCacheLogStr;
    private byte[] mInMemZipData;
    private long mLogBaseTimeMs;
    private String mLogBaseTimeMsString;
    private LogHandler mLogHandler;
    private long mLogZipIndex;
    private int mMaxMemSize;

    private final class LogHandler extends Handler {
        public LogHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 != 1000) {
                if (i10 == 1001) {
                    LogMemSink.uploadData((byte[]) message.obj);
                    return;
                }
                return;
            }
            byte[] bArr = (byte[]) message.obj;
            int i11 = message.arg1;
            Arrays.fill(LogMemSink.this.mInMemZipData, (byte) 0);
            LogMemSink logMemSink = LogMemSink.this;
            int iCompressLog = logMemSink.compressLog(bArr, i11, logMemSink.mInMemZipData);
            if (iCompressLog <= 0) {
                return;
            }
            byte[] bArr2 = new byte[iCompressLog];
            Arrays.fill(bArr2, (byte) 0);
            System.arraycopy(LogMemSink.this.mInMemZipData, 0, bArr2, 0, iCompressLog);
            LogMemSink.this.sendMessageForUpload(bArr2);
        }
    }

    public LogMemSink(long j10) {
        this.mMaxMemSize = (int) j10;
        if (j10 < 4096 || j10 > 1048576) {
            this.mMaxMemSize = 1048576;
        }
        this.mInMemZipData = new byte[this.mMaxMemSize];
        HandlerThread handlerThread = new HandlerThread(TAG);
        handlerThread.start();
        this.mLogHandler = new LogHandler(handlerThread.getLooper());
        this.mLogBaseTimeMsString = "";
        this.mLogBaseTimeMs = 0L;
        this.mLogZipIndex = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int compressLog(byte[] bArr, int i10, byte[] bArr2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            int iLibzipCompress = JNILogCompress.LibzipCompress(bArr, i10, bArr2);
            if (iLibzipCompress <= 0) {
                return iLibzipCompress;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("compress log successfully, src size:");
            sb2.append(i10);
            sb2.append(", zip size:");
            sb2.append(iLibzipCompress);
            sb2.append(", cost time:");
            sb2.append(System.currentTimeMillis() - jCurrentTimeMillis);
            sb2.append("ms");
            return iLibzipCompress;
        } catch (Exception e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("compress exception, msg:");
            sb3.append(e10.getMessage());
            return 0;
        }
    }

    private String getFormatTime(long j10) {
        String str;
        long j11 = this.mLogBaseTimeMs;
        long j12 = j10 - j11;
        if (j11 == 0 || j12 >= 60000 || this.mLogBaseTimeMsString.length() < 5) {
            String str2 = new SimpleDateFormat("MM-dd HH:mm:ss:SSS", Locale.getDefault()).format(new Date(j10));
            this.mLogBaseTimeMsString = str2.substring(0, str2.length() - 7);
            this.mLogBaseTimeMs = (j10 / 60000) * 60000;
            return str2;
        }
        String str3 = this.mLogBaseTimeMsString + ":";
        long j13 = j12 / 1000;
        if (j13 >= 10) {
            str = str3 + j13;
        } else {
            str = str3 + "0" + j13;
        }
        long j14 = j12 % 1000;
        String str4 = str + ":";
        if (j14 >= 100) {
            return str4 + j14;
        }
        if (j14 >= 10) {
            return str4 + "0" + j14;
        }
        return str4 + e.V + j14;
    }

    private void sendMessageForCompress(byte[] bArr, int i10) {
        LogHandler logHandler = this.mLogHandler;
        if (logHandler == null) {
            return;
        }
        Message messageObtainMessage = logHandler.obtainMessage();
        messageObtainMessage.what = 1000;
        messageObtainMessage.arg1 = i10;
        messageObtainMessage.obj = bArr;
        this.mLogHandler.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessageForUpload(byte[] bArr) {
        LogHandler logHandler = this.mLogHandler;
        if (logHandler == null) {
            return;
        }
        Message messageObtainMessage = logHandler.obtainMessage();
        messageObtainMessage.what = 1001;
        messageObtainMessage.obj = bArr;
        this.mLogHandler.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void uploadData(byte[] bArr) {
        LogUploadCallBack logUploadCallBack;
        if (bArr == null || bArr.length == 0 || (logUploadCallBack = mUploadLogCB) == null) {
            return;
        }
        try {
            boolean zUpload = logUploadCallBack.upload(bArr);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("upload log archvice result:");
            sb2.append(zUpload ? "success" : "false");
        } catch (Exception e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("upload log exception, msg:");
            sb3.append(e10.getMessage());
        }
    }

    @Override // org.hmwebrtc.log.LogApi.LogSink
    public void onLog(int i10, LogApi.LogMessage logMessage) {
    }

    public void setUploadLogCB(LogUploadCallBack logUploadCallBack) {
        mUploadLogCB = logUploadCallBack;
    }

    @Override // org.hmwebrtc.log.LogApi.LogSink
    public void onLog(List<LogApi.LogMessage> list) {
        this.mLogZipIndex++;
        this.mCacheLogStr = "Archive Index: " + this.mLogZipIndex + "\n";
        for (LogApi.LogMessage logMessage : list) {
            this.mCacheLogStr += ((((LogApi.getLevelString(logMessage.level) + " " + getFormatTime(logMessage.time) + "  ") + " [" + logMessage.pid + ":" + logMessage.tid + "]") + "  " + logMessage.tag) + "  " + logMessage.msg);
        }
        sendMessageForCompress(this.mCacheLogStr.getBytes(), this.mCacheLogStr.getBytes().length);
    }
}
