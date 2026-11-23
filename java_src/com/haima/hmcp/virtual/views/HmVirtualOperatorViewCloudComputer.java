package com.haima.hmcp.virtual.views;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.haima.hmcp.R;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.utils.DialogUtils;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.ToastUtil;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.dialogs.EnsureDialog;
import com.haima.hmcp.virtual.dialogs.HmBaseAddDialog;
import com.haima.hmcp.virtual.listeners.OperateListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirtualOperatorViewCloudComputer extends HmVirtualOperatorViewBase {
    private final String TAG;
    private HmBaseAddDialog currentAddDialog;
    private List<View> firstViewList;
    private float initialX;
    private float initialY;
    private boolean isCollapse;
    private float lastX;
    private float lastY;
    private ImageView leftPointerImageView;
    private LinearLayout llBtnOperate;
    private Context mContext;
    private boolean mIsEdit;
    private boolean mIsShowGuide;
    private OperateListener mOperateListener;
    private int mStep;
    private HmBaseVirtualView nowVirtualView;
    private View.OnClickListener onClickListener;
    private ImageView rightPointerImageView;
    private RelativeLayout rlOperate;
    int rlOperateHeight;
    private LinearLayout.LayoutParams rlOperateLayoutParams;
    private float rlOperateX;
    private float rlOperateY;
    private SeekBar scaleSeekBar;
    private List<View> secondViewList;
    private TextView tvExit;
    private TextView tvGuide;
    private TextView tvReset;
    private TextView tvSave;
    private TextView tvSeekBar;
    private TextView tvSeekBarPercent;
    private TextView tvTip;
    private int virtualBtnType;

    public HmVirtualOperatorViewCloudComputer(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.rlOperateHeight = 0;
        this.mIsShowGuide = true;
        this.mStep = 1;
        this.onClickListener = new View.OnClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorViewCloudComputer.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HmVirtualOperatorViewCloudComputer.this.getContext() == null) {
                    LogUtils.e(HmVirtualOperatorViewCloudComputer.this.TAG, "top act null");
                    return;
                }
                if (view.getId() == R.id.tvExit) {
                    HmVirtualOperatorViewCloudComputer.this.performExit();
                } else if (view.getId() == R.id.tvSave) {
                    HmVirtualOperatorViewCloudComputer.this.performSave();
                } else if (view.getId() == R.id.tvReset) {
                    HmVirtualOperatorViewCloudComputer.this.performReset();
                }
            }
        };
        this.mContext = context;
        init();
    }

    private void addTvGuide() {
        TextView textView = new TextView(this.mContext);
        this.tvGuide = textView;
        textView.setGravity(17);
        int dimension = (int) ResourceManager.getInstance().getResources().getDimension(R.dimen.haima_hmcp_guide_text_width);
        int dimension2 = (int) ResourceManager.getInstance().getResources().getDimension(R.dimen.haima_hmcp_guide_text_padding_vertical);
        float dimension3 = ResourceManager.getInstance().getResources().getDimension(R.dimen.haima_hmcp_guide_text_size) / ResourceManager.getInstance().getResources().getDisplayMetrics().scaledDensity;
        this.tvGuide.setWidth(dimension);
        this.tvGuide.setPadding(0, dimension2, 0, dimension2);
        TextView textView2 = this.tvGuide;
        ResourceManager.getInstance();
        textView2.setText(ResourceManager.getString(R.string.haima_hmcp_guide_step_one));
        this.tvGuide.setTextColor(Color.parseColor("#6DDCFC"));
        this.tvGuide.setTextSize(2, dimension3);
        this.tvGuide.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.hm_vir_operate_cloud_computer_guide_bg));
        this.tvGuide.setVisibility(8);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = (int) ResourceManager.getInstance().getResources().getDimension(R.dimen.haima_hmcp_guide_margin_top);
        addView(this.tvGuide, layoutParams);
    }

    private void changeUiByData(HmVirtualViewBean hmVirtualViewBean) {
        this.scaleSeekBar.setProgress((int) (hmVirtualViewBean.getScale() * 100.0f));
    }

    private int dp2px(int i10) {
        return (int) TypedValue.applyDimension(1, i10, ResourceManager.getInstance().getResources().getDisplayMetrics());
    }

    private Rect getViewRect(View view) {
        return view.getParent() != this.llBtnOperate ? new Rect(getLeft() + view.getLeft(), view.getTop(), getLeft() + view.getLeft() + view.getWidth(), view.getTop() + view.getHeight()) : new Rect(getLeft() + view.getLeft() + this.llBtnOperate.getLeft(), view.getTop() + this.llBtnOperate.getTop(), getLeft() + view.getLeft() + view.getWidth() + this.llBtnOperate.getLeft(), this.llBtnOperate.getTop() + view.getTop() + view.getHeight());
    }

    private void guide(int i10) {
        TextView textView;
        if (i10 <= 0 || (textView = this.tvGuide) == null || i10 != this.mStep + 1) {
            return;
        }
        this.mStep = i10;
        textView.setVisibility(0);
        int i11 = this.mStep;
        if (i11 == 2) {
            LogUtils.i(this.TAG, "step 2");
            TextView textView2 = this.tvGuide;
            ResourceManager.getInstance();
            textView2.setText(ResourceManager.getString(R.string.haima_hmcp_guide_step_two));
            return;
        }
        if (i11 == 3) {
            LogUtils.i(this.TAG, "step 3");
            TextView textView3 = this.tvGuide;
            ResourceManager.getInstance();
            textView3.setText(ResourceManager.getString(R.string.haima_hmcp_guide_step_three));
            ImageView imageView = this.rightPointerImageView;
            if (imageView != null) {
                ((AnimationDrawable) imageView.getDrawable()).start();
                this.rightPointerImageView.setVisibility(0);
                return;
            }
            return;
        }
        if (i11 != 4) {
            if (i11 != 5) {
                return;
            }
            LogUtils.i(this.TAG, "step 5");
            ImageView imageView2 = this.leftPointerImageView;
            if (imageView2 != null) {
                ((AnimationDrawable) imageView2.getDrawable()).stop();
                this.leftPointerImageView.setVisibility(4);
            }
            TextView textView4 = this.tvGuide;
            ResourceManager.getInstance();
            textView4.setText(ResourceManager.getString(R.string.haima_hmcp_guide_step_five));
            return;
        }
        LogUtils.i(this.TAG, "step 4");
        TextView textView5 = this.tvGuide;
        ResourceManager.getInstance();
        textView5.setText(ResourceManager.getString(R.string.haima_hmcp_guide_step_four));
        ImageView imageView3 = this.rightPointerImageView;
        if (imageView3 != null) {
            ((AnimationDrawable) imageView3.getDrawable()).stop();
            this.rightPointerImageView.setVisibility(4);
        }
        ImageView imageView4 = this.leftPointerImageView;
        if (imageView4 != null) {
            ((AnimationDrawable) imageView4.getDrawable()).start();
            this.leftPointerImageView.setVisibility(0);
        }
    }

    private void initGuideView() {
        if (this.mContext == null) {
            return;
        }
        addTvGuide();
    }

    private void initListeners() {
        this.tvExit.setOnClickListener(this.onClickListener);
        this.tvReset.setOnClickListener(this.onClickListener);
        this.tvSave.setOnClickListener(this.onClickListener);
        this.scaleSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorViewCloudComputer.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i10, boolean z10) {
                if (HmVirtualOperatorViewCloudComputer.this.nowVirtualView != null && z10) {
                    HmVirtualOperatorViewCloudComputer.this.nowVirtualView.changeScale((i10 * 1.0f) / 100.0f);
                }
                HmVirtualOperatorViewCloudComputer.this.tvSeekBarPercent.setText(i10 + "%");
                HmVirtualOperatorViewCloudComputer.this.setResetEnabled(true);
                HmVirtualOperatorViewCloudComputer.this.performGuide(4);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }
        });
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void initViews() {
        RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(getContext()).inflate(R.layout.hm_virtual_operate_cloud_computer, (ViewGroup) this, false);
        this.rlOperate = relativeLayout;
        this.tvExit = (TextView) relativeLayout.findViewById(R.id.tvExit);
        this.tvSave = (TextView) this.rlOperate.findViewById(R.id.tvSave);
        this.tvTip = (TextView) this.rlOperate.findViewById(R.id.tvTip);
        TextView textView = (TextView) this.rlOperate.findViewById(R.id.tvReset);
        this.tvReset = textView;
        textView.setEnabled(false);
        this.tvSeekBar = (TextView) this.rlOperate.findViewById(R.id.tvSeekBar);
        this.scaleSeekBar = (SeekBar) this.rlOperate.findViewById(R.id.scaleSeekBar);
        this.llBtnOperate = (LinearLayout) this.rlOperate.findViewById(R.id.llBtnOperate);
        this.tvSeekBarPercent = (TextView) this.rlOperate.findViewById(R.id.tvSeekBarPercent);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int iApplyDimension = (int) TypedValue.applyDimension(1, 50.0f, ResourceManager.getInstance().getResources().getDisplayMetrics());
        layoutParams.topMargin = (int) TypedValue.applyDimension(1, 11.0f, ResourceManager.getInstance().getResources().getDisplayMetrics());
        layoutParams.leftMargin = iApplyDimension;
        layoutParams.rightMargin = iApplyDimension;
        addView(this.rlOperate, layoutParams);
        this.rightPointerImageView = (ImageView) this.rlOperate.findViewById(R.id.rightPointerImageView);
        this.leftPointerImageView = (ImageView) this.rlOperate.findViewById(R.id.leftPointerImageView);
        initGuideView();
        this.rlOperate.setOnTouchListener(new View.OnTouchListener() { // from class: com.haima.hmcp.virtual.views.h
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f34111b.lambda$initViews$0(view, motionEvent);
            }
        });
        this.rlOperateLayoutParams = (LinearLayout.LayoutParams) this.rlOperate.getLayoutParams();
        this.rlOperateX = this.rlOperate.getX();
        this.rlOperateY = this.rlOperate.getY();
        this.firstViewList.add(this.tvSave);
        this.firstViewList.add(this.tvExit);
        this.firstViewList.add(this.tvReset);
        this.secondViewList.add(this.scaleSeekBar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$initViews$0(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            LogUtils.e(this.TAG, "rlOperate==== ACTION_DOWN");
            this.initialX = motionEvent.getRawX();
            this.initialY = motionEvent.getRawY();
            this.lastX = view.getX();
            this.lastY = view.getY();
        } else if (action == 1) {
            LogUtils.e(this.TAG, "rlOperate==== ACTION_UP");
        } else if (action == 2) {
            LogUtils.e(this.TAG, "rlOperate==== ACTION_MOVE");
            float rawX = motionEvent.getRawX() - this.initialX;
            float rawY = motionEvent.getRawY() - this.initialY;
            view.setX(this.lastX + rawX);
            view.setY(this.lastY + rawY);
            performGuide(5);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performExit() {
        if (!this.mIsEdit) {
            exit();
            return;
        }
        if (DialogUtils.isContextValid(getContext())) {
            Context context = getContext();
            ResourceManager.getInstance();
            String string = ResourceManager.getString(R.string.haima_hmcp_edit_keyboard_confirm_tips);
            ResourceManager.getInstance();
            String string2 = ResourceManager.getString(R.string.haima_hmcp_edit_keyboard_save);
            ResourceManager.getInstance();
            EnsureDialog ensureDialog = new EnsureDialog(context, string, string2, ResourceManager.getString(R.string.haima_hmcp_edit_keyboard_exit_direct), new View.OnClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorViewCloudComputer.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    HmVirtualOperatorViewCloudComputer.this.performSave();
                }
            }, new View.OnClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorViewCloudComputer.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    HmVirtualOperatorViewCloudComputer.this.exit();
                }
            });
            ensureDialog.setCancelable(false);
            ensureDialog.show();
            setDialogWidthAndHeight(ensureDialog);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performReset() {
        if (DialogUtils.isContextValid(getContext())) {
            Context context = getContext();
            ResourceManager.getInstance();
            EnsureDialog ensureDialog = new EnsureDialog(context, ResourceManager.getString(R.string.haima_hmcp_edit_keyboard_reset_tips), new View.OnClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorViewCloudComputer.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (HmVirtualOperatorViewCloudComputer.this.mOperateListener != null) {
                        HmVirtualOperatorViewCloudComputer.this.mOperateListener.onReset();
                        HmVirtualOperatorViewCloudComputer.this.setVisibility(8);
                        HmVirtualOperatorViewCloudComputer.this.reSet();
                    }
                }
            }, false);
            ensureDialog.setCancelable(false);
            ensureDialog.show();
            setDialogWidthAndHeight(ensureDialog);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public void performSave() {
        OperateListener operateListener = this.mOperateListener;
        if (operateListener != null) {
            operateListener.onSave(this.mIsEdit);
            setVisibility(8);
            reSet();
            Context context = this.mContext;
            ResourceManager.getInstance();
            ToastUtil.showToast(context, ResourceManager.getString(R.string.haima_hmcp_edit_keyboard_save_success));
        }
    }

    private void setDialogWidthAndHeight(EnsureDialog ensureDialog) {
        Window window = ensureDialog.getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            int iApplyDimension = (int) TypedValue.applyDimension(1, 300.0f, ResourceManager.getInstance().getResources().getDisplayMetrics());
            int iApplyDimension2 = (int) TypedValue.applyDimension(1, 168.0f, ResourceManager.getInstance().getResources().getDisplayMetrics());
            attributes.width = iApplyDimension;
            attributes.height = iApplyDimension2;
            window.setAttributes(attributes);
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmVirtualOperatorViewBase
    public boolean consumeThisEvent(MotionEvent motionEvent) {
        if (motionEvent != null && this.rlOperate != null) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            Rect rect = new Rect();
            this.rlOperate.getGlobalVisibleRect(rect);
            if (motionEvent.getAction() == 0 && rect.contains((int) x10, (int) y10)) {
                if (!this.isCollapse) {
                    Iterator<View> it2 = this.firstViewList.iterator();
                    while (it2.hasNext()) {
                        if (HmVirtualDeviceUtils.isInRect(x10, y10, getViewRect(it2.next()))) {
                            return true;
                        }
                    }
                    if (this.llBtnOperate.getVisibility() == 0) {
                        Iterator<View> it3 = this.secondViewList.iterator();
                        while (it3.hasNext()) {
                            if (HmVirtualDeviceUtils.isInRect(x10, y10, getViewRect(it3.next()))) {
                                return true;
                            }
                        }
                    }
                }
                if (HmVirtualDeviceUtils.isInRect(x10, y10, getViewRect(this.rlOperate))) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.haima.hmcp.virtual.views.HmVirtualOperatorViewBase
    public void exit() {
        setVisibility(8);
        reSet();
        OperateListener operateListener = this.mOperateListener;
        if (operateListener != null) {
            operateListener.onExit();
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmVirtualOperatorViewBase
    protected void init() {
        this.firstViewList = new ArrayList();
        this.secondViewList = new ArrayList();
        setOrientation(1);
        setGravity(1);
        this.rlOperateHeight = dp2px(83);
        initViews();
        this.scaleSeekBar.setMax(200);
        this.scaleSeekBar.setProgress(100);
        initListeners();
    }

    @Override // com.haima.hmcp.virtual.views.HmVirtualOperatorViewBase
    public void performGuide(int i10) {
        if (this.mIsShowGuide) {
            guide(i10);
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmVirtualOperatorViewBase
    public void reSet() {
        LinearLayout.LayoutParams layoutParams;
        this.rlOperate.setLayoutParams(this.rlOperateLayoutParams);
        this.isCollapse = false;
        setResetEnabled(false);
        this.tvTip.setVisibility(0);
        this.llBtnOperate.setVisibility(8);
        HmBaseVirtualView hmBaseVirtualView = this.nowVirtualView;
        if (hmBaseVirtualView != null) {
            hmBaseVirtualView.exitEditMode();
            this.nowVirtualView = null;
        }
        HmBaseAddDialog hmBaseAddDialog = this.currentAddDialog;
        if (hmBaseAddDialog != null) {
            hmBaseAddDialog.dismiss();
        }
        if (this.rlOperate != null && getVisibility() != 0 && (layoutParams = this.rlOperateLayoutParams) != null) {
            this.rlOperate.setX(this.rlOperateX + layoutParams.leftMargin);
            this.rlOperate.setY(this.rlOperateY + this.rlOperateLayoutParams.topMargin);
        }
        TextView textView = this.tvGuide;
        if (textView != null) {
            ResourceManager.getInstance();
            textView.setText(ResourceManager.getString(R.string.haima_hmcp_guide_step_one));
            this.mStep = 1;
            this.tvGuide.setVisibility(8);
        }
        ImageView imageView = this.rightPointerImageView;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
        ImageView imageView2 = this.leftPointerImageView;
        if (imageView2 != null) {
            imageView2.setVisibility(4);
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmVirtualOperatorViewBase
    public void selectVirtualView(HmBaseVirtualView hmBaseVirtualView) {
        HmBaseVirtualView hmBaseVirtualView2;
        LogUtils.d(this.TAG, "selectVirtualView = " + hmBaseVirtualView);
        if ((hmBaseVirtualView == null && this.nowVirtualView == null) || (hmBaseVirtualView2 = this.nowVirtualView) == hmBaseVirtualView) {
            return;
        }
        if (hmBaseVirtualView2 != null) {
            hmBaseVirtualView2.exitEditMode();
        }
        this.nowVirtualView = hmBaseVirtualView;
        if (hmBaseVirtualView == null) {
            this.tvTip.setVisibility(0);
            this.llBtnOperate.setVisibility(8);
        } else {
            hmBaseVirtualView.enterEditMode();
            changeUiByData(this.nowVirtualView.getViewBean());
            this.tvTip.setVisibility(8);
            this.llBtnOperate.setVisibility(0);
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmVirtualOperatorViewBase
    public void setOperateListener(OperateListener operateListener) {
        this.mOperateListener = operateListener;
    }

    @Override // com.haima.hmcp.virtual.views.HmVirtualOperatorViewBase
    public void setResetEnabled(boolean z10) {
        this.mIsEdit = z10;
        this.tvReset.setEnabled(z10);
    }

    @Override // com.haima.hmcp.virtual.views.HmVirtualOperatorViewBase
    public void setShowGuide(boolean z10) {
        this.mIsShowGuide = z10;
        if (z10) {
            this.tvGuide.setVisibility(0);
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmVirtualOperatorViewBase
    public void setVirType(int i10) {
        this.virtualBtnType = i10;
    }

    public HmVirtualOperatorViewCloudComputer(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = getClass().getSimpleName();
        this.rlOperateHeight = 0;
        this.mIsShowGuide = true;
        this.mStep = 1;
        this.onClickListener = new View.OnClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorViewCloudComputer.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HmVirtualOperatorViewCloudComputer.this.getContext() == null) {
                    LogUtils.e(HmVirtualOperatorViewCloudComputer.this.TAG, "top act null");
                    return;
                }
                if (view.getId() == R.id.tvExit) {
                    HmVirtualOperatorViewCloudComputer.this.performExit();
                } else if (view.getId() == R.id.tvSave) {
                    HmVirtualOperatorViewCloudComputer.this.performSave();
                } else if (view.getId() == R.id.tvReset) {
                    HmVirtualOperatorViewCloudComputer.this.performReset();
                }
            }
        };
        this.mContext = context;
        init();
    }

    public HmVirtualOperatorViewCloudComputer(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.TAG = getClass().getSimpleName();
        this.rlOperateHeight = 0;
        this.mIsShowGuide = true;
        this.mStep = 1;
        this.onClickListener = new View.OnClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorViewCloudComputer.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HmVirtualOperatorViewCloudComputer.this.getContext() == null) {
                    LogUtils.e(HmVirtualOperatorViewCloudComputer.this.TAG, "top act null");
                    return;
                }
                if (view.getId() == R.id.tvExit) {
                    HmVirtualOperatorViewCloudComputer.this.performExit();
                } else if (view.getId() == R.id.tvSave) {
                    HmVirtualOperatorViewCloudComputer.this.performSave();
                } else if (view.getId() == R.id.tvReset) {
                    HmVirtualOperatorViewCloudComputer.this.performReset();
                }
            }
        };
        this.mContext = context;
        init();
    }
}
