package com.join.android.app.mgsim.wufun.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.model.bean.GiftItemBean;
import com.join.kotlin.discount.proxy.GameDetailGiftClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public class ez extends dz implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f38174l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f38175m;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38176h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f38177i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f38178j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f38179k;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38175m = sparseIntArray;
        sparseIntArray.put(R.id.pbGiftProgress, 4);
    }

    public ez(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f38174l, f38175m));
    }

    private boolean w(GiftItemBean ItemData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38179k |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            GiftItemBean giftItemBean = this.f37685f;
            GameDetailGiftClickProxy gameDetailGiftClickProxy = this.f37686g;
            if (gameDetailGiftClickProxy != null) {
                gameDetailGiftClickProxy.goGiftDetail(giftItemBean);
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        GiftItemBean giftItemBean2 = this.f37685f;
        GameDetailGiftClickProxy gameDetailGiftClickProxy2 = this.f37686g;
        if (gameDetailGiftClickProxy2 != null) {
            gameDetailGiftClickProxy2.receiveGift(giftItemBean2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String content;
        int iSafeUnbox;
        String strBtnText;
        boolean z10;
        String str;
        Drawable drawable;
        Integer recStatus;
        String title;
        synchronized (this) {
            j10 = this.f38179k;
            this.f38179k = 0L;
        }
        GiftItemBean giftItemBean = this.f37685f;
        long j11 = j10 & 5;
        boolean z11 = false;
        if (j11 != 0) {
            if (giftItemBean != null) {
                recStatus = giftItemBean.getRecStatus();
                strBtnText = giftItemBean.btnText();
                title = giftItemBean.getTitle();
                content = giftItemBean.getContent();
            } else {
                content = null;
                recStatus = null;
                strBtnText = null;
                title = null;
            }
            iSafeUnbox = ViewDataBinding.safeUnbox(recStatus);
            z10 = iSafeUnbox == -1;
            if (j11 != 0) {
                j10 = z10 ? j10 | 16 : j10 | 8;
            }
            str = title;
        } else {
            content = null;
            iSafeUnbox = 0;
            strBtnText = null;
            z10 = false;
            str = null;
        }
        if ((8 & j10) != 0 && iSafeUnbox == 1) {
            z11 = true;
        }
        long j12 = j10 & 5;
        if (j12 != 0) {
            boolean z12 = z10 ? true : z11;
            if (j12 != 0) {
                j10 |= z12 ? 64L : 32L;
            }
            drawable = AppCompatResources.getDrawable(this.f37684e.getContext(), z12 ? R.drawable.shape_f89935_r27 : R.drawable.shape_discount_dfdfdf_r40);
        } else {
            drawable = null;
        }
        if ((4 & j10) != 0) {
            this.f38176h.setOnClickListener(this.f38178j);
            this.f37684e.setOnClickListener(this.f38177i);
        }
        if ((j10 & 5) != 0) {
            TextViewBindingAdapter.setText(this.f37682c, content);
            TextViewBindingAdapter.setText(this.f37683d, str);
            ViewBindingAdapter.setBackground(this.f37684e, drawable);
            TextViewBindingAdapter.setText(this.f37684e, strBtnText);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f38179k != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f38179k = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId != 0) {
            return false;
        }
        return w((GiftItemBean) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (27 == variableId) {
            u((GiftItemBean) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((GameDetailGiftClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.dz
    public void t(@Nullable GameDetailGiftClickProxy Click) {
        this.f37686g = Click;
        synchronized (this) {
            this.f38179k |= 2;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.dz
    public void u(@Nullable GiftItemBean ItemData) {
        updateRegistration(0, ItemData);
        this.f37685f = ItemData;
        synchronized (this) {
            this.f38179k |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    private ez(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 1, (ProgressBar) bindings[4], (TextView) bindings[2], (TextView) bindings[1], (TextView) bindings[3]);
        this.f38179k = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f38176h = constraintLayout;
        constraintLayout.setTag(null);
        this.f37682c.setTag(null);
        this.f37683d.setTag(null);
        this.f37684e.setTag(null);
        setRootTag(root);
        this.f38177i = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f38178j = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
