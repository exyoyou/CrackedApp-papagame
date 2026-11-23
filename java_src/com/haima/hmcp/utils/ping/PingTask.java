package com.haima.hmcp.utils.ping;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.NetworkUtil;
import com.xinzhu.overmind.utils.x;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
class PingTask {
    private static final String LINE_SEP = System.getProperty("line.separator");
    private static final String TAG = "NetPingTask";
    private static final int TO_PING = 1;
    private static final int UNKNOW_HOST_RETRY = 2;
    private ExecutorService executor;
    private Handler handler;
    private Context mContext;
    private String mIpAddress;
    private PingCallback mPingCallback;
    private PingPara mPingPara;
    private PingResult mPingResult;
    private int unknowHostRetryCount = -1;
    private boolean isRunning = false;

    private class PingHandler extends Handler {
        public PingHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            LogUtils.d(PingTask.TAG, "handleMessage");
            int i10 = message.what;
            if (i10 == 1) {
                PingTask.this.toPing();
            } else {
                if (i10 != 2) {
                    return;
                }
                PingTask pingTask = PingTask.this;
                pingTask.start(pingTask.mPingPara);
            }
        }
    }

    PingTask() {
    }

    private void checkHandler() {
        if (this.handler == null) {
            synchronized (PingHandler.class) {
                if (this.handler == null) {
                    HandlerThread handlerThread = new HandlerThread(TAG);
                    handlerThread.start();
                    this.handler = new PingHandler(handlerThread.getLooper());
                }
            }
        }
    }

    private void checkThreadPool() {
        if (this.executor == null) {
            synchronized (Executors.class) {
                if (this.executor == null) {
                    this.executor = Executors.newSingleThreadExecutor();
                }
            }
        }
    }

    private void closeIO(Closeable... closeableArr) {
        if (closeableArr == null) {
            return;
        }
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:51:0x0130  */
    public void ping(String str) throws Throwable {
        BufferedReader bufferedReader;
        Process processExec;
        BufferedReader bufferedReader2;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("address is null");
        }
        String str2 = String.format("ping -c %s %s", String.valueOf(this.mPingPara.pingCount), str);
        Closeable closeable = null;
        try {
            processExec = Runtime.getRuntime().exec(x.f90145b);
            try {
                DataOutputStream dataOutputStream = new DataOutputStream(processExec.getOutputStream());
                try {
                    dataOutputStream.write(str2.getBytes());
                    String str3 = LINE_SEP;
                    dataOutputStream.writeBytes(str3);
                    dataOutputStream.flush();
                    dataOutputStream.writeBytes("exit" + str3);
                    dataOutputStream.flush();
                    bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream(), "UTF-8"));
                    try {
                        bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getErrorStream(), "UTF-8"));
                        try {
                            PingResult pingResult = new PingResult();
                            if (bufferedReader.readLine() != null) {
                                while (true) {
                                    String line = bufferedReader.readLine();
                                    if (line == null) {
                                        break;
                                    } else {
                                        pingResult.successAppend(line);
                                    }
                                }
                            }
                            LogUtils.d(TAG, "ping success info: " + pingResult.getSuccessMsg());
                            if (bufferedReader2.readLine() != null) {
                                while (true) {
                                    String line2 = bufferedReader2.readLine();
                                    if (line2 == null) {
                                        break;
                                    } else {
                                        pingResult.errorAppend(line2);
                                    }
                                }
                            }
                            LogUtils.d(TAG, "ping error info: " + pingResult.getErrorMsg());
                            PingResult pingResult2 = (PingResult) pingResult.clone();
                            this.mPingResult = pingResult2;
                            toReport(pingResult2);
                            LogUtils.d(TAG, "new ping delay get.");
                            closeIO(dataOutputStream, bufferedReader, bufferedReader2);
                        } catch (Exception e10) {
                            e = e10;
                            closeable = dataOutputStream;
                            try {
                                e.printStackTrace();
                                closeIO(closeable, bufferedReader, bufferedReader2);
                                if (processExec == null) {
                                    return;
                                }
                            } catch (Throwable th) {
                                th = th;
                                closeIO(closeable, bufferedReader, bufferedReader2);
                                if (processExec != null) {
                                    processExec.destroy();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            closeable = dataOutputStream;
                            closeIO(closeable, bufferedReader, bufferedReader2);
                            if (processExec != null) {
                                processExec.destroy();
                            }
                            throw th;
                        }
                    } catch (Exception e11) {
                        e = e11;
                        bufferedReader2 = null;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader2 = null;
                    }
                } catch (Exception e12) {
                    e = e12;
                    bufferedReader = null;
                    bufferedReader2 = null;
                } catch (Throwable th4) {
                    th = th4;
                    bufferedReader = null;
                    bufferedReader2 = null;
                }
            } catch (Exception e13) {
                e = e13;
                bufferedReader = null;
                bufferedReader2 = null;
            } catch (Throwable th5) {
                th = th5;
                bufferedReader = null;
                bufferedReader2 = null;
            }
        } catch (Exception e14) {
            e = e14;
            bufferedReader = null;
            processExec = null;
            bufferedReader2 = null;
        } catch (Throwable th6) {
            th = th6;
            bufferedReader = null;
            processExec = null;
            bufferedReader2 = null;
        }
        processExec.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String resolveHost(String str) throws UnknownHostException {
        return InetAddress.getByName(str).getHostAddress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retry() {
        this.unknowHostRetryCount++;
        LogUtils.d(TAG, "retry count: " + this.unknowHostRetryCount);
        int i10 = this.unknowHostRetryCount;
        int[] iArr = this.mPingPara.UNKNOW_HOST_RETRY_INTERVALS;
        if (i10 >= iArr.length) {
            LogUtils.d(TAG, "retry failed");
            PingCallback pingCallback = this.mPingCallback;
            if (pingCallback != null) {
                pingCallback.pingFailed(this.mPingPara);
                return;
            } else {
                stop();
                release();
                return;
            }
        }
        if (this.handler != null) {
            long j10 = iArr[i10];
            LogUtils.d(TAG, "retry delay time: " + j10);
            this.handler.sendEmptyMessageDelayed(2, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toPing() {
        ExecutorService executorService = this.executor;
        if (executorService == null) {
            LogUtils.e(TAG, "Ping ExecutorServicePool is null");
        } else {
            executorService.execute(new Runnable() { // from class: com.haima.hmcp.utils.ping.PingTask.1
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    LogUtils.d(PingTask.TAG, "toPing is run");
                    try {
                        if (NetworkUtil.isNetworkConnected(PingTask.this.mContext)) {
                            if (TextUtils.isEmpty(PingTask.this.mIpAddress)) {
                                PingTask pingTask = PingTask.this;
                                pingTask.mIpAddress = pingTask.resolveHost(pingTask.mPingPara.pingHost);
                            }
                            PingTask pingTask2 = PingTask.this;
                            pingTask2.ping(pingTask2.mIpAddress);
                        } else {
                            PingTask.this.mPingResult.min = 0.0d;
                            PingTask.this.mPingResult.max = 0.0d;
                            PingTask.this.mPingResult.avg = 0.0d;
                            PingTask.this.mPingResult.mdev = 0.0d;
                        }
                        if (PingTask.this.handler != null) {
                            PingTask.this.handler.removeMessages(1);
                            PingTask.this.handler.sendEmptyMessageDelayed(1, PingTask.this.mPingPara.pingInterval);
                        }
                    } catch (UnknownHostException e10) {
                        e10.printStackTrace();
                        LogUtils.d(PingTask.TAG, "unknow host and retry");
                        PingTask.this.retry();
                    }
                }
            });
        }
    }

    private void toReport(PingResult pingResult) {
        if (pingResult.isTimeout()) {
            CountlyUtil.recordErrorEvent("ping time out: " + pingResult.getTimeOutMsg());
            return;
        }
        if (pingResult.isValidate()) {
            CountlyUtil.recordEvent(Constants.COUNTYLY_PING_DELAY_INFO, pingResult.toString());
            return;
        }
        CountlyUtil.recordErrorEvent("ping error: " + pingResult.getDelayMsg());
    }

    public PingResult getPingResult() {
        return this.mPingResult;
    }

    public boolean isRunning() {
        return this.isRunning;
    }

    public void release() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.getLooper().quit();
            this.handler = null;
        }
        ExecutorService executorService = this.executor;
        if (executorService != null) {
            executorService.shutdown();
            this.executor = null;
        }
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public void setPingCallback(PingCallback pingCallback) {
        this.mPingCallback = pingCallback;
    }

    public void start(PingPara pingPara) {
        if (pingPara == null) {
            throw new IllegalArgumentException("pingPara is not null");
        }
        if (TextUtils.isEmpty(pingPara.pingHost)) {
            throw new IllegalArgumentException("host is not null");
        }
        try {
            this.mPingPara = (PingPara) pingPara.clone();
        } catch (CloneNotSupportedException unused) {
            this.mPingPara = new PingPara();
        }
        stop();
        checkThreadPool();
        checkHandler();
        this.mIpAddress = null;
        this.isRunning = true;
        this.handler.sendEmptyMessage(1);
    }

    public void stop() {
        this.isRunning = false;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }
}
