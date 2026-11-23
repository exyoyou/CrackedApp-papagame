package com.efs.sdk.pa;

import android.content.Context;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.pa.config.ConfigManager;
import com.efs.sdk.pa.config.IEfsReporter;
import com.efs.sdk.pa.config.PackageLevel;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public class PAFactory {
    private static final long DEFAULT_TIME_OUT_TIME = 2000;
    private static final long INVALID_TIME_OUT_TIME = 0;
    private static final long MAX_TIME_OUT_TIME = 4000;
    private static final String TAG = "pafactory";
    static final ThreadLocal<PA> sThreadLocal = new ThreadLocal<>();
    private ConfigManager mConfigManager;
    private Context mContext;
    private HashMap<String, String> mExtend;
    private IPaClient mPaClient;
    private EfsReporter mReporter;
    private IEfsReporter mReporterFactory;
    private String mSerial;
    private String mSver;
    private long mTimeOutTime;
    private PATraceListener mTraceListener;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private PackageLevel f26588a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private IEfsReporter f26589b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f26590c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Context f26591d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f26592e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private HashMap<String, String> f26593f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f26594g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f26595h = PAFactory.DEFAULT_TIME_OUT_TIME;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private PATraceListener f26596i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private IPaClient f26597j;

        public Builder(Context context, IEfsReporter iEfsReporter) {
            if (context == null) {
                throw new RuntimeException("context Should Not null");
            }
            if (iEfsReporter == null) {
                throw new RuntimeException("reporter Should Not Empty");
            }
            this.f26589b = iEfsReporter;
            this.f26591d = context;
        }

        public PAFactory build() {
            if (this.f26588a != null) {
                return new PAFactory(this.f26591d, this.f26588a, this.f26589b, this.f26590c, this.f26592e, this.f26593f, this.f26594g, this.f26595h, this.f26596i, this.f26597j);
            }
            throw new RuntimeException(String.format("%s Should Not Null", ""));
        }

        public Builder extendLogInfo(HashMap<String, String> map) {
            this.f26593f = map;
            return this;
        }

        public Builder isNewInstall(boolean z10) {
            this.f26590c = z10;
            return this;
        }

        public Builder packageLevel(PackageLevel packageLevel) {
            this.f26588a = packageLevel;
            return this;
        }

        public Builder serial(String str) {
            this.f26592e = str;
            return this;
        }

        public Builder setPaClient(IPaClient iPaClient) {
            this.f26597j = iPaClient;
            return this;
        }

        public Builder sver(String str) {
            this.f26594g = str;
            return this;
        }

        public Builder timeoutTime(long j10) {
            if (j10 <= 0) {
                this.f26595h = PAFactory.DEFAULT_TIME_OUT_TIME;
            } else {
                if (j10 > PAFactory.MAX_TIME_OUT_TIME) {
                    this.f26595h = PAFactory.DEFAULT_TIME_OUT_TIME;
                    return this;
                }
                this.f26595h = j10;
            }
            return this;
        }

        public Builder traceListener(PATraceListener pATraceListener) {
            this.f26596i = pATraceListener;
            return this;
        }
    }

    public ConfigManager getConfigManager() {
        return this.mConfigManager;
    }

    public Context getContext() {
        return this.mContext;
    }

    public HashMap<String, String> getExtend() {
        return this.mExtend;
    }

    public IPaClient getPaClient() {
        return this.mPaClient;
    }

    public synchronized PA getPaInstance() {
        PA cVar;
        ThreadLocal<PA> threadLocal = sThreadLocal;
        cVar = threadLocal.get();
        if (cVar == null) {
            cVar = new com.efs.sdk.pa.a.c(this.mConfigManager.enableTracer());
            cVar.registerPAANRListener(this.mContext, new a(this), this.mTimeOutTime);
            threadLocal.set(cVar);
        }
        return cVar;
    }

    public EfsReporter getReporter() {
        if (this.mReporter == null) {
            IEfsReporter iEfsReporter = this.mReporterFactory;
            this.mReporter = iEfsReporter != null ? iEfsReporter.getReporter() : null;
        }
        return this.mReporter;
    }

    public String getSerial() {
        return this.mSerial;
    }

    public String getSver() {
        return this.mSver;
    }

    public PATraceListener getTraceListener() {
        return this.mTraceListener;
    }

    private PAFactory(Context context, PackageLevel packageLevel, IEfsReporter iEfsReporter, boolean z10, String str, HashMap<String, String> map, String str2, long j10, PATraceListener pATraceListener, IPaClient iPaClient) {
        this.mReporterFactory = iEfsReporter;
        this.mSerial = str;
        this.mExtend = map;
        this.mSver = str2;
        this.mContext = context;
        this.mTraceListener = pATraceListener;
        this.mPaClient = iPaClient;
        this.mTimeOutTime = j10;
        this.mConfigManager = new ConfigManager(context, packageLevel, iEfsReporter, z10);
    }
}
