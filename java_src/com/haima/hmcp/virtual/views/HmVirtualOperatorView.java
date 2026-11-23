package com.haima.hmcp.virtual.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.haima.hmcp.R;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.dialogs.EnsureDialog;
import com.haima.hmcp.virtual.dialogs.HmAddKeyboardDialog;
import com.haima.hmcp.virtual.dialogs.HmAddXboxDialog;
import com.haima.hmcp.virtual.dialogs.HmBaseAddDialog;
import com.haima.hmcp.virtual.listeners.OperateListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirtualOperatorView extends HmVirtualOperatorViewBase {
    private final String TAG;
    private boolean animRunning;
    private HmBaseAddDialog currentAddDialog;
    private EditText editName;
    private List<View> firstViewList;
    private ImageView imgChange;
    private boolean isCollapse;
    private LinearLayout llBtnOperate;
    private OperateListener mOperateListener;
    private HmBaseVirtualView nowVirtualView;
    private View.OnClickListener onClickListener;
    private RelativeLayout rlOperate;
    int rlOperateHeight;
    private LinearLayout.LayoutParams rlOperateLayoutParams;
    private SeekBar scaleSeekBar;
    private List<View> secondViewList;
    private TextView tvAddBtn;
    private TextView tvAddMoreBtn;
    private TextView tvDelete;
    private TextView tvExit;
    private TextView tvReset;
    private TextView tvSave;
    private TextView tvSeekBar;
    private TextView tvSeekBarPercent;
    private TextView tvTip;
    private View viewEdit;
    private int virtualBtnType;

    /* JADX INFO: renamed from: com.haima.hmcp.virtual.views.HmVirtualOperatorView$7, reason: invalid class name */
    class AnonymousClass7 implements View.OnClickListener {
        AnonymousClass7() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$0(HmVirtualViewBean hmVirtualViewBean) {
            if (HmVirtualOperatorView.this.mOperateListener != null) {
                HmVirtualOperatorView.this.mOperateListener.onAdd(hmVirtualViewBean);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$1(HmVirtualViewBean hmVirtualViewBean) {
            if (HmVirtualOperatorView.this.mOperateListener != null) {
                HmVirtualOperatorView.this.mOperateListener.onAdd(hmVirtualViewBean);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (HmVirtualOperatorView.this.getContext() == null) {
                LogUtils.e(HmVirtualOperatorView.this.TAG, "top act null");
                return;
            }
            if (view.getId() == R.id.tvExit) {
                new EnsureDialog(HmVirtualOperatorView.this.getContext(), "确定要退出编辑页面？", new View.OnClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorView.7.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        HmVirtualOperatorView.this.setVisibility(8);
                        HmVirtualOperatorView.this.reSet();
                        if (HmVirtualOperatorView.this.mOperateListener != null) {
                            HmVirtualOperatorView.this.mOperateListener.onExit();
                        }
                    }
                }).show();
                return;
            }
            if (view.getId() == R.id.tvAddBtn) {
                if (HmVirtualOperatorView.this.virtualBtnType == 1) {
                    HmVirtualOperatorView.this.currentAddDialog = new HmAddKeyboardDialog(HmVirtualOperatorView.this.getContext(), false, new HmBaseAddDialog.AddListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorView.7.2
                        @Override // com.haima.hmcp.virtual.dialogs.HmBaseAddDialog.AddListener
                        public void onAdd(HmVirtualViewBean hmVirtualViewBean) {
                            if (HmVirtualOperatorView.this.mOperateListener != null) {
                                HmVirtualOperatorView.this.mOperateListener.onAdd(hmVirtualViewBean);
                            }
                        }
                    });
                    HmVirtualOperatorView.this.currentAddDialog.show();
                    return;
                } else {
                    HmVirtualOperatorView.this.currentAddDialog = new HmAddXboxDialog(HmVirtualOperatorView.this.getContext(), false, new HmBaseAddDialog.AddListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorView.7.3
                        @Override // com.haima.hmcp.virtual.dialogs.HmBaseAddDialog.AddListener
                        public void onAdd(HmVirtualViewBean hmVirtualViewBean) {
                            if (HmVirtualOperatorView.this.mOperateListener != null) {
                                HmVirtualOperatorView.this.mOperateListener.onAdd(hmVirtualViewBean);
                            }
                        }
                    });
                    HmVirtualOperatorView.this.currentAddDialog.show();
                    return;
                }
            }
            if (view.getId() == R.id.tvSave) {
                new EnsureDialog(HmVirtualOperatorView.this.getContext(), "保存当前方案并返回游戏？", new View.OnClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorView.7.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (HmVirtualOperatorView.this.mOperateListener != null) {
                            HmVirtualOperatorView.this.mOperateListener.onSave(true);
                            HmVirtualOperatorView.this.setVisibility(8);
                            HmVirtualOperatorView.this.reSet();
                        }
                    }
                }).show();
                return;
            }
            if (view.getId() == R.id.tvReset) {
                new EnsureDialog(HmVirtualOperatorView.this.getContext(), "确定要恢复默认方案？", new View.OnClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorView.7.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (HmVirtualOperatorView.this.mOperateListener != null) {
                            HmVirtualOperatorView.this.mOperateListener.onReset();
                            HmVirtualOperatorView.this.reSet();
                        }
                    }
                }).show();
                return;
            }
            if (view.getId() == R.id.tvDelete) {
                new EnsureDialog(HmVirtualOperatorView.this.getContext(), "确定删除此按钮吗？", new View.OnClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorView.7.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (HmVirtualOperatorView.this.mOperateListener == null || HmVirtualOperatorView.this.nowVirtualView == null) {
                            return;
                        }
                        HmVirtualOperatorView.this.mOperateListener.onDelete(HmVirtualOperatorView.this.nowVirtualView);
                        HmVirtualOperatorView.this.reSet();
                    }
                }).show();
                return;
            }
            if (view.getId() == R.id.tvAddMoreBtn) {
                if (HmVirtualOperatorView.this.virtualBtnType == 1) {
                    HmVirtualOperatorView.this.currentAddDialog = new HmAddKeyboardDialog(HmVirtualOperatorView.this.getContext(), true, new HmBaseAddDialog.AddListener() { // from class: com.haima.hmcp.virtual.views.f
                        @Override // com.haima.hmcp.virtual.dialogs.HmBaseAddDialog.AddListener
                        public final void onAdd(HmVirtualViewBean hmVirtualViewBean) {
                            this.f34109a.lambda$onClick$0(hmVirtualViewBean);
                        }
                    });
                    HmVirtualOperatorView.this.currentAddDialog.show();
                } else {
                    HmVirtualOperatorView.this.currentAddDialog = new HmAddXboxDialog(HmVirtualOperatorView.this.getContext(), true, new HmBaseAddDialog.AddListener() { // from class: com.haima.hmcp.virtual.views.g
                        @Override // com.haima.hmcp.virtual.dialogs.HmBaseAddDialog.AddListener
                        public final void onAdd(HmVirtualViewBean hmVirtualViewBean) {
                            this.f34110a.lambda$onClick$1(hmVirtualViewBean);
                        }
                    });
                    HmVirtualOperatorView.this.currentAddDialog.show();
                }
            }
        }
    }

    public HmVirtualOperatorView(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.rlOperateHeight = 0;
        this.onClickListener = new AnonymousClass7();
        init();
    }

    private void changeUiByData(HmVirtualViewBean hmVirtualViewBean) {
        this.scaleSeekBar.setProgress(Math.max((int) ((hmVirtualViewBean.getScale() * 100.0f) - 50.0f), 0));
        if (!(hmVirtualViewBean.getKeyType() < 3)) {
            this.editName.setVisibility(8);
            this.viewEdit.setVisibility(8);
            return;
        }
        this.editName.setVisibility(0);
        this.viewEdit.setVisibility(0);
        if (hmVirtualViewBean.getName().isEmpty()) {
            this.editName.setText("");
        } else {
            this.editName.setText(hmVirtualViewBean.getName());
        }
    }

    private int dp2px(int i10) {
        return (int) TypedValue.applyDimension(1, i10, ResourceManager.getInstance().getResources().getDisplayMetrics());
    }

    private Rect getViewRect(View view) {
        return view.getParent() != this.llBtnOperate ? new Rect(getLeft() + view.getLeft(), view.getTop(), getLeft() + view.getLeft() + view.getWidth(), view.getTop() + view.getHeight()) : new Rect(getLeft() + view.getLeft() + this.llBtnOperate.getLeft(), view.getTop() + this.llBtnOperate.getTop(), getLeft() + view.getLeft() + view.getWidth() + this.llBtnOperate.getLeft(), this.llBtnOperate.getTop() + view.getTop() + view.getHeight());
    }

    private void initListeners() {
        this.tvExit.setOnClickListener(this.onClickListener);
        this.tvAddBtn.setOnClickListener(this.onClickListener);
        this.tvReset.setOnClickListener(this.onClickListener);
        this.tvDelete.setOnClickListener(this.onClickListener);
        this.tvAddMoreBtn.setOnClickListener(this.onClickListener);
        this.tvSave.setOnClickListener(this.onClickListener);
        this.scaleSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorView.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i10, boolean z10) {
                if (HmVirtualOperatorView.this.nowVirtualView != null && z10) {
                    HmVirtualOperatorView.this.nowVirtualView.changeScale(((i10 + 50) * 1.0f) / 100.0f);
                }
                HmVirtualOperatorView.this.tvSeekBarPercent.setText((i10 + 50) + "%");
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }
        });
        this.imgChange.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HmVirtualOperatorView.this.animRunning) {
                    return;
                }
                if (HmVirtualOperatorView.this.isCollapse) {
                    HmVirtualOperatorView hmVirtualOperatorView = HmVirtualOperatorView.this;
                    hmVirtualOperatorView.startAnim(-hmVirtualOperatorView.rlOperateHeight, 0);
                    HmVirtualOperatorView.this.imgChange.setImageResource(R.mipmap.hm_vir_operate_up);
                    HmVirtualOperatorView.this.isCollapse = false;
                    return;
                }
                HmVirtualOperatorView hmVirtualOperatorView2 = HmVirtualOperatorView.this;
                hmVirtualOperatorView2.startAnim(0, -hmVirtualOperatorView2.rlOperateHeight);
                HmVirtualOperatorView.this.imgChange.setImageResource(R.mipmap.hm_vir_operate_down);
                HmVirtualOperatorView.this.isCollapse = true;
            }
        });
        this.editName.addTextChangedListener(new TextWatcher() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorView.4
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (HmVirtualOperatorView.this.nowVirtualView == null) {
                    return;
                }
                if (editable == null || editable.toString().isEmpty()) {
                    HmVirtualOperatorView.this.nowVirtualView.changeName("");
                } else {
                    HmVirtualOperatorView.this.nowVirtualView.changeName(editable.toString());
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }
        });
    }

    private void initViews() {
        RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(getContext()).inflate(R.layout.hm_virtual_operate, (ViewGroup) this, false);
        this.rlOperate = relativeLayout;
        this.tvAddBtn = (TextView) relativeLayout.findViewById(R.id.tvAddBtn);
        this.tvAddMoreBtn = (TextView) this.rlOperate.findViewById(R.id.tvAddMoreBtn);
        this.tvExit = (TextView) this.rlOperate.findViewById(R.id.tvExit);
        this.tvSave = (TextView) this.rlOperate.findViewById(R.id.tvSave);
        this.tvTip = (TextView) this.rlOperate.findViewById(R.id.tvTip);
        this.editName = (EditText) this.rlOperate.findViewById(R.id.editName);
        this.viewEdit = this.rlOperate.findViewById(R.id.viewEdit);
        this.tvDelete = (TextView) this.rlOperate.findViewById(R.id.tvDelete);
        this.tvReset = (TextView) this.rlOperate.findViewById(R.id.tvReset);
        this.tvSeekBar = (TextView) this.rlOperate.findViewById(R.id.tvSeekBar);
        this.scaleSeekBar = (SeekBar) this.rlOperate.findViewById(R.id.scaleSeekBar);
        this.llBtnOperate = (LinearLayout) this.rlOperate.findViewById(R.id.llBtnOperate);
        this.tvSeekBarPercent = (TextView) this.rlOperate.findViewById(R.id.tvSeekBarPercent);
        addView(this.rlOperate);
        this.rlOperateLayoutParams = (LinearLayout.LayoutParams) this.rlOperate.getLayoutParams();
        ImageView imageView = new ImageView(getContext());
        this.imgChange = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        this.imgChange.setLayoutParams(new LinearLayout.LayoutParams(dp2px(48), dp2px(12)));
        this.imgChange.setBackgroundColor(Color.parseColor("#88000000"));
        this.imgChange.setPadding(dp2px(17), dp2px(3), dp2px(17), dp2px(3));
        this.imgChange.setImageResource(R.mipmap.hm_vir_operate_up);
        addView(this.imgChange);
        this.editName.setLongClickable(false);
        this.editName.setTextIsSelectable(false);
        this.editName.setCustomSelectionActionModeCallback(new ActionMode.Callback() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorView.1
            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
            }

            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }
        });
        this.firstViewList.add(this.tvAddBtn);
        this.firstViewList.add(this.tvAddMoreBtn);
        this.firstViewList.add(this.tvSave);
        this.firstViewList.add(this.tvExit);
        this.firstViewList.add(this.tvReset);
        this.secondViewList.add(this.scaleSeekBar);
        this.secondViewList.add(this.editName);
        this.secondViewList.add(this.tvDelete);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void startAnim(int i10, int i11) {
        this.animRunning = true;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i10, i11);
        valueAnimatorOfInt.setDuration(200L);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorView.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                HmVirtualOperatorView.this.rlOperateLayoutParams.topMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                HmVirtualOperatorView.this.rlOperate.setLayoutParams(HmVirtualOperatorView.this.rlOperateLayoutParams);
            }
        });
        valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.haima.hmcp.virtual.views.HmVirtualOperatorView.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                HmVirtualOperatorView.this.animRunning = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                HmVirtualOperatorView.this.animRunning = false;
            }
        });
        valueAnimatorOfInt.start();
    }

    @Override // com.haima.hmcp.virtual.views.HmVirtualOperatorViewBase
    public boolean consumeThisEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || motionEvent.getY() >= this.rlOperateHeight + this.imgChange.getHeight()) {
            return false;
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (HmVirtualDeviceUtils.isInRect(x10, y10, getViewRect(this.imgChange))) {
            return true;
        }
        if (this.isCollapse) {
            return false;
        }
        Iterator<View> it2 = this.firstViewList.iterator();
        while (it2.hasNext()) {
            if (HmVirtualDeviceUtils.isInRect(x10, y10, getViewRect(it2.next()))) {
                return true;
            }
        }
        if (this.llBtnOperate.getVisibility() != 0) {
            return false;
        }
        Iterator<View> it3 = this.secondViewList.iterator();
        while (it3.hasNext()) {
            if (HmVirtualDeviceUtils.isInRect(x10, y10, getViewRect(it3.next()))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.haima.hmcp.virtual.views.HmVirtualOperatorViewBase
    protected void init() {
        this.firstViewList = new ArrayList();
        this.secondViewList = new ArrayList();
        setOrientation(1);
        setGravity(1);
        this.rlOperateHeight = dp2px(83);
        initViews();
        this.scaleSeekBar.setMax(150);
        this.scaleSeekBar.setProgress(50);
        initListeners();
    }

    @Override // com.haima.hmcp.virtual.views.HmVirtualOperatorViewBase
    public void reSet() {
        LinearLayout.LayoutParams layoutParams = this.rlOperateLayoutParams;
        layoutParams.topMargin = 0;
        this.rlOperate.setLayoutParams(layoutParams);
        this.isCollapse = false;
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
    public void setVirType(int i10) {
        this.virtualBtnType = i10;
    }

    public HmVirtualOperatorView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = getClass().getSimpleName();
        this.rlOperateHeight = 0;
        this.onClickListener = new AnonymousClass7();
        init();
    }

    public HmVirtualOperatorView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.TAG = getClass().getSimpleName();
        this.rlOperateHeight = 0;
        this.onClickListener = new AnonymousClass7();
        init();
    }
}
