package com.haima.hmcp.virtual.dialogs;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.haima.hmcp.Constants;
import com.haima.hmcp.R;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.proto.GSSDK;
import com.haima.hmcp.utils.DialogUtils;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.HmVirtualDeviceManager;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirFullKeyBoardInfoBean;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.views.HmVirFullKeyBoardLayout;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import com.haima.hmcp.widgets.beans.VirtualOperateType;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirInputKBDialog extends Dialog {
    private final String TAG;
    private HmVirFullKeyBoardLayout fullKeyboardLayout;
    private VirtualOperateType operateType;
    private AbsIjkVideoView rtcVideoView;

    public HmVirInputKBDialog(@NonNull Context context, final AbsIjkVideoView absIjkVideoView) {
        super(context, R.style.haima_hmcp_virtual_dialog);
        this.TAG = getClass().getSimpleName();
        this.operateType = VirtualOperateType.NONE;
        this.rtcVideoView = absIjkVideoView;
        Activity activityFromContext = HmVirtualDeviceUtils.getActivityFromContext(context);
        if (activityFromContext != null) {
            int systemUiVisibility = activityFromContext.getWindow().getDecorView().getSystemUiVisibility();
            if (Build.VERSION.SDK_INT >= 28) {
                int i10 = activityFromContext.getWindow().getAttributes().layoutInDisplayCutoutMode;
                WindowManager.LayoutParams attributes = getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = i10;
                getWindow().setAttributes(attributes);
            }
            getWindow().getDecorView().setSystemUiVisibility(systemUiVisibility);
        }
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.hm_dialog_fullkeyboard, (ViewGroup) null, false);
        FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.secondRoot);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
        layoutParams.height = (int) (absIjkVideoView.getHeight() * 0.73066664f);
        frameLayout.setLayoutParams(layoutParams);
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.HmVirInputKBDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        int width = (int) (this.rtcVideoView.getWidth() * 0.059970014f);
        int height = (int) (this.rtcVideoView.getHeight() * 0.09066667f);
        int height2 = (int) (this.rtcVideoView.getHeight() * 0.010666667f);
        HmVirFullKeyBoardLayout hmVirFullKeyBoardLayout = (HmVirFullKeyBoardLayout) viewInflate.findViewById(R.id.fullKeyboardLayout);
        this.fullKeyboardLayout = hmVirFullKeyBoardLayout;
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) hmVirFullKeyBoardLayout.getLayoutParams();
        int i11 = width * 15;
        int width2 = this.rtcVideoView.getWidth() - i11;
        height2 = width2 < height2 * 14 ? (int) ((width2 / 14) * 1.0f) : height2;
        layoutParams2.width = i11 + (height2 * 14);
        layoutParams2.height = (height * 6) + (height2 * 5);
        this.fullKeyboardLayout.setLayoutParams(layoutParams2);
        this.fullKeyboardLayout.setChildParams(width, height, height2);
        CountlyUtil.recordEvent(Constants.COUNTLY_KEYBOARD_SHOW, "HmVirInputKBDialog:container width:" + this.rtcVideoView.getWidth() + ",container height:" + this.rtcVideoView.getHeight() + ",childInterval:" + height2);
        this.fullKeyboardLayout.setListener(new HmVirFullKeyBoardLayout.FullKBClickListener() { // from class: com.haima.hmcp.virtual.dialogs.HmVirInputKBDialog.2
            @Override // com.haima.hmcp.virtual.views.HmVirFullKeyBoardLayout.FullKBClickListener
            public void onClick(View view, HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean) {
                if (hmVirFullKeyBoardInfoBean.getKeys() == null) {
                    return;
                }
                LogUtils.d(HmVirInputKBDialog.this.TAG, "keys = " + hmVirFullKeyBoardInfoBean.getKeys().toString());
                Iterator<HmVirtualViewBean.KeysDTO> it2 = hmVirFullKeyBoardInfoBean.getKeys().iterator();
                while (it2.hasNext()) {
                    HmVirInputKBDialog.this.handleKey(absIjkVideoView, it2.next().getCode());
                }
            }
        });
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.HmVirInputKBDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HmVirInputKBDialog.this.dismiss();
            }
        });
        setContentView(viewInflate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleKey(final AbsIjkVideoView absIjkVideoView, final int i10) {
        if (absIjkVideoView == null) {
            LogUtils.e(this.TAG, "sendKeyError:view is null");
            return;
        }
        if (!absIjkVideoView.isAllowInput()) {
            LogUtils.i(this.TAG, "not allow handle vir full keyboard event");
        } else if (i10 == 20) {
            absIjkVideoView.syncCapLock(HmVirFullKeyBoardLayout.IS_UPPER);
        } else {
            absIjkVideoView.sendKeyCodeDown(GSSDK.OneInputOPData.InputOP.forNumber(i10));
            absIjkVideoView.postDelayed(new Runnable() { // from class: com.haima.hmcp.virtual.dialogs.HmVirInputKBDialog.4
                @Override // java.lang.Runnable
                public void run() {
                    absIjkVideoView.sendKeyCodeUp(GSSDK.OneInputOPData.InputOP.forNumber(i10));
                }
            }, 16L);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        VirtualOperateType virtualOperateType;
        super.dismiss();
        AbsIjkVideoView absIjkVideoView = this.rtcVideoView;
        if (absIjkVideoView == null || (virtualOperateType = this.operateType) == VirtualOperateType.NONE) {
            return;
        }
        if (virtualOperateType == VirtualOperateType.VIRTUAL_KEYBOARD) {
            absIjkVideoView.showVirtualKeyboardInner(true);
        } else {
            absIjkVideoView.showVirtualStickInner(true);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        if (DialogUtils.isContextValid(getContext())) {
            try {
                super.show();
                LogUtils.d(this.TAG, "screen  = " + HmVirtualDeviceManager.rawRootPoint.toString());
                WindowManager.LayoutParams attributes = getWindow().getAttributes();
                Point point = HmVirtualDeviceManager.rawRootPoint;
                attributes.width = point.x;
                attributes.height = point.y;
                getWindow().setAttributes(attributes);
                AbsIjkVideoView absIjkVideoView = this.rtcVideoView;
                if (absIjkVideoView != null) {
                    VirtualOperateType operateType = absIjkVideoView.getOperateType();
                    this.operateType = operateType;
                    if (operateType == VirtualOperateType.VIRTUAL_KEYBOARD) {
                        this.rtcVideoView.showVirtualKeyboardInner(false);
                    } else if (operateType == VirtualOperateType.VIRTUAL_STICK_XBOX) {
                        this.rtcVideoView.showVirtualStickInner(false);
                    }
                }
            } catch (WindowManager.BadTokenException e10) {
                LogUtils.e(this.TAG, "BadTokenException when showing dialog: " + e10.getMessage());
            } catch (NullPointerException e11) {
                e11.printStackTrace();
            }
        }
    }

    public void updateKeyboardLayout() {
        HmVirFullKeyBoardLayout hmVirFullKeyBoardLayout = this.fullKeyboardLayout;
        if (hmVirFullKeyBoardLayout != null) {
            hmVirFullKeyBoardLayout.updateLayout();
        }
    }
}
