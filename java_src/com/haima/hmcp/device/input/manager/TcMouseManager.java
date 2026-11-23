package com.haima.hmcp.device.input.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.haima.hmcp.device.input.view.TcMouseView;

/* JADX INFO: loaded from: classes5.dex */
public class TcMouseManager implements TcMouseView.OnMouseListener {
    public static final int KEYCODE_CENTER = 23;
    public static final int KEYCODE_CENTER_DANG_BEI = 66;
    public static final int KEYCODE_DOWN = 20;
    public static final int KEYCODE_LEFT = 21;
    public static final int KEYCODE_RIGHT = 22;
    public static final int KEYCODE_UP = 19;
    public static final String KEY_MOUSE_MOVE_STEP = "KEY_MOUSE_MOVE_STEP";
    public static int MOUSE_MOVE_STEP = 25;
    public static final int MOUSE_STARTX = 250;
    public static final int MOUSE_STARY = 350;
    public static final int MOUSE_TYPE = 0;
    private Context mContext;
    private int mCurrentType;
    private long mLastEventCode;
    private long mLastEventTime;
    private TcMouseView mMouseView;
    private ViewGroup mParentView;
    private Point point;
    private boolean isShowMouse = true;
    private boolean isKeyEventCousumed = false;
    private int mSpeed = 1;
    private int defTimes = 400;
    private int defMaxSpeed = 7;
    private boolean mMouseKeyDown = false;
    private boolean mIsLongPressDirectionKey = false;

    private void dispatchKeyEventToMouse(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 23 || keyEvent.getKeyCode() == 66 || keyEvent.getKeyCode() == 96) {
            this.mMouseView.onCenterButtonClicked(keyEvent);
        } else {
            this.mMouseView.moveMouse(keyEvent, this.mIsLongPressDirectionKey ? 2.4f : this.mSpeed);
        }
    }

    private MotionEvent getMotionEvent(int i10, int i11, int i12) {
        return MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), i12, i10, i11, 0);
    }

    private boolean isQuickClick(KeyEvent keyEvent) {
        return keyEvent.getDownTime() - this.mLastEventTime < ((long) this.defTimes);
    }

    @SuppressLint({"NewApi"})
    @TargetApi(12)
    private void sendMotionEvent(int i10, int i11, int i12) {
        if (i12 == 0) {
            this.mMouseKeyDown = true;
        } else if (i12 == 1) {
            this.mMouseKeyDown = false;
        } else if (i12 == 7 && this.mMouseKeyDown) {
            i12 = 2;
        }
        MotionEvent motionEvent = getMotionEvent(i10, i11, i12);
        if (i12 == 7) {
            motionEvent.setSource(2);
            this.mParentView.dispatchGenericMotionEvent(motionEvent);
            return;
        }
        if (i12 == 0) {
            Point point = this.point;
            if (point != null) {
                this.mParentView.dispatchTouchEvent(getMotionEvent(point.x, point.y, 1));
                this.point = null;
            }
            this.point = new Point(i10, i11);
            this.mParentView.dispatchTouchEvent(motionEvent);
            return;
        }
        if (i12 == 1) {
            Point point2 = this.point;
            if (point2 != null && point2.x == i10 && point2.y == i11) {
                this.point = null;
            }
            this.mParentView.dispatchTouchEvent(motionEvent);
            return;
        }
        if (i12 == 2) {
            Point point3 = this.point;
            if (point3 != null) {
                point3.set(i10, i11);
            }
            this.mParentView.dispatchTouchEvent(motionEvent);
        }
    }

    public void clearFPoint() {
        Point point = this.point;
        if (point != null) {
            this.mParentView.dispatchTouchEvent(getMotionEvent(point.x, point.y, 1));
            this.point = null;
        }
    }

    public void dispatchKeyCodeToMouse(int i10, int i11) {
        this.mMouseView.moveMouse(i10, i11);
    }

    public int getCurrentActivityType() {
        return this.mCurrentType;
    }

    public TcMouseView getmMouseView() {
        return this.mMouseView;
    }

    public void init(ViewGroup viewGroup, int i10) {
        this.mParentView = viewGroup;
        this.mContext = viewGroup.getContext();
        TcMouseView tcMouseView = new TcMouseView(this.mContext, this);
        this.mMouseView = tcMouseView;
        tcMouseView.setOnMouseListener(this);
        this.mCurrentType = i10;
    }

    public boolean isShowMouse() {
        return this.isShowMouse;
    }

    public boolean onDpadClicked(KeyEvent keyEvent) {
        int iMin;
        if (!this.isShowMouse) {
            return false;
        }
        if (keyEvent.getKeyCode() == 23 || keyEvent.getKeyCode() == 66 || keyEvent.getKeyCode() == 96) {
            dispatchKeyEventToMouse(keyEvent);
        } else if (keyEvent.getAction() == 0) {
            if (keyEvent.getRepeatCount() > 0) {
                this.mIsLongPressDirectionKey = true;
            } else {
                this.mIsLongPressDirectionKey = false;
                if (!this.isKeyEventCousumed) {
                    if (isQuickClick(keyEvent) && keyEvent.getKeyCode() == this.mLastEventCode) {
                        int i10 = this.mSpeed + 1;
                        this.mSpeed = i10;
                        iMin = Math.min(i10, this.defMaxSpeed);
                    } else {
                        iMin = 1;
                    }
                    this.mSpeed = iMin;
                }
            }
            this.mLastEventTime = keyEvent.getDownTime();
            this.mLastEventCode = keyEvent.getKeyCode();
            dispatchKeyEventToMouse(keyEvent);
            this.isKeyEventCousumed = true;
        } else if (keyEvent.getAction() == 1) {
            if (!this.isKeyEventCousumed) {
                dispatchKeyEventToMouse(keyEvent);
            }
            this.isKeyEventCousumed = false;
        }
        return true;
    }

    @Override // com.haima.hmcp.device.input.view.TcMouseView.OnMouseListener
    public boolean onclick(View view, KeyEvent keyEvent) {
        if (isShowMouse()) {
            return onDpadClicked(keyEvent);
        }
        return false;
    }

    public void sendCenterClickEvent(int i10, int i11, int i12) {
        sendMotionEvent(i10, i11, i12);
    }

    @SuppressLint({"InlinedApi"})
    public void sendMouseHoverEvent(int i10, int i11) {
        sendMotionEvent(i10, i11, 7);
    }

    public void setMouseBitmap(Bitmap bitmap) {
        TcMouseView tcMouseView = this.mMouseView;
        if (tcMouseView != null) {
            tcMouseView.setMouseBitmap(bitmap);
        }
    }

    public void setMouseIcon(String str, int i10) {
        TcMouseView tcMouseView = this.mMouseView;
        if (tcMouseView != null) {
            tcMouseView.setMouseIcon(str, i10);
        }
    }

    public void setMouseMoveStep(int i10) {
        if (i10 < 0) {
            i10 = 0;
        } else if (i10 > 10) {
            i10 = 10;
        }
        MOUSE_MOVE_STEP = (i10 * 2) + 5;
    }

    public void setMouseOffSet(int i10, int i11) {
        TcMouseView tcMouseView = this.mMouseView;
        if (tcMouseView != null) {
            tcMouseView.setMouseOffSet(i10, i11);
        }
    }

    public void setMouseOffSetRatio(float f10, float f11) {
        TcMouseView tcMouseView = this.mMouseView;
        if (tcMouseView != null) {
            tcMouseView.setMouseOffSetRatio(f10, f11);
        }
    }

    public void setMousePoint(float f10, float f11) {
        if (f10 < 0.0f || f11 < 0.0f) {
            return;
        }
        this.mMouseView.setMousePoint((int) (f10 * this.mParentView.getMeasuredWidth()), (int) (f11 * this.mParentView.getMeasuredHeight()));
    }

    public void setShowMouse(boolean z10) {
        if (this.isShowMouse != z10) {
            this.isShowMouse = z10;
            if (z10) {
                this.mMouseView.setVisibility(0);
            } else {
                this.mMouseView.setVisibility(8);
            }
            this.mMouseView.requestLayout();
        }
    }

    public void showMouseView() {
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        TcMouseView tcMouseView = this.mMouseView;
        if (tcMouseView != null) {
            this.mParentView.addView(tcMouseView, layoutParams);
        }
    }
}
