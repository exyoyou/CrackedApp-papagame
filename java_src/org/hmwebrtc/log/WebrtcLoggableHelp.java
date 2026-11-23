package org.hmwebrtc.log;

import android.text.TextUtils;
import java.io.File;
import org.hmwebrtc.ContextUtils;
import org.hmwebrtc.Loggable;
import org.hmwebrtc.Logging;
import org.hmwebrtc.utils.FiledStringParser;
import org.hmwebrtc.utils.PathUtils;

/* JADX INFO: loaded from: classes10.dex */
public class WebrtcLoggableHelp implements Loggable {
    public static final String FIELD_NAME = "HMRtc-Log-V1";
    public static final String HMRTC_LOG_DEBUGMODE_DEFAULT_CFG = "enable:true,level:1,singleThread:false,logcat:false,maxBytes:32768,uploadInterval:5000";
    private static final String HMRTC_LOG_V1_CFG_FILENAME = "HMRtc-Log-V1.cfg";
    public static final String HMRTC_LOG_V1_DEFAULT_CFG = "enable:false,level:2,singleThread:false,logcat:true,logPath:\\sdcard\\hm_rtc_debug\\hm_rtc.log";
    private static final String TAG = "WebrtcLoggableHelp";
    private Config mConfig;
    private String mDefaultLogPath;
    private LogMemSink mLogMemSink;
    private LogApi.LogSink mLogcat;

    public WebrtcLoggableHelp(Config config, String str) {
        this.mDefaultLogPath = str;
        this.mConfig = config;
        if (TextUtils.isEmpty(config.logPath)) {
            this.mConfig.logPath = PathUtils.Inject.getConfigFilePath("hm_rtc.log");
        } else {
            String str2 = this.mConfig.logPath;
            String str3 = File.separator;
            if (str2.indexOf(str3) == -1 && str != null) {
                if (str.endsWith(str3)) {
                    this.mConfig.logPath = str + this.mConfig.logPath;
                } else {
                    this.mConfig.logPath = str + str3 + this.mConfig.logPath;
                }
            }
        }
        initializte();
    }

    public static void DispatchCommand(String str) {
    }

    public static boolean HasInjectConfgFile() {
        return PathUtils.Inject.isExistConfigFile(HMRTC_LOG_V1_CFG_FILENAME);
    }

    private void initializte() {
        if (this.mConfig == null) {
            return;
        }
        this.mLogcat = new LogCatSink();
        if (!LogApi.initializate(this.mConfig.singleThread)) {
            LogApi.terminate();
            LogApi.initializate(this.mConfig.singleThread);
        }
        LogApi.setLevel(this.mConfig.level);
        if (LogApi.getSinkCount() == 0) {
            try {
                LogApi.registerSink(new LogFileSink(this.mConfig.logPath, this.mConfig.maxBytes, null));
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("log file exception. ");
                sb2.append(e10.toString());
            }
        }
        EnableLogcat(this.mConfig.logcat);
        LogApi.e("^_^", "   ");
        LogApi.e("^_^", "************************************* WebrtcLoggableHelp start ************************************************");
        LogApi.e("^_^", "   ");
    }

    private int toLogApiLevel(Logging.Severity severity) {
        if (Logging.Severity.LS_VERBOSE == severity) {
            return 0;
        }
        if (Logging.Severity.LS_INFO == severity) {
            return 2;
        }
        if (Logging.Severity.LS_WARNING == severity) {
            return 3;
        }
        return Logging.Severity.LS_ERROR == severity ? 4 : 0;
    }

    private Logging.Severity toWebrtcLogLevel(int i10) {
        if (i10 == 0) {
            return Logging.Severity.LS_VERBOSE;
        }
        if (2 == i10) {
            return Logging.Severity.LS_INFO;
        }
        if (3 == i10) {
            return Logging.Severity.LS_WARNING;
        }
        return 4 == i10 ? Logging.Severity.LS_ERROR : Logging.Severity.LS_VERBOSE;
    }

    public void EnableLogcat(boolean z10) {
        LogApi.LogSink logSink;
        LogApi.unregisterSink(this.mLogcat);
        if (!z10 || (logSink = this.mLogcat) == null) {
            return;
        }
        LogApi.registerSink(logSink);
        LogApi.e("", "enable logcat...");
    }

    public void close() {
        LogApi.e("^_^", "************************************* WebrtcLoggableHelp stop************************************************");
        LogApi.terminate();
    }

    public Logging.Severity getLevel() {
        return toWebrtcLogLevel(this.mConfig.level);
    }

    @Override // org.hmwebrtc.Loggable
    public void onLogMessage(String str, Logging.Severity severity, String str2) {
        if (Logging.Severity.LS_VERBOSE == severity) {
            LogApi.v(str2, str);
            return;
        }
        if (Logging.Severity.LS_INFO == severity) {
            LogApi.i(str2, str);
            return;
        }
        if (Logging.Severity.LS_WARNING == severity) {
            LogApi.w(str2, str);
        } else if (Logging.Severity.LS_ERROR == severity) {
            LogApi.e(str2, str);
        } else {
            if (Logging.Severity.LS_NONE == severity) {
                return;
            }
            LogApi.v(str2, str);
        }
    }

    public void setLogMemSinkCB(LogUploadCallBack logUploadCallBack) {
        LogMemSink logMemSink = this.mLogMemSink;
        if (logMemSink == null) {
            return;
        }
        logMemSink.setUploadLogCB(logUploadCallBack);
    }

    public static class Config {
        private boolean enable;
        private int level;
        private String logPath;
        private boolean logcat;
        private long maxBytes;
        private boolean singleThread;
        private long uploadInterval;

        public Config() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("load config file:");
            sb2.append(WebrtcLoggableHelp.HMRTC_LOG_V1_CFG_FILENAME);
            extractValue(new FiledStringParser(PathUtils.Inject.getConfigFile(WebrtcLoggableHelp.HMRTC_LOG_V1_CFG_FILENAME), WebrtcLoggableHelp.HMRTC_LOG_V1_DEFAULT_CFG));
        }

        private void extractValue(FiledStringParser filedStringParser) {
            boolean boolValue = filedStringParser.getBoolValue("enable", true);
            this.enable = boolValue;
            if (!boolValue) {
                this.level = 0;
                this.logPath = "";
                this.singleThread = false;
                this.maxBytes = 0L;
                this.uploadInterval = 0L;
                this.logcat = false;
                return;
            }
            this.level = filedStringParser.getIntValue("level", 3);
            this.logPath = filedStringParser.getPathValue("logPath", (ContextUtils.getApplicationContext().getExternalFilesDir(null).getPath() + File.separator) + "hm_rtc_debug/log/hm_rtc.log");
            this.singleThread = filedStringParser.getBoolValue("singleThread", false);
            this.logcat = filedStringParser.getBoolValue("logcat", false);
            this.maxBytes = filedStringParser.getLongValue("maxBytes", 10000000L);
            this.uploadInterval = filedStringParser.getLongValue("uploadInterval", 10000L);
        }

        public String ToString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("");
            sb2.append("enable:");
            sb2.append(this.enable ? "true" : "false");
            String string = sb2.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(string);
            sb3.append(",logcat:");
            sb3.append(this.logcat ? "true" : "false");
            String str = sb3.toString() + ",level:" + this.level;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(str);
            sb4.append(",singleThread:");
            sb4.append(this.singleThread ? "true" : "false");
            return ((sb4.toString() + ",maxBytes:" + this.maxBytes) + ",uploadInterval:" + this.uploadInterval) + ",logPath:" + this.logPath;
        }

        public boolean isEnable() {
            return this.enable;
        }

        public Config(boolean z10, boolean z11, int i10, String str, boolean z12, long j10, long j11) {
            this.enable = z10;
            this.logcat = z11;
            this.level = i10;
            this.singleThread = z12;
            this.maxBytes = j10;
            this.uploadInterval = j11;
            if (TextUtils.isEmpty(str)) {
                this.logPath = (ContextUtils.getApplicationContext().getExternalFilesDir(null).getPath() + File.separator) + "hm_rtc_debug/log/hm_rtc.log";
                return;
            }
            this.logPath = str;
        }

        public Config(String str) {
            extractValue(new FiledStringParser(str));
        }
    }

    public WebrtcLoggableHelp(Config config, String str, String[] strArr) {
        this.mDefaultLogPath = str;
        this.mConfig = config;
        if (!TextUtils.isEmpty(config.logPath)) {
            String str2 = this.mConfig.logPath;
            String str3 = File.separator;
            if (str2.indexOf(str3) == -1 && str != null) {
                if (str.endsWith(str3)) {
                    this.mConfig.logPath = str + this.mConfig.logPath;
                } else {
                    this.mConfig.logPath = str + str3 + this.mConfig.logPath;
                }
            }
        } else {
            this.mConfig.logPath = PathUtils.Inject.getConfigFilePath("hm_rtc.log");
        }
        initializte(strArr);
    }

    private void initializte(String[] strArr) {
        Config config = this.mConfig;
        if (config == null) {
            return;
        }
        if (!LogApi.initializate(config.singleThread, this.mConfig.maxBytes, this.mConfig.uploadInterval, strArr)) {
            LogApi.terminate();
            LogApi.initializate(this.mConfig.singleThread, this.mConfig.maxBytes, this.mConfig.uploadInterval, strArr);
        }
        LogApi.setLevel(this.mConfig.level);
        if (LogApi.getSinkCount() == 0) {
            try {
                LogMemSink logMemSink = new LogMemSink(this.mConfig.maxBytes);
                this.mLogMemSink = logMemSink;
                LogApi.registerSink(logMemSink);
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("log file exception. ");
                sb2.append(e10.toString());
            }
        }
        LogApi.e(TAG, "   ");
        LogApi.e(TAG, "************************************* WebrtcLoggableHelp start ************************************************");
        LogApi.e(TAG, "   ");
    }

    public WebrtcLoggableHelp(String str) {
        Config config = new Config(HMRTC_LOG_V1_DEFAULT_CFG);
        this.mConfig = config;
        config.logPath = str;
        initializte();
    }

    public WebrtcLoggableHelp(String str, int i10) {
        Config config = new Config(HMRTC_LOG_V1_DEFAULT_CFG);
        this.mConfig = config;
        config.logPath = str;
        this.mConfig.maxBytes = i10;
        initializte();
    }
}
