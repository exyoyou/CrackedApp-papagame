package com.tencent.cos.task;

import android.text.TextUtils;
import com.tencent.cos.COSConfig;
import com.tencent.cos.model.COSResult;
import com.tencent.cos.network.HttpRequest;
import com.tencent.cos.task.listener.ITaskStateListener;
import com.tencent.cos.utils.QLog;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import net.lingala.zip4j.util.e;
import okhttp3.Call;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Task<T extends COSResult> implements Callable<T> {
    private static String TAG = "com.tencent.cos.task.Task";
    protected volatile Call callTask;
    protected COSConfig config;
    protected Future<T> future;
    protected HttpRequest httpRequest;
    protected OkHttpClient okHttpClient;
    protected TaskState taskState;
    protected ITaskStateListener taskStateListener;
    protected volatile boolean isCancelled = false;
    protected int currentRetryCount = 0;

    public Task(HttpRequest httpRequest, COSConfig cOSConfig, OkHttpClient okHttpClient) {
        this.httpRequest = httpRequest;
        this.config = cOSConfig;
        this.okHttpClient = okHttpClient;
    }

    public synchronized boolean cancel() {
        if (this.callTask != null && !this.callTask.isCanceled()) {
            this.callTask.cancel();
        }
        this.isCancelled = true;
        return true;
    }

    public abstract COSResult doGetRequest();

    public abstract COSResult doPostRequest();

    public String getDomainUrl(HttpRequest httpRequest) throws Exception {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.config.getHttpProtocol());
        sb2.append(this.config.getCosDomain());
        sb2.append(this.config.getServerFlag());
        try {
            sb2.append(e.F0 + httpRequest.getPathForUrl());
            if (!TextUtils.isEmpty(httpRequest.getQueryForUrl())) {
                sb2.append("?" + httpRequest.getQueryForUrl());
            }
            QLog.i(TAG, "url =" + sb2.toString());
            return sb2.toString();
        } catch (Exception e10) {
            QLog.w(TAG, e10.getMessage(), e10);
            throw e10;
        }
    }

    public synchronized Future<T> getFuture() {
        return this.future;
    }

    public HttpRequest getHttpRequest() {
        return this.httpRequest;
    }

    public TaskState getTaskState() {
        return this.taskState;
    }

    public ITaskStateListener getTaskStateListener() {
        return this.taskStateListener;
    }

    public synchronized boolean pause() {
        if (this.callTask == null) {
            return false;
        }
        try {
            this.callTask.cancel();
            this.isCancelled = true;
            QLog.w(TAG, "task :" + this.httpRequest.getRequest().getRequestId() + " pause");
            ITaskStateListener iTaskStateListener = this.taskStateListener;
            if (iTaskStateListener != null) {
                iTaskStateListener.onPause();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return true;
    }

    public synchronized boolean resume() {
        return true;
    }

    public synchronized void setFuture(Future<T> future) {
        this.future = future;
    }

    public void setTaskState(TaskState taskState) {
        this.taskState = taskState;
    }

    public void setTaskStateListener(ITaskStateListener iTaskStateListener) {
        this.taskStateListener = iTaskStateListener;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        ITaskStateListener iTaskStateListener = this.taskStateListener;
        if (iTaskStateListener != null) {
            iTaskStateListener.onSendBegin();
            QLog.w(TAG, " task " + this.httpRequest.getRequest().getRequestId() + " start");
        }
        if (this.httpRequest.getHttpMethod().equalsIgnoreCase("GET")) {
            return (T) doGetRequest();
        }
        if (this.httpRequest.getHttpMethod().equalsIgnoreCase("POST")) {
            return (T) doPostRequest();
        }
        return null;
    }
}
