package com.haima.hmcp.virtual.listeners;

import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.views.HmBaseVirtualView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface HmVirtualViewListener {
    void onBtnMoveEvent(HmBaseVirtualView hmBaseVirtualView);

    void onBtnTouchEvent(int i10, List<HmVirtualViewBean.KeysDTO> list, int i11, int i12);

    void onCheckBoxStateChanged(boolean z10, float f10);

    void onClickListener(HmBaseVirtualView hmBaseVirtualView);

    void onMouseTouchEvent(int i10, int i11, int i12, int i13, int i14);

    void onRockerTouchEvent(int i10, List<HmVirtualViewBean.KeysDTO> list, int i11, int i12, int i13, int i14, float f10, float f11);

    void onViewEdit();
}
