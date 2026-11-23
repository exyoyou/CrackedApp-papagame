package com.haima.hmcp.business.display;

/* JADX INFO: loaded from: classes5.dex */
class TimeoutTrigger<T> implements Runnable {
    private TimeoutListener<T> listener;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private T f33831t;

    @Override // java.lang.Runnable
    public void run() {
        TimeoutListener<T> timeoutListener = this.listener;
        if (timeoutListener != null) {
            timeoutListener.onTimeout(this.f33831t);
        }
    }

    public void setData(T t10) {
        this.f33831t = t10;
    }

    public void setTimeoutListener(TimeoutListener<T> timeoutListener) {
        this.listener = timeoutListener;
    }
}
