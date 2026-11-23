package com.haima.hmcp.websocket;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.dns.DnsManager;
import com.haima.hmcp.dns.interfaces.DnsAsyncCallBack;
import com.haima.hmcp.utils.ConfigUtil;
import com.haima.hmcp.utils.ConnectivityCheck;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.StringUtils;
import com.haima.hmcp.utils.Utils;
import com.haima.hmcp.websocket.exceptions.ParseFailed;
import com.haima.hmcp.websocket.exceptions.WebSocketException;
import com.haima.hmcp.websocket.interfaces.IThreadMessenger;
import com.haima.hmcp.websocket.interfaces.IWebSocket;
import com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler;
import com.haima.hmcp.websocket.messages.BinaryMessage;
import com.haima.hmcp.websocket.messages.CannotConnect;
import com.haima.hmcp.websocket.messages.ClientHandshake;
import com.haima.hmcp.websocket.messages.Close;
import com.haima.hmcp.websocket.messages.ConnectionLost;
import com.haima.hmcp.websocket.messages.CountlyMessage;
import com.haima.hmcp.websocket.messages.Error;
import com.haima.hmcp.websocket.messages.Message;
import com.haima.hmcp.websocket.messages.Ping;
import com.haima.hmcp.websocket.messages.PingError;
import com.haima.hmcp.websocket.messages.Pong;
import com.haima.hmcp.websocket.messages.ProtocolViolation;
import com.haima.hmcp.websocket.messages.RawTextMessage;
import com.haima.hmcp.websocket.messages.ServerError;
import com.haima.hmcp.websocket.messages.ServerHandshake;
import com.haima.hmcp.websocket.messages.TextMessage;
import com.haima.hmcp.websocket.types.ConnectionResponse;
import com.haima.hmcp.websocket.types.WebSocketOptions;
import com.haima.hmcp.websocket.utils.AndroidThreadMessenger;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes5.dex */
public class WebSocketConnection implements IWebSocket {
    private static final int MAIN_THREAD_WAIT_TIME_MAX_MS = 200;
    public static final String TAG = "com.haima.hmcp.websocket.WebSocketConnection";
    private String localIp;
    private boolean mActive;
    private BufferedOutputStream mBufferedOutputStream;
    private Context mContext;
    private ScheduledExecutorService mExecutor;
    private ScheduledFuture<?> mHandShakeTask;
    private InetAddress mInetAddress;
    private InetSocketAddress mInetSocketAddress;
    private IThreadMessenger mMessenger;
    private String mName;
    private WebSocketOptions mOptions;
    private ScheduledFuture<?> mPingerTask;
    private boolean mPrevConnected;
    private WebSocketReader mReader;
    private Socket mSocket;
    private ScheduledFuture<?> mSocketTimeoutTask;
    private String mTag;
    private ScheduledFuture<?> mTimeoutTask;
    private Connection mWebSocket;
    private ExecutorService mWriterThread;
    private IWebSocketConnectionHandler mWsHandler;
    private Map<String, String> mWsHeaders;
    private String mWsHost;
    private String mWsPath;
    private int mWsPort;
    private String mWsQuery;
    private String mWsReslovedIp;
    private String mWsScheme;
    private String[] mWsSubprotocols;
    private URI mWsUri;
    private boolean onCloseCalled;
    private long receivePongTime;
    private long sendPing2Time;
    private long sendPingTime;
    private int pingTimeoutCount = 0;
    private boolean isReconnected = false;
    private final Runnable mHandShakeRunner = new Runnable() { // from class: com.haima.hmcp.websocket.WebSocketConnection.1
        @Override // java.lang.Runnable
        public void run() {
            LogUtils.d(WebSocketConnection.TAG, "mHandShakeRunner run()");
            WebSocketConnection.this._connectFailed();
            WebSocketConnection.this.mMessenger.notify(new CannotConnect("mHandShakeRunner"));
        }
    };
    private final Runnable mSocketTimeoutRunnable = new Runnable() { // from class: com.haima.hmcp.websocket.a
        @Override // java.lang.Runnable
        public final void run() {
            this.f34112b.lambda$new$0();
        }
    };
    private final Runnable mAutoPinger = new Runnable() { // from class: com.haima.hmcp.websocket.WebSocketConnection.2
        @Override // java.lang.Runnable
        public void run() {
            if (WebSocketConnection.this.isConnected()) {
                WebSocketConnection.this.sendPingTime = System.currentTimeMillis();
                WebSocketConnection.this.sendPing();
                WebSocketConnection webSocketConnection = WebSocketConnection.this;
                webSocketConnection.mTimeoutTask = webSocketConnection.getExecutor("mTimeoutTask").schedule(WebSocketConnection.this.mPingTimeout, WebSocketConnection.this.mOptions.getAutoPingTimeout(), TimeUnit.SECONDS);
                LogUtils.d(WebSocketConnection.TAG, WebSocketConnection.this.mName + ", sendPingTime = " + WebSocketConnection.this.sendPingTime + ", pingTimeout = " + WebSocketConnection.this.mOptions.getAutoPingTimeout() + ", timeoutCount = " + WebSocketConnection.this.pingTimeoutCount + ", hashCode=" + hashCode());
            }
        }
    };
    private final Runnable mPingTimeout = new Runnable() { // from class: com.haima.hmcp.websocket.WebSocketConnection.3
        @Override // java.lang.Runnable
        public void run() {
            if (!WebSocketConnection.this.isConnected()) {
                WebSocketConnection.this.pingTimeoutCount = 0;
                return;
            }
            if (WebSocketConnection.this.isReconnected) {
                WebSocketConnection.access$808(WebSocketConnection.this);
                int i10 = WebSocketConnection.this.pingTimeoutCount;
                LogUtils.d(WebSocketConnection.TAG, "mName:" + WebSocketConnection.this.mName + ", mTag:" + WebSocketConnection.this.mTag + ", pingTimeoutCount = " + WebSocketConnection.this.pingTimeoutCount + ", countMax = " + WebSocketConnection.this.mOptions.getAutoPingTimeoutCountMax());
                if (WebSocketConnection.this.pingTimeoutCount >= WebSocketConnection.this.mOptions.getAutoPingTimeoutCountMax()) {
                    WebSocketConnection.this.pingTimeoutCount = 0;
                    WebSocketConnection.this.mMessenger.notify(new PingError("WebSocket ping timed out."));
                    ConnectivityCheck.getInstance().postCheckTask(WebSocketConnection.this.mName, WebSocketConnection.this.mWsReslovedIp, WebSocketConnection.this.mWsPort);
                }
                WebSocketConnection.this.countlyNotify(Constants.COUNTYLY_WEBSOCKET_HEART_BEAT_TIME_OUT_COUNT, "tag:" + WebSocketConnection.this.mTag + ";isReconnected:" + WebSocketConnection.this.isReconnected + ";pingTimeoutCount:" + i10 + ";hashCode:" + hashCode());
            }
        }
    };

    private class WebSocketConnector extends Thread {
        private boolean mNeedParseIp;

        public WebSocketConnector(boolean z10) {
            this.mNeedParseIp = z10;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Thread.currentThread().setName("WebSocketConnector");
            if (Constants.CONFIG_WEBSOCKET_CONNECT_TIMEOUT_SWITCH) {
                LogUtils.d(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "mSocketTimeoutTask start=");
                WebSocketConnection webSocketConnection = WebSocketConnection.this;
                webSocketConnection.mSocketTimeoutTask = webSocketConnection.getExecutor("mSocketTimeoutTask").schedule(WebSocketConnection.this.mSocketTimeoutRunnable, (long) (WebSocketConnection.this.mOptions.getSocketConnectTimeout() + 1000), TimeUnit.MILLISECONDS);
            }
            try {
                if ("wss".equalsIgnoreCase(WebSocketConnection.this.mWsScheme)) {
                    WebSocketConnection.this.mSocket = SSLSocketFactory.getDefault().createSocket();
                } else {
                    WebSocketConnection.this.mSocket = SocketFactory.getDefault().createSocket();
                }
                if (WebSocketConnection.this.mOptions.getTLSEnabledProtocols() != null) {
                    WebSocketConnection webSocketConnection2 = WebSocketConnection.this;
                    webSocketConnection2.setEnabledProtocolsOnSSLSocket(webSocketConnection2.mSocket, WebSocketConnection.this.mOptions.getTLSEnabledProtocols());
                }
                if (this.mNeedParseIp) {
                    try {
                        WebSocketConnection.this.mWsReslovedIp = DnsManager.getInstance().getHostAddressSync(WebSocketConnection.this.mWsHost);
                        LogUtils.ifmt(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "connect url: %s host: %s with DnsManager reslove ip: %s", WebSocketConnection.this.mWsUri.toString(), WebSocketConnection.this.mWsHost, WebSocketConnection.this.mWsReslovedIp);
                        WebSocketConnection.this.countlyNotify(Constants.COUNTLY_DNS_WEBSOCKET_RESLOVED, StringUtils.encodeToBase64String(String.format(Locale.US, "websocket:%s,url: %s, host: %s -> ip: %s", WebSocketConnection.this.mName, WebSocketConnection.this.mWsUri.toString(), WebSocketConnection.this.mWsHost, WebSocketConnection.this.mWsReslovedIp)));
                    } catch (Exception e10) {
                        WebSocketConnection.this.countlyNotify("12200", "WebSocketConnector -> DnsManager.getHostAddress got Exception: " + Utils.exceptionStackTrace(e10));
                        WebSocketConnection webSocketConnection3 = WebSocketConnection.this;
                        webSocketConnection3.mWsReslovedIp = webSocketConnection3.mWsHost;
                    }
                }
                WebSocketConnection.this.mInetSocketAddress = new InetSocketAddress(WebSocketConnection.this.mWsReslovedIp, WebSocketConnection.this.mWsPort);
                InetAddress address = WebSocketConnection.this.mInetSocketAddress.getAddress();
                if (Constants.CONFIG_COUNTLY_DEBUG_SWITCH) {
                    CountlyUtil.recordEvent("12200", "countly debug inetAddress:  mWsReslovedIp=" + WebSocketConnection.this.mWsReslovedIp + " inetAddress=" + address + " mName=" + WebSocketConnection.this.mName + " mSocket=" + WebSocketConnection.this.mSocket);
                }
                if (address == null) {
                    WebSocketConnection.this._connectFailed();
                    WebSocketConnection.this.mMessenger.notify(new CannotConnect(String.format("InetSocketAddress(%s,%s).getAddress failed", WebSocketConnection.this.mWsReslovedIp, Integer.valueOf(WebSocketConnection.this.mWsPort))));
                    return;
                }
                byte[] address2 = address.getAddress();
                if (Constants.CONFIG_COUNTLY_DEBUG_SWITCH) {
                    CountlyUtil.recordEvent("12200", "countly debug address:  mWsReslovedIp=" + WebSocketConnection.this.mWsReslovedIp + " address=" + address2 + " mName=" + WebSocketConnection.this.mName + " mSocket=" + WebSocketConnection.this.mSocket);
                }
                if (address2 == null) {
                    WebSocketConnection.this._connectFailed();
                    WebSocketConnection.this.mMessenger.notify(new CannotConnect(String.format("mInetAddress.getAddress() failed,mWsReslovedIp:%s,mWsPort%s", WebSocketConnection.this.mWsReslovedIp, Integer.valueOf(WebSocketConnection.this.mWsPort))));
                    return;
                }
                WebSocketConnection webSocketConnection4 = WebSocketConnection.this;
                webSocketConnection4.mInetAddress = InetAddress.getByAddress(webSocketConnection4.mWsHost, address2);
                if (Constants.CONFIG_COUNTLY_DEBUG_SWITCH) {
                    CountlyUtil.recordEvent("12200", "countly debug before connect:  mWsReslovedIp=" + WebSocketConnection.this.mWsReslovedIp + " mInetAddress=" + WebSocketConnection.this.mInetAddress + " mName=" + WebSocketConnection.this.mName + " mSocket=" + WebSocketConnection.this.mSocket);
                }
                WebSocketConnection.this.mSocket.connect(new InetSocketAddress(WebSocketConnection.this.mInetAddress, WebSocketConnection.this.mWsPort), WebSocketConnection.this.mOptions.getSocketConnectTimeout());
                if (Constants.CONFIG_COUNTLY_DEBUG_SWITCH) {
                    CountlyUtil.recordEvent("12200", "countly debug after connect:  mWsReslovedIp=" + WebSocketConnection.this.mWsReslovedIp + " mInetAddress=" + WebSocketConnection.this.mInetAddress + " mName=" + WebSocketConnection.this.mName + " mSocket=" + WebSocketConnection.this.mSocket);
                }
                WebSocketConnection.this.mSocket.setSoTimeout(WebSocketConnection.this.mOptions.getSocketReceiveTimeout());
                WebSocketConnection.this.mSocket.setTcpNoDelay(WebSocketConnection.this.mOptions.getTcpNoDelay());
                WebSocketConnection webSocketConnection5 = WebSocketConnection.this;
                webSocketConnection5.mExecutor = webSocketConnection5.getExecutor("mExecutor");
                if (!WebSocketConnection.this.isConnected()) {
                    WebSocketConnection.this._connectFailed();
                    WebSocketConnection.this.mMessenger.notify(new CannotConnect("Could not connect to WebSocket server"));
                    return;
                }
                try {
                    WebSocketConnection.this.createReader();
                    WebSocketConnection.this.createWriter();
                    ClientHandshake clientHandshake = new ClientHandshake(WebSocketConnection.this.mWsHost + ":" + WebSocketConnection.this.mWsPort);
                    clientHandshake.mPath = WebSocketConnection.this.mWsPath;
                    clientHandshake.mQuery = WebSocketConnection.this.mWsQuery;
                    clientHandshake.mSubprotocols = WebSocketConnection.this.mWsSubprotocols;
                    clientHandshake.mHeaderList = WebSocketConnection.this.mWsHeaders;
                    WebSocketConnection.this.sendMessage(clientHandshake);
                    WebSocketConnection.this.mPrevConnected = true;
                    WebSocketConnection webSocketConnection6 = WebSocketConnection.this;
                    webSocketConnection6.mHandShakeTask = webSocketConnection6.getExecutor("mHandShakeTask").schedule(WebSocketConnection.this.mHandShakeRunner, WebSocketConnection.this.mOptions.getHandShakeTimeoutSec(), TimeUnit.SECONDS);
                    if (Constants.CONFIG_COUNTLY_DEBUG_SWITCH) {
                        CountlyUtil.recordEvent("12200", "countly debug ClientHandshake  mName=" + WebSocketConnection.this.mName + " mSocket=" + WebSocketConnection.this.mSocket);
                    }
                } catch (Exception e11) {
                    WebSocketConnection.this.mMessenger.notify(new Error(e11));
                }
            } catch (IOException e12) {
                WebSocketConnection.this._connectFailed();
                WebSocketConnection.this.mMessenger.notify(new CannotConnect(e12.getMessage()));
                if (Constants.CONFIG_COUNTLY_DEBUG_SWITCH) {
                    CountlyUtil.recordEvent("12200", "countly debug IOException:  e.getMessage()=" + e12.getMessage() + " mName=" + WebSocketConnection.this.mName + " mSocket=" + WebSocketConnection.this.mSocket);
                }
            } catch (Exception e13) {
                WebSocketConnection.this._connectFailed();
                WebSocketConnection.this.mMessenger.notify(new CannotConnect(e13.getMessage()));
                if (Constants.CONFIG_COUNTLY_DEBUG_SWITCH) {
                    CountlyUtil.recordEvent("12200", "countly debug Exception:  e.getMessage()=" + e13.getMessage() + " mName=" + WebSocketConnection.this.mName + " mSocket=" + WebSocketConnection.this.mSocket);
                }
            }
        }
    }

    private static class WebSocketDiscardPolicy extends ThreadPoolExecutor.DiscardPolicy {
        private WebSocketDiscardPolicy() {
        }

        @Override // java.util.concurrent.ThreadPoolExecutor.DiscardPolicy, java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            LogUtils.e(WebSocketConnection.TAG, "r:" + runnable.toString() + ",e:" + threadPoolExecutor.toString());
        }
    }

    private static class WebsocketThreadPoolExecutor extends ThreadPoolExecutor {
        public WebsocketThreadPoolExecutor(int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
            super(i10, i11, j10, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
        }
    }

    public WebSocketConnection(String str, Context context) {
        StringBuilder sb2 = new StringBuilder();
        String str2 = TAG;
        sb2.append(str2);
        sb2.append(",");
        sb2.append(this.mName);
        sb2.append(",");
        sb2.append(this.mTag);
        LogUtils.d(sb2.toString(), "Created");
        this.mName = str;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        } else {
            LogUtils.e(str2, "WebSocketConnection context is null");
        }
        createHandler();
        this.mActive = false;
        this.mPrevConnected = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _connectFailed() {
        try {
            ConfigUtil.updateNetInfo(this.mContext);
            DnsManager.getInstance().networkFailed(this.mWsUri.toString(), this.mWsHost, this.mWsReslovedIp);
            if (t7.a.e(this.mContext).booleanValue() && !t7.a.f97141e.equalsIgnoreCase(CountlyUtil.mNetStatus)) {
                this.localIp = t7.a.c();
            }
            countlyNotify(Constants.COUNTLY_WEBSOCKET_CONNECT_FAILED_INFO, Utils.safeToSocketString(this.localIp, this.mInetAddress, this.mInetSocketAddress));
            ConnectivityCheck.getInstance().postCheckTask(this.mName, this.mWsReslovedIp, this.mWsPort);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    static /* synthetic */ int access$808(WebSocketConnection webSocketConnection) {
        int i10 = webSocketConnection.pingTimeoutCount;
        webSocketConnection.pingTimeoutCount = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeAndCleanup(boolean... zArr) {
        LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "closeAndCleanup");
        closeReaderThread(false);
        if (isConnected()) {
            try {
                closeUnderlyingSocket(zArr);
            } catch (InterruptedException e10) {
                LogUtils.e(TAG + "," + this.mName + "," + this.mTag, e10.getMessage(), e10);
            }
        }
        closeWriterThread(zArr);
        if ((zArr == null || zArr.length <= 0) ? true : zArr[0]) {
            closeReaderThread(true);
        }
        this.onCloseCalled = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeReaderThread(boolean z10) {
        WebSocketReader webSocketReader = this.mReader;
        if (webSocketReader == null) {
            LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "mReader already NULL");
            return;
        }
        webSocketReader.quit();
        if (z10) {
            try {
                this.mReader.join(200L);
            } catch (InterruptedException e10) {
                LogUtils.e(TAG + "," + this.mName + "," + this.mTag, e10.getMessage(), e10);
            }
        }
    }

    private void closeUnderlyingSocket(boolean... zArr) throws InterruptedException {
        Thread thread = new Thread(new Runnable() { // from class: com.haima.hmcp.websocket.WebSocketConnection.4
            @Override // java.lang.Runnable
            public void run() {
                if (WebSocketConnection.this.isConnected()) {
                    try {
                        WebSocketConnection.this.mSocket.close();
                    } catch (IOException e10) {
                        LogUtils.e(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, e10.getMessage(), e10);
                    }
                }
            }
        });
        thread.start();
        if ((zArr == null || zArr.length <= 0) ? true : zArr[0]) {
            thread.join(200L);
            LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "is closed by join()");
        }
    }

    private void closeWriterThread(boolean... zArr) {
        ExecutorService executorService = this.mWriterThread;
        if (executorService != null) {
            boolean z10 = (zArr == null || zArr.length <= 0) ? true : zArr[0];
            try {
                executorService.shutdown();
                StringBuilder sb2 = new StringBuilder();
                String str = TAG;
                sb2.append(str);
                sb2.append(",");
                sb2.append(this.mName);
                sb2.append(",");
                sb2.append(this.mTag);
                LogUtils.e(sb2.toString(), "is shut down: " + this.mWriterThread.isShutdown());
                if (z10) {
                    this.mWriterThread.awaitTermination(5L, TimeUnit.SECONDS);
                    LogUtils.e(str + "," + this.mName + "," + this.mTag, "is terminated: " + this.mWriterThread.isTerminated());
                }
            } catch (InterruptedException e10) {
                LogUtils.e(TAG + "," + this.mName + "," + this.mTag, e10.getMessage(), e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void countlyNotify(String str, String str2) {
        this.mMessenger.notify(new CountlyMessage(str, str2));
    }

    private void createHandler() {
        AndroidThreadMessenger androidThreadMessenger = new AndroidThreadMessenger();
        this.mMessenger = androidThreadMessenger;
        androidThreadMessenger.setOnMessageListener(new IThreadMessenger.OnMessageListener() { // from class: com.haima.hmcp.websocket.WebSocketConnection.8
            @Override // com.haima.hmcp.websocket.interfaces.IThreadMessenger.OnMessageListener
            public void onMessage(Object obj) {
                if (WebSocketConnection.this.onCloseCalled) {
                    LogUtils.d(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "onClose called already, ignore message:" + obj.toString());
                    return;
                }
                if (WebSocketConnection.this.mWsHandler == null) {
                    return;
                }
                if (obj instanceof TextMessage) {
                    TextMessage textMessage = (TextMessage) obj;
                    if (WebSocketConnection.this.mWsHandler != null) {
                        WebSocketConnection.this.mWsHandler.onMessage(textMessage.mPayload);
                        return;
                    }
                    LogUtils.d(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "could not call onTextMessage() .. handler already NULL");
                    return;
                }
                if (obj instanceof RawTextMessage) {
                    RawTextMessage rawTextMessage = (RawTextMessage) obj;
                    if (WebSocketConnection.this.mWsHandler != null) {
                        WebSocketConnection.this.mWsHandler.onMessage(rawTextMessage.mPayload, false);
                        return;
                    }
                    LogUtils.d(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "could not call onRawTextMessage() .. handler already NULL");
                    return;
                }
                if (obj instanceof BinaryMessage) {
                    BinaryMessage binaryMessage = (BinaryMessage) obj;
                    if (WebSocketConnection.this.mWsHandler != null) {
                        WebSocketConnection.this.mWsHandler.onMessage(binaryMessage.mPayload, true);
                        return;
                    }
                    LogUtils.d(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "could not call onBinaryMessage() .. handler already NULL");
                    return;
                }
                if (obj instanceof Ping) {
                    Ping ping = (Ping) obj;
                    StringBuilder sb2 = new StringBuilder();
                    String str = WebSocketConnection.TAG;
                    sb2.append(str);
                    sb2.append(",");
                    sb2.append(WebSocketConnection.this.mName);
                    sb2.append(",");
                    sb2.append(WebSocketConnection.this.mTag);
                    LogUtils.d(sb2.toString(), "WebSocket Ping received");
                    if (ping.mPayload == null) {
                        if (WebSocketConnection.this.mWsHandler != null) {
                            WebSocketConnection.this.mWsHandler.onPing();
                        }
                    } else if (WebSocketConnection.this.mWsHandler != null) {
                        WebSocketConnection.this.mWsHandler.onPing(ping.mPayload);
                    }
                    LogUtils.d(str + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "WebSocket Pong sent");
                    return;
                }
                if (obj instanceof Pong) {
                    Pong pong = (Pong) obj;
                    if (pong.mPayload == null) {
                        if (WebSocketConnection.this.mWsHandler != null) {
                            WebSocketConnection.this.mWsHandler.onPong();
                        }
                    } else if (WebSocketConnection.this.mWsHandler != null) {
                        WebSocketConnection.this.mWsHandler.onPong(pong.mPayload);
                    }
                    WebSocketConnection.this.receivePongTime = System.currentTimeMillis();
                    String str2 = WebSocketConnection.TAG;
                    LogUtils.d(str2, "RecvPong = " + WebSocketConnection.this.receivePongTime);
                    WebSocketConnection.this.pingTimeoutCount = 0;
                    WebSocketConnection.this.pingTimeoutCount = 0;
                    if (WebSocketConnection.this.mTimeoutTask != null) {
                        WebSocketConnection.this.mTimeoutTask.cancel(true);
                    }
                    if (WebSocketConnection.this.mWsHandler != null) {
                        WebSocketConnection.this.mWsHandler.onHeartBeat(IWebSocketConnectionHandler.HeartBeatState.RECEIVE_PANG_SUCCESS, "");
                    }
                    LogUtils.d(str2 + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "WebSocket Pong received");
                    return;
                }
                if (obj instanceof Close) {
                    Close close = (Close) obj;
                    int i10 = close.mCode == 1000 ? 1 : 3;
                    if (close.mIsReply) {
                        LogUtils.d(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "WebSocket Close received (" + close.mCode + " - " + close.mReason + ")");
                        WebSocketConnection.this.closeAndCleanup(new boolean[0]);
                        WebSocketConnection.this.onClose(i10, close.mReason);
                        return;
                    }
                    if (WebSocketConnection.this.mActive) {
                        WebSocketConnection.this.closeReaderThread(false);
                        WebSocketConnection.this.sendMessage(new Close(1000, true));
                        WebSocketConnection.this.mActive = false;
                        return;
                    }
                    LogUtils.d(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "WebSocket Close received (" + close.mCode + " - " + close.mReason + ")");
                    WebSocketConnection.this.closeAndCleanup(new boolean[0]);
                    WebSocketConnection.this.onClose(i10, close.mReason);
                    return;
                }
                if (!(obj instanceof ServerHandshake)) {
                    if (obj instanceof CannotConnect) {
                        WebSocketConnection.this.failConnection(2, ((CannotConnect) obj).reason);
                        return;
                    }
                    if (obj instanceof ConnectionLost) {
                        WebSocketConnection.this.failConnection(3, ((ConnectionLost) obj).reason);
                        return;
                    }
                    if (obj instanceof ProtocolViolation) {
                        WebSocketConnection.this.failConnection(4, "WebSocket protocol violation");
                        return;
                    }
                    if (obj instanceof Error) {
                        WebSocketConnection.this.failConnection(5, "WebSocket internal error (" + ((Error) obj).mException.toString() + ")");
                        return;
                    }
                    if (obj instanceof ServerError) {
                        WebSocketConnection.this.failConnection(6, "Server error " + ((ServerError) obj).mStatusMessage);
                        return;
                    }
                    if (!(obj instanceof CountlyMessage)) {
                        WebSocketConnection.this.processAppMessage(obj);
                        return;
                    }
                    CountlyMessage countlyMessage = (CountlyMessage) obj;
                    if (WebSocketConnection.this.mWsHandler != null) {
                        WebSocketConnection.this.mWsHandler.onMessage(countlyMessage.toString());
                        return;
                    }
                    return;
                }
                if (WebSocketConnection.this.mHandShakeTask != null) {
                    WebSocketConnection.this.mHandShakeTask.cancel(true);
                }
                if (WebSocketConnection.this.mSocketTimeoutTask != null) {
                    LogUtils.d(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "mSocketTimeoutTask cancel");
                    WebSocketConnection.this.mSocketTimeoutTask.cancel(true);
                }
                ServerHandshake serverHandshake = (ServerHandshake) obj;
                StringBuilder sb3 = new StringBuilder();
                String str3 = WebSocketConnection.TAG;
                sb3.append(str3);
                sb3.append(",");
                sb3.append(WebSocketConnection.this.mName);
                sb3.append(",");
                sb3.append(WebSocketConnection.this.mTag);
                LogUtils.d(sb3.toString(), "opening handshake received");
                if (WebSocketConnection.this.mWsHandler == null) {
                    LogUtils.d(str3 + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "could not call onOpen() .. handler already NULL");
                    return;
                }
                try {
                    WebSocketConnection.this.countlyNotify(Constants.COUNTLY_WEBSOCKET_CONNECT_SUCCEED_INFO, Utils.safeToSocketString(WebSocketConnection.this.mSocket));
                    String str4 = (String) WebSocketConnection.this.getOrDefault(serverHandshake.headers, "sec-websocket-protocol", null);
                    WebSocketConnection.this.mWsHandler.setConnection(WebSocketConnection.this);
                    WebSocketConnection.this.mWsHandler.onConnect(new ConnectionResponse(str4));
                    WebSocketConnection.this.mWsHandler.onOpen();
                    if (WebSocketConnection.this.mHandShakeTask != null) {
                        WebSocketConnection.this.mHandShakeTask.cancel(true);
                    }
                    LogUtils.d(str3 + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "onOpen() called, ready to rock.");
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(WebSocketConnection.this.mName);
                    stringBuffer.append(" websocket handshake success, ");
                    stringBuffer.append("auto ping interval:");
                    stringBuffer.append(WebSocketConnection.this.mOptions.getAutoPingInterval());
                    stringBuffer.append(",");
                    stringBuffer.append("auto ping timeout:");
                    stringBuffer.append(WebSocketConnection.this.mOptions.getAutoPingTimeout());
                    LogUtils.d(str3 + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, stringBuffer.toString());
                    if (WebSocketConnection.this.mOptions.getAutoPingInterval() > 0) {
                        if (WebSocketConnection.this.mPingerTask != null) {
                            WebSocketConnection.this.mPingerTask.cancel(true);
                        }
                        WebSocketConnection webSocketConnection = WebSocketConnection.this;
                        webSocketConnection.mPingerTask = webSocketConnection.getExecutor("mPingerTask").scheduleAtFixedRate(WebSocketConnection.this.mAutoPinger, WebSocketConnection.this.mOptions.getAutoPingInterval(), WebSocketConnection.this.mOptions.getAutoPingInterval(), TimeUnit.SECONDS);
                        LogUtils.d(str3, "start mPingerTask at Handshake() " + WebSocketConnection.this.mOptions.getAutoPingInterval());
                    }
                } catch (Exception e10) {
                    LogUtils.e(WebSocketConnection.TAG, "onMessage exception" + e10);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createReader() throws IOException {
        WebSocketReader webSocketReader = new WebSocketReader(this.mMessenger, this.mSocket, this.mOptions, "WebSocketReader");
        this.mReader = webSocketReader;
        webSocketReader.start();
        LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "WS reader created and started");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createWriter() throws IOException {
        this.mWriterThread = new WebsocketThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new WebSocketDiscardPolicy());
        this.mBufferedOutputStream = new BufferedOutputStream(this.mSocket.getOutputStream(), this.mOptions.getMaxFramePayloadSize() + 14);
        this.mWebSocket = new Connection(this.mOptions);
        LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "WS writer created and started");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failConnection(int i10, String str) {
        StringBuilder sb2 = new StringBuilder();
        String str2 = TAG;
        sb2.append(str2);
        sb2.append(",");
        sb2.append(this.mName);
        sb2.append(",");
        sb2.append(this.mTag);
        LogUtils.d(sb2.toString(), "fail connection [code = " + i10 + ", reason = " + str);
        closeReaderThread(false);
        closeWriterThread(new boolean[0]);
        if (isConnected()) {
            try {
                closeUnderlyingSocket(new boolean[0]);
            } catch (InterruptedException e10) {
                LogUtils.e(TAG + "," + this.mName + "," + this.mTag, e10.getMessage(), e10);
            }
        } else {
            LogUtils.d(str2 + "," + this.mName + "," + this.mTag, "Socket already closed");
        }
        closeReaderThread(true);
        onClose(i10, str);
        LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "Worker threads stopped");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ScheduledExecutorService getExecutor(final String str) {
        ScheduledExecutorService scheduledExecutorService = this.mExecutor;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            this.mExecutor = new ScheduledThreadPoolExecutor(1, new ThreadPoolExecutor.DiscardPolicy() { // from class: com.haima.hmcp.websocket.WebSocketConnection.10
                @Override // java.util.concurrent.ThreadPoolExecutor.DiscardPolicy, java.util.concurrent.RejectedExecutionHandler
                public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                    LogUtils.e(WebSocketConnection.TAG, WebSocketConnection.this.mName + ",r:" + runnable.toString() + ",e:" + threadPoolExecutor.toString());
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("WebSocketConnection ");
                    sb2.append(str);
                    sb2.append(" rejectedExecution");
                    CountlyUtil.recordErrorEvent(sb2.toString());
                }
            });
        }
        return this.mExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> T getOrDefault(Map<?, ?> map, Object obj, T t10) {
        return map.containsKey(obj) ? (T) map.get(obj) : t10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        LogUtils.d(TAG, "mSocketTimeoutRunnable run(),mName=" + this.mName);
        CountlyUtil.recordEvent("12200", "mSocketTimeoutRunnable run  mName=" + this.mName + " mSocket=" + this.mSocket);
        _connectFailed();
        this.mMessenger.notify(new CannotConnect("WebSocket connect timeout"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClose(int i10, String str) {
        boolean zScheduleReconnect = (i10 == 2 || i10 == 3) ? scheduleReconnect() : false;
        ScheduledFuture<?> scheduledFuture = this.mPingerTask;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture2 = this.mTimeoutTask;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture3 = this.mHandShakeTask;
        if (scheduledFuture3 != null) {
            scheduledFuture3.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture4 = this.mSocketTimeoutTask;
        if (scheduledFuture4 != null) {
            scheduledFuture4.cancel(true);
            LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "mSocketTimeoutTask cancel");
        }
        ScheduledExecutorService scheduledExecutorService = this.mExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.mExecutor = null;
        }
        this.mMessenger.cleanup();
        this.onCloseCalled = true;
        IWebSocketConnectionHandler iWebSocketConnectionHandler = this.mWsHandler;
        if (iWebSocketConnectionHandler != null) {
            try {
                if (zScheduleReconnect) {
                    iWebSocketConnectionHandler.onClose(7, str);
                } else {
                    iWebSocketConnectionHandler.onClose(i10, str);
                }
            } catch (Exception e10) {
                LogUtils.e(TAG + "," + this.mName + "," + this.mTag, e10.getMessage(), e10);
            }
        } else {
            LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "mWsHandler already NULL");
        }
        this.pingTimeoutCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processAppMessage(Object obj) {
        if (obj instanceof PingError) {
            PingError pingError = (PingError) obj;
            if (this.mWsHandler != null) {
                StringBuilder sb2 = new StringBuilder();
                String str = TAG;
                sb2.append(str);
                sb2.append(",");
                sb2.append(this.mName);
                sb2.append(",");
                sb2.append(this.mTag);
                LogUtils.d(sb2.toString(), "Ping-Debug PingError send SEND_PING_FAIL");
                this.mActive = false;
                this.mWsHandler.onHeartBeat(IWebSocketConnectionHandler.HeartBeatState.SEND_PING_FAIL, pingError.reason);
                this.mMessenger.notify(new Close(7, pingError.reason));
                LogUtils.d(str, "Notify_COSE_RECONNECT");
            }
        }
    }

    private boolean scheduleReconnect() {
        int reconnectInterval = this.mOptions.getReconnectInterval();
        boolean z10 = this.mActive && this.mPrevConnected && reconnectInterval > 0;
        if (z10) {
            LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "Reconnection scheduled");
            this.mMessenger.postDelayed(new Runnable() { // from class: com.haima.hmcp.websocket.WebSocketConnection.7
                @Override // java.lang.Runnable
                public void run() {
                    LogUtils.d(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "Reconnecting...");
                    WebSocketConnection.this.reconnect();
                }
            }, (long) reconnectInterval);
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEnabledProtocolsOnSSLSocket(Socket socket, String[] strArr) {
        String[] enabledProtocols;
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            if (Constants.IS_DEBUG) {
                String[] supportedProtocols = sSLSocket.getSupportedProtocols();
                if (supportedProtocols != null) {
                    LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "TLS Support Protocols: " + supportedProtocols);
                }
                String[] enabledProtocols2 = sSLSocket.getEnabledProtocols();
                if (enabledProtocols2 != null) {
                    LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "TLS Enable Protocols before set: " + enabledProtocols2);
                }
            }
            sSLSocket.setEnabledProtocols(strArr);
            if (!Constants.IS_DEBUG || (enabledProtocols = sSLSocket.getEnabledProtocols()) == null) {
                return;
            }
            LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "TLS Enable Protocols after set: " + enabledProtocols);
        }
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public void connect(String str, IWebSocketConnectionHandler iWebSocketConnectionHandler) throws WebSocketException {
        connect(str, null, iWebSocketConnectionHandler, null, null);
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public synchronized void cutOff() {
        ScheduledFuture<?> scheduledFuture = this.mPingerTask;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture2 = this.mTimeoutTask;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture3 = this.mHandShakeTask;
        if (scheduledFuture3 != null) {
            scheduledFuture3.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture4 = this.mSocketTimeoutTask;
        if (scheduledFuture4 != null) {
            scheduledFuture4.cancel(true);
            LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "mSocketTimeoutTask cancel");
        }
        closeAndCleanup(new boolean[0]);
        ScheduledExecutorService scheduledExecutorService = this.mExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.mExecutor = null;
        }
        this.mMessenger.cleanup();
        this.onCloseCalled = true;
        this.mWsHandler = null;
    }

    public long getPingPongCostTime() {
        return this.receivePongTime - this.sendPingTime;
    }

    public String getTag() {
        return this.mTag + "_" + hashCode();
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public boolean isConnected() {
        Socket socket = this.mSocket;
        return (socket == null || !socket.isConnected() || this.mSocket.isClosed()) ? false : true;
    }

    public boolean reconnect() {
        if (isConnected() || this.mWsUri == null) {
            return false;
        }
        this.mMessenger.postDelayed(new Runnable() { // from class: com.haima.hmcp.websocket.WebSocketConnection.5
            @Override // java.lang.Runnable
            public void run() {
                WebSocketConnection.this.onCloseCalled = false;
                WebSocketConnection.this.pingTimeoutCount = 0;
                WebSocketConnection.this.connect();
            }
        }, 600L);
        return true;
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public void sendClose() {
        sendClose(1000);
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public void sendMessage(String str) {
        sendMessage(new TextMessage(str));
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public void sendPing() {
        sendMessage(new Ping());
        IWebSocketConnectionHandler iWebSocketConnectionHandler = this.mWsHandler;
        if (iWebSocketConnectionHandler != null) {
            iWebSocketConnectionHandler.onHeartBeat(IWebSocketConnectionHandler.HeartBeatState.SEND_PING_SUCCESS, "");
        }
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public void sendPong() {
        sendMessage(new Pong());
    }

    public void setReconnected(boolean z10) {
        this.isReconnected = z10;
    }

    public void setTag(String str) {
        if (TextUtils.isEmpty(str)) {
            this.mTag = Long.toString(System.currentTimeMillis());
        } else {
            this.mTag = str;
        }
        this.mTag = getTag();
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public void connect(String str, IWebSocketConnectionHandler iWebSocketConnectionHandler, WebSocketOptions webSocketOptions) throws WebSocketException {
        connect(str, null, iWebSocketConnectionHandler, webSocketOptions, null);
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public void sendClose(int i10) {
        sendClose(i10, null);
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public void sendMessage(byte[] bArr, boolean z10) {
        if (z10) {
            sendMessage(new BinaryMessage(bArr));
        } else {
            sendMessage(new RawTextMessage(bArr));
        }
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public void sendPong(byte[] bArr) {
        sendMessage(new Pong(bArr));
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public void connect(String str, String[] strArr, IWebSocketConnectionHandler iWebSocketConnectionHandler) throws WebSocketException {
        connect(str, strArr, iWebSocketConnectionHandler, new WebSocketOptions(), null);
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public void sendClose(int i10, String str) {
        sendMessage(new Close(i10, str));
        this.onCloseCalled = false;
        this.mActive = false;
        this.mPrevConnected = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void sendMessage(final Message message) {
        ExecutorService executorService = this.mWriterThread;
        if (executorService != null && !executorService.isShutdown() && !this.mWriterThread.isTerminated()) {
            this.mWriterThread.submit(new Runnable() { // from class: com.haima.hmcp.websocket.WebSocketConnection.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        WebSocketConnection.this.mBufferedOutputStream.write(WebSocketConnection.this.mWebSocket.send(message));
                        WebSocketConnection.this.mBufferedOutputStream.flush();
                        Message message2 = message;
                        if ((message2 instanceof Close) && ((Close) message2).mIsReply) {
                            WebSocketConnection.this.mMessenger.notify(message);
                        }
                    } catch (ParseFailed e10) {
                        e = e10;
                        LogUtils.e(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, e.getMessage(), e);
                        WebSocketConnection.this.mMessenger.notify(new Error(e));
                    } catch (SocketException e11) {
                        LogUtils.d(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, "run() : SocketException (" + e11.toString() + ")");
                        WebSocketConnection.this.mMessenger.notify(new ConnectionLost(null));
                    } catch (IOException e12) {
                        e = e12;
                        LogUtils.e(WebSocketConnection.TAG + "," + WebSocketConnection.this.mName + "," + WebSocketConnection.this.mTag, e.getMessage(), e);
                        WebSocketConnection.this.mMessenger.notify(new Error(e));
                    }
                }
            });
        }
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public synchronized void connect(String str, String[] strArr, IWebSocketConnectionHandler iWebSocketConnectionHandler, WebSocketOptions webSocketOptions, Map<String, String> map) throws WebSocketException {
        if (!isConnected()) {
            try {
                URI uri = new URI(str);
                this.mWsUri = uri;
                String scheme = uri.getScheme();
                this.mWsScheme = scheme;
                if (scheme != null && ("ws".equalsIgnoreCase(scheme) || "wss".equalsIgnoreCase(this.mWsScheme))) {
                    if (this.mWsUri.getPort() == -1) {
                        if ("ws".equalsIgnoreCase(this.mWsScheme)) {
                            this.mWsPort = 80;
                        } else {
                            this.mWsPort = 443;
                        }
                    } else {
                        this.mWsPort = this.mWsUri.getPort();
                    }
                    if (this.mWsUri.getHost() != null) {
                        this.mWsHost = this.mWsUri.getHost();
                        if (this.mWsUri.getRawPath() != null && !this.mWsUri.getRawPath().equals("")) {
                            this.mWsPath = this.mWsUri.getRawPath();
                        } else {
                            this.mWsPath = e.F0;
                        }
                        if (this.mWsUri.getRawQuery() != null && !this.mWsUri.getRawQuery().equals("")) {
                            this.mWsQuery = this.mWsUri.getRawQuery();
                        } else {
                            this.mWsQuery = null;
                        }
                        this.mWsSubprotocols = strArr;
                        this.mWsHeaders = map;
                        this.mWsHandler = iWebSocketConnectionHandler;
                        if (this.mOptions == null) {
                            if (webSocketOptions == null) {
                                this.mOptions = new WebSocketOptions();
                            } else {
                                this.mOptions = new WebSocketOptions(webSocketOptions);
                            }
                        } else if (webSocketOptions != null) {
                            this.mOptions = new WebSocketOptions(webSocketOptions);
                        }
                        LogUtils.d(TAG, "pintInterval = " + this.mOptions.getAutoPingInterval() + ", pingTimeout = " + this.mOptions.getAutoPingTimeout() + ", timeoutCountMax = " + this.mOptions.getAutoPingTimeoutCountMax());
                        this.mActive = true;
                        this.onCloseCalled = false;
                        connect();
                    } else {
                        throw new WebSocketException("no host specified in WebSocket URI");
                    }
                } else {
                    throw new WebSocketException("unsupported scheme for WebSocket URI");
                }
            } catch (URISyntaxException unused) {
                throw new WebSocketException("invalid WebSocket URI");
            }
        } else {
            throw new WebSocketException("already connected");
        }
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public void sendPing(byte[] bArr) {
        sendMessage(new Ping(bArr));
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocket
    public synchronized void cutOff(boolean z10) {
        ScheduledFuture<?> scheduledFuture = this.mPingerTask;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture2 = this.mTimeoutTask;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture3 = this.mHandShakeTask;
        if (scheduledFuture3 != null) {
            scheduledFuture3.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture4 = this.mSocketTimeoutTask;
        if (scheduledFuture4 != null) {
            scheduledFuture4.cancel(true);
            LogUtils.d(TAG + "," + this.mName + "," + this.mTag, "mSocketTimeoutTask cancel");
        }
        closeAndCleanup(z10);
        ScheduledExecutorService scheduledExecutorService = this.mExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.mExecutor = null;
        }
        this.mMessenger.cleanup();
        this.onCloseCalled = true;
        this.mWsHandler = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connect() {
        if (DnsManager.getInstance().mOpenAsyncParser) {
            LogUtils.d(TAG, this.mName + " start getHostAddressListASync:" + this.mWsHost);
            DnsManager.getInstance().getHostAddressListASync(this.mContext, this.mName, Arrays.asList(this.mWsHost), new DnsAsyncCallBack() { // from class: com.haima.hmcp.websocket.WebSocketConnection.6
                @Override // com.haima.hmcp.dns.interfaces.DnsAsyncCallBack
                public void dnsAsyncCallback(ConcurrentHashMap<String, String> concurrentHashMap) {
                    WebSocketConnection webSocketConnection = WebSocketConnection.this;
                    webSocketConnection.mWsReslovedIp = concurrentHashMap.get(webSocketConnection.mWsHost);
                    LogUtils.ifmt(WebSocketConnection.TAG, "dnsAsyncCallback Websockets: %s,url: %s, host: %s -> ip: %s", WebSocketConnection.this.mName, WebSocketConnection.this.mWsUri.toString(), WebSocketConnection.this.mWsHost, WebSocketConnection.this.mWsReslovedIp);
                    WebSocketConnection.this.countlyNotify(Constants.COUNTLY_DNS_WEBSOCKET_RESLOVED, StringUtils.encodeToBase64String(String.format(Locale.US, "dnsAsyncCallback Websockets: %s,url: %s, host: %s -> ip: %s", WebSocketConnection.this.mName, WebSocketConnection.this.mWsUri.toString(), WebSocketConnection.this.mWsHost, WebSocketConnection.this.mWsReslovedIp)));
                    WebSocketConnection.this.new WebSocketConnector(false).start();
                }
            });
            return;
        }
        LogUtils.d(TAG, this.mName + " start getHostAddressListSync:" + this.mWsHost);
        new WebSocketConnector(true).start();
    }
}
