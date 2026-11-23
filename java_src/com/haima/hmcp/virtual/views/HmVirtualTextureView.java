package com.haima.hmcp.virtual.views;

import android.content.Context;
import android.util.AttributeSet;
import com.haima.hmcp.enums.EditStatus;
import com.haima.hmcp.proto.GSSDK;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirtualTextureView extends HmBaseVirtualTextureView {
    private DataListener mListener;
    private HashMap<Integer, Boolean> stickKeyMaps;

    public interface DataListener {
        void editKeyboardConfigNotify(String str, EditStatus editStatus);

        void onReceiveKeyboardBtnValue(int i10, int i11, int i12);

        void onReceiveLTRTValue(int i10, String str);

        void onReceiveMouseValue(int i10, int i11, int i12, GSSDK.OneInputOPData.InputOP inputOP);

        void onReceiveStickBtnValue(int i10);

        void onReceiveStickRockerValue(float f10, float f11, int i10);

        void useSpecificSensitivity(boolean z10, float f10);
    }

    public HmVirtualTextureView(Context context) {
        super(context);
    }

    private int calcStickValue() {
        int iIntValue = 0;
        for (Map.Entry<Integer, Boolean> entry : this.stickKeyMaps.entrySet()) {
            if (entry.getValue().booleanValue()) {
                iIntValue |= entry.getKey().intValue();
            }
        }
        return iIntValue;
    }

    private boolean isStickDirection(int i10) {
        switch (i10) {
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
                return true;
            case 3:
            case 7:
            default:
                return false;
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualTextureView
    protected void editKeyboardConfigNotify(String str, EditStatus editStatus) {
        DataListener dataListener = this.mListener;
        if (dataListener != null) {
            dataListener.editKeyboardConfigNotify(str, editStatus);
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualTextureView
    protected void init() {
        super.init();
        HashMap<Integer, Boolean> map = new HashMap<>();
        this.stickKeyMaps = map;
        Boolean bool = Boolean.FALSE;
        map.put(1, bool);
        this.stickKeyMaps.put(2, bool);
        this.stickKeyMaps.put(4, bool);
        this.stickKeyMaps.put(8, bool);
        this.stickKeyMaps.put(5, bool);
        this.stickKeyMaps.put(6, bool);
        this.stickKeyMaps.put(10, bool);
        this.stickKeyMaps.put(9, bool);
        this.stickKeyMaps.put(16, bool);
        this.stickKeyMaps.put(32, bool);
        this.stickKeyMaps.put(64, bool);
        this.stickKeyMaps.put(128, bool);
        this.stickKeyMaps.put(256, bool);
        this.stickKeyMaps.put(512, bool);
        this.stickKeyMaps.put(4096, bool);
        this.stickKeyMaps.put(8192, bool);
        this.stickKeyMaps.put(16384, bool);
        this.stickKeyMaps.put(32768, bool);
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualTextureView
    protected void receiveKeyBoardData(int i10, HmVirtualViewBean.KeysDTO keysDTO, int i11) {
        DataListener dataListener = this.mListener;
        if (dataListener != null) {
            dataListener.onReceiveKeyboardBtnValue(keysDTO.getCode(), i10, i11);
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualTextureView
    protected void receiveMouseData(int i10, int i11, int i12, GSSDK.OneInputOPData.InputOP inputOP) {
        DataListener dataListener = this.mListener;
        if (dataListener != null) {
            dataListener.onReceiveMouseValue(i10, i11, i12, inputOP);
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualTextureView
    protected void receiveStickData(int i10, HmVirtualViewBean.KeysDTO keysDTO) {
        if ("LT".equals(keysDTO.getKey()) || "RT".equals(keysDTO.getKey()) || "L2".equals(keysDTO.getKey()) || "R2".equals(keysDTO.getKey())) {
            DataListener dataListener = this.mListener;
            if (dataListener != null) {
                dataListener.onReceiveLTRTValue(i10, keysDTO.getKey());
                return;
            }
            return;
        }
        if (this.stickKeyMaps.get(Integer.valueOf(keysDTO.getCode())) == null) {
            LogUtils.d(this.TAG, " send stick value error don't find = " + keysDTO.toString());
            return;
        }
        if (isStickDirection(keysDTO.getCode())) {
            HashMap<Integer, Boolean> map = this.stickKeyMaps;
            Boolean bool = Boolean.FALSE;
            map.put(1, bool);
            this.stickKeyMaps.put(2, bool);
            this.stickKeyMaps.put(4, bool);
            this.stickKeyMaps.put(8, bool);
            this.stickKeyMaps.put(5, bool);
            this.stickKeyMaps.put(6, bool);
            this.stickKeyMaps.put(10, bool);
            this.stickKeyMaps.put(9, bool);
        }
        if (i10 == 0) {
            this.stickKeyMaps.put(Integer.valueOf(keysDTO.getCode()), Boolean.TRUE);
        } else {
            this.stickKeyMaps.put(Integer.valueOf(keysDTO.getCode()), Boolean.FALSE);
        }
        int iCalcStickValue = calcStickValue();
        LogUtils.d(this.TAG, " send stick value = 0x" + Integer.toHexString(iCalcStickValue));
        DataListener dataListener2 = this.mListener;
        if (dataListener2 != null) {
            dataListener2.onReceiveStickBtnValue(iCalcStickValue);
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualTextureView
    protected void receiveStickRocker(int i10, int i11, float f10, float f11) {
        if (i11 != 4 && i11 != 5) {
            LogUtils.e(this.TAG, "receiveStickRocker error  非手柄数据");
            return;
        }
        DataListener dataListener = this.mListener;
        if (dataListener != null) {
            dataListener.onReceiveStickRockerValue(f10, f11, i11);
        }
    }

    public void setListener(DataListener dataListener) {
        this.mListener = dataListener;
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualTextureView
    protected void useSpecificSensitivity(boolean z10, float f10) {
        DataListener dataListener = this.mListener;
        if (dataListener != null) {
            dataListener.useSpecificSensitivity(z10, f10);
        }
    }

    public HmVirtualTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HmVirtualTextureView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
