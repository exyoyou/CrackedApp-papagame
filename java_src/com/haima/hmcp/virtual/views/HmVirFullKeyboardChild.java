package com.haima.hmcp.virtual.views;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.haima.hmcp.R;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.Utils;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirFullKeyBoardInfoBean;

/* JADX INFO: loaded from: classes5.dex */
class HmVirFullKeyboardChild extends TextView {
    protected static int defHeight;
    protected static int defInterval;
    protected static int defWidth;
    private String TAG;
    private HmVirFullKeyBoardLayout.FullKBClickListener clickListener;
    HmVirFullKeyBoardInfoBean infoBean;

    public HmVirFullKeyboardChild(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
    }

    private void initTextAndColor(HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean) {
        if (hmVirFullKeyBoardInfoBean == null) {
            LogUtils.e(this.TAG, "initTextAndColor hmVirFullKeyBoardInfoBean is null");
            return;
        }
        String name = hmVirFullKeyBoardInfoBean.getName();
        setTextColor(-1);
        if (TextUtils.isEmpty(name)) {
            return;
        }
        if (!HmVirFullKeyBoardLayout.IS_UPPER || hmVirFullKeyBoardInfoBean.isNeedChangeTxtColor()) {
            setText(name);
        } else {
            setText(name.toUpperCase());
        }
        if (hmVirFullKeyBoardInfoBean.isNeedChangeTxtColor()) {
            if (name.contains("写") || name.toLowerCase().contains(ResourceManager.getString(R.string.haima_hmcp_full_keyboard_caps).toLowerCase())) {
                setText(ResourceManager.getString(HmVirFullKeyBoardLayout.IS_UPPER ? R.string.haima_hmcp_full_keyboard_caps_unlock : R.string.haima_hmcp_full_keyboard_caps_lock));
            }
            setTextColor(Color.parseColor("#EB6800"));
        }
    }

    private void restoreOriginalStyle() {
        initTextAndColor(this.infoBean);
        setBackgroundDrawable(ResourceManager.getInstance().getResources().getDrawable(R.drawable.hm_vir_fullkeyboard_view_bg));
    }

    public void init(HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean, final HmVirFullKeyBoardLayout.FullKBClickListener fullKBClickListener) {
        this.clickListener = fullKBClickListener;
        this.infoBean = hmVirFullKeyBoardInfoBean;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((defWidth * hmVirFullKeyBoardInfoBean.getColumnNum()) + (defInterval * (hmVirFullKeyBoardInfoBean.getColumnNum() - 1)), (defHeight * hmVirFullKeyBoardInfoBean.getRowNum()) + (defInterval * (hmVirFullKeyBoardInfoBean.getRowNum() - 1)));
        int column = (hmVirFullKeyBoardInfoBean.getColumn() - 1) * (defWidth + defInterval);
        layoutParams.leftMargin = column;
        layoutParams.setMarginStart(column);
        layoutParams.topMargin = (hmVirFullKeyBoardInfoBean.getRow() - 1) * (defHeight + defInterval);
        setLayoutParams(layoutParams);
        initTextAndColor(hmVirFullKeyBoardInfoBean);
        setTextSize(2, 10.0f);
        setGravity(17);
        setBackgroundDrawable(ResourceManager.getInstance().getResources().getDrawable(R.drawable.hm_vir_fullkeyboard_view_bg));
        if (Utils.isTV()) {
            setFocusable(true);
        }
        setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirFullKeyboardChild.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogUtils.e(HmVirFullKeyboardChild.this.TAG, HmVirFullKeyboardChild.this.infoBean.getKeys().toString());
                HmVirFullKeyBoardLayout.FullKBClickListener fullKBClickListener2 = fullKBClickListener;
                if (fullKBClickListener2 != null) {
                    fullKBClickListener2.onClick(view, HmVirFullKeyboardChild.this.infoBean);
                }
            }
        });
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z10, int i10, Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (!z10) {
            restoreOriginalStyle();
            return;
        }
        setTextColor(Color.parseColor("#FFFFFF"));
        setBackgroundColor(Color.parseColor("#EB6800"));
        String str = this.TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Key focused: ");
        HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean = this.infoBean;
        sb2.append(hmVirFullKeyBoardInfoBean != null ? hmVirFullKeyBoardInfoBean.getName() : "unknown");
        LogUtils.d(str, sb2.toString());
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            HmVirtualDeviceUtils.vibrator(getContext());
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean requestFocus(int i10, Rect rect) {
        boolean zRequestFocus = super.requestFocus(i10, rect);
        if (Utils.isTV()) {
            setFocusableInTouchMode(false);
        }
        return zRequestFocus;
    }

    public HmVirFullKeyboardChild(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = getClass().getSimpleName();
    }

    public HmVirFullKeyboardChild(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.TAG = getClass().getSimpleName();
    }
}
