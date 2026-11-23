package org.cocos2dx.lib;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes10.dex */
public class Cocos2dxVideoHelper {
    static final int KeyEventBack = 1000;
    private static final int VideoTaskCreate = 0;
    private static final int VideoTaskFullScreen = 12;
    private static final int VideoTaskKeepRatio = 11;
    private static final int VideoTaskPause = 5;
    private static final int VideoTaskRemove = 1;
    private static final int VideoTaskRestart = 10;
    private static final int VideoTaskResume = 6;
    private static final int VideoTaskSeek = 8;
    private static final int VideoTaskSetRect = 3;
    private static final int VideoTaskSetSource = 2;
    private static final int VideoTaskSetVisible = 9;
    private static final int VideoTaskStart = 4;
    private static final int VideoTaskStop = 7;
    static VideoHandler mVideoHandler;
    private static int videoTag;
    private Cocos2dxActivity mActivity;
    private FrameLayout mLayout;
    private SparseArray<Cocos2dxVideoView> sVideoViews;
    Cocos2dxVideoView.OnVideoEventListener videoEventListener = new Cocos2dxVideoView.OnVideoEventListener() { // from class: org.cocos2dx.lib.Cocos2dxVideoHelper.1
        @Override // org.cocos2dx.lib.Cocos2dxVideoView.OnVideoEventListener
        public void onVideoEvent(int i10, int i11) {
            Cocos2dxVideoHelper.this.mActivity.runOnGLThread(Cocos2dxVideoHelper.this.new VideoEventRunnable(i10, i11));
        }
    };

    private class VideoEventRunnable implements Runnable {
        private int mVideoEvent;
        private int mVideoTag;

        public VideoEventRunnable(int i10, int i11) {
            this.mVideoTag = i10;
            this.mVideoEvent = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cocos2dxVideoHelper.nativeExecuteVideoCallback(this.mVideoTag, this.mVideoEvent);
        }
    }

    static class VideoHandler extends Handler {
        WeakReference<Cocos2dxVideoHelper> mReference;

        VideoHandler(Cocos2dxVideoHelper cocos2dxVideoHelper) {
            this.mReference = new WeakReference<>(cocos2dxVideoHelper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 != 1000) {
                switch (i10) {
                    case 0:
                        this.mReference.get()._createVideoView(message.arg1);
                        break;
                    case 1:
                        this.mReference.get()._removeVideoView(message.arg1);
                        break;
                    case 2:
                        this.mReference.get()._setVideoURL(message.arg1, message.arg2, (String) message.obj);
                        break;
                    case 3:
                        Cocos2dxVideoHelper cocos2dxVideoHelper = this.mReference.get();
                        Rect rect = (Rect) message.obj;
                        cocos2dxVideoHelper._setVideoRect(message.arg1, rect.left, rect.top, rect.right, rect.bottom);
                        break;
                    case 4:
                        this.mReference.get()._startVideo(message.arg1);
                        break;
                    case 5:
                        this.mReference.get()._pauseVideo(message.arg1);
                        break;
                    case 6:
                        this.mReference.get()._resumeVideo(message.arg1);
                        break;
                    case 7:
                        this.mReference.get()._stopVideo(message.arg1);
                        break;
                    case 8:
                        this.mReference.get()._seekVideoTo(message.arg1, message.arg2);
                        break;
                    case 9:
                        Cocos2dxVideoHelper cocos2dxVideoHelper2 = this.mReference.get();
                        if (message.arg2 != 1) {
                            cocos2dxVideoHelper2._setVideoVisible(message.arg1, false);
                        } else {
                            cocos2dxVideoHelper2._setVideoVisible(message.arg1, true);
                        }
                        break;
                    case 10:
                        this.mReference.get()._restartVideo(message.arg1);
                        break;
                    case 11:
                        Cocos2dxVideoHelper cocos2dxVideoHelper3 = this.mReference.get();
                        if (message.arg2 != 1) {
                            cocos2dxVideoHelper3._setVideoKeepRatio(message.arg1, false);
                        } else {
                            cocos2dxVideoHelper3._setVideoKeepRatio(message.arg1, true);
                        }
                        break;
                    case 12:
                        Cocos2dxVideoHelper cocos2dxVideoHelper4 = this.mReference.get();
                        Rect rect2 = (Rect) message.obj;
                        if (message.arg2 != 1) {
                            cocos2dxVideoHelper4._setFullScreenEnabled(message.arg1, false, rect2.right, rect2.bottom);
                        } else {
                            cocos2dxVideoHelper4._setFullScreenEnabled(message.arg1, true, rect2.right, rect2.bottom);
                        }
                        break;
                }
            } else {
                this.mReference.get().onBackKeyEvent();
            }
            super.handleMessage(message);
        }
    }

    Cocos2dxVideoHelper(Cocos2dxActivity cocos2dxActivity, FrameLayout frameLayout) {
        this.mLayout = null;
        this.mActivity = null;
        this.sVideoViews = null;
        this.mActivity = cocos2dxActivity;
        this.mLayout = frameLayout;
        mVideoHandler = new VideoHandler(this);
        this.sVideoViews = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _createVideoView(int i10) {
        Cocos2dxVideoView cocos2dxVideoView = new Cocos2dxVideoView(this.mActivity, i10);
        this.sVideoViews.put(i10, cocos2dxVideoView);
        this.mLayout.addView(cocos2dxVideoView, new FrameLayout.LayoutParams(-2, -2));
        cocos2dxVideoView.setZOrderOnTop(true);
        cocos2dxVideoView.setOnCompletionListener(this.videoEventListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _pauseVideo(int i10) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i10);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.pause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _removeVideoView(int i10) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i10);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.stopPlayback();
            this.sVideoViews.remove(i10);
            this.mLayout.removeView(cocos2dxVideoView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _restartVideo(int i10) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i10);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.restart();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _resumeVideo(int i10) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i10);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.resume();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _seekVideoTo(int i10, int i11) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i10);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.seekTo(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setFullScreenEnabled(int i10, boolean z10, int i11, int i12) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i10);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setFullScreenEnabled(z10, i11, i12);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoKeepRatio(int i10, boolean z10) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i10);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setKeepRatio(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoRect(int i10, int i11, int i12, int i13, int i14) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i10);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setVideoRect(i11, i12, i13, i14);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoURL(int i10, int i11, String str) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i10);
        if (cocos2dxVideoView != null) {
            if (i11 == 0) {
                cocos2dxVideoView.setVideoFileName(str);
            } else {
                if (i11 != 1) {
                    return;
                }
                cocos2dxVideoView.setVideoURL(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoVisible(int i10, boolean z10) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i10);
        if (cocos2dxVideoView != null) {
            if (!z10) {
                cocos2dxVideoView.setVisibility(4);
            } else {
                cocos2dxVideoView.fixSize();
                cocos2dxVideoView.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _startVideo(int i10) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i10);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _stopVideo(int i10) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i10);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.stop();
        }
    }

    public static int createVideoWidget() {
        Message message = new Message();
        message.what = 0;
        message.arg1 = videoTag;
        mVideoHandler.sendMessage(message);
        int i10 = videoTag;
        videoTag = i10 + 1;
        return i10;
    }

    public static native void nativeExecuteVideoCallback(int i10, int i11);

    /* JADX INFO: Access modifiers changed from: private */
    public void onBackKeyEvent() {
        int size = this.sVideoViews.size();
        for (int i10 = 0; i10 < size; i10++) {
            int iKeyAt = this.sVideoViews.keyAt(i10);
            Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(iKeyAt);
            if (cocos2dxVideoView != null) {
                cocos2dxVideoView.setFullScreenEnabled(false, 0, 0);
                this.mActivity.runOnGLThread(new VideoEventRunnable(iKeyAt, 1000));
            }
        }
    }

    public static void pauseVideo(int i10) {
        Message message = new Message();
        message.what = 5;
        message.arg1 = i10;
        mVideoHandler.sendMessage(message);
    }

    public static void removeVideoWidget(int i10) {
        Message message = new Message();
        message.what = 1;
        message.arg1 = i10;
        mVideoHandler.sendMessage(message);
    }

    public static void restartVideo(int i10) {
        Message message = new Message();
        message.what = 10;
        message.arg1 = i10;
        mVideoHandler.sendMessage(message);
    }

    public static void resumeVideo(int i10) {
        Message message = new Message();
        message.what = 6;
        message.arg1 = i10;
        mVideoHandler.sendMessage(message);
    }

    public static void seekVideoTo(int i10, int i11) {
        Message message = new Message();
        message.what = 8;
        message.arg1 = i10;
        message.arg2 = i11;
        mVideoHandler.sendMessage(message);
    }

    public static void setFullScreenEnabled(int i10, boolean z10, int i11, int i12) {
        Message message = new Message();
        message.what = 12;
        message.arg1 = i10;
        if (z10) {
            message.arg2 = 1;
        } else {
            message.arg2 = 0;
        }
        message.obj = new Rect(0, 0, i11, i12);
        mVideoHandler.sendMessage(message);
    }

    public static void setVideoKeepRatioEnabled(int i10, boolean z10) {
        Message message = new Message();
        message.what = 11;
        message.arg1 = i10;
        if (z10) {
            message.arg2 = 1;
        } else {
            message.arg2 = 0;
        }
        mVideoHandler.sendMessage(message);
    }

    public static void setVideoRect(int i10, int i11, int i12, int i13, int i14) {
        Message message = new Message();
        message.what = 3;
        message.arg1 = i10;
        message.obj = new Rect(i11, i12, i13, i14);
        mVideoHandler.sendMessage(message);
    }

    public static void setVideoUrl(int i10, int i11, String str) {
        Message message = new Message();
        message.what = 2;
        message.arg1 = i10;
        message.arg2 = i11;
        message.obj = str;
        mVideoHandler.sendMessage(message);
    }

    public static void setVideoVisible(int i10, boolean z10) {
        Message message = new Message();
        message.what = 9;
        message.arg1 = i10;
        if (z10) {
            message.arg2 = 1;
        } else {
            message.arg2 = 0;
        }
        mVideoHandler.sendMessage(message);
    }

    public static void startVideo(int i10) {
        Message message = new Message();
        message.what = 4;
        message.arg1 = i10;
        mVideoHandler.sendMessage(message);
    }

    public static void stopVideo(int i10) {
        Message message = new Message();
        message.what = 7;
        message.arg1 = i10;
        mVideoHandler.sendMessage(message);
    }
}
