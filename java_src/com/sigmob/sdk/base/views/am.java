package com.sigmob.sdk.base.views;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import com.czhj.sdk.logger.SigmobLog;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public class am {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static am f79918c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final AtomicReference<am> f79919d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f79920e = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f79922b = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Queue<f> f79921a = new LinkedBlockingQueue(2);

    private am() {
    }

    public static am a() {
        AtomicReference<am> atomicReference;
        do {
            am amVar = f79918c;
            if (amVar != null) {
                return amVar;
            }
            atomicReference = f79919d;
        } while (!androidx.lifecycle.i.a(atomicReference, null, new am()));
        am amVar2 = atomicReference.get();
        f79918c = amVar2;
        return amVar2;
    }

    private f b(Context activity) {
        f fVar;
        Queue<f> queue = this.f79921a;
        f fVarPoll = queue != null ? queue.poll() : null;
        SigmobLog.i("acquireWebViewInternal webview:" + fVarPoll);
        if (fVarPoll != null) {
            ((MutableContextWrapper) fVarPoll.getContext()).setBaseContext(activity);
            return fVarPoll;
        }
        synchronized (this.f79922b) {
            fVar = new f(new MutableContextWrapper(activity));
        }
        return fVar;
    }

    private void b(f webView) {
        try {
            if (webView.getContext() instanceof MutableContextWrapper) {
                MutableContextWrapper mutableContextWrapper = (MutableContextWrapper) webView.getContext();
                mutableContextWrapper.setBaseContext(mutableContextWrapper.getApplicationContext());
                SigmobLog.i("enqueue  webview:" + webView);
                if (this.f79921a != null) {
                    webView.b();
                    this.f79921a.offer(webView);
                } else {
                    webView.destroy();
                }
            }
            if (webView.getContext() instanceof Activity) {
                SigmobLog.i("Abandon this webview  ， It will cause leak if enqueue !");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public f a(Context context) {
        return b(context);
    }

    public void a(f webView) {
        b(webView);
    }
}
