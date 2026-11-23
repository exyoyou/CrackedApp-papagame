package com.haima.hmcp.virtual.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.haima.hmcp.R;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirKeyboardInfoBean;

/* JADX INFO: loaded from: classes5.dex */
class HmVirKeyboardTextView extends TextView {
    int defHeight;
    int defInterval;
    int defWidth;
    private HmVirKeyboardLayout.SelectListener mListener;

    public HmVirKeyboardTextView(Context context) {
        super(context);
    }

    public void init(final HmVirKeyboardInfoBean hmVirKeyboardInfoBean) {
        this.defWidth = HmVirtualDeviceUtils.dp2px(40, getContext());
        this.defHeight = HmVirtualDeviceUtils.dp2px(28, getContext());
        this.defInterval = HmVirtualDeviceUtils.dp2px(2, getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((this.defWidth * hmVirKeyboardInfoBean.getColumnNum()) + (this.defInterval * (hmVirKeyboardInfoBean.getColumnNum() - 1)), (this.defHeight * hmVirKeyboardInfoBean.getRowNum()) + (this.defInterval * (hmVirKeyboardInfoBean.getRowNum() - 1)));
        layoutParams.leftMargin = (hmVirKeyboardInfoBean.getColumn() - 1) * (this.defWidth + this.defInterval);
        layoutParams.topMargin = (hmVirKeyboardInfoBean.getRow() - 1) * (this.defHeight + this.defInterval);
        setLayoutParams(layoutParams);
        setText(hmVirKeyboardInfoBean.getKey());
        setTextSize(2, 12.0f);
        setTextColor(-1);
        setGravity(17);
        setBackgroundResource(R.drawable.hm_vir_keyboard_view_bg);
        setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirKeyboardTextView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HmVirKeyboardTextView.this.mListener != null) {
                    HmVirKeyboardTextView.this.mListener.onSelect(hmVirKeyboardInfoBean, view);
                }
            }
        });
    }

    public void setListener(HmVirKeyboardLayout.SelectListener selectListener) {
        this.mListener = selectListener;
    }

    public HmVirKeyboardTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HmVirKeyboardTextView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
