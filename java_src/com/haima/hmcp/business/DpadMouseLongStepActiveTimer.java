package com.haima.hmcp.business;

import android.view.KeyEvent;

/* JADX INFO: loaded from: classes5.dex */
public class DpadMouseLongStepActiveTimer implements Runnable {
    private KeyEvent event;
    private DpadMouseLongStepActiveTimerListener listener = null;
    private boolean cancel = false;

    public interface DpadMouseLongStepActiveTimerListener {
        void onLongStepActive(KeyEvent keyEvent);

        void onNormalStepActive();
    }

    public void cancel() {
        this.cancel = true;
        DpadMouseLongStepActiveTimerListener dpadMouseLongStepActiveTimerListener = this.listener;
        if (dpadMouseLongStepActiveTimerListener != null) {
            dpadMouseLongStepActiveTimerListener.onNormalStepActive();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        DpadMouseLongStepActiveTimerListener dpadMouseLongStepActiveTimerListener;
        if (this.cancel || (dpadMouseLongStepActiveTimerListener = this.listener) == null) {
            return;
        }
        dpadMouseLongStepActiveTimerListener.onLongStepActive(this.event);
    }

    public void setEvent(KeyEvent keyEvent) {
        this.event = keyEvent;
    }

    public void setListener(DpadMouseLongStepActiveTimerListener dpadMouseLongStepActiveTimerListener) {
        this.listener = dpadMouseLongStepActiveTimerListener;
    }
}
