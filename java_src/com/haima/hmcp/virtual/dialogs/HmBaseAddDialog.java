package com.haima.hmcp.virtual.dialogs;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.haima.hmcp.R;
import com.haima.hmcp.utils.DialogUtils;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.HmVirtualDeviceManager;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class HmBaseAddDialog extends Dialog {
    protected final String TAG;
    private final View.OnClickListener delClickListener;
    protected FrameLayout[] fls;
    protected boolean isMoreKeyMode;
    protected ImageView[] ivs;
    protected List<HmVirtualViewBean.KeysDTO> keyList;
    protected AddListener mListener;
    protected TextView tvClear;
    protected TextView tvSure;
    protected TextView[] tvs;

    public interface AddListener {
        void onAdd(HmVirtualViewBean hmVirtualViewBean);
    }

    public HmBaseAddDialog(Context context, int i10) {
        super(context, i10);
        this.TAG = getClass().getSimpleName();
        this.fls = new FrameLayout[3];
        this.tvs = new TextView[3];
        this.ivs = new ImageView[3];
        this.delClickListener = new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.HmBaseAddDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int iIntValue = ((Integer) view.getTag()).intValue();
                if (iIntValue < HmBaseAddDialog.this.keyList.size()) {
                    HmBaseAddDialog.this.keyList.remove(iIntValue);
                    HmBaseAddDialog.this.refreshMoreKeyUI();
                }
            }
        };
        Activity activityFromContext = HmVirtualDeviceUtils.getActivityFromContext(context);
        if (activityFromContext != null) {
            int systemUiVisibility = activityFromContext.getWindow().getDecorView().getSystemUiVisibility();
            if (Build.VERSION.SDK_INT >= 28) {
                int i11 = activityFromContext.getWindow().getAttributes().layoutInDisplayCutoutMode;
                WindowManager.LayoutParams attributes = getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = i11;
                getWindow().setAttributes(attributes);
            }
            getWindow().getDecorView().setSystemUiVisibility(systemUiVisibility);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initMoreViews$0(View view) {
        this.keyList.clear();
        refreshMoreKeyUI();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initMoreViews$1(View view) {
        if (this.mListener != null) {
            HmVirtualViewBean hmVirtualViewBeanCreateNoKeyBean = createNoKeyBean(108, 108, 2);
            hmVirtualViewBeanCreateNoKeyBean.getKeys().addAll(this.keyList);
            this.mListener.onAdd(hmVirtualViewBeanCreateNoKeyBean);
            dismiss();
        }
    }

    protected HmVirtualViewBean createNoKeyBean(int i10, int i11, int i12) {
        HmVirtualViewBean hmVirtualViewBean = new HmVirtualViewBean();
        hmVirtualViewBean.setScale(1.0f);
        HmVirtualViewBean.PositionDTO positionDTO = new HmVirtualViewBean.PositionDTO();
        positionDTO.setW(i10);
        positionDTO.setH(i11);
        positionDTO.setX(0.5d);
        positionDTO.setY(0.5d);
        hmVirtualViewBean.setPosition(positionDTO);
        hmVirtualViewBean.setKeys(new ArrayList());
        hmVirtualViewBean.setKeyType(i12);
        return hmVirtualViewBean;
    }

    protected void hideKeyUI(int i10) {
        this.fls[i10].setBackgroundResource(R.drawable.hm_vir_multiply_bg_off);
        this.tvs[i10].setText("");
        this.ivs[i10].setVisibility(8);
        if (i10 == 0) {
            this.fls[i10].setBackgroundResource(R.drawable.hm_vir_multiply_bg_on);
        }
    }

    protected void initMoreViews(View view) {
        this.tvSure = (TextView) findViewById(R.id.tvSure);
        this.tvClear = (TextView) findViewById(R.id.tvClear);
        this.fls[0] = (FrameLayout) view.findViewById(R.id.flMoreKey1);
        this.fls[1] = (FrameLayout) view.findViewById(R.id.flMoreKey2);
        this.fls[2] = (FrameLayout) view.findViewById(R.id.flMoreKey3);
        this.tvs[0] = (TextView) view.findViewById(R.id.tvMoreKey1);
        this.tvs[1] = (TextView) view.findViewById(R.id.tvMoreKey2);
        this.tvs[2] = (TextView) view.findViewById(R.id.tvMoreKey3);
        ImageView imageView = (ImageView) view.findViewById(R.id.imgMoreDel1);
        imageView.setOnClickListener(this.delClickListener);
        this.ivs[0] = imageView;
        imageView.setTag(0);
        ImageView imageView2 = (ImageView) view.findViewById(R.id.imgMoreDel2);
        imageView2.setOnClickListener(this.delClickListener);
        imageView2.setTag(1);
        this.ivs[1] = imageView2;
        ImageView imageView3 = (ImageView) view.findViewById(R.id.imgMoreDel3);
        imageView3.setOnClickListener(this.delClickListener);
        imageView3.setTag(2);
        this.ivs[2] = imageView3;
        this.tvClear.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f34100b.lambda$initMoreViews$0(view2);
            }
        });
        this.tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f34101b.lambda$initMoreViews$1(view2);
            }
        });
    }

    protected void refreshMoreKeyUI() {
        if (this.keyList.size() >= 1) {
            this.tvSure.setVisibility(0);
            this.tvClear.setVisibility(0);
        } else {
            this.tvSure.setVisibility(8);
            this.tvClear.setVisibility(4);
        }
        for (int i10 = 2; i10 >= 0; i10--) {
            if (i10 < this.keyList.size()) {
                showKeyUI(i10);
            } else {
                hideKeyUI(i10);
            }
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
            } catch (WindowManager.BadTokenException e10) {
                LogUtils.e(this.TAG, "BadTokenException when showing dialog: " + e10.getMessage());
            } catch (NullPointerException e11) {
                e11.printStackTrace();
            }
        }
    }

    protected void showKeyUI(int i10) {
        this.fls[i10].setBackgroundResource(R.drawable.hm_vir_multiply_bg_off);
        this.tvs[i10].setText(this.keyList.get(i10).getKey());
        this.ivs[i10].setVisibility(0);
        int i11 = i10 + 1;
        if (i11 == this.keyList.size()) {
            FrameLayout[] frameLayoutArr = this.fls;
            if (i10 != frameLayoutArr.length - 1) {
                frameLayoutArr[i11].setBackgroundResource(R.drawable.hm_vir_multiply_bg_on);
            }
        }
    }

    protected void showToast(String str) {
        Toast.makeText(getContext().getApplicationContext(), str, 0).show();
    }
}
