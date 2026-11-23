package com.join.android.app.mgsim.wufun.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
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
public class b00 extends a00 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f36130l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f36131m = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36132h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f36133i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f36134j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f36135k;

    public b00(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f36130l, f36131m));
    }

    private boolean w(GiftItemBean ItemData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f36135k |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            GiftItemBean giftItemBean = this.f35558f;
            GameDetailGiftClickProxy gameDetailGiftClickProxy = this.f35559g;
            if (gameDetailGiftClickProxy != null) {
                gameDetailGiftClickProxy.goGiftDetail(giftItemBean);
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        GiftItemBean giftItemBean2 = this.f35558f;
        GameDetailGiftClickProxy gameDetailGiftClickProxy2 = this.f35559g;
        if (gameDetailGiftClickProxy2 != null) {
            gameDetailGiftClickProxy2.receiveGift(giftItemBean2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String content;
        String strBtnText;
        String str;
        int iSafeUnbox;
        boolean z10;
        String str2;
        Drawable drawable;
        String surplusPercent;
        Integer recStatus;
        String title;
        synchronized (this) {
            j10 = this.f36135k;
            this.f36135k = 0L;
        }
        GiftItemBean giftItemBean = this.f35558f;
        long j11 = j10 & 5;
        if (j11 != 0) {
            if (giftItemBean != null) {
                strBtnText = giftItemBean.btnText();
                surplusPercent = giftItemBean.getSurplusPercent();
                recStatus = giftItemBean.getRecStatus();
                title = giftItemBean.getTitle();
                content = giftItemBean.getContent();
            } else {
                content = null;
                strBtnText = null;
                surplusPercent = null;
                recStatus = null;
                title = null;
            }
            str = "剩余：" + surplusPercent;
            iSafeUnbox = ViewDataBinding.safeUnbox(recStatus);
            z10 = iSafeUnbox == -1;
            if (j11 != 0) {
                j10 = z10 ? j10 | 64 : j10 | 32;
            }
            str2 = title;
        } else {
            content = null;
            strBtnText = null;
            str = null;
            iSafeUnbox = 0;
            z10 = false;
            str2 = null;
        }
        boolean z11 = (32 & j10) != 0 && iSafeUnbox == 1;
        long j12 = j10 & 5;
        if (j12 != 0) {
            boolean z12 = z10 ? true : z11;
            if (j12 != 0) {
                j10 |= z12 ? 16L : 8L;
            }
            drawable = AppCompatResources.getDrawable(this.f35557e.getContext(), z12 ? R.drawable.shape_discount_f95a5a_r40 : R.drawable.shape_discount_dfdfdf_r40);
        } else {
            drawable = null;
        }
        if ((5 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f35554b, content);
            TextViewBindingAdapter.setText(this.f35555c, str2);
            TextViewBindingAdapter.setText(this.f35556d, str);
            ViewBindingAdapter.setBackground(this.f35557e, drawable);
            TextViewBindingAdapter.setText(this.f35557e, strBtnText);
        }
        if ((j10 & 4) != 0) {
            this.f36132h.setOnClickListener(this.f36134j);
            this.f35557e.setOnClickListener(this.f36133i);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f36135k != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f36135k = 4L;
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

    @Override // com.join.android.app.mgsim.wufun.databinding.a00
    public void t(@Nullable GameDetailGiftClickProxy Click) {
        this.f35559g = Click;
        synchronized (this) {
            this.f36135k |= 2;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.a00
    public void u(@Nullable GiftItemBean ItemData) {
        updateRegistration(0, ItemData);
        this.f35558f = ItemData;
        synchronized (this) {
            this.f36135k |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    private b00(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 1, (TextView) bindings[2], (TextView) bindings[1], (TextView) bindings[3], (TextView) bindings[4]);
        this.f36135k = -1L;
        this.f35554b.setTag(null);
        this.f35555c.setTag(null);
        this.f35556d.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f36132h = constraintLayout;
        constraintLayout.setTag(null);
        this.f35557e.setTag(null);
        setRootTag(root);
        this.f36133i = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f36134j = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
