package com.byazt.dna;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public interface qp {

    public interface c {
        void handleMsg(Message message);
    }

    void executeFastTask(Runnable runnable);

    void executeFastTask(Runnable runnable, int i10);

    void executeNormalTask(Runnable runnable);

    ExecutorService getAIDLExecutor();

    Handler getCsjMainHandler();

    ExecutorService getFastExecutor();

    Handler getIOHandler();

    ExecutorService getIoExecutor();

    Handler getMainHandler();

    ExecutorService getNormalExecutor();

    ScheduledExecutorService getScheduledThreadPool();

    ExecutorService newCachedThreadPool(int i10, int i11);

    Handler obtainHandler(c cVar, @Nullable String str);

    Handler obtainHandler(@Nullable String str);

    void postIOTask(Runnable runnable);

    void recycleHandler(@NonNull Handler handler);

    void updateSettings(JSONObject jSONObject);
}
