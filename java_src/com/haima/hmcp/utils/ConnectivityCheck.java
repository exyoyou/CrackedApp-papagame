package com.haima.hmcp.utils;

import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class ConnectivityCheck {
    private static final long ELAPSED_THRESHOLD_MS = TimeUnit.SECONDS.toMillis(15);
    private static final int PING_TIME_OUT = 5000;
    private static final String TAG = "ConnectivityCheck";
    private static final int TCP_CONNECT_TIME_OUT = 10000;
    private static final int WHAT = 0;
    public static boolean mConnCheckEnable;
    private static ConnectivityCheck sInstance;
    private final CheckHandler mHandler;

    /* JADX INFO: renamed from: com.haima.hmcp.utils.ConnectivityCheck$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$haima$hmcp$utils$ConnectivityCheck$CheckType;

        static {
            int[] iArr = new int[CheckType.values().length];
            $SwitchMap$com$haima$hmcp$utils$ConnectivityCheck$CheckType = iArr;
            try {
                iArr[CheckType.IPADDRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$haima$hmcp$utils$ConnectivityCheck$CheckType[CheckType.HOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private class CheckHandler extends Handler {
        CheckHandler(Looper looper) {
            super(looper);
        }

        private void logIfExceedsThreshold(long j10, long j11, NamedRunnable namedRunnable, String str) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - j11;
            if (jElapsedRealtime <= j10 || Build.VERSION.SDK_INT < 24) {
                return;
            }
            g.a();
            String str2 = f.a("mm:ss.SSS", Locale.US).format(Long.valueOf(jElapsedRealtime));
            LogUtils.w(ConnectivityCheck.TAG, namedRunnable + " " + str + " " + str2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean post(NamedRunnable namedRunnable, long j10, boolean z10) {
            Message messageObtainMessage = obtainMessage(0, namedRunnable);
            boolean zSendMessageAtFrontOfQueue = z10 ? sendMessageAtFrontOfQueue(messageObtainMessage) : sendMessageDelayed(messageObtainMessage, j10);
            if (!zSendMessageAtFrontOfQueue) {
                LogUtils.w(ConnectivityCheck.TAG, namedRunnable + "not posted since looper is exiting");
            }
            return zSendMessageAtFrontOfQueue;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            NamedRunnable namedRunnable = (NamedRunnable) message.obj;
            LogUtils.i(ConnectivityCheck.TAG, "executing " + namedRunnable);
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            try {
                try {
                    namedRunnable.run();
                } catch (Exception e10) {
                    LogUtils.iUpload(ConnectivityCheck.TAG, String.format("handleMessage get Exception: %s", Utils.exceptionStackTrace(e10)));
                }
            } finally {
                logIfExceedsThreshold(ConnectivityCheck.ELAPSED_THRESHOLD_MS, jElapsedRealtime, namedRunnable, "check spend time:");
            }
        }
    }

    public static class CheckHostTask extends NamedRunnable {
        private String host;
        private int port;

        public CheckHostTask(String str, String str2, int i10) {
            super(str);
            this.host = str2;
            this.port = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder sb2 = new StringBuilder();
            String strDnsCheck = ConnectivityCheck.dnsCheck(this.host);
            sb2.append(String.format("%s check host:%s,port:%d dnsCheckResult:[%s]", this, this.host, Integer.valueOf(this.port), strDnsCheck));
            LogUtils.d(ConnectivityCheck.TAG, "host:" + this.host + "--" + strDnsCheck);
            InetAddress ipv4Address = ConnectivityCheck.getIpv4Address(this.host);
            InetAddress ipv6Address = ConnectivityCheck.getIpv6Address(this.host);
            if (ipv4Address != null) {
                boolean zPingForInetAddress = ConnectivityCheck.pingForInetAddress(this.host, ipv4Address);
                boolean zTcpConnectForInetAddress = ConnectivityCheck.tcpConnectForInetAddress(this.host, this.port, ipv4Address);
                Object[] objArr = new Object[1];
                objArr[0] = zPingForInetAddress ? "Reachable" : "NOT Reachable";
                sb2.append(String.format(",ipv4PingResult:%s", objArr));
                Object[] objArr2 = new Object[1];
                objArr2[0] = zTcpConnectForInetAddress ? "SUCCEED" : "FAILED";
                sb2.append(String.format(",ipv4TcpConnectResult:%s", objArr2));
            }
            if (ipv6Address != null) {
                boolean zPingForInetAddress2 = ConnectivityCheck.pingForInetAddress(this.host, ipv6Address);
                boolean zTcpConnectForInetAddress2 = ConnectivityCheck.tcpConnectForInetAddress(this.host, this.port, ipv6Address);
                Object[] objArr3 = new Object[1];
                objArr3[0] = zPingForInetAddress2 ? "Reachable" : "NOT Reachable";
                sb2.append(String.format(",ipv6PingResult:%s", objArr3));
                Object[] objArr4 = new Object[1];
                objArr4[0] = zTcpConnectForInetAddress2 ? "SUCCEED" : "FAILED";
                sb2.append(String.format(",ipv6TcpConnectResult:%s", objArr4));
            }
            CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_CHECK, sb2.toString());
            LogUtils.d(ConnectivityCheck.TAG, sb2.toString());
        }
    }

    public static class CheckIpTask extends NamedRunnable {
        private String host;
        private int port;

        public CheckIpTask(String str, String str2, int i10) {
            super(str);
            this.host = str2;
            this.port = i10;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            boolean zPingCheck = ConnectivityCheck.pingCheck(this.host);
            boolean zTcpConnectCheck = ConnectivityCheck.tcpConnectCheck(this.host, this.port);
            Object[] objArr = new Object[5];
            objArr[0] = this;
            objArr[1] = this.host;
            objArr[2] = Integer.valueOf(this.port);
            objArr[3] = zPingCheck ? "Reachable" : "NOT Reachable";
            objArr[4] = zTcpConnectCheck ? "SUCCEED" : "FAILED";
            String str = String.format("%s check ip:%s , port:%d pingResult:%s,doTcpConnectResult:%s", objArr);
            CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_CHECK, str);
            LogUtils.d(ConnectivityCheck.TAG, str);
        }
    }

    public enum CheckType {
        IPADDRESS,
        HOST
    }

    public static abstract class NamedRunnable implements Runnable {
        public final String name;

        public NamedRunnable(String str) {
            this.name = str;
        }

        public String toString() {
            return "ConnectivityCheck[" + this.name + "]";
        }
    }

    private ConnectivityCheck() {
        this(createHandlerThread());
    }

    public static void config(int i10) {
        LogUtils.ifmt(TAG, "config set connCheckEnable: %d", Integer.valueOf(i10));
        if (i10 <= 0) {
            mConnCheckEnable = false;
        } else {
            mConnCheckEnable = true;
        }
    }

    private static Looper createHandlerThread() {
        HandlerThread handlerThread = new HandlerThread("ConnectivityCheck", 10);
        handlerThread.start();
        return handlerThread.getLooper();
    }

    private NamedRunnable createTask(CheckType checkType, String str, String str2, int i10) {
        int i11 = AnonymousClass1.$SwitchMap$com$haima$hmcp$utils$ConnectivityCheck$CheckType[checkType.ordinal()];
        if (i11 == 1) {
            return new CheckIpTask(str, str2, i10);
        }
        if (i11 != 2) {
            return null;
        }
        return new CheckHostTask(str, str2, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String dnsCheck(String str) {
        try {
            return dumpAddresses(InetAddress.getAllByName(str));
        } catch (Exception e10) {
            LogUtils.iUpload(TAG, String.format("%s dnsCheck InetAddress got Exception: %s", str, Utils.exceptionStackTrace(e10)));
            return str;
        }
    }

    private static String dumpAddresses(InetAddress[] inetAddressArr) {
        StringBuilder sb2 = new StringBuilder();
        for (InetAddress inetAddress : inetAddressArr) {
            sb2.append(inetAddress.getHostAddress());
            sb2.append(";");
        }
        return sb2.toString();
    }

    public static ConnectivityCheck getInstance() {
        if (sInstance == null) {
            sInstance = new ConnectivityCheck();
        }
        return sInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InetAddress getIpv4Address(String str) {
        try {
            for (InetAddress inetAddress : InetAddress.getAllByName(str)) {
                if (inetAddress instanceof Inet4Address) {
                    return inetAddress;
                }
            }
            return null;
        } catch (Exception e10) {
            LogUtils.iUpload(TAG, String.format("%s getIpv4Address got Exception: %s", str, Utils.exceptionStackTrace(e10)));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InetAddress getIpv6Address(String str) {
        try {
            for (InetAddress inetAddress : InetAddress.getAllByName(str)) {
                if (inetAddress instanceof Inet6Address) {
                    return inetAddress;
                }
            }
            return null;
        } catch (Exception e10) {
            LogUtils.iUpload(TAG, String.format("%s getIpv6Address got Exception: %s", str, Utils.exceptionStackTrace(e10)));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean pingCheck(String str) {
        try {
            return InetAddress.getByName(str).isReachable(5000);
        } catch (Exception e10) {
            LogUtils.iUpload(TAG, String.format("pingCheck get Exception: %s", Utils.exceptionStackTrace(e10)));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean pingForInetAddress(String str, InetAddress inetAddress) {
        try {
            return inetAddress.isReachable(5000);
        } catch (Exception e10) {
            LogUtils.iUpload(TAG, String.format("%s pingForInetAddress got Exception: %s", str, Utils.exceptionStackTrace(e10)));
            return false;
        }
    }

    private void postRunnable(NamedRunnable namedRunnable) {
        CheckHandler checkHandler = this.mHandler;
        if (checkHandler == null || namedRunnable == null) {
            return;
        }
        checkHandler.post(namedRunnable, 0L, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean tcpConnectCheck(String str, int i10) throws Throwable {
        Socket socket = null;
        try {
            try {
                Socket socket2 = new Socket();
                try {
                    socket2.connect(new InetSocketAddress(str, i10), 10000);
                    boolean zIsConnected = socket2.isConnected();
                    try {
                        socket2.close();
                        return zIsConnected;
                    } catch (Exception unused) {
                        return zIsConnected;
                    }
                } catch (Exception e10) {
                    e = e10;
                    socket = socket2;
                    LogUtils.iUpload(TAG, String.format("doTcpConnect for %s, got Exception: %s", str, Utils.exceptionStackTrace(e)));
                    if (socket != null) {
                        try {
                            socket.close();
                        } catch (Exception unused2) {
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    socket = socket2;
                    if (socket != null) {
                        try {
                            socket.close();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean tcpConnectForInetAddress(String str, int i10, InetAddress inetAddress) {
        try {
            return tcpConnectCheck(inetAddress.getHostAddress(), i10);
        } catch (Exception e10) {
            LogUtils.iUpload(TAG, String.format("%s tcpConnectForInetAddress got Exception: %s", str, Utils.exceptionStackTrace(e10)));
            return false;
        }
    }

    public void postCheckTask(String str, String str2, int i10) {
        if (!mConnCheckEnable) {
            LogUtils.d(TAG, "postCheck not run for feature is disabled");
            return;
        }
        if (TextUtils.isEmpty(str2) || i10 <= 0 || i10 > 65535 || TextUtils.isEmpty(str)) {
            LogUtils.iUpload(TAG, String.format("postCheck parameter is not valid %s:%s:%s", str, str2, Integer.valueOf(i10)));
            return;
        }
        if (Utils.isIpv4Address(str2) || Utils.isIPv6Address(str2)) {
            postRunnable(createTask(CheckType.IPADDRESS, str, str2, i10));
        } else if (Utils.isHostName(str2)) {
            postRunnable(createTask(CheckType.HOST, str, str2, i10));
        }
    }

    public void release() {
        CheckHandler checkHandler = this.mHandler;
        if (checkHandler != null) {
            Looper looper = checkHandler.getLooper();
            LogUtils.d(TAG, "Destroying EventLoop for thread " + looper.getThread().getName() + " (id: " + looper.getThread().getId() + ")");
            looper.quit();
        }
        sInstance = null;
    }

    private ConnectivityCheck(Looper looper) {
        this.mHandler = new CheckHandler(looper);
        LogUtils.d(TAG, "Created EventLoop for thread '" + looper.getThread().getName() + "(id: " + looper.getThread().getId() + ")'");
    }
}
