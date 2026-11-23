package com.haima.hmcp.beans;

import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.JoyStickMappingManager;
import com.join.mgps.base.BaseQuickAdapter;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class JoyStickBean implements Serializable {
    public static final int JOY_KEY_A = 4096;
    public static final int JOY_KEY_B = 8192;
    public static final int JOY_KEY_DOWN = 2;
    public static final int JOY_KEY_L1 = 256;
    public static final int JOY_KEY_LEFT = 4;
    public static final int JOY_KEY_LS = 64;
    public static final int JOY_KEY_R1 = 512;
    public static final int JOY_KEY_RIGHT = 8;
    public static final int JOY_KEY_RS = 128;
    public static final int JOY_KEY_SELECT = 32;
    public static final int JOY_KEY_START = 16;
    public static final int JOY_KEY_UP = 1;
    public static final int JOY_KEY_X = 16384;
    public static final int JOY_KEY_Y = 32768;
    private static final float MOTION_INVALID_VALUE = 0.004921628f;
    private static final float STICK_MAX_VALUE = 1.0f;
    private static final String TAG = "JoyStickBean";
    public boolean A;
    public boolean B;
    public boolean DOWN;
    public boolean L1;
    public boolean L2;
    public Float L2AxisValue;
    public boolean LEFT;
    public boolean LS;
    public boolean LX_LEFT;
    public boolean LX_RIGHT;
    public boolean LY_DOWN;
    public boolean LY_UP;
    public float L_X;
    public float L_Y;
    public boolean R1;
    public boolean R2;
    public Float R2AxisValue;
    public boolean RIGHT;
    public boolean RS;
    public boolean RX_LEFT;
    public boolean RX_RIGHT;
    public boolean RY_DOWN;
    public boolean RY_UP;
    public float R_X;
    public float R_Y;
    public boolean SELECT;
    public boolean START;
    public boolean UP;
    public boolean X;
    public boolean Y;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public int f33819id;

    private void calcDirection(float f10, float f11) {
        LogUtils.e(TAG, "calcDirection " + f10 + ";" + f11);
        this.UP = false;
        this.DOWN = false;
        this.LEFT = false;
        this.RIGHT = false;
        if (f10 == 0.0f && f11 == 0.0f) {
            return;
        }
        if (f11 < 0.0f) {
            this.UP = true;
        } else if (f11 > 0.0f) {
            this.DOWN = true;
        }
        if (f10 < 0.0f) {
            this.LEFT = true;
        } else if (f10 > 0.0f) {
            this.RIGHT = true;
        }
    }

    private void computeRockersDirectionLX() {
        this.L_X = computeStickValue(this.LX_RIGHT, this.LX_LEFT);
    }

    private void computeRockersDirectionLY() {
        this.L_Y = computeStickValue(this.LY_UP, this.LY_DOWN);
    }

    private void computeRockersDirectionRX() {
        this.R_X = computeStickValue(this.RX_RIGHT, this.RX_LEFT);
    }

    private void computeRockersDirectionRY() {
        this.R_Y = computeStickValue(this.RY_UP, this.RY_DOWN);
    }

    private float computeStickValue(boolean z10, boolean z11) {
        if (z10 && z11) {
            return handleData(0.0f);
        }
        if (z10) {
            return handleData(1.0f);
        }
        return z11 ? handleData(-1.0f) : handleData(0.0f);
    }

    private float handleData(float f10) {
        if (Math.abs(f10) < 0.01d) {
            return 0.0f;
        }
        if (f10 <= -0.8f) {
            return -1.0f;
        }
        if (f10 >= 0.8f) {
            return 1.0f;
        }
        return f10;
    }

    private float reviseMotion(float f10, float f11) {
        if (Math.abs(f10) < 0.01d) {
            return 0.0f;
        }
        if (f10 <= -0.8f) {
            return -1.0f;
        }
        if (f10 >= 0.8f) {
            return 1.0f;
        }
        return f10;
    }

    public int getBtnValue() {
        int i10 = this.A ? 4096 : 0;
        if (this.B) {
            i10 |= 8192;
        }
        if (this.X) {
            i10 |= 16384;
        }
        if (this.Y) {
            i10 |= 32768;
        }
        if (this.L1) {
            i10 |= 256;
        }
        if (this.R1) {
            i10 |= 512;
        }
        if (this.LS) {
            i10 |= 64;
        }
        if (this.RS) {
            i10 |= 128;
        }
        if (this.START) {
            i10 |= 16;
        }
        if (this.SELECT) {
            i10 |= 32;
        }
        if (this.UP) {
            i10 |= 1;
        }
        if (this.DOWN) {
            i10 |= 2;
        }
        if (this.LEFT) {
            i10 |= 4;
        }
        return this.RIGHT ? i10 | 8 : i10;
    }

    public boolean parseKey(KeyEvent keyEvent) {
        LogUtils.d(TAG, "parseKey event:" + keyEvent);
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 0) {
            switch (keyEvent.getScanCode()) {
                case MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_BITRATE_4UP_CEILING /* 544 */:
                    this.UP = keyEvent.getAction() == 0;
                    break;
                case 545:
                    this.DOWN = keyEvent.getAction() == 0;
                    break;
                case BaseQuickAdapter.LOADING_VIEW /* 546 */:
                    this.LEFT = keyEvent.getAction() == 0;
                    break;
                case 547:
                    this.RIGHT = keyEvent.getAction() == 0;
                    break;
                default:
                    return false;
            }
        } else if (keyCode == 96) {
            this.A = keyEvent.getAction() == 0;
        } else if (keyCode == 97) {
            this.B = keyEvent.getAction() == 0;
        } else if (keyCode == 99) {
            this.X = keyEvent.getAction() == 0;
        } else if (keyCode != 100) {
            switch (keyCode) {
                case 19:
                    this.UP = keyEvent.getAction() == 0;
                    break;
                case 20:
                    this.DOWN = keyEvent.getAction() == 0;
                    break;
                case 21:
                    this.LEFT = keyEvent.getAction() == 0;
                    break;
                case 22:
                    this.RIGHT = keyEvent.getAction() == 0;
                    break;
                default:
                    switch (keyCode) {
                        case 102:
                            this.L1 = keyEvent.getAction() == 0;
                            break;
                        case 103:
                            this.R1 = keyEvent.getAction() == 0;
                            break;
                        case 104:
                            this.L2 = keyEvent.getAction() == 0;
                            break;
                        case 105:
                            this.R2 = keyEvent.getAction() == 0;
                            break;
                        case 106:
                            this.LS = keyEvent.getAction() == 0;
                            break;
                        case 107:
                            this.RS = keyEvent.getAction() == 0;
                            break;
                        case 108:
                            this.START = keyEvent.getAction() == 0;
                            break;
                        case 109:
                            this.SELECT = keyEvent.getAction() == 0;
                            break;
                        default:
                            return false;
                    }
                    break;
            }
        } else {
            this.Y = keyEvent.getAction() == 0;
        }
        return true;
    }

    public boolean parseMappingKey(int i10, int i11) {
        LogUtils.d(TAG, "parseKey keyCode:" + i10);
        if (i10 == 96) {
            this.A = i11 == 0;
        } else if (i10 == 97) {
            this.B = i11 == 0;
        } else if (i10 == 99) {
            this.X = i11 == 0;
        } else if (i10 != 100) {
            switch (i10) {
                case 19:
                    this.UP = i11 == 0;
                    break;
                case 20:
                    this.DOWN = i11 == 0;
                    break;
                case 21:
                    this.LEFT = i11 == 0;
                    break;
                case 22:
                    this.RIGHT = i11 == 0;
                    break;
                default:
                    switch (i10) {
                        case 102:
                            this.L1 = i11 == 0;
                            break;
                        case 103:
                            this.R1 = i11 == 0;
                            break;
                        case 104:
                            this.L2 = i11 == 0;
                            break;
                        case 105:
                            this.R2 = i11 == 0;
                            break;
                        case 106:
                            this.LS = i11 == 0;
                            break;
                        case 107:
                            this.RS = i11 == 0;
                            break;
                        case 108:
                            this.START = i11 == 0;
                            break;
                        case 109:
                            this.SELECT = i11 == 0;
                            break;
                        default:
                            switch (i10) {
                                case 991:
                                    this.RY_UP = i11 == 0;
                                    computeRockersDirectionRY();
                                    break;
                                case JoyStickMappingManager.KEY_CODE_RIGHT_STICK_DOWN /* 992 */:
                                    this.RY_DOWN = i11 == 0;
                                    computeRockersDirectionRY();
                                    break;
                                case 993:
                                    this.RX_LEFT = i11 == 0;
                                    computeRockersDirectionRX();
                                    break;
                                case 994:
                                    this.RX_RIGHT = i11 == 0;
                                    computeRockersDirectionRX();
                                    break;
                                default:
                                    switch (i10) {
                                        case 996:
                                            this.LX_RIGHT = i11 == 0;
                                            computeRockersDirectionLX();
                                            break;
                                        case 997:
                                            this.LX_LEFT = i11 == 0;
                                            computeRockersDirectionLX();
                                            break;
                                        case 998:
                                            this.LY_DOWN = i11 == 0;
                                            computeRockersDirectionLY();
                                            break;
                                        case 999:
                                            this.LY_UP = i11 == 0;
                                            computeRockersDirectionLY();
                                            break;
                                        default:
                                            return false;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            this.Y = i11 == 0;
        }
        return true;
    }

    public void parseMappingMotion(float f10, float f11, float f12, float f13) {
        this.L_X = handleData(f10);
        this.L_Y = -handleData(f11);
        this.R_X = handleData(f12);
        this.R_Y = -handleData(f13);
    }

    public boolean parseMotion(MotionEvent motionEvent) {
        InputDevice.MotionRange motionRange;
        InputDevice.MotionRange motionRange2;
        boolean z10;
        try {
            InputDevice device = motionEvent.getDevice();
            InputDevice.MotionRange motionRange3 = device.getMotionRange(16);
            InputDevice.MotionRange motionRange4 = device.getMotionRange(15);
            InputDevice.MotionRange motionRange5 = device.getMotionRange(0);
            InputDevice.MotionRange motionRange6 = device.getMotionRange(1);
            InputDevice.MotionRange motionRange7 = device.getMotionRange(11);
            InputDevice.MotionRange motionRange8 = device.getMotionRange(14);
            InputDevice.MotionRange motionRange9 = device.getMotionRange(12);
            InputDevice.MotionRange motionRange10 = device.getMotionRange(13);
            if (device.getMotionRange(17) != null) {
                motionRange = device.getMotionRange(17);
                motionRange2 = device.getMotionRange(18);
            } else if (device.getMotionRange(23) != null) {
                motionRange = device.getMotionRange(23);
                motionRange2 = device.getMotionRange(22);
            } else {
                motionRange = null;
                motionRange2 = null;
            }
            if (motionRange4 == null || motionRange3 == null) {
                z10 = false;
            } else {
                calcDirection(motionEvent.getAxisValue(motionRange4.getAxis()), motionEvent.getAxisValue(motionRange3.getAxis()));
                z10 = true;
            }
            if (motionRange5 != null && motionRange6 != null) {
                this.L_X = reviseMotion(motionEvent.getAxisValue(motionRange5.getAxis()), motionRange5.getFlat());
                this.L_Y = -reviseMotion(motionEvent.getAxisValue(motionRange6.getAxis()), motionRange6.getFlat());
                z10 = true;
            }
            if (motionRange7 == null || motionRange8 == null) {
                if (motionRange9 != null && motionRange10 != null) {
                    this.R_X = reviseMotion(motionEvent.getAxisValue(motionRange9.getAxis()), motionRange9.getFlat());
                    this.R_Y = -reviseMotion(motionEvent.getAxisValue(motionRange10.getAxis()), motionRange10.getFlat());
                }
                if (motionRange != null || motionRange2 == null) {
                    return z10;
                }
                this.L2AxisValue = Float.valueOf(motionEvent.getAxisValue(motionRange.getAxis()));
                this.R2AxisValue = Float.valueOf(motionEvent.getAxisValue(motionRange2.getAxis()));
                this.L2 = this.L2AxisValue.floatValue() > 0.0f;
                this.R2 = this.R2AxisValue.floatValue() > 0.0f;
                return true;
            }
            this.R_X = reviseMotion(motionEvent.getAxisValue(motionRange7.getAxis()), motionRange7.getFlat());
            this.R_Y = -reviseMotion(motionEvent.getAxisValue(motionRange8.getAxis()), motionRange8.getFlat());
            z10 = true;
            if (motionRange != null) {
            }
            return z10;
        } catch (Exception e10) {
            LogUtils.e(TAG, "parseMotion error:" + e10.getMessage() + ";" + this.f33819id);
            return false;
        }
    }

    public String toString() {
        return "JoyStickBean{id=" + this.f33819id + ", A=" + this.A + ", B=" + this.B + ", X=" + this.X + ", Y=" + this.Y + ", LS=" + this.LS + ", RS=" + this.RS + ", L1=" + this.L1 + ", R1=" + this.R1 + ", L2=" + this.L2 + ", R2=" + this.R2 + ", START=" + this.START + ", SELECT=" + this.SELECT + ", UP=" + this.UP + ", DOWN=" + this.DOWN + ", LEFT=" + this.LEFT + ", RIGHT=" + this.RIGHT + ", L_X=" + this.L_X + ", L_Y=" + this.L_Y + ", R_X=" + this.R_X + ", R_Y=" + this.R_Y + ", L2AxisValue=" + this.L2AxisValue + ", R2AxisValue=" + this.R2AxisValue + '}';
    }
}
