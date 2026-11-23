package com.haima.hmcp.model;

import android.text.TextUtils;
import android.view.KeyEvent;
import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.listeners.DpadInputModelListener;
import com.haima.hmcp.listeners.DpadTimerListener;
import com.haima.hmcp.utils.KeyMapUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.CountDownTimer;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class DpadInputModel {
    private static final String TAG = "DpadInputModel";
    private HashSet<Integer> dpadKeyDown = new HashSet<>();
    private FPoint dpadPoint = new FPoint();
    private DpadTimer dpadtimer;
    private DpadInputModelListener listener;

    class DpadTimer extends CountDownTimer {
        private PointCoord coord;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f34057i;
        private int keycode;
        private DpadTimerListener listener;

        public DpadTimer(long j10, long j11, int i10, PointCoord pointCoord, ScreenOrientation screenOrientation) {
            super(j10, j11);
            this.f34057i = 0;
            if (screenOrientation == ScreenOrientation.PORTRAIT) {
                switch (i10) {
                    case 19:
                        this.keycode = 21;
                        break;
                    case 20:
                        this.keycode = 22;
                        break;
                    case 21:
                        this.keycode = 20;
                        break;
                    case 22:
                        this.keycode = 19;
                        break;
                }
            } else {
                this.keycode = i10;
            }
            this.coord = pointCoord;
        }

        private void updateDpadPoint(FPoint fPoint) {
            DpadTimerListener dpadTimerListener = this.listener;
            if (dpadTimerListener != null) {
                dpadTimerListener.onUpdateDpadPoint(fPoint);
            }
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
            FPoint fPoint;
            FPoint fPoint2;
            int i10 = this.f34057i + 1;
            this.f34057i = i10;
            int iMin = Math.min(i10, 4);
            this.f34057i = iMin;
            switch (this.keycode) {
                case 19:
                    DpadInputModel dpadInputModel = DpadInputModel.this;
                    PointCoord pointCoord = this.coord;
                    fPoint = new FPoint(pointCoord.f33824x, pointCoord.f33825y + (pointCoord.ry * iMin * (-0.25f)));
                    dpadInputModel.sendMotionEvent(3, fPoint);
                    fPoint2 = fPoint;
                    break;
                case 20:
                    DpadInputModel dpadInputModel2 = DpadInputModel.this;
                    PointCoord pointCoord2 = this.coord;
                    fPoint2 = new FPoint(pointCoord2.f33824x, pointCoord2.f33825y + (pointCoord2.ry * iMin * 0.25f));
                    dpadInputModel2.sendMotionEvent(3, fPoint2);
                    break;
                case 21:
                    DpadInputModel dpadInputModel3 = DpadInputModel.this;
                    PointCoord pointCoord3 = this.coord;
                    fPoint = new FPoint(pointCoord3.f33824x + (pointCoord3.rx * iMin * (-0.25f)), pointCoord3.f33825y);
                    dpadInputModel3.sendMotionEvent(3, fPoint);
                    fPoint2 = fPoint;
                    break;
                case 22:
                    DpadInputModel dpadInputModel4 = DpadInputModel.this;
                    PointCoord pointCoord4 = this.coord;
                    fPoint2 = new FPoint(pointCoord4.f33824x + (pointCoord4.rx * iMin * 0.25f), pointCoord4.f33825y);
                    dpadInputModel4.sendMotionEvent(3, fPoint2);
                    break;
                default:
                    fPoint2 = null;
                    break;
            }
            updateDpadPoint(fPoint2);
        }

        public void setListener(DpadTimerListener dpadTimerListener) {
            this.listener = dpadTimerListener;
        }
    }

    private void cacheModeMapEvent(int i10, float f10, float f11, PointCoord pointCoord) {
        DpadInputModelListener dpadInputModelListener = this.listener;
        if (dpadInputModelListener != null) {
            dpadInputModelListener.onCacheModeMapEvent(i10, f10, f11, pointCoord);
        } else {
            LogUtils.d(TAG, "cacheModeMapEvent fail");
        }
    }

    private void cleanDpadTimer() {
        if (this.dpadtimer != null) {
            LogUtils.e("mTimeOutTask", "cleanTimer");
            this.dpadtimer.setListener(null);
            this.dpadtimer.cancel();
            this.dpadtimer = null;
        }
    }

    private PointCoord getMapPointCoord(int i10) {
        DpadInputModelListener dpadInputModelListener = this.listener;
        if (dpadInputModelListener != null) {
            return dpadInputModelListener.onMapPointCoord(i10);
        }
        LogUtils.i(TAG, "getMapPointCoord fail");
        return null;
    }

    private PointCoord getMappingEvent(int i10) {
        DpadInputModelListener dpadInputModelListener = this.listener;
        if (dpadInputModelListener != null) {
            return dpadInputModelListener.onMappingEvent(i10);
        }
        LogUtils.i(TAG, "getMappingEvent fail");
        return null;
    }

    private String getMappingVersion() {
        DpadInputModelListener dpadInputModelListener = this.listener;
        if (dpadInputModelListener != null) {
            return dpadInputModelListener.onMappingVersion();
        }
        LogUtils.d(TAG, "getMappingVersion fail");
        return null;
    }

    private ScreenOrientation getScreenOrientation() {
        DpadInputModelListener dpadInputModelListener = this.listener;
        if (dpadInputModelListener != null) {
            return dpadInputModelListener.onScreenOrientation();
        }
        LogUtils.i(TAG, "getScreenOrientation fail");
        return ScreenOrientation.LANDSCAPE;
    }

    private boolean isNativeDpadGame() {
        DpadInputModelListener dpadInputModelListener = this.listener;
        if (dpadInputModelListener != null) {
            return dpadInputModelListener.onIsNativeDpadGame();
        }
        LogUtils.i(TAG, "isNativeDpadGame fail");
        return false;
    }

    private void sendKeyboardEvent(String str, int i10) {
        DpadInputModelListener dpadInputModelListener = this.listener;
        if (dpadInputModelListener != null) {
            dpadInputModelListener.onSendKeyboardEvent(str, i10);
        } else {
            LogUtils.i(TAG, "sendKeyboardEvent fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMotionEvent(int i10, FPoint fPoint) {
        DpadInputModelListener dpadInputModelListener = this.listener;
        if (dpadInputModelListener != null) {
            dpadInputModelListener.onSendMotionEvent(i10, fPoint);
        } else {
            LogUtils.d(TAG, "sendMotionEvent fail");
        }
    }

    private void startDpadTimer(int i10, PointCoord pointCoord) {
        LogUtils.e(TAG, "===startTimer ====");
        if (this.dpadtimer == null) {
            DpadTimer dpadTimer = new DpadTimer(80L, 20L, i10, pointCoord, getScreenOrientation());
            this.dpadtimer = dpadTimer;
            dpadTimer.setListener(new DpadTimerListener() { // from class: com.haima.hmcp.model.DpadInputModel.1
                @Override // com.haima.hmcp.listeners.DpadTimerListener
                public void onUpdateDpadPoint(FPoint fPoint) {
                    if (fPoint == null) {
                        return;
                    }
                    DpadInputModel.this.dpadPoint.f33815x = fPoint.f33815x;
                    DpadInputModel.this.dpadPoint.f33816y = fPoint.f33816y;
                }
            });
            this.dpadtimer.start();
        }
    }

    public void clearDpadMapDownEvent() {
        Iterator<Integer> it2 = this.dpadKeyDown.iterator();
        while (it2.hasNext()) {
            int iIntValue = it2.next().intValue();
            sendKeyboardEvent("keyUp", iIntValue);
            this.dpadKeyDown.remove(Integer.valueOf(iIntValue));
        }
    }

    public FPoint getDpadPoint() {
        return this.dpadPoint;
    }

    public void processDpadInput(int i10, int i11, PointCoord pointCoord, FPoint fPoint) {
        if (pointCoord == null) {
        }
        if (i11 == 1) {
            sendMotionEvent(i11, new FPoint(pointCoord.f33824x, pointCoord.f33825y));
            cacheModeMapEvent(i11, 0.0f, 0.0f, pointCoord);
            cleanDpadTimer();
            startDpadTimer(i10, pointCoord);
            return;
        }
        if (i11 == 2) {
            switch (i10) {
                case 19:
                case 20:
                case 21:
                case 22:
                    cleanDpadTimer();
                    sendMotionEvent(3, fPoint);
                    sendMotionEvent(i11, fPoint);
                    cacheModeMapEvent(i11, 0.0f, 0.0f, pointCoord);
                    break;
            }
        }
    }

    public void processDpadKey(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        PointCoord mappingEvent = (!TextUtils.isEmpty(getMappingVersion()) || isNativeDpadGame()) ? getMappingEvent(keyCode) : getMapPointCoord(keyCode);
        if (mappingEvent != null) {
            sendDpadKey(mappingEvent.toKeyCode, keyEvent.getAction(), KeyEvent.keyCodeToString(keyEvent.getKeyCode()));
            return;
        }
        int iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(keyCode);
        if (keyEvent.getAction() == 0) {
            if (iAndroidKeyCode2PASSKey != 0) {
                sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
                return;
            } else {
                sendKeyboardEvent("1", KeyEvent.keyCodeToString(keyEvent.getKeyCode()));
                return;
            }
        }
        if (iAndroidKeyCode2PASSKey != 0) {
            sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
        } else {
            sendKeyboardEvent("0", KeyEvent.keyCodeToString(keyEvent.getKeyCode()));
        }
    }

    public void sendDpadKey(int i10, int i11, String str) {
        if (i10 > 0) {
            int iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(i10);
            if (i11 == 0) {
                if (iAndroidKeyCode2PASSKey == 0) {
                    sendKeyboardEvent("1", str);
                    return;
                } else {
                    sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
                    this.dpadKeyDown.add(Integer.valueOf(iAndroidKeyCode2PASSKey));
                    return;
                }
            }
            if (iAndroidKeyCode2PASSKey == 0) {
                sendKeyboardEvent("0", str);
            } else {
                sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
                this.dpadKeyDown.remove(Integer.valueOf(iAndroidKeyCode2PASSKey));
            }
        }
    }

    public void setListener(DpadInputModelListener dpadInputModelListener) {
        this.listener = dpadInputModelListener;
    }

    private void sendKeyboardEvent(String str, String str2) {
        DpadInputModelListener dpadInputModelListener = this.listener;
        if (dpadInputModelListener != null) {
            dpadInputModelListener.onSendKeyboardEvent(str, str2);
        } else {
            LogUtils.i(TAG, "sendKeyboardEvent fail");
        }
    }
}
