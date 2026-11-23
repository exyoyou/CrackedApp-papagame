package org.cocos2dx.lib;

import android.annotation.SuppressLint;
import android.content.Context;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: loaded from: classes10.dex */
@SuppressLint({"NewApi"})
public class Cocos2dxGLSurfaceView extends GLSurfaceView {
    private static final int HANDLER_CLOSE_IME_KEYBOARD = 3;
    private static final int HANDLER_OPEN_IME_KEYBOARD = 2;
    private static final String TAG = "Cocos2dxGLSurfaceView";
    private static Cocos2dxGLSurfaceView mCocos2dxGLSurfaceView;
    private static Cocos2dxTextInputWraper sCocos2dxTextInputWraper;
    private static Handler sHandler;
    private Cocos2dxEditText mCocos2dxEditText;
    private Cocos2dxRenderer mCocos2dxRenderer;

    public Cocos2dxGLSurfaceView(Context context) {
        super(context);
        initView();
    }

    public static void closeIMEKeyboard() {
        Message message = new Message();
        message.what = 3;
        sHandler.sendMessage(message);
    }

    private static void dumpMotionEvent(MotionEvent motionEvent) {
        StringBuilder sb2 = new StringBuilder();
        int action = motionEvent.getAction();
        int i10 = action & 255;
        sb2.append("event ACTION_");
        sb2.append(new String[]{"DOWN", "UP", "MOVE", "CANCEL", "OUTSIDE", "POINTER_DOWN", "POINTER_UP", "7?", "8?", "9?"}[i10]);
        if (i10 == 5 || i10 == 6) {
            sb2.append("(pid ");
            sb2.append(action >> 8);
            sb2.append(")");
        }
        sb2.append("[");
        int i11 = 0;
        while (i11 < motionEvent.getPointerCount()) {
            sb2.append("#");
            sb2.append(i11);
            sb2.append("(pid ");
            sb2.append(motionEvent.getPointerId(i11));
            sb2.append(")=");
            sb2.append((int) motionEvent.getX(i11));
            sb2.append(",");
            sb2.append((int) motionEvent.getY(i11));
            i11++;
            if (i11 < motionEvent.getPointerCount()) {
                sb2.append(";");
            }
        }
        sb2.append("]");
    }

    private String getContentText() {
        return this.mCocos2dxRenderer.getContentText();
    }

    public static Cocos2dxGLSurfaceView getInstance() {
        return mCocos2dxGLSurfaceView;
    }

    public static void openIMEKeyboard() {
        Message message = new Message();
        message.what = 2;
        message.obj = mCocos2dxGLSurfaceView.getContentText();
        sHandler.sendMessage(message);
    }

    public static void queueAccelerometer(final float f10, final float f11, final float f12, final long j10) {
        mCocos2dxGLSurfaceView.queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.2
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxAccelerometer.onSensorChanged(f10, f11, f12, j10);
            }
        });
    }

    public void deleteBackward() {
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.13
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleDeleteBackward();
            }
        });
    }

    public Cocos2dxEditText getCocos2dxEditText() {
        return this.mCocos2dxEditText;
    }

    protected void initView() {
        setEGLContextClientVersion(2);
        setFocusableInTouchMode(true);
        mCocos2dxGLSurfaceView = this;
        sCocos2dxTextInputWraper = new Cocos2dxTextInputWraper(this);
        sHandler = new Handler() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i10 = message.what;
                if (i10 != 2) {
                    if (i10 == 3 && Cocos2dxGLSurfaceView.this.mCocos2dxEditText != null) {
                        Cocos2dxGLSurfaceView.this.mCocos2dxEditText.removeTextChangedListener(Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper);
                        ((InputMethodManager) Cocos2dxGLSurfaceView.mCocos2dxGLSurfaceView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(Cocos2dxGLSurfaceView.this.mCocos2dxEditText.getWindowToken(), 0);
                        Cocos2dxGLSurfaceView.this.requestFocus();
                        return;
                    }
                    return;
                }
                if (Cocos2dxGLSurfaceView.this.mCocos2dxEditText == null || !Cocos2dxGLSurfaceView.this.mCocos2dxEditText.requestFocus()) {
                    return;
                }
                Cocos2dxGLSurfaceView.this.mCocos2dxEditText.removeTextChangedListener(Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper);
                Cocos2dxGLSurfaceView.this.mCocos2dxEditText.setText("");
                String str = (String) message.obj;
                Cocos2dxGLSurfaceView.this.mCocos2dxEditText.append(str);
                Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper.setOriginText(str);
                Cocos2dxGLSurfaceView.this.mCocos2dxEditText.addTextChangedListener(Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper);
                ((InputMethodManager) Cocos2dxGLSurfaceView.mCocos2dxGLSurfaceView.getContext().getSystemService("input_method")).showSoftInput(Cocos2dxGLSurfaceView.this.mCocos2dxEditText, 0);
            }
        };
    }

    public void insertText(final String str) {
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.12
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleInsertText(str);
            }
        });
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(final int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            Cocos2dxVideoHelper.mVideoHandler.sendEmptyMessage(1000);
        } else if (i10 != 66 && i10 != 82 && i10 != 85) {
            switch (i10) {
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    break;
                default:
                    return super.onKeyDown(i10, keyEvent);
            }
        }
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.11
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleKeyDown(i10);
            }
        });
        return true;
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.4
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleOnPause();
            }
        });
        setRenderMode(0);
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        setRenderMode(1);
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.3
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleOnResume();
            }
        });
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        if (isInEditMode()) {
            return;
        }
        this.mCocos2dxRenderer.setScreenWidthAndHeight(i10, i11);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        final int[] iArr = new int[pointerCount];
        final float[] fArr = new float[pointerCount];
        final float[] fArr2 = new float[pointerCount];
        for (int i10 = 0; i10 < pointerCount; i10++) {
            iArr[i10] = motionEvent.getPointerId(i10);
            fArr[i10] = motionEvent.getX(i10);
            fArr2[i10] = motionEvent.getY(i10);
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            final int pointerId = motionEvent.getPointerId(0);
            final float f10 = fArr[0];
            final float f11 = fArr2[0];
            queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.6
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionDown(pointerId, f10, f11);
                }
            });
        } else if (action == 1) {
            final int pointerId2 = motionEvent.getPointerId(0);
            final float f12 = fArr[0];
            final float f13 = fArr2[0];
            queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.9
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionUp(pointerId2, f12, f13);
                }
            });
        } else if (action == 2) {
            queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.7
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionMove(iArr, fArr, fArr2);
                }
            });
        } else if (action == 3) {
            queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.10
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionCancel(iArr, fArr, fArr2);
                }
            });
        } else if (action == 5) {
            int action2 = motionEvent.getAction() >> 8;
            final int pointerId3 = motionEvent.getPointerId(action2);
            final float x10 = motionEvent.getX(action2);
            final float y10 = motionEvent.getY(action2);
            queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.5
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionDown(pointerId3, x10, y10);
                }
            });
        } else if (action == 6) {
            int action3 = motionEvent.getAction() >> 8;
            final int pointerId4 = motionEvent.getPointerId(action3);
            final float x11 = motionEvent.getX(action3);
            final float y11 = motionEvent.getY(action3);
            queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.8
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionUp(pointerId4, x11, y11);
                }
            });
        }
        return true;
    }

    public void setCocos2dxEditText(Cocos2dxEditText cocos2dxEditText) {
        Cocos2dxTextInputWraper cocos2dxTextInputWraper;
        this.mCocos2dxEditText = cocos2dxEditText;
        if (cocos2dxEditText == null || (cocos2dxTextInputWraper = sCocos2dxTextInputWraper) == null) {
            return;
        }
        cocos2dxEditText.setOnEditorActionListener(cocos2dxTextInputWraper);
        this.mCocos2dxEditText.setCocos2dxGLSurfaceView(this);
        requestFocus();
    }

    public void setCocos2dxRenderer(Cocos2dxRenderer cocos2dxRenderer) {
        this.mCocos2dxRenderer = cocos2dxRenderer;
        setRenderer(cocos2dxRenderer);
    }

    public Cocos2dxGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initView();
    }
}
