package com.haima.hmcp.model;

import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.haima.hmcp.beans.HmInputMappings;
import com.haima.hmcp.beans.HmInputOp;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.listeners.HmInputOpListener;
import com.haima.hmcp.listeners.InputOpModelListener;
import com.haima.hmcp.utils.ButtonMappingUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.TouchUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class InputOpModel {
    public static final String HM_INPUT_OP_TAG = "HmInputOp-->";
    private static final String TAG = "InputOpModel";
    protected HmInputMappings hmInputMappings;
    private InputOpModelListener listener;
    protected PointCoord hmInputOpDirection = null;
    protected float inputOpViewOffset = 0.005f;
    protected float oriInputOpViewX = 0.0f;
    protected float oriInputOpViewY = 0.0f;
    protected float inputOpViewMoveX = 0.0f;
    protected float inputOpViewMoveY = 0.0f;
    private int keyboardX = 0;
    private int keyboardY = 0;

    private void processDirectionHmInputOp(HmInputOp hmInputOp, HmInputMappingContent hmInputMappingContent, HmInputOpListener hmInputOpListener) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (hmInputMappingContent == null) {
            LogUtils.d(TAG, "HmInputOp-->processDirectionHmInputOp: process fail, not config. HmInputOp = " + hmInputOp);
            if (hmInputOpListener != null) {
                hmInputOpListener.onSendFail(hmInputOp, "input op value is not config");
                return;
            }
            return;
        }
        PointCoord pointCoord = this.hmInputOpDirection;
        if (pointCoord == null) {
            return;
        }
        if (pointCoord.rx == 0.0f) {
            pointCoord.rx = Constants.KEYBOARD_RX;
        }
        if (pointCoord.ry == 0.0f) {
            pointCoord.ry = Constants.KEYBOARD_RY;
        }
        int i14 = hmInputOp.actionType;
        int i15 = hmInputMappingContent.direction;
        if (i15 != 1) {
            if (i15 != 2) {
                if (i15 != 3) {
                    if (i15 == 4 && i14 == 1) {
                        i13 = 3 - (i14 * 2);
                        i12 = i13 + 0;
                    }
                } else if (i14 == 1) {
                    i10 = 3 - (i14 * 2);
                    i11 = i10 + 0;
                    i12 = 0;
                }
                i12 = 0;
            } else if (i14 == 1) {
                i13 = (i14 * 2) - 3;
                i12 = i13 + 0;
            } else {
                i12 = 0;
            }
            i11 = 0;
        } else {
            if (i14 == 1) {
                i10 = (i14 * 2) - 3;
                i11 = i10 + 0;
                i12 = 0;
            }
            i12 = 0;
            i11 = 0;
        }
        if (this.keyboardX == 0 && this.keyboardY == 0) {
            sendMotionEvent(i14, pointCoord);
        }
        String str = TAG;
        LogUtils.d(str, "HmInputOp-->processDirectionHmInputOp: keyboardX = " + this.keyboardX + ", keyboardY = " + this.keyboardY + ", tmpx = " + i12 + ", tmpy = " + i11);
        int i16 = this.keyboardX + i12;
        this.keyboardX = i16;
        int i17 = this.keyboardY + i11;
        this.keyboardY = i17;
        if (i14 == 1) {
            float[] directionPoint = TouchUtil.getDirectionPoint(this.hmInputOpDirection, i16, i17, 0.0f, 0.0f);
            if (directionPoint != null) {
                PointCoord pointCoord2 = new PointCoord();
                pointCoord2.f33824x = directionPoint[0];
                pointCoord2.f33825y = directionPoint[1];
                sendMotionEvent(3, pointCoord2);
            }
        } else if (i14 == 2) {
            this.keyboardY = 0;
            this.keyboardX = 0;
            sendMotionEvent(3, this.hmInputOpDirection);
            sendMotionEvent(2, this.hmInputOpDirection);
        }
        if (hmInputOpListener != null) {
            hmInputOpListener.onSendSuccess(hmInputOp);
        }
        LogUtils.d(str, "HmInputOp-->processDirectionHmInputOp: process success. HmInputOp = " + hmInputOp);
    }

    private void processHmInputOp(HmInputOp hmInputOp, HmInputMappingContent hmInputMappingContent, HmInputOpListener hmInputOpListener) {
        if (hmInputMappingContent == null) {
            LogUtils.d(TAG, "HmInputOp-->processHmInputOp: process fail, not config. HmInputOp = " + hmInputOp);
            if (hmInputOpListener != null) {
                hmInputOpListener.onSendFail(hmInputOp, "input op value is not config");
                return;
            }
            return;
        }
        PointCoord pointCoord = new PointCoord();
        pointCoord.f33824x = (float) hmInputMappingContent.posX;
        pointCoord.f33825y = (float) hmInputMappingContent.posY;
        sendKeyboardEvent(hmInputOp.actionType, pointCoord);
        if (hmInputOpListener != null) {
            hmInputOpListener.onSendSuccess(hmInputOp);
        }
        LogUtils.d(TAG, "HmInputOp-->processHmInputOp: process success. HmInputOp = " + hmInputOp);
    }

    private void processHmInputView(HmInputOp hmInputOp, HmInputMappingContent hmInputMappingContent, HmInputOpListener hmInputOpListener) {
        if (hmInputMappingContent == null) {
            LogUtils.d(TAG, "HmInputOp-->processHmInputView: process fail, not config. HmInputOp = " + hmInputOp);
            if (hmInputOpListener != null) {
                hmInputOpListener.onSendFail(hmInputOp, "input op value is not config");
                return;
            }
            return;
        }
        if (hmInputMappingContent.type != 3) {
            LogUtils.d(TAG, "HmInputOp-->processHmInputView: process fail, is not view type");
            if (hmInputOpListener != null) {
                hmInputOpListener.onSendFail(hmInputOp, "require type is 3, but find type is " + hmInputMappingContent.type);
                return;
            }
            return;
        }
        String str = TAG;
        LogUtils.d(str, "HmInputOp-->processHmInputView: hmInputOp = " + hmInputOp + ", hmInputMappingContent = " + hmInputMappingContent);
        int i10 = hmInputMappingContent.viewState;
        if (i10 == 1) {
            float f10 = (float) hmInputMappingContent.posX;
            this.inputOpViewMoveX = f10;
            this.oriInputOpViewX = f10;
            float f11 = (float) hmInputMappingContent.posY;
            this.inputOpViewMoveY = f11;
            this.oriInputOpViewY = f11;
            PointCoord pointCoord = new PointCoord();
            pointCoord.f33824x = this.inputOpViewMoveX;
            pointCoord.f33825y = this.inputOpViewMoveY;
            sendKeyboardEvent(1, pointCoord);
        } else if (i10 == 2) {
            PointCoord pointCoord2 = new PointCoord();
            pointCoord2.f33824x = this.inputOpViewMoveX;
            pointCoord2.f33825y = this.inputOpViewMoveY;
            sendKeyboardEvent(3, pointCoord2);
            sendKeyboardEvent(2, pointCoord2);
            this.inputOpViewMoveX = 0.0f;
            this.inputOpViewMoveY = 0.0f;
        } else {
            float f12 = this.inputOpViewMoveX;
            float f13 = this.inputOpViewMoveY;
            int i11 = hmInputMappingContent.direction;
            if (i11 == 1) {
                f13 -= this.inputOpViewOffset;
            } else if (i11 == 2) {
                f12 -= this.inputOpViewOffset;
            } else if (i11 == 3) {
                f13 += this.inputOpViewOffset;
            } else if (i11 == 4) {
                f12 += this.inputOpViewOffset;
            }
            if (isOverLimit(f12, f13)) {
                LogUtils.d(str, "HmInputOp-->processHmInputView: x or y point is over limit");
                LogUtils.d(str, String.format(Locale.CHINA, "HmInputOp-->processHmInputView: move point [%.4f, %.4f] is over limit ", Float.valueOf(f12), Float.valueOf(f13)));
                PointCoord pointCoord3 = new PointCoord();
                pointCoord3.f33824x = this.inputOpViewMoveX;
                pointCoord3.f33825y = this.inputOpViewMoveY;
                sendKeyboardEvent(2, pointCoord3);
                LogUtils.d(str, String.format(Locale.CHINA, "HmInputOp-->processHmInputView: up point = [%.4f, %.4f]", Float.valueOf(this.inputOpViewMoveX), Float.valueOf(this.inputOpViewMoveY)));
                f12 = this.oriInputOpViewX;
                f13 = this.oriInputOpViewY;
                PointCoord pointCoord4 = new PointCoord();
                pointCoord4.f33824x = f12;
                pointCoord4.f33825y = f13;
                sendKeyboardEvent(1, pointCoord4);
                LogUtils.d(str, String.format(Locale.CHINA, "HmInputOp-->processHmInputView: down point [%.4f, %.4f]", Float.valueOf(f12), Float.valueOf(f13)));
                if (i11 == 1) {
                    f13 -= this.inputOpViewOffset;
                } else if (i11 == 2) {
                    f12 -= this.inputOpViewOffset;
                } else if (i11 == 3) {
                    f13 += this.inputOpViewOffset;
                } else if (i11 == 4) {
                    f12 += this.inputOpViewOffset;
                }
            }
            PointCoord pointCoord5 = new PointCoord();
            this.inputOpViewMoveX = f12;
            pointCoord5.f33824x = f12;
            this.inputOpViewMoveY = f13;
            pointCoord5.f33825y = f13;
            sendKeyboardEvent(3, pointCoord5);
        }
        if (hmInputMappingContent.viewState == 1 && this.inputOpViewMoveX == 0.0f && this.inputOpViewMoveY == 0.0f) {
            if (hmInputOpListener != null) {
                hmInputOpListener.onSendFail(hmInputOp, "view off");
            }
            LogUtils.d(str, "HmInputOp-->processHmInputView: process success. HmInputOp = " + hmInputOp);
            return;
        }
        if (hmInputOpListener != null) {
            hmInputOpListener.onSendSuccess(hmInputOp);
        }
        LogUtils.d(str, "HmInputOp-->processHmInputView: process success. HmInputOp = " + hmInputOp);
    }

    private void sendKeyboardEvent(int i10, PointCoord pointCoord) {
        if (pointCoord == null) {
            LogUtils.d(TAG, "sendKeyboardEvent fail, cause pointCoord is null");
            return;
        }
        InputOpModelListener inputOpModelListener = this.listener;
        if (inputOpModelListener != null) {
            inputOpModelListener.onInputOpEvent(i10, new FPoint(pointCoord.f33824x, pointCoord.f33825y), true);
        }
    }

    private void sendMotionEvent(int i10, PointCoord pointCoord) {
        if (pointCoord == null) {
            LogUtils.d(TAG, "sendMotionEvent fail, cause pointCoord is null");
            return;
        }
        InputOpModelListener inputOpModelListener = this.listener;
        if (inputOpModelListener != null) {
            inputOpModelListener.onInputOpEvent(i10, new FPoint(pointCoord.f33824x, pointCoord.f33825y), false);
        }
    }

    public boolean hasMapping() {
        if (this.hmInputMappings != null && this.hmInputOpDirection != null) {
            return true;
        }
        LogUtils.i(TAG, "HmInputOp-->setButtonMappingMode: GAMEPAD_MODE_INPUT_OP fail, not config");
        return false;
    }

    protected boolean isInputOpDirection(HmInputMappingContent hmInputMappingContent) {
        return (hmInputMappingContent == null || hmInputMappingContent.value == 888 || hmInputMappingContent.type != 2) ? false : true;
    }

    protected boolean isInputOpView(HmInputMappingContent hmInputMappingContent) {
        return hmInputMappingContent != null && hmInputMappingContent.type == 3;
    }

    protected boolean isOverLimit(float f10, float f11) {
        return f10 <= 0.0f || f10 >= 1.0f || f11 <= 0.0f || f11 >= 1.0f;
    }

    public void sendInputOp(ArrayList<HmInputOp> arrayList, HmInputOpListener hmInputOpListener) {
        if (arrayList == null || arrayList.isEmpty()) {
            LogUtils.d(TAG, "HmInputOp-->sendInputOp: inputOps is null or empty");
            if (hmInputOpListener != null) {
                hmInputOpListener.onSendFail(null, "no HmInputOp can be send");
                return;
            }
            return;
        }
        HmInputMappings hmInputMappings = this.hmInputMappings;
        if (hmInputMappings == null || hmInputMappings.mapping == null) {
            if (hmInputOpListener != null) {
                hmInputOpListener.onSendFail(null, "not config hm input op mapping");
            }
            LogUtils.d(TAG, "HmInputOp-->sendInputOp: fail, cause is not config hm input mapping");
            return;
        }
        LogUtils.d(TAG, "HmInputOp-->sendInputOp: ops " + Arrays.toString(arrayList.toArray()));
        for (HmInputOp hmInputOp : arrayList) {
            if (hmInputOp != null) {
                int i10 = hmInputOp.value;
                if (i10 != 888) {
                    HmInputMappingContent hmInputMappingContent = this.hmInputMappings.mapping.get(Integer.valueOf(i10));
                    if (isInputOpDirection(hmInputMappingContent)) {
                        processDirectionHmInputOp(hmInputOp, hmInputMappingContent, hmInputOpListener);
                    } else if (isInputOpView(hmInputMappingContent)) {
                        this.inputOpViewOffset = (float) this.hmInputMappings.viewMoveOffset;
                        processHmInputView(hmInputOp, hmInputMappingContent, hmInputOpListener);
                    } else {
                        processHmInputOp(hmInputOp, hmInputMappingContent, hmInputOpListener);
                    }
                } else if (hmInputOpListener != null) {
                    hmInputOpListener.onSendFail(hmInputOp, "not support input op value: " + hmInputOp.value);
                }
            } else if (hmInputOpListener != null) {
                hmInputOpListener.onSendFail(hmInputOp, "HmInputOp is null");
            }
        }
    }

    public void setConfig(HashMap<String, String> map) {
        if (map == null) {
            LogUtils.d(TAG, "HmInputOp-->onReceiveMetaInfos: hm input op not config");
            this.hmInputMappings = null;
            this.hmInputOpDirection = null;
            return;
        }
        String str = map.get(Constants.KEY_INPUT_OP_MAPPING_CONTENT);
        if (TextUtils.isEmpty(str)) {
            LogUtils.d(TAG, "HmInputOp-->onReceiveMetaInfos: hm input op not config");
            this.hmInputMappings = null;
            this.hmInputOpDirection = null;
            return;
        }
        String str2 = TAG;
        LogUtils.d(str2, "HmInputOp-->onReceiveMetaInfos: hm input op config = " + str);
        this.hmInputMappings = ButtonMappingUtil.getHmInputOpMappings(str);
        LogUtils.d(str2, "HmInputOp-->onReceiveMetaInfos: parsed hm input op config = " + this.hmInputMappings);
        this.hmInputOpDirection = ButtonMappingUtil.getHmInputOpDirection(this.hmInputMappings);
        LogUtils.d(str2, "HmInputOp-->onReceiveMetaInfos: get hm input op direction = " + this.hmInputOpDirection);
    }

    public void setListener(InputOpModelListener inputOpModelListener) {
        this.listener = inputOpModelListener;
    }
}
