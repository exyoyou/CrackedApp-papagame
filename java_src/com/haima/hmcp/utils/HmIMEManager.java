package com.haima.hmcp.utils;

import android.app.Activity;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.core.app.NotificationCompat;
import com.haima.hmcp.beans.IMEListMessage;
import com.haima.hmcp.beans.IMESwitchMessage;
import com.haima.hmcp.countly.CountlyUtil;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class HmIMEManager {
    public static final String CODE_FAIL = "0";
    public static final String CODE_SUCCESS = "1";
    public static final String ERROR_CODE_NOT_ENABLE = "1001";
    public static final String ERROR_CODE_NOT_SUPPORT = "1002";
    public static final String ERROR_CODE_OTHER = "1003";
    public static final int IME_SWITCHING = 2;
    public static final int IME_SWITCH_FAIL = 0;
    public static final int IME_SWITCH_SUCCESS = 1;
    public static int LOCAL_TYPE_IDLE = 0;
    public static int LOCAL_TYPING = 1;
    private static final int MIN_CALL_INTERVAL = 500;
    public static String TAG = "HmIMEManager";
    private static long lastCallTime;
    private static HmIMEManager mHmIMEManager;
    private EditText etShowKeyboard;
    private WeakReference<Activity> mAttachContext;
    private boolean mIsShwoInput = false;
    private int mShowInputOffset = 0;

    public interface HmKeyBoardListener {
        void onError();

        void onKeyBoardFlowMode();

        boolean onKeyBoardHide();

        boolean onKeyBoardShowHeight(int i10);
    }

    private HmIMEManager() {
    }

    public static HmIMEManager getInstance() {
        if (mHmIMEManager == null) {
            synchronized (HmIMEManager.class) {
                if (mHmIMEManager == null) {
                    mHmIMEManager = new HmIMEManager();
                }
            }
        }
        return mHmIMEManager;
    }

    public static void release() {
        if (mHmIMEManager != null) {
            mHmIMEManager = null;
        }
    }

    public Activity getCurrentActivity() {
        WeakReference<Activity> weakReference = this.mAttachContext;
        if (weakReference == null || weakReference.get() == null) {
            try {
                this.mAttachContext = new WeakReference<>(Utils.getTopActOrNull());
            } catch (Exception e10) {
                e10.printStackTrace();
                CountlyUtil.recordErrorEvent("getGlobleActivity error:" + e10.getMessage());
            }
        }
        return this.mAttachContext.get();
    }

    public String getInputMethodName() {
        try {
            Activity currentActivity = getCurrentActivity();
            if (currentActivity == null) {
                return "";
            }
            String string = Settings.Secure.getString(currentActivity.getContentResolver(), "default_input_method");
            return !TextUtils.isEmpty(string) ? string.split(net.lingala.zip4j.util.e.F0)[0] : string;
        } catch (Exception e10) {
            e10.printStackTrace();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getInputMethodName error");
            sb2.append(e10.getMessage());
            return "";
        }
    }

    public int getInputOffset() {
        return this.mShowInputOffset;
    }

    public boolean hideInput() {
        LogUtils.i(TAG, "键盘 收起开始============>");
        try {
            if (this.etShowKeyboard != null) {
                LogUtils.i(TAG, "hideInput:et setFocusAbility false");
                this.etShowKeyboard.setFocusable(false);
                this.etShowKeyboard.setFocusableInTouchMode(false);
            }
            Activity currentActivity = getCurrentActivity();
            if (currentActivity == null) {
                LogUtils.e(TAG, "弹出收起报错:get top act null");
                return false;
            }
            InputMethodManager inputMethodManager = (InputMethodManager) currentActivity.getSystemService("input_method");
            View viewPeekDecorView = currentActivity.getWindow().peekDecorView();
            if (viewPeekDecorView == null || inputMethodManager == null) {
                return false;
            }
            inputMethodManager.hideSoftInputFromWindow(viewPeekDecorView.getWindowToken(), 0);
            this.mIsShwoInput = false;
            return true;
        } catch (Exception e10) {
            LogUtils.e(TAG, "弹出收起报错:" + e10.getMessage());
            return false;
        }
    }

    public boolean isFastCall() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z10 = jCurrentTimeMillis - lastCallTime < 500;
        lastCallTime = jCurrentTimeMillis;
        return z10;
    }

    public boolean isShowInput() {
        LogUtils.i(TAG, "键盘弹出状态:" + this.mIsShwoInput);
        return this.mIsShwoInput;
    }

    public void setAttachContext(Activity activity) {
        if (activity != null) {
            this.mAttachContext = new WeakReference<>(activity);
        }
    }

    public void setInputOffset(int i10) {
        this.mShowInputOffset = i10;
    }

    public void setKeyBoardListener(final HmKeyBoardListener hmKeyBoardListener) {
        try {
            Activity currentActivity = getCurrentActivity();
            if (currentActivity == null) {
                LogUtils.e(TAG, "get top act null");
            } else if (hmKeyBoardListener == null) {
                SoftKeyBoardListener.setListener(currentActivity, null);
            } else {
                SoftKeyBoardListener.setListener(currentActivity, new SoftKeyBoardListener.OnSoftKeyBoardChangeListener() { // from class: com.haima.hmcp.utils.HmIMEManager.2
                    @Override // com.haima.hmcp.utils.SoftKeyBoardListener.OnSoftKeyBoardChangeListener
                    public void keyBoardFlowMode() {
                        HmKeyBoardListener hmKeyBoardListener2 = hmKeyBoardListener;
                        if (hmKeyBoardListener2 != null) {
                            hmKeyBoardListener2.onKeyBoardFlowMode();
                        }
                    }

                    @Override // com.haima.hmcp.utils.SoftKeyBoardListener.OnSoftKeyBoardChangeListener
                    public void keyBoardHide() {
                        HmKeyBoardListener hmKeyBoardListener2 = hmKeyBoardListener;
                        if (hmKeyBoardListener2 != null) {
                            hmKeyBoardListener2.onKeyBoardHide();
                        }
                    }

                    @Override // com.haima.hmcp.utils.SoftKeyBoardListener.OnSoftKeyBoardChangeListener
                    public void keyBoardShowHeight(int i10) {
                        HmKeyBoardListener hmKeyBoardListener2 = hmKeyBoardListener;
                        if (hmKeyBoardListener2 != null) {
                            HmIMEManager.this.mIsShwoInput = hmKeyBoardListener2.onKeyBoardShowHeight(i10);
                        }
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            hmKeyBoardListener.onError();
        }
    }

    public boolean showInput(final EditText editText) {
        LogUtils.i(TAG, "键盘 弹出开始============>");
        try {
            Activity currentActivity = getCurrentActivity();
            if (currentActivity == null) {
                LogUtils.e(TAG, "get top activity null");
                return false;
            }
            InputMethodManager inputMethodManager = (InputMethodManager) currentActivity.getSystemService("input_method");
            if (editText == null) {
                View decorView = currentActivity.getWindow().getDecorView();
                decorView.setFocusable(true);
                decorView.setFocusableInTouchMode(true);
                decorView.requestFocus();
                if (inputMethodManager != null) {
                    inputMethodManager.showSoftInput(decorView, 2);
                    return true;
                }
                LogUtils.e(TAG, "弹出键盘失败：InputMethodManager=null");
                return false;
            }
            this.etShowKeyboard = editText;
            editText.setFocusable(true);
            editText.setFocusableInTouchMode(true);
            editText.requestFocus();
            if (inputMethodManager == null) {
                return false;
            }
            inputMethodManager.showSoftInput(editText, 2);
            final View decorView2 = currentActivity.getWindow().getDecorView();
            decorView2.postDelayed(new Runnable() { // from class: com.haima.hmcp.utils.HmIMEManager.1
                @Override // java.lang.Runnable
                public void run() {
                    View view = decorView2;
                    if (view != null) {
                        view.requestLayout();
                        editText.requestFocus();
                    }
                }
            }, 500L);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            LogUtils.e(TAG, "弹出键盘报错:" + e10.getMessage());
            return false;
        }
    }

    public boolean showInputNoFocus() {
        hideInput();
        return toggleInput();
    }

    public IMEListMessage toIMEListBean(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        IMEListMessage iMEListMessage = new IMEListMessage();
        iMEListMessage.type = jSONObject.optString("type", null);
        iMEListMessage.event = jSONObject.optString(NotificationCompat.CATEGORY_EVENT, null);
        iMEListMessage.payload = jSONObject.optString("payload", null);
        iMEListMessage.code = jSONObject.optString("code", null);
        iMEListMessage.message = jSONObject.optString("message", null);
        return iMEListMessage;
    }

    public IMESwitchMessage toIMESwitchBean(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        IMESwitchMessage iMESwitchMessage = new IMESwitchMessage();
        iMESwitchMessage.type = jSONObject.optString("type", null);
        iMESwitchMessage.setEvent(jSONObject.optString(NotificationCompat.CATEGORY_EVENT, null));
        iMESwitchMessage.setCode(jSONObject.optString("code", null));
        iMESwitchMessage.setMessage(jSONObject.optString("message", null));
        return iMESwitchMessage;
    }

    public boolean toggleInput() {
        try {
            Activity currentActivity = getCurrentActivity();
            if (currentActivity == null) {
                LogUtils.e(TAG, "键盘状态出错:getTopAct null");
                return false;
            }
            InputMethodManager inputMethodManager = (InputMethodManager) currentActivity.getSystemService("input_method");
            if (inputMethodManager == null) {
                return false;
            }
            inputMethodManager.toggleSoftInput(2, 0);
            return true;
        } catch (Exception e10) {
            LogUtils.e(TAG, "键盘状态出错:" + e10.getMessage());
            return false;
        }
    }
}
