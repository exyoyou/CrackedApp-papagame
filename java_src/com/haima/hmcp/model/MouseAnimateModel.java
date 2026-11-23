package com.haima.hmcp.model;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import com.haima.hmcp.widgets.view.MouseView;

/* JADX INFO: loaded from: classes5.dex */
public class MouseAnimateModel {
    private static final int DURATION = 100;
    private static final int MSG_FRAME = 1;
    private MouseAnimateListener listener;
    private int[] mouseFrames;
    private MouseStyle mouseStyle;
    private static final int[] WORKING = MouseView.WORKING_FRAMES;
    private static final int[] BUSY = MouseView.BUSY_FRAMES;
    private int frameIndex = 0;
    private boolean stop = false;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.haima.hmcp.model.MouseAnimateModel.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            MouseAnimateModel.this.getFrame();
        }
    };

    public interface MouseAnimateListener {
        void onMouseFrame(int i10);
    }

    public enum MouseStyle {
        WORKING,
        BUSY
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getFrame() {
        if (this.stop) {
            return;
        }
        int i10 = this.frameIndex;
        int[] iArr = this.mouseFrames;
        if (i10 >= iArr.length) {
            this.frameIndex = 0;
        }
        MouseAnimateListener mouseAnimateListener = this.listener;
        if (mouseAnimateListener != null) {
            mouseAnimateListener.onMouseFrame(iArr[this.frameIndex]);
        }
        this.frameIndex++;
        this.mHandler.sendEmptyMessageDelayed(1, 100L);
    }

    private void initFrames(MouseStyle mouseStyle) {
        if (mouseStyle == MouseStyle.WORKING) {
            this.mouseFrames = WORKING;
        } else {
            this.mouseFrames = BUSY;
        }
    }

    private void reset() {
        this.frameIndex = 0;
        this.stop = false;
    }

    public MouseStyle getMouseStyle() {
        return this.mouseStyle;
    }

    public void setListener(MouseAnimateListener mouseAnimateListener) {
        this.listener = mouseAnimateListener;
    }

    public void start(MouseStyle mouseStyle) {
        this.mouseStyle = mouseStyle;
        reset();
        initFrames(mouseStyle);
        getFrame();
    }

    public void stop() {
        this.stop = true;
        this.mHandler.removeCallbacksAndMessages(null);
        this.mouseStyle = null;
    }
}
