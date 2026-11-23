package com.haima.hmcp.virtual.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.haima.hmcp.virtual.listeners.OperateListener;

/* JADX INFO: loaded from: classes5.dex */
public abstract class HmVirtualOperatorViewBase extends LinearLayout {
    public HmVirtualOperatorViewBase(Context context) {
        super(context);
    }

    public abstract boolean consumeThisEvent(MotionEvent motionEvent);

    public void exit() {
    }

    protected abstract void init();

    public void performGuide(int i10) {
    }

    public abstract void reSet();

    public abstract void selectVirtualView(HmBaseVirtualView hmBaseVirtualView);

    public abstract void setOperateListener(OperateListener operateListener);

    public void setResetEnabled(boolean z10) {
    }

    public void setShowGuide(boolean z10) {
    }

    public abstract void setVirType(int i10);

    public HmVirtualOperatorViewBase(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HmVirtualOperatorViewBase(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
