package com.haima.hmcp.virtual.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.virtual.HmVirtualConstant;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirKeyboardInfoBean;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirKeyboardLayout extends FrameLayout {
    public static final int TYPE_LETTER = 0;
    public static final int TYPE_NUMBER = 1;
    private int type;

    public interface SelectListener {
        void onSelect(HmVirKeyboardInfoBean hmVirKeyboardInfoBean, View view);
    }

    public HmVirKeyboardLayout(@NonNull Context context) {
        super(context);
    }

    public void initChild(int i10, SelectListener selectListener) {
        FrameLayout.LayoutParams layoutParams = i10 == 1 ? new FrameLayout.LayoutParams(HmVirtualDeviceUtils.dp2px(166, getContext()), HmVirtualDeviceUtils.dp2px(148, getContext())) : new FrameLayout.LayoutParams(HmVirtualDeviceUtils.dp2px(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, getContext()), HmVirtualDeviceUtils.dp2px(178, getContext()));
        layoutParams.gravity = 1;
        setLayoutParams(layoutParams);
        if (i10 == 1) {
            for (HmVirKeyboardInfoBean hmVirKeyboardInfoBean : HmVirtualConstant.NUMBER_KEYS) {
                HmVirKeyboardTextView hmVirKeyboardTextView = new HmVirKeyboardTextView(getContext());
                hmVirKeyboardTextView.init(hmVirKeyboardInfoBean);
                hmVirKeyboardTextView.setListener(selectListener);
                addView(hmVirKeyboardTextView);
            }
            return;
        }
        for (HmVirKeyboardInfoBean hmVirKeyboardInfoBean2 : HmVirtualConstant.LETTER_KEYS) {
            HmVirKeyboardTextView hmVirKeyboardTextView2 = new HmVirKeyboardTextView(getContext());
            hmVirKeyboardTextView2.setListener(selectListener);
            hmVirKeyboardTextView2.init(hmVirKeyboardInfoBean2);
            addView(hmVirKeyboardTextView2);
        }
    }

    public HmVirKeyboardLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HmVirKeyboardLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
