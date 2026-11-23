package com.beizi.fusion.tool;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public abstract class j extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<Context> f10622a;

    public j(Context context) {
        super(Looper.getMainLooper());
        this.f10622a = new WeakReference<>(context.getApplicationContext());
    }

    public Context a() {
        WeakReference<Context> weakReference = this.f10622a;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.f10622a.get();
    }

    public abstract void a(Message message);

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        WeakReference<Context> weakReference = this.f10622a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        a(message);
    }
}
