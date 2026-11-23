package com.haima.hmcp.virtual.listeners;

import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.views.HmBaseVirtualView;

/* JADX INFO: loaded from: classes5.dex */
public interface OperateListener {
    void onAdd(HmVirtualViewBean hmVirtualViewBean);

    void onDelete(HmBaseVirtualView hmBaseVirtualView);

    void onExit();

    void onReset();

    void onSave(boolean z10);
}
