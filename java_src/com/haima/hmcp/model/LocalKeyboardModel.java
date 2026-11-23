package com.haima.hmcp.model;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.text.method.KeyListener;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodInfo;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.IntRange;
import com.android.dx.io.Opcodes;
import com.byazt.quv.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.GamePlatformType;
import com.haima.hmcp.beans.IMEListMessage;
import com.haima.hmcp.beans.IMESwitchMessage;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.listeners.GetCloudIMECallback;
import com.haima.hmcp.listeners.LocalKeyboardModelListener;
import com.haima.hmcp.utils.AppInfoHelper;
import com.haima.hmcp.utils.HmIMEManager;
import com.haima.hmcp.utils.HmInputDeviceManager;
import com.haima.hmcp.utils.InputMethodHelper;
import com.haima.hmcp.utils.KeyMapUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.HmcpHideEditText;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class LocalKeyboardModel {
    private static final String DIGITS = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static final String GOOGLE_INPUT_METHOD_PACKAGE = "com.google.android.inputmethod.latin";
    private static final int REACTIVE_KEYBOARD_DELAY_TIME_MS = 20;
    public static final int STATE_HIDE = 0;
    public static final int STATE_SHOW = 1;
    private static final String TAG = "LocalKeyboardModel";
    private ImeActionListener imeActionListener;
    private String lastPayload;
    private LocalKeyboardModelListener listener;
    private HmcpHideEditText mHideView;
    private ReactiveKeyboardRunnable reactiveKeyboardRunnable;
    private final String KEYBOARD_DOWN = "keyDown";
    private final String KEYBOARD_UP = "keyUp";
    private final String KEYBOARD_DOWN_FLAG = "1";
    private final String KEYBOARD_UP_FLAG = "0";
    private String digits = DIGITS;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private boolean isDelListen = true;
    private String textBeforeChange = "";
    private final TextWatcher textWatcher = new AnonymousClass4();
    private final HmIMEManager mHmIMEManager = HmIMEManager.getInstance();

    /* JADX INFO: renamed from: com.haima.hmcp.model.LocalKeyboardModel$4, reason: invalid class name */
    class AnonymousClass4 implements TextWatcher {
        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTextChanged$0(char c10) {
            LocalKeyboardModel.this.sendTextContent("textIM:" + c10);
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            LocalKeyboardModel.this.textBeforeChange = charSequence.toString();
            LogUtils.e(LocalKeyboardModel.TAG, "键盘 EditText监听 beforeTextChanged:" + ((Object) charSequence) + "; start:" + i10 + "; count:" + i11 + "; after:" + i12);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            LogUtils.e(LocalKeyboardModel.TAG, "键盘 EditText监听 onTextChanged:" + ((Object) charSequence) + "; start:" + i10 + "; before:" + i11 + "; count:" + i12);
            if (LocalKeyboardModel.this.textBeforeChange.equals(charSequence.toString())) {
                LogUtils.e(LocalKeyboardModel.TAG, "输入法特殊行为，内容无变化，过滤行为避免误判");
                return;
            }
            int i13 = i12 - i11;
            if (i13 > 0) {
                try {
                    CharSequence charSequenceSubSequence = charSequence.subSequence(i11 + i10, i10 + i12);
                    LogUtils.i(LocalKeyboardModel.TAG, "键盘 新增文字：" + ((Object) charSequenceSubSequence));
                    if (TextUtils.equals(charSequenceSubSequence, "\n")) {
                        LogUtils.i(LocalKeyboardModel.TAG, "键盘 新增回车");
                        LocalKeyboardModel.this.sendKeyboardEvent("keyDown", 13);
                        LocalKeyboardModel.this.sendKeyboardEvent("keyUp", 13);
                        return;
                    } else {
                        LocalKeyboardModel.this.sendTextContent("textIM:" + ((Object) charSequenceSubSequence));
                    }
                } catch (Exception e10) {
                    LogUtils.e(LocalKeyboardModel.TAG, "键盘文本监听错误 数组可能越界");
                    e10.printStackTrace();
                    return;
                }
            }
            if (i13 < 0 && LocalKeyboardModel.this.isDelListen && LocalKeyboardModel.this.mHmIMEManager.isShowInput()) {
                LogUtils.i(LocalKeyboardModel.TAG, "键盘监听文字减少，发送删除键");
                LocalKeyboardModel.this.sendKeyboardEvent("keyDown", 8);
                LocalKeyboardModel.this.sendKeyboardEvent("keyUp", 8);
            }
            if (i13 != 0 || i12 <= 0) {
                return;
            }
            LocalKeyboardModel.this.sendKeyboardEvent("keyDown", 8);
            LocalKeyboardModel.this.sendKeyboardEvent("keyUp", 8);
            final char cCharAt = charSequence.toString().charAt(charSequence.length() - 1);
            LogUtils.e(LocalKeyboardModel.TAG, "键盘 EditText监听 ; sadd:" + cCharAt);
            LocalKeyboardModel.this.mHandler.postDelayed(new Runnable() { // from class: com.haima.hmcp.model.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34064b.lambda$onTextChanged$0(cCharAt);
                }
            }, 50L);
        }
    }

    private static class HmKeyListener implements KeyListener {
        private final int inputType;

        public HmKeyListener(int i10) {
            this.inputType = i10;
        }

        @Override // android.text.method.KeyListener
        public void clearMetaKeyState(View view, Editable editable, int i10) {
        }

        @Override // android.text.method.KeyListener
        public int getInputType() {
            return this.inputType;
        }

        @Override // android.text.method.KeyListener
        public boolean onKeyDown(View view, Editable editable, int i10, KeyEvent keyEvent) {
            return false;
        }

        @Override // android.text.method.KeyListener
        public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
            return false;
        }

        @Override // android.text.method.KeyListener
        public boolean onKeyUp(View view, Editable editable, int i10, KeyEvent keyEvent) {
            return false;
        }
    }

    interface ImeActionListener {
        void onImeAction(String str);
    }

    private static class ReactiveKeyboardRunnable implements Runnable {
        private ReactiveKeyboardRunnableListener listener;
        private String payload;

        @Override // java.lang.Runnable
        public void run() {
            LogUtils.i(LocalKeyboardModel.TAG, "reactive keyboard is running...");
            ReactiveKeyboardRunnableListener reactiveKeyboardRunnableListener = this.listener;
            if (reactiveKeyboardRunnableListener != null) {
                reactiveKeyboardRunnableListener.onReactive(this.payload);
            }
        }

        public void setListener(ReactiveKeyboardRunnableListener reactiveKeyboardRunnableListener) {
            this.listener = reactiveKeyboardRunnableListener;
        }

        public void setPayload(String str) {
            this.payload = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface ReactiveKeyboardRunnableListener {
        void onReactive(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkImeTypeFinished(GetCloudIMECallback getCloudIMECallback) {
        LocalKeyboardModelListener localKeyboardModelListener = this.listener;
        if (localKeyboardModelListener != null) {
            localKeyboardModelListener.onCheckImeTypeFinished(getCloudIMECallback);
        }
    }

    private String getInputMethodName(Context context) {
        InputMethodInfo currentInputMethodInfo;
        return (context == null || (currentInputMethodInfo = InputMethodHelper.getCurrentInputMethodInfo(context)) == null) ? "" : currentInputMethodInfo.loadLabel(context.getPackageManager()).toString();
    }

    private String getInputMethodPackageName(Context context) {
        InputMethodInfo currentInputMethodInfo;
        return (context == null || (currentInputMethodInfo = InputMethodHelper.getCurrentInputMethodInfo(context)) == null) ? "" : currentInputMethodInfo.getPackageName();
    }

    private String getInputMethodVersion(Context context) {
        InputMethodInfo currentInputMethodInfo;
        PackageInfo appPackageInfo;
        return (context == null || (currentInputMethodInfo = InputMethodHelper.getCurrentInputMethodInfo(context)) == null || (appPackageInfo = AppInfoHelper.getAppPackageInfo(this.mHideView.getContext(), currentInputMethodInfo.getPackageName())) == null) ? "" : appPackageInfo.versionName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean interceptKey(int i10) {
        return i10 == 4 || i10 == 3 || i10 == 82;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isGoogleSpecialKeyCode(int i10) {
        if (i10 == 66 || i10 == 67) {
            return true;
        }
        switch (i10) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reactiveKeyboard$0(final String str) {
        LocalKeyboardModelListener localKeyboardModelListener = this.listener;
        if (localKeyboardModelListener != null) {
            localKeyboardModelListener.onCheckImeType(new GetCloudIMECallback() { // from class: com.haima.hmcp.model.LocalKeyboardModel.3
                @Override // com.haima.hmcp.listeners.GetCloudIMECallback
                public void getCloudImeResult(int i10, int i11) {
                    LogUtils.e(LocalKeyboardModel.TAG, "键盘: get ime type: result = " + i10 + ", imeType = " + i11);
                    if (i10 == 1 && i11 == 1) {
                        if (TextUtils.isEmpty(str)) {
                            LogUtils.e(LocalKeyboardModel.TAG, "键盘: reactive fail, payload is null");
                            return;
                        }
                        if (LocalKeyboardModel.this.listener != null) {
                            LocalKeyboardModel.this.listener.onRegisterKeyboardListener();
                        }
                        LocalKeyboardModel.this.startKeyboard(str);
                        LocalKeyboardModel.this.reactiveKeyboardRunnable.setPayload(null);
                        LocalKeyboardModel.this.reactiveKeyboardRunnable.setListener(null);
                        LocalKeyboardModel.this.reactiveKeyboardRunnable = null;
                    }
                    LocalKeyboardModel.this.checkImeTypeFinished(this);
                }
            });
        }
    }

    private void reactiveKeyboard(String str) {
        if (TextUtils.isEmpty(str)) {
            LogUtils.e(TAG, "键盘: payload is null, stop reactive");
            return;
        }
        LogUtils.e(TAG, "键盘: try to reactive keyboard");
        ReactiveKeyboardRunnable reactiveKeyboardRunnable = this.reactiveKeyboardRunnable;
        if (reactiveKeyboardRunnable == null) {
            this.reactiveKeyboardRunnable = new ReactiveKeyboardRunnable();
        } else {
            removeReactiveRunnable(reactiveKeyboardRunnable);
        }
        this.reactiveKeyboardRunnable.setPayload(str);
        this.reactiveKeyboardRunnable.setListener(new ReactiveKeyboardRunnableListener() { // from class: com.haima.hmcp.model.b
            @Override // com.haima.hmcp.model.LocalKeyboardModel.ReactiveKeyboardRunnableListener
            public final void onReactive(String str2) {
                this.f34063a.lambda$reactiveKeyboard$0(str2);
            }
        });
        this.mHandler.postDelayed(this.reactiveKeyboardRunnable, 20L);
    }

    private void removeReactiveRunnable(ReactiveKeyboardRunnable reactiveKeyboardRunnable) {
        if (reactiveKeyboardRunnable == null) {
            return;
        }
        reactiveKeyboardRunnable.setPayload(null);
        reactiveKeyboardRunnable.setListener(null);
        this.mHandler.removeCallbacks(reactiveKeyboardRunnable);
        LogUtils.i(TAG, "remove reactive keyboard runnable");
    }

    private void reportInputMethodInfo(Context context) {
        if (context == null) {
            LogUtils.i(TAG, "report input method info fail, context is null");
            return;
        }
        String inputMethodName = getInputMethodName(context);
        String inputMethodPackageName = getInputMethodPackageName(context);
        String inputMethodVersion = getInputMethodVersion(context);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("name", inputMethodName);
            jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, inputMethodPackageName);
            jSONObject.put("version", inputMethodVersion);
            CountlyUtil.recordEvent(Constants.COUNTLY_INPUT_METHO_NAME, jSONObject.toString());
        } catch (JSONException unused) {
        }
        LogUtils.i(TAG, "input method: name: " + inputMethodName + ", package: " + inputMethodPackageName + ", version: " + inputMethodVersion);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendKeyboardEvent(String str, int i10) {
        LocalKeyboardModelListener localKeyboardModelListener = this.listener;
        if (localKeyboardModelListener != null) {
            localKeyboardModelListener.onKeyboardEvent(str, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendTextContent(String str) {
        LocalKeyboardModelListener localKeyboardModelListener = this.listener;
        if (localKeyboardModelListener != null) {
            localKeyboardModelListener.onSendText(str);
        }
    }

    private void setDefaultDigits(int i10) {
        this.mHideView.setKeyListener(new HmKeyListener(i10));
    }

    private void setFocus(boolean z10) {
        LogUtils.e(TAG, "setFocus " + z10);
        HmcpHideEditText hmcpHideEditText = this.mHideView;
        if (hmcpHideEditText != null) {
            hmcpHideEditText.setFocusable(z10);
            this.mHideView.setFocusableInTouchMode(z10);
        }
    }

    private void setImeOptions(int i10) {
        HmcpHideEditText hmcpHideEditText = this.mHideView;
        if (hmcpHideEditText == null) {
            return;
        }
        hmcpHideEditText.setImeOptions(i10);
    }

    private void setInputType(int i10) {
        HmcpHideEditText hmcpHideEditText = this.mHideView;
        if (hmcpHideEditText == null) {
            return;
        }
        hmcpHideEditText.setInputType(i10);
    }

    private void setInternalDigits(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mHideView.setKeyListener(DigitsKeyListener.getInstance(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startKeyboard(String str) {
        LocalKeyboardModelListener localKeyboardModelListener;
        LocalKeyboardModelListener localKeyboardModelListener2;
        boolean z10 = true;
        changeState(1);
        this.mHideView.removeTextChangedListener(this.textWatcher);
        this.mHideView.setText("");
        this.mHideView.addTextChangedListener(this.textWatcher);
        reportInputMethodInfo(this.mHideView.getContext());
        try {
            String[] strArrSplit = str.split(":");
            if (strArrSplit.length > 4) {
                String str2 = strArrSplit[3];
                String str3 = strArrSplit[4];
                if (!TextUtils.isEmpty(str3)) {
                    if (TextUtils.equals(str3, "0")) {
                        LocalKeyboardModelListener localKeyboardModelListener3 = this.listener;
                        if (localKeyboardModelListener3 != null) {
                            localKeyboardModelListener3.onScreenOrientationForKeyboard(ScreenOrientation.LANDSCAPE);
                        }
                    } else if (TextUtils.equals(str3, "3") && (localKeyboardModelListener2 = this.listener) != null) {
                        localKeyboardModelListener2.onScreenOrientationForKeyboard(ScreenOrientation.PORTRAIT);
                    }
                }
                if (TextUtils.isEmpty(str2)) {
                    setDefaultDigits(1);
                } else {
                    String str4 = TAG;
                    LogUtils.i(str4, "原 键盘类型:" + str2);
                    LogUtils.i(str4, "键盘方向:" + str3);
                    int i10 = Integer.parseInt(str2);
                    if ((i10 & 128) == 128) {
                        i10 ^= 128;
                    } else if ((i10 & 16) == 16) {
                        i10 ^= 16;
                    } else if ((i10 & 144) == 144) {
                        i10 ^= 144;
                    } else if ((i10 & Opcodes.SHL_INT_LIT8) == 224) {
                        i10 ^= Opcodes.SHL_INT_LIT8;
                    }
                    if (i10 == 0) {
                        i10 = 1;
                    }
                    LogUtils.i(str4, "去掉安全密码键盘后 键盘类型:" + i10);
                    CountlyUtil.recordEvent(Constants.COUNTLY_INPUT_KEYBOARD, "input type: " + i10);
                    this.imeActionListener = null;
                    if (strArrSplit.length > 5 && !TextUtils.isEmpty(strArrSplit[5])) {
                        try {
                            setImeOptions(Integer.parseInt(strArrSplit[5]) | C.ENCODING_PCM_MU_LAW);
                            this.imeActionListener = new ImeActionListener() { // from class: com.haima.hmcp.model.a
                                @Override // com.haima.hmcp.model.LocalKeyboardModel.ImeActionListener
                                public final void onImeAction(String str5) {
                                    this.f34062a.sendTextContent(str5);
                                }
                            };
                        } catch (NumberFormatException unused) {
                            LogUtils.e(TAG, "set ime options error");
                        }
                    }
                    setInputType(i10);
                    boolean z11 = i10 == 2 || (i10 & 2) == 2;
                    if (i10 != 3 && (i10 & 3) != 3) {
                        z10 = false;
                    }
                    if (z11 || z10) {
                        LogUtils.i(TAG, "键盘 设置digits = " + this.digits + ", hasNumberFlag = " + z11 + ", hasPhoneFlag = " + z10);
                        setInternalDigits(this.digits);
                    } else {
                        setDefaultDigits(i10);
                    }
                }
            } else {
                setDefaultDigits(1);
                LogUtils.e(TAG, "键盘指令错误 StartIM command Error");
            }
            if (isShowInput() && (localKeyboardModelListener = this.listener) != null) {
                localKeyboardModelListener.onSendKeyboardHeightPercent();
            }
            showInput();
            LocalKeyboardModelListener localKeyboardModelListener4 = this.listener;
            if (localKeyboardModelListener4 != null) {
                localKeyboardModelListener4.onCallbackLocalKeyboardShow();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            LogUtils.e(TAG, "开启键盘命令异常:" + str);
        }
    }

    public boolean bind(ViewGroup viewGroup) {
        viewGroup.addView(this.mHideView);
        return true;
    }

    public void changeState(@IntRange(from = 0, to = 1) int i10) {
        this.mHideView.setVisibility(i10 == 1 ? 0 : 8);
    }

    public void clearText() {
        this.isDelListen = false;
        HmcpHideEditText hmcpHideEditText = this.mHideView;
        if (hmcpHideEditText != null) {
            hmcpHideEditText.setText("");
        }
        this.isDelListen = true;
    }

    public boolean handleImeOrder(String str) {
        LogUtils.i(TAG, "键盘指令:" + str);
        if (str.startsWith("IME:StartIM")) {
            removeReactiveRunnable(this.reactiveKeyboardRunnable);
            this.lastPayload = str;
            startKeyboard(str);
        } else if (str.startsWith("startIM")) {
            reactiveKeyboard(this.lastPayload);
        } else {
            if (!str.startsWith("stopIM")) {
                return false;
            }
            HmcpHideEditText hmcpHideEditText = this.mHideView;
            if (hmcpHideEditText != null && hmcpHideEditText.isFocused()) {
                this.mHmIMEManager.hideInput();
                this.mHideView.setVisibility(4);
            } else if (this.mHideView != null) {
                LogUtils.e(HmIMEManager.TAG, "focused:" + this.mHideView.isFocused());
            }
            LocalKeyboardModelListener localKeyboardModelListener = this.listener;
            if (localKeyboardModelListener != null) {
                localKeyboardModelListener.onInputHide();
            }
        }
        return true;
    }

    public void hideInput() {
        HmIMEManager hmIMEManager = this.mHmIMEManager;
        if (hmIMEManager != null) {
            hmIMEManager.hideInput();
        }
        HmcpHideEditText hmcpHideEditText = this.mHideView;
        if (hmcpHideEditText != null) {
            hmcpHideEditText.setVisibility(4);
        }
    }

    public void init(Context context, LocalKeyboardModelListener localKeyboardModelListener) {
        LogUtils.i(TAG, "init");
        this.listener = localKeyboardModelListener;
        HmcpHideEditText hmcpHideEditText = new HmcpHideEditText(context);
        this.mHideView = hmcpHideEditText;
        hmcpHideEditText.setTextColor(0);
        this.mHideView.setBackgroundColor(0);
        this.mHideView.setX(-300.0f);
        this.mHideView.setLayoutParams(new RelativeLayout.LayoutParams(200, 100));
        setFocus(false);
        this.mHideView.setImeOptions(C.ENCODING_PCM_MU_LAW);
        this.mHideView.setOnHmKeyListener(new HmcpHideEditText.OnHmKeyListener() { // from class: com.haima.hmcp.model.LocalKeyboardModel.1
            @Override // com.haima.hmcp.widgets.HmcpHideEditText.OnHmKeyListener
            public boolean onKeyDown(int i10, KeyEvent keyEvent) {
                if (LocalKeyboardModel.this.interceptKey(i10)) {
                    return false;
                }
                LocalKeyboardModel localKeyboardModel = LocalKeyboardModel.this;
                if (localKeyboardModel.isGoogleInputMethod(localKeyboardModel.mHideView.getContext())) {
                    if (!LocalKeyboardModel.this.isGoogleSpecialKeyCode(i10)) {
                        LogUtils.i(LocalKeyboardModel.TAG, "onKeyDown: " + KeyEvent.keyCodeToString(i10) + "(" + i10 + ") not support send");
                        return false;
                    }
                } else if (i10 != 67 && i10 != 66) {
                    LogUtils.i(LocalKeyboardModel.TAG, "onKeyDown: " + KeyEvent.keyCodeToString(i10) + "(" + i10 + ") not support send");
                    return false;
                }
                if (i10 == 67) {
                    LocalKeyboardModel.this.isDelListen = false;
                }
                if (i10 == 66) {
                    LocalKeyboardModel.this.sendKeyboardEvent("keyDown", 13);
                    return false;
                }
                int iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(i10);
                if (iAndroidKeyCode2PASSKey != 0) {
                    LocalKeyboardModel.this.sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
                } else {
                    LocalKeyboardModel.this.sendKeyboardEvent("1", KeyEvent.keyCodeToString(keyEvent.getKeyCode()));
                }
                return false;
            }

            @Override // com.haima.hmcp.widgets.HmcpHideEditText.OnHmKeyListener
            public boolean onKeyUp(int i10, KeyEvent keyEvent) {
                if (LocalKeyboardModel.this.interceptKey(i10)) {
                    return false;
                }
                if (HmInputDeviceManager.isJoyStick(keyEvent)) {
                    LocalKeyboardModel.this.sendKeyboardEvent("0", KeyEvent.keyCodeToString(keyEvent.getKeyCode()));
                }
                LocalKeyboardModel localKeyboardModel = LocalKeyboardModel.this;
                if (localKeyboardModel.isGoogleInputMethod(localKeyboardModel.mHideView.getContext())) {
                    if (!LocalKeyboardModel.this.isGoogleSpecialKeyCode(i10)) {
                        LogUtils.i(LocalKeyboardModel.TAG, "onKeyUp: " + KeyEvent.keyCodeToString(i10) + "(" + i10 + ") not support send");
                        return false;
                    }
                } else if (i10 != 67 && i10 != 66) {
                    LogUtils.i(LocalKeyboardModel.TAG, "onKeyUp: " + KeyEvent.keyCodeToString(i10) + "(" + i10 + ") not support send");
                    return false;
                }
                if (i10 == 67) {
                    LocalKeyboardModel.this.isDelListen = true;
                }
                if (i10 == 66) {
                    LocalKeyboardModel.this.sendKeyboardEvent("keyUp", 13);
                    return false;
                }
                int iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(i10);
                if (iAndroidKeyCode2PASSKey != 0) {
                    LocalKeyboardModel.this.sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
                } else {
                    LocalKeyboardModel.this.sendKeyboardEvent("0", KeyEvent.keyCodeToString(keyEvent.getKeyCode()));
                }
                return false;
            }
        });
        this.mHideView.addTextChangedListener(this.textWatcher);
        this.mHideView.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.haima.hmcp.model.LocalKeyboardModel.2
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                String str;
                String str2;
                LogUtils.e(LocalKeyboardModel.TAG, "键盘onKey onEditorAction:actionId:" + i10 + ", KeyEvent = " + keyEvent);
                switch (i10) {
                    case 1:
                        str = "IME_ACTION_NONE";
                        break;
                    case 2:
                        str = "IME_ACTION_GO";
                        break;
                    case 3:
                        str = "IME_ACTION_SEARCH";
                        break;
                    case 4:
                        str = "IME_ACTION_SEND";
                        break;
                    case 5:
                        str = "IME_ACTION_NEXT";
                        break;
                    case 6:
                        str = "IME_ACTION_DONE";
                        break;
                    case 7:
                        str = "IME_ACTION_PREVIOUS";
                        break;
                    default:
                        str = "";
                        break;
                }
                if (TextUtils.isEmpty(str)) {
                    str2 = null;
                } else {
                    str2 = "IME:" + str;
                }
                if (LocalKeyboardModel.this.imeActionListener != null && !TextUtils.isEmpty(str2)) {
                    LogUtils.i(LocalKeyboardModel.TAG, "send action id order: " + str2);
                    LocalKeyboardModel.this.imeActionListener.onImeAction(str2);
                }
                if (keyEvent == null) {
                    if (!TextUtils.isEmpty(str2)) {
                        return true;
                    }
                    LocalKeyboardModel.this.sendKeyboardEvent("keyDown", 13);
                    LocalKeyboardModel.this.sendKeyboardEvent("keyUp", 13);
                    return true;
                }
                LogUtils.e(LocalKeyboardModel.TAG, "键盘onKey onEditorAction:" + keyEvent.getKeyCode());
                return false;
            }
        });
    }

    public boolean isGoogleInputMethod(Context context) {
        return GOOGLE_INPUT_METHOD_PACKAGE.equals(getInputMethodPackageName(context));
    }

    public boolean isShowInput() {
        return this.mHmIMEManager.isShowInput();
    }

    public void release() {
        this.mHideView.release();
    }

    public void requestFocus() {
        setFocus(true);
        this.mHideView.requestFocus();
    }

    public void setAttachContext(Activity activity) {
        if (activity == null) {
            return;
        }
        this.mHmIMEManager.setAttachContext(activity);
    }

    public void setDigits(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.digits = str;
    }

    public void setHmKeyBoardListener(GamePlatformType gamePlatformType, HmIMEManager.HmKeyBoardListener hmKeyBoardListener) {
        this.mHmIMEManager.setKeyBoardListener(hmKeyBoardListener);
        if (gamePlatformType != GamePlatformType.X86) {
            this.mHideView.setKeyBoardListener(hmKeyBoardListener);
        }
    }

    public void showInput() {
        this.mHmIMEManager.showInput(this.mHideView);
    }

    public IMEListMessage toIMEListBean(JSONObject jSONObject) {
        return this.mHmIMEManager.toIMEListBean(jSONObject);
    }

    public IMESwitchMessage toIMESwitchBean(JSONObject jSONObject) {
        return this.mHmIMEManager.toIMESwitchBean(jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendKeyboardEvent(String str, String str2) {
        LocalKeyboardModelListener localKeyboardModelListener = this.listener;
        if (localKeyboardModelListener != null) {
            localKeyboardModelListener.onKeyboardEvent(str, str2);
        }
    }
}
