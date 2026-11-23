package com.haima.hmcp.virtual.dialogs;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.zxing.client.result.ExpandedProductParsedResult;
import com.haima.hmcp.R;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.sdk.base.module.manager.SDKManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class HmAddXboxDialog extends HmBaseAddDialog {
    private final String TAG;
    private final View.OnClickListener clickListener;

    public HmAddXboxDialog(@NonNull Context context, boolean z10, HmBaseAddDialog.AddListener addListener) {
        super(context, R.style.haima_hmcp_virtual_dialog);
        this.TAG = getClass().getSimpleName();
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.HmAddXboxDialog.2
            /* JADX WARN: Code duplicated, block: B:64:0x0137 A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:65:0x0138  */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str;
                int i10;
                int i11;
                int i12;
                int i13;
                if (view.getId() != R.id.imgDirection) {
                    if (view.getId() == R.id.imgRRocker) {
                        HmAddXboxDialog hmAddXboxDialog = HmAddXboxDialog.this;
                        if (hmAddXboxDialog.isMoreKeyMode) {
                            hmAddXboxDialog.showToast("此类型不支持组合键");
                            return;
                        } else {
                            str = "RRocker";
                            i10 = 1;
                            i11 = 5;
                        }
                    } else if (view.getId() == R.id.imgLRocker) {
                        HmAddXboxDialog hmAddXboxDialog2 = HmAddXboxDialog.this;
                        if (hmAddXboxDialog2.isMoreKeyMode) {
                            hmAddXboxDialog2.showToast("此类型不支持组合键");
                            return;
                        }
                        str = "LRocker";
                        i10 = 1;
                        i11 = 4;
                        i12 = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER;
                        i13 = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER;
                    } else {
                        if (view.getId() == R.id.imgA) {
                            str = "A";
                            i10 = 4096;
                        } else if (view.getId() == R.id.imgB) {
                            str = SDKManager.ALGO_B_AES_SHA256_RSA;
                            i10 = 8192;
                        } else if (view.getId() == R.id.imgX) {
                            str = "X";
                            i10 = 16384;
                        } else if (view.getId() == R.id.imgY) {
                            str = "Y";
                            i10 = 32768;
                        } else if (view.getId() == R.id.imgLT) {
                            str = "LT";
                            i10 = 1025;
                        } else if (view.getId() == R.id.imgRT) {
                            str = "RT";
                            i10 = 1026;
                        } else if (view.getId() == R.id.imgLB) {
                            str = ExpandedProductParsedResult.POUND;
                            i10 = 256;
                        } else if (view.getId() == R.id.imgRB) {
                            str = "RB";
                            i10 = 512;
                        } else if (view.getId() == R.id.imgLS) {
                            str = "LS";
                            i10 = 64;
                        } else if (view.getId() == R.id.imgRS) {
                            str = "RS";
                            i10 = 128;
                        } else if (view.getId() == R.id.imgStart) {
                            str = "START";
                            i10 = 16;
                        } else if (view.getId() == R.id.imgSelect) {
                            str = "SELECT";
                            i10 = 32;
                        } else {
                            str = "";
                            i10 = 0;
                        }
                        i11 = 1;
                        i12 = 108;
                        i13 = 108;
                    }
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    HmAddXboxDialog.this.createViewBean(str, i10, i11, i12, i13);
                }
                HmAddXboxDialog hmAddXboxDialog3 = HmAddXboxDialog.this;
                if (hmAddXboxDialog3.isMoreKeyMode) {
                    hmAddXboxDialog3.showToast("此类型不支持组合键");
                    return;
                } else {
                    str = "Direction";
                    i10 = 1;
                    i11 = 3;
                }
                i12 = MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA;
                i13 = MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA;
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                HmAddXboxDialog.this.createViewBean(str, i10, i11, i12, i13);
            }
        };
        this.clickListener = onClickListener;
        this.mListener = addListener;
        this.keyList = new ArrayList();
        this.isMoreKeyMode = z10;
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.hm_dialog_add_xbox, (ViewGroup) null, false);
        setContentView(viewInflate);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvBack);
        textView.setText(" < 返回");
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.HmAddXboxDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HmAddXboxDialog.this.dismiss();
            }
        });
        if (this.isMoreKeyMode) {
            viewInflate.findViewById(R.id.llMoreBtn).setVisibility(0);
        }
        initMoreViews(viewInflate);
        findViewById(R.id.imgDirection).setOnClickListener(onClickListener);
        findViewById(R.id.imgRRocker).setOnClickListener(onClickListener);
        findViewById(R.id.imgLRocker).setOnClickListener(onClickListener);
        findViewById(R.id.imgA).setOnClickListener(onClickListener);
        findViewById(R.id.imgB).setOnClickListener(onClickListener);
        findViewById(R.id.imgX).setOnClickListener(onClickListener);
        findViewById(R.id.imgY).setOnClickListener(onClickListener);
        findViewById(R.id.imgLT).setOnClickListener(onClickListener);
        findViewById(R.id.imgRT).setOnClickListener(onClickListener);
        findViewById(R.id.imgLS).setOnClickListener(onClickListener);
        findViewById(R.id.imgLB).setOnClickListener(onClickListener);
        findViewById(R.id.imgRB).setOnClickListener(onClickListener);
        findViewById(R.id.imgRS).setOnClickListener(onClickListener);
        findViewById(R.id.imgSelect).setOnClickListener(onClickListener);
        findViewById(R.id.imgStart).setOnClickListener(onClickListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createViewBean(String str, int i10, int i11, int i12, int i13) {
        if (this.isMoreKeyMode) {
            if (this.keyList.size() >= 3) {
                this.keyList.remove(2);
            }
            this.keyList.add(new HmVirtualViewBean.KeysDTO(str, i10));
            refreshMoreKeyUI();
            return;
        }
        if (this.mListener != null) {
            HmVirtualViewBean hmVirtualViewBean = new HmVirtualViewBean();
            hmVirtualViewBean.setScale(1.0f);
            HmVirtualViewBean.PositionDTO positionDTO = new HmVirtualViewBean.PositionDTO();
            positionDTO.setW(i12);
            positionDTO.setH(i13);
            positionDTO.setX(0.5d);
            positionDTO.setY(0.5d);
            hmVirtualViewBean.setPosition(positionDTO);
            ArrayList arrayList = new ArrayList();
            HmVirtualViewBean.KeysDTO keysDTO = new HmVirtualViewBean.KeysDTO();
            if (i11 == 3) {
                keysDTO.setKey("UP");
                keysDTO.setCode(1);
                arrayList.add(keysDTO);
                HmVirtualViewBean.KeysDTO keysDTO2 = new HmVirtualViewBean.KeysDTO();
                keysDTO2.setKey("DOWN");
                keysDTO2.setCode(2);
                arrayList.add(keysDTO2);
                HmVirtualViewBean.KeysDTO keysDTO3 = new HmVirtualViewBean.KeysDTO();
                keysDTO3.setKey("LEFT");
                keysDTO3.setCode(4);
                arrayList.add(keysDTO3);
                keysDTO = new HmVirtualViewBean.KeysDTO();
                keysDTO.setKey("RIGHT");
                keysDTO.setCode(8);
            } else {
                keysDTO.setKey(str);
                keysDTO.setCode(i10);
            }
            arrayList.add(keysDTO);
            hmVirtualViewBean.setKeys(arrayList);
            hmVirtualViewBean.setKeyType(i11);
            this.mListener.onAdd(hmVirtualViewBean);
            dismiss();
        }
    }
}
