package com.haima.hmcp.virtual.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.Utils;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirFullKeyBoardInfoBean;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirFullKeyBoardLayout extends FrameLayout {
    public static boolean IS_UPPER;
    private FullKBClickListener clickListener;
    private boolean isWordStatus;
    private List<HmVirFullKeyBoardInfoBean> listSymbol;
    private List<HmVirFullKeyBoardInfoBean> listWord;
    private FullKBClickListener outClickListener;
    private int tempFocusColumn;
    private int tempFocusRow;

    public interface FullKBClickListener {
        void onClick(View view, HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean);
    }

    public HmVirFullKeyBoardLayout(@NonNull Context context) {
        super(context);
        this.tempFocusRow = -1;
        this.tempFocusColumn = -1;
        this.clickListener = new FullKBClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirFullKeyBoardLayout.3
            @Override // com.haima.hmcp.virtual.views.HmVirFullKeyBoardLayout.FullKBClickListener
            public void onClick(View view, HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean) {
                if (hmVirFullKeyBoardInfoBean.getKeys() == null || hmVirFullKeyBoardInfoBean.getKeys().size() == 0) {
                    return;
                }
                if (hmVirFullKeyBoardInfoBean.getKeys().size() == 1) {
                    HmVirtualViewBean.KeysDTO keysDTO = hmVirFullKeyBoardInfoBean.getKeys().get(0);
                    int code = keysDTO.getCode();
                    if (code == -123) {
                        if (keysDTO.getKey().contains("数") || keysDTO.getKey().toLowerCase().contains("num")) {
                            HmVirFullKeyBoardLayout.this.renderSymbolChild();
                            return;
                        } else {
                            HmVirFullKeyBoardLayout.this.renderWordChild();
                            return;
                        }
                    }
                    if (code == 20) {
                        HmVirFullKeyBoardLayout.this.saveFocusPositionForCaseSwitch();
                        HmVirFullKeyBoardLayout.IS_UPPER = !HmVirFullKeyBoardLayout.IS_UPPER;
                        HmVirFullKeyBoardLayout.this.renderWordChild();
                    }
                }
                if (HmVirFullKeyBoardLayout.this.outClickListener != null) {
                    HmVirFullKeyBoardLayout.this.outClickListener.onClick(view, hmVirFullKeyBoardInfoBean);
                }
            }
        };
        init();
    }

    private void init() {
        this.listSymbol = HmVirtualDeviceUtils.getFullKBSymbolList();
        this.listWord = HmVirtualDeviceUtils.getFullKBWordList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderSymbolChild() {
        this.isWordStatus = false;
        removeAllViews();
        for (HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean : this.listSymbol) {
            HmVirFullKeyboardChild hmVirFullKeyboardChild = new HmVirFullKeyboardChild(getContext());
            addView(hmVirFullKeyboardChild);
            hmVirFullKeyboardChild.init(hmVirFullKeyBoardInfoBean, this.clickListener);
        }
        if (Utils.isTV()) {
            post(new Runnable() { // from class: com.haima.hmcp.virtual.views.HmVirFullKeyBoardLayout.2
                @Override // java.lang.Runnable
                public void run() {
                    HmVirFullKeyBoardLayout.this.requestFocusToLeftParenKey();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderWordChild() {
        this.isWordStatus = true;
        removeAllViews();
        for (HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean : this.listWord) {
            HmVirFullKeyboardChild hmVirFullKeyboardChild = new HmVirFullKeyboardChild(getContext());
            addView(hmVirFullKeyboardChild);
            hmVirFullKeyboardChild.init(hmVirFullKeyBoardInfoBean, this.clickListener);
        }
        if (Utils.isTV()) {
            post(new Runnable() { // from class: com.haima.hmcp.virtual.views.HmVirFullKeyBoardLayout.1
                @Override // java.lang.Runnable
                public void run() {
                    HmVirFullKeyBoardLayout.this.restoreFocusAfterCaseSwitch();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreFocusAfterCaseSwitch() {
        HmVirFullKeyboardChild hmVirFullKeyboardChild;
        HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean;
        if (this.tempFocusRow != -1 && this.tempFocusColumn != -1) {
            boolean z10 = false;
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                if ((childAt instanceof HmVirFullKeyboardChild) && (hmVirFullKeyBoardInfoBean = (hmVirFullKeyboardChild = (HmVirFullKeyboardChild) childAt).infoBean) != null && hmVirFullKeyBoardInfoBean.getRow() == this.tempFocusRow && hmVirFullKeyboardChild.infoBean.getColumn() == this.tempFocusColumn) {
                    z10 = true;
                    hmVirFullKeyboardChild.setFocusableInTouchMode(true);
                    hmVirFullKeyboardChild.requestFocus();
                    LogUtils.d("HmVirFullKeyBoardLayout", "Focus restored to same position: row=" + this.tempFocusRow + ", column=" + this.tempFocusColumn + ", key=" + hmVirFullKeyboardChild.infoBean.getName());
                    break;
                }
            }
            this.tempFocusRow = -1;
            this.tempFocusColumn = -1;
            if (z10) {
                return;
            }
        }
        requestFocusToNumberOneKey();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveFocusPositionForCaseSwitch() {
        HmVirFullKeyboardChild hmVirFullKeyboardChild;
        HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean;
        if (Utils.isTV()) {
            View viewFindFocus = findFocus();
            if (!(viewFindFocus instanceof HmVirFullKeyboardChild) || (hmVirFullKeyBoardInfoBean = (hmVirFullKeyboardChild = (HmVirFullKeyboardChild) viewFindFocus).infoBean) == null) {
                return;
            }
            this.tempFocusRow = hmVirFullKeyBoardInfoBean.getRow();
            this.tempFocusColumn = hmVirFullKeyboardChild.infoBean.getColumn();
            LogUtils.d("HmVirFullKeyBoardLayout", "Saved focus position for case switch: row=" + this.tempFocusRow + ", column=" + this.tempFocusColumn);
        }
    }

    public void requestFocusToLeftParenKey() {
        HmVirFullKeyboardChild hmVirFullKeyboardChild;
        HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean;
        if (this.isWordStatus || getChildCount() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if ((childAt instanceof HmVirFullKeyboardChild) && (hmVirFullKeyBoardInfoBean = (hmVirFullKeyboardChild = (HmVirFullKeyboardChild) childAt).infoBean) != null && hmVirFullKeyBoardInfoBean.getRow() == 2 && hmVirFullKeyboardChild.infoBean.getColumn() == 1 && "(".equals(hmVirFullKeyboardChild.infoBean.getName())) {
                hmVirFullKeyboardChild.setFocusableInTouchMode(true);
                hmVirFullKeyboardChild.requestFocus();
                LogUtils.d("HmVirFullKeyBoardLayout", "Focus requested to left parenthesis key");
                return;
            }
        }
    }

    public void requestFocusToNumberOneKey() {
        HmVirFullKeyboardChild hmVirFullKeyboardChild;
        HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean;
        if (!this.isWordStatus || getChildCount() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if ((childAt instanceof HmVirFullKeyboardChild) && (hmVirFullKeyBoardInfoBean = (hmVirFullKeyboardChild = (HmVirFullKeyboardChild) childAt).infoBean) != null && hmVirFullKeyBoardInfoBean.getRow() == 2 && hmVirFullKeyboardChild.infoBean.getColumn() == 1 && "1".equals(hmVirFullKeyboardChild.infoBean.getName())) {
                hmVirFullKeyboardChild.setFocusableInTouchMode(true);
                hmVirFullKeyboardChild.requestFocus();
                LogUtils.d("HmVirFullKeyBoardLayout", "Focus requested to number 1 key");
                return;
            }
        }
    }

    public void setChildParams(int i10, int i11, int i12) {
        HmVirFullKeyboardChild.defWidth = i10;
        HmVirFullKeyboardChild.defHeight = i11;
        HmVirFullKeyboardChild.defInterval = i12;
        renderWordChild();
    }

    public void setListener(FullKBClickListener fullKBClickListener) {
        this.outClickListener = fullKBClickListener;
    }

    public void updateLayout() {
        if (this.isWordStatus) {
            renderWordChild();
        } else {
            renderSymbolChild();
        }
    }

    public HmVirFullKeyBoardLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.tempFocusRow = -1;
        this.tempFocusColumn = -1;
        this.clickListener = new FullKBClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirFullKeyBoardLayout.3
            @Override // com.haima.hmcp.virtual.views.HmVirFullKeyBoardLayout.FullKBClickListener
            public void onClick(View view, HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean) {
                if (hmVirFullKeyBoardInfoBean.getKeys() == null || hmVirFullKeyBoardInfoBean.getKeys().size() == 0) {
                    return;
                }
                if (hmVirFullKeyBoardInfoBean.getKeys().size() == 1) {
                    HmVirtualViewBean.KeysDTO keysDTO = hmVirFullKeyBoardInfoBean.getKeys().get(0);
                    int code = keysDTO.getCode();
                    if (code == -123) {
                        if (keysDTO.getKey().contains("数") || keysDTO.getKey().toLowerCase().contains("num")) {
                            HmVirFullKeyBoardLayout.this.renderSymbolChild();
                            return;
                        } else {
                            HmVirFullKeyBoardLayout.this.renderWordChild();
                            return;
                        }
                    }
                    if (code == 20) {
                        HmVirFullKeyBoardLayout.this.saveFocusPositionForCaseSwitch();
                        HmVirFullKeyBoardLayout.IS_UPPER = !HmVirFullKeyBoardLayout.IS_UPPER;
                        HmVirFullKeyBoardLayout.this.renderWordChild();
                    }
                }
                if (HmVirFullKeyBoardLayout.this.outClickListener != null) {
                    HmVirFullKeyBoardLayout.this.outClickListener.onClick(view, hmVirFullKeyBoardInfoBean);
                }
            }
        };
        init();
    }

    public HmVirFullKeyBoardLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.tempFocusRow = -1;
        this.tempFocusColumn = -1;
        this.clickListener = new FullKBClickListener() { // from class: com.haima.hmcp.virtual.views.HmVirFullKeyBoardLayout.3
            @Override // com.haima.hmcp.virtual.views.HmVirFullKeyBoardLayout.FullKBClickListener
            public void onClick(View view, HmVirFullKeyBoardInfoBean hmVirFullKeyBoardInfoBean) {
                if (hmVirFullKeyBoardInfoBean.getKeys() == null || hmVirFullKeyBoardInfoBean.getKeys().size() == 0) {
                    return;
                }
                if (hmVirFullKeyBoardInfoBean.getKeys().size() == 1) {
                    HmVirtualViewBean.KeysDTO keysDTO = hmVirFullKeyBoardInfoBean.getKeys().get(0);
                    int code = keysDTO.getCode();
                    if (code == -123) {
                        if (keysDTO.getKey().contains("数") || keysDTO.getKey().toLowerCase().contains("num")) {
                            HmVirFullKeyBoardLayout.this.renderSymbolChild();
                            return;
                        } else {
                            HmVirFullKeyBoardLayout.this.renderWordChild();
                            return;
                        }
                    }
                    if (code == 20) {
                        HmVirFullKeyBoardLayout.this.saveFocusPositionForCaseSwitch();
                        HmVirFullKeyBoardLayout.IS_UPPER = !HmVirFullKeyBoardLayout.IS_UPPER;
                        HmVirFullKeyBoardLayout.this.renderWordChild();
                    }
                }
                if (HmVirFullKeyBoardLayout.this.outClickListener != null) {
                    HmVirFullKeyBoardLayout.this.outClickListener.onClick(view, hmVirFullKeyBoardInfoBean);
                }
            }
        };
        init();
    }
}
