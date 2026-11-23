package org.webrtc.haima;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.hmwebrtc.utils.FiledStringParser;
import org.hmwebrtc.utils.PerfdogJankCounter;
import org.hmwebrtc.utils.PerfdogJankReport;

/* JADX INFO: loaded from: classes10.dex */
class JankStatisticsTool {
    private static final String CLOUD_JANK_EGLDRAW_KEY = "HMRTC_VideoJank_EglDraw_V1";
    private static final String CLOUD_JANK_EGLRECV_KEY = "HMRTC_VideoJank_EglRecv_V1";
    private static final String CLOUD_JANK_NATIVE_KEY = "HMRTC_VideoJank_V1";
    private static final String CLOUD_JANK_PERFCAT_KEY = "HMRTC_VideoJank_Perfcat_V1";
    private static final String CLOUD_JANK_REPORT_KEY = "HMRTC_VideoJank_Report_V1";
    private static String TAG = "JankStatisticsTool";
    private ToolConfig mConfig;
    private PerfdogJankReport mJankreport;
    private NativeJankCounterHelper mNativeJankCounter;
    private PerfCatCounter mPerfCat;
    private PerfdogJankCounterHelper mRecvJankCounter;
    private PerfdogJankCounter mRenderCounter;
    private PerfdogJankCounterHelper mRenderJankCounter;
    private long mStartTimems;
    private boolean mUseNativeOpt;
    private boolean mUseTextureRender;

    private static class EgljankConfig {
        private long frameTimeCorrectedMs;
        private boolean mEnable;
        private boolean mStat;

        EgljankConfig(String str) {
            parseConfig(str);
        }

        private void parseConfig(String str) {
            this.mEnable = false;
            if (str == null || str.length() == 0) {
                return;
            }
            FiledStringParser filedStringParser = new FiledStringParser(str);
            boolean z10 = filedStringParser.getIntValue("enable", 0) == 1;
            if (z10) {
                this.mStat = filedStringParser.getIntValue("stat", 0) == 1;
                this.frameTimeCorrectedMs = filedStringParser.getIntValue("frame_time_corrected_ms", 8);
            }
            this.mEnable = z10;
        }

        public boolean isEnable() {
            return this.mEnable;
        }
    }

    private static class NativeJankCounterHelper {
        private NativeJankInfo mJankInfo = new NativeJankInfo();
        private long mLastJankDurationMs = 0;
        private long mLastUpdateTimems = 0;
        private PerfdogJankReport mReport;

        NativeJankCounterHelper(PerfdogJankReport perfdogJankReport, String str) {
            this.mReport = perfdogJankReport;
            perfdogJankReport.addCategory("c_jank", false);
            this.mReport.addCategory("c_bjank", false);
            this.mReport.addCategory("c_fps", false);
            this.mReport.addCategory("c_JT", false);
            this.mReport.addCategory("c_lsJT", false);
            this.mReport.addCategory("c_lsJTms", false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void update(long j10, long j11, NativeJankInfo nativeJankInfo) {
            long j12 = nativeJankInfo.bigJankDuration + nativeJankInfo.jankDuration;
            this.mReport.addAccumulativeValue("c_jank", j10, nativeJankInfo.bigJankCount + nativeJankInfo.jankCount);
            this.mReport.addAccumulativeValue("c_bjank", j10, nativeJankInfo.bigJankCount);
            this.mReport.addValue("c_fps", j10, nativeJankInfo.fps);
            if (j11 != 0) {
                this.mReport.addValue("c_JT", j10, j12 / j11);
            }
            this.mReport.addAccumulativeValue("c_lsJTms", j10, j12);
            long j13 = this.mLastUpdateTimems;
            long j14 = j13 != 0 ? j10 - j13 : 0L;
            long j15 = this.mLastJankDurationMs;
            long j16 = j15 != 0 ? j12 - j15 : 0L;
            if (j14 != 0) {
                this.mReport.addValue("c_lsJT", j10, j16 / j14);
            }
            this.mLastUpdateTimems = j10;
            this.mLastJankDurationMs = j12;
            synchronized (this.mJankInfo) {
                NativeJankInfo nativeJankInfo2 = this.mJankInfo;
                nativeJankInfo2.duration = j11;
                nativeJankInfo2.jankCount = nativeJankInfo.jankCount;
                nativeJankInfo2.bigJankCount = nativeJankInfo.bigJankCount;
                nativeJankInfo2.jankDuration = nativeJankInfo.jankDuration;
                nativeJankInfo2.bigJankDuration = nativeJankInfo.bigJankDuration;
                nativeJankInfo2.duration = j11;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void writeSummary() {
            NativeJankInfo nativeJankInfo = this.mJankInfo;
            if (nativeJankInfo == null) {
                return;
            }
            synchronized (nativeJankInfo) {
                this.mReport.addSummary("-----------------");
                this.mReport.addSummary("c 云玩时长:" + this.mJankInfo.duration);
                PerfdogJankReport perfdogJankReport = this.mReport;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("c 卡顿时长:");
                NativeJankInfo nativeJankInfo2 = this.mJankInfo;
                sb2.append(nativeJankInfo2.jankDuration + nativeJankInfo2.bigJankDuration);
                perfdogJankReport.addSummary(sb2.toString());
                this.mReport.addSummary("c 小卡顿个数:" + this.mJankInfo.jankCount);
                this.mReport.addSummary("c 大卡顿个数:" + this.mJankInfo.bigJankCount);
            }
        }
    }

    public static class NativeJankInfo {
        public long bigJankCount;
        public long bigJankDuration;
        public long duration;
        public int fps;
        public long jankCount;
        public long jankDuration;
    }

    private static class PerfCatCounter {
        private static final String DEFAULT_DATA_PATH = "/data/local/tmp/out.csv";
        private static final String DEFAULT_LOG_PATH = "/data/local/tmp/output.log";
        private long mCSVFirstTimestampMs = 0;
        private long mFileSize;
        private PerfdogJankCounter.JankInfo mJankInfo;
        private PerfdogJankReport mReport;
        private PerfdogJankCounterHelper mSF;

        PerfCatCounter(PerfdogJankReport perfdogJankReport) {
            this.mReport = perfdogJankReport;
            this.mFileSize = 0L;
            perfdogJankReport.addCategory("pcat_jank", false);
            this.mReport.addCategory("pcat_bjank", false);
            this.mReport.addCategory("pcat_JT", true);
            this.mReport.addCategory("pcat_fps", false);
            this.mReport.addCategory("pcat_1sJT", false);
            this.mReport.addCategory("pcat_1sJTms", false);
            this.mJankInfo = new PerfdogJankCounter.JankInfo();
            EgljankConfig egljankConfig = new EgljankConfig("");
            egljankConfig.mEnable = true;
            egljankConfig.frameTimeCorrectedMs = 0L;
            egljankConfig.mStat = false;
            this.mSF = new PerfdogJankCounterHelper(perfdogJankReport, "SF", egljankConfig, null);
            try {
                File file = new File(DEFAULT_DATA_PATH);
                if (file.exists() && file.isFile()) {
                    this.mFileSize = file.length();
                }
            } catch (Exception unused) {
            }
        }

        private boolean isOpend() {
            try {
                File file = new File(DEFAULT_DATA_PATH);
                return file.exists() && file.isFile() && file.length() != this.mFileSize;
            } catch (Exception unused) {
                return false;
            }
        }

        private void mergeData(long j10) {
            long j11;
            long j12;
            long j13;
            String str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date());
            long j14 = 0;
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(DEFAULT_DATA_PATH), "UTF-8"));
                char c10 = 0;
                j13 = 0;
                j12 = 0;
                int i10 = 0;
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        i10++;
                        if (i10 != 0) {
                            String[] strArrSplit = line.split(",");
                            if (strArrSplit.length >= 8) {
                                long time = Timestamp.valueOf(str + " " + strArrSplit[c10]).getTime();
                                if (this.mCSVFirstTimestampMs == j14) {
                                    this.mCSVFirstTimestampMs = time;
                                }
                                if (time >= j10) {
                                    String str2 = strArrSplit[5];
                                    String str3 = strArrSplit[6];
                                    long j15 = Long.parseLong(strArrSplit[7]);
                                    float f10 = Float.parseFloat(strArrSplit[8]) / 100.0f;
                                    j13 += 1000;
                                    j12 += j15;
                                    this.mReport.addValue("pcat_jank", time, Long.parseLong(str2));
                                    this.mReport.addValue("pcat_bjank", time, Long.parseLong(str3));
                                    this.mReport.addValue("pcat_1sJT", time, f10);
                                    this.mReport.addValue("pcat_fps", time, Long.parseLong(strArrSplit[4]));
                                    this.mReport.addValue("pcat_JT", time, j12 / j13);
                                    this.mReport.addValue("pcat_1sJTms", time, j15);
                                    str = str;
                                    bufferedReader = bufferedReader;
                                    j14 = 0;
                                }
                                c10 = 0;
                            }
                        }
                        c10 = 0;
                    } catch (IOException e10) {
                        e = e10;
                        j11 = j13;
                        String unused = JankStatisticsTool.TAG;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(" perfcat merge data failed: ");
                        sb2.append(e.toString());
                        j13 = j11;
                    }
                }
                bufferedReader.close();
            } catch (IOException e11) {
                e = e11;
                j11 = 0;
                j12 = 0;
            }
            PerfdogJankCounter.JankInfo jankInfo = this.mJankInfo;
            jankInfo.jankDuration = j12;
            jankInfo.duration = j13;
        }

        private void parseLog(long j10) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(DEFAULT_LOG_PATH), "UTF-8"));
                char c10 = 0;
                String str = "";
                long j11 = 0;
                long j12 = 0;
                boolean z10 = false;
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        bufferedReader.close();
                        return;
                    }
                    String[] strArrSplit = line.split(" ");
                    if (strArrSplit.length == 8) {
                        String strReplace = strArrSplit[c10].replace(net.lingala.zip4j.util.e.F0, "-");
                        str = strArrSplit[1];
                        long time = Timestamp.valueOf(strReplace + " " + str).getTime();
                        if (!z10) {
                            j11 = this.mCSVFirstTimestampMs - time;
                            z10 = true;
                        }
                        long j13 = time + j11;
                        if (j13 >= j10) {
                            long j14 = Long.parseLong(strArrSplit[6]);
                            if (j12 != 0) {
                                if (j14 > j12) {
                                    this.mSF.mJankCounter.onRenderFrameTimestamp(j14 / C.MICROS_PER_SECOND);
                                    if (!str.equalsIgnoreCase(str)) {
                                        this.mSF.update(j13, 0L);
                                    }
                                }
                                c10 = 0;
                            }
                            j12 = j14;
                            c10 = 0;
                        }
                        c10 = 0;
                    }
                }
            } catch (IOException e10) {
                String unused = JankStatisticsTool.TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(" perfcat parse log failed: ");
                sb2.append(e10.toString());
            }
        }

        public void dump(long j10) {
            if (isOpend()) {
                try {
                    mergeData(j10);
                } catch (Exception e10) {
                    String unused = JankStatisticsTool.TAG;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("mergeData failed! ");
                    sb2.append(e10.toString());
                }
                String unused2 = JankStatisticsTool.TAG;
                try {
                    parseLog(j10);
                } catch (Exception e11) {
                    String unused3 = JankStatisticsTool.TAG;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("parseLog failed! ");
                    sb3.append(e11.toString());
                }
                writeSummary();
                String unused4 = JankStatisticsTool.TAG;
            }
        }

        public void writeSummary() {
            if (isOpend()) {
                this.mSF.writeSummary();
                this.mReport.addSummary("-----------------");
                this.mReport.addSummary("pcat 云玩时长:" + this.mJankInfo.duration);
                this.mReport.addSummary("pcat卡顿时长:" + this.mJankInfo.jankDuration);
            }
        }
    }

    private static class PerfdogJankCounterHelper {
        private PerfdogJankCounter mJankCounter;
        private PerfdogJankCounter.JankInfo mJankInfo;
        private String mName;
        private PerfdogJankReport mReport;

        PerfdogJankCounterHelper(PerfdogJankReport perfdogJankReport, String str, EgljankConfig egljankConfig, PerfdogJankCounter perfdogJankCounter) {
            this.mReport = perfdogJankReport;
            this.mName = str;
            perfdogJankReport.addCategory(this.mName + "_jank", false);
            this.mReport.addCategory(this.mName + "_bjank", false);
            this.mReport.addCategory(this.mName + "_JT", true);
            this.mReport.addCategory(this.mName + "_fps", false);
            this.mReport.addCategory(this.mName + "_lsJT", false);
            this.mReport.addCategory(this.mName + "_lsJTms", false);
            if (perfdogJankCounter != null) {
                this.mJankCounter = perfdogJankCounter;
            } else if (egljankConfig.isEnable()) {
                this.mJankCounter = new PerfdogJankCounter(0L, egljankConfig.frameTimeCorrectedMs, egljankConfig.mStat, this.mName);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void writeSummary() {
            if (this.mJankInfo != null) {
                this.mReport.addSummary("-----------------");
                this.mReport.addSummary(this.mName + " 云玩时长:" + this.mJankInfo.duration);
                this.mReport.addSummary(this.mName + " 卡顿时长:" + this.mJankInfo.jankDuration);
                this.mReport.addSummary(this.mName + " 卡顿率:" + this.mJankInfo.stutter);
                this.mReport.addSummary(this.mName + " 小卡顿个数:" + this.mJankInfo.jankCount);
                this.mReport.addSummary(this.mName + " 大卡顿个数:" + this.mJankInfo.bigJankCount);
                this.mReport.addSummary(this.mName + " 采样个数:" + this.mJankInfo.frameCount);
            }
        }

        void update(long j10, long j11) {
            PerfdogJankCounter.JankInfo jankInfo = this.mJankCounter.getJankInfo(null);
            this.mReport.addAccumulativeValue(this.mName + "_jank", j10, jankInfo.bigJankCount + jankInfo.jankCount);
            this.mReport.addAccumulativeValue(this.mName + "_bjank", j10, jankInfo.bigJankCount);
            this.mReport.addValue(this.mName + "_JT", j10, jankInfo.stutter);
            PerfdogJankCounter.JankInfo jankInfo2 = this.mJankInfo;
            if (jankInfo2 != null) {
                long j12 = jankInfo.timestampMs - jankInfo2.timestampMs;
                long j13 = ((jankInfo.jankDuration - jankInfo2.jankDuration) + jankInfo.bigJankDuration) - jankInfo2.bigJankDuration;
                if (j12 != 0) {
                    float f10 = j12;
                    this.mReport.addValue(this.mName + "_fps", j10, ((jankInfo.frameCount - this.mJankInfo.frameCount) * 1000.0f) / f10);
                    float f11 = j13;
                    this.mReport.addValue(this.mName + "_lsJT", j10, f11 / f10);
                    this.mReport.addValue(this.mName + "_lsJTms", j10, f11);
                }
            }
            this.mJankInfo = jankInfo;
        }
    }

    private static class ToolConfig {
        private boolean mEnable;
        private String mReportDir;

        ToolConfig(String str) {
            parseConfig(str);
        }

        private void parseConfig(String str) {
            this.mEnable = false;
            if (str == null || str.length() == 0) {
                return;
            }
            FiledStringParser filedStringParser = new FiledStringParser(str);
            boolean z10 = filedStringParser.getIntValue("enable", 0) == 1;
            if (z10) {
                String strTrim = filedStringParser.getStringValue("reportDir", "").trim();
                if (!strTrim.startsWith("|")) {
                    return;
                } else {
                    this.mReportDir = strTrim.replace("|", net.lingala.zip4j.util.e.F0);
                }
            }
            this.mEnable = z10;
        }

        public String getReportDir() {
            return this.mReportDir;
        }

        public boolean isEnable() {
            return this.mEnable;
        }
    }

    private JankStatisticsTool(ToolConfig toolConfig, boolean z10, PerfdogJankCounter perfdogJankCounter) {
        this.mConfig = toolConfig;
        this.mUseTextureRender = z10;
        this.mRenderCounter = perfdogJankCounter;
    }

    public static PerfdogJankCounter createEglRenderJankCounter() {
        EgljankConfig egljankConfig = new EgljankConfig(HmRtcGlobalConfig.getHMRTCValue(CLOUD_JANK_EGLDRAW_KEY, "enable:0,frame_time_corrected_ms:8,stat:0"));
        if (egljankConfig.isEnable()) {
            return new PerfdogJankCounter(0L, egljankConfig.frameTimeCorrectedMs, egljankConfig.mStat, "GLDraw");
        }
        return null;
    }

    public static JankStatisticsTool createJankTool(boolean z10, PerfdogJankCounter perfdogJankCounter) {
        ToolConfig toolConfig = new ToolConfig(HmRtcGlobalConfig.getHMRTCValue(CLOUD_JANK_REPORT_KEY, "enable:0"));
        if (toolConfig.isEnable()) {
            return new JankStatisticsTool(toolConfig, z10, perfdogJankCounter);
        }
        return null;
    }

    private void writeSummary() {
        NativeJankCounterHelper nativeJankCounterHelper = this.mNativeJankCounter;
        if (nativeJankCounterHelper != null) {
            nativeJankCounterHelper.writeSummary();
        }
        PerfdogJankCounterHelper perfdogJankCounterHelper = this.mRecvJankCounter;
        if (perfdogJankCounterHelper != null) {
            perfdogJankCounterHelper.writeSummary();
        }
        PerfdogJankCounterHelper perfdogJankCounterHelper2 = this.mRenderJankCounter;
        if (perfdogJankCounterHelper2 != null) {
            perfdogJankCounterHelper2.writeSummary();
        }
    }

    public boolean create(String str) {
        ToolConfig toolConfig = this.mConfig;
        if (toolConfig == null || !toolConfig.isEnable()) {
            return false;
        }
        this.mStartTimems = System.currentTimeMillis();
        this.mUseNativeOpt = new EgljankConfig(HmRtcGlobalConfig.getHMRTCValue(CLOUD_JANK_NATIVE_KEY, "enable:1")).isEnable();
        String str2 = this.mConfig.getReportDir() + "jankreport_" + str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append(this.mUseTextureRender ? "_T_" : "_S_");
        PerfdogJankReport perfdogJankReport = new PerfdogJankReport((sb2.toString() + (this.mUseNativeOpt ? 1 : 0)) + ".html");
        this.mJankreport = perfdogJankReport;
        perfdogJankReport.addCategory("play_duration", false);
        EgljankConfig egljankConfig = new EgljankConfig(HmRtcGlobalConfig.getHMRTCValue(CLOUD_JANK_EGLRECV_KEY, "enable:0"));
        if (egljankConfig.isEnable()) {
            this.mRecvJankCounter = new PerfdogJankCounterHelper(this.mJankreport, "GLRcv", egljankConfig, null);
        }
        PerfdogJankCounter perfdogJankCounter = this.mRenderCounter;
        if (perfdogJankCounter != null) {
            this.mRenderJankCounter = new PerfdogJankCounterHelper(this.mJankreport, "GLDraw", egljankConfig, perfdogJankCounter);
        }
        if (HmRtcGlobalConfig.getHMRTCValue(CLOUD_JANK_PERFCAT_KEY, "enable:0").contains("enable:1")) {
            this.mPerfCat = new PerfCatCounter(this.mJankreport);
        }
        this.mNativeJankCounter = new NativeJankCounterHelper(this.mJankreport, "c");
        this.mJankreport.start();
        return true;
    }

    public void destroy() {
        if (this.mJankreport != null) {
            writeSummary();
            PerfCatCounter perfCatCounter = this.mPerfCat;
            if (perfCatCounter != null) {
                perfCatCounter.dump(this.mStartTimems);
            }
            this.mJankreport.stop();
        }
    }

    public PerfdogJankCounter getRecvJankCounter() {
        PerfdogJankCounterHelper perfdogJankCounterHelper = this.mRecvJankCounter;
        if (perfdogJankCounterHelper != null) {
            return perfdogJankCounterHelper.mJankCounter;
        }
        return null;
    }

    public void update(NativeJankInfo nativeJankInfo) {
        ToolConfig toolConfig = this.mConfig;
        if (toolConfig == null || !toolConfig.isEnable()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = jCurrentTimeMillis - this.mStartTimems;
        this.mJankreport.addValue("play_duration", jCurrentTimeMillis, j10);
        NativeJankCounterHelper nativeJankCounterHelper = this.mNativeJankCounter;
        if (nativeJankCounterHelper != null) {
            nativeJankCounterHelper.update(jCurrentTimeMillis, j10, nativeJankInfo);
        }
        PerfdogJankCounterHelper perfdogJankCounterHelper = this.mRecvJankCounter;
        if (perfdogJankCounterHelper != null) {
            perfdogJankCounterHelper.update(jCurrentTimeMillis, j10);
        }
        PerfdogJankCounterHelper perfdogJankCounterHelper2 = this.mRenderJankCounter;
        if (perfdogJankCounterHelper2 != null) {
            perfdogJankCounterHelper2.update(jCurrentTimeMillis, j10);
        }
    }
}
