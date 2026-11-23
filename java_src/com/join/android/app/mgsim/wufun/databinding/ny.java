package com.join.android.app.mgsim.wufun.databinding;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.model.bean.CouponItemBean;
import com.join.kotlin.discount.proxy.CouponListClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public class ny extends my implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    @Nullable
    private static final ViewDataBinding.IncludedLayouts A = null;

    @Nullable
    private static final SparseIntArray B;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f42549q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    private final Group f42550r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42551s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    private final TextView f42552t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    private final Group f42553u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f42554v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f42555w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f42556x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f42557y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f42558z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        B = sparseIntArray;
        sparseIntArray.put(R.id.v_left, 13);
        sparseIntArray.put(R.id.tv_label_y, 14);
        sparseIntArray.put(R.id.tv_label_ye, 15);
        sparseIntArray.put(R.id.v_right, 16);
        sparseIntArray.put(R.id.vLine, 17);
    }

    public ny(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 18, A, B));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            CouponItemBean couponItemBean = this.f42088o;
            CouponListClickProxy couponListClickProxy = this.f42089p;
            if (couponListClickProxy != null) {
                couponListClickProxy.onUnSupportClick(couponItemBean);
                return;
            }
            return;
        }
        if (sourceId == 2) {
            CouponItemBean couponItemBean2 = this.f42088o;
            CouponListClickProxy couponListClickProxy2 = this.f42089p;
            if (couponListClickProxy2 != null) {
                couponListClickProxy2.onDetailClick(couponItemBean2);
                return;
            }
            return;
        }
        if (sourceId == 3) {
            CouponItemBean couponItemBean3 = this.f42088o;
            CouponListClickProxy couponListClickProxy3 = this.f42089p;
            if (couponListClickProxy3 != null) {
                couponListClickProxy3.onUseClick(couponItemBean3);
                return;
            }
            return;
        }
        if (sourceId != 4) {
            return;
        }
        CouponItemBean couponItemBean4 = this.f42088o;
        CouponListClickProxy couponListClickProxy4 = this.f42089p;
        if (couponListClickProxy4 != null) {
            couponListClickProxy4.onReceiveClick(couponItemBean4);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        String str2;
        boolean z10;
        int iSafeUnbox;
        String coupon_name;
        String str3;
        int color;
        String str4;
        int i10;
        boolean z11;
        int i11;
        long j11;
        SpannableStringBuilder spannableStringBuilder;
        String str5;
        int i12;
        int i13;
        long j12;
        String str6;
        Integer state;
        Integer range_op;
        String str7;
        String str8;
        String strReceiveBtnText;
        String strReceiveBtnTextColor;
        Boolean repeatable;
        String amount_text;
        SpannableStringBuilder balance;
        String use_range_text;
        long j13;
        long j14;
        synchronized (this) {
            j10 = this.f42558z;
            this.f42558z = 0L;
        }
        CouponItemBean couponItemBean = this.f42088o;
        long j15 = j10 & 5;
        if (j15 != 0) {
            if (couponItemBean != null) {
                range_op = couponItemBean.getRange_op();
                coupon_name = couponItemBean.getCoupon_name();
                String threshold_text = couponItemBean.getThreshold_text();
                strReceiveBtnText = couponItemBean.receiveBtnText();
                strReceiveBtnTextColor = couponItemBean.receiveBtnTextColor();
                repeatable = couponItemBean.getRepeatable();
                amount_text = couponItemBean.getAmount_text();
                balance = couponItemBean.formatBalance();
                String receive_time_text = couponItemBean.getReceive_time_text();
                use_range_text = couponItemBean.getUse_range_text();
                state = couponItemBean.getState();
                str7 = threshold_text;
                str8 = receive_time_text;
            } else {
                state = null;
                range_op = null;
                coupon_name = null;
                str7 = null;
                str8 = null;
                strReceiveBtnText = null;
                strReceiveBtnTextColor = null;
                repeatable = null;
                amount_text = null;
                balance = null;
                use_range_text = null;
            }
            iSafeUnbox = ViewDataBinding.safeUnbox(range_op);
            String str9 = "满" + str7;
            color = Color.parseColor(strReceiveBtnTextColor);
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(repeatable);
            str2 = "领取时间:" + str8;
            int iSafeUnbox2 = ViewDataBinding.safeUnbox(state);
            if (j15 != 0) {
                if (zSafeUnbox) {
                    j13 = j10 | 256;
                    j14 = 1024;
                } else {
                    j13 = j10 | 128;
                    j14 = 512;
                }
                j10 = j13 | j14;
            }
            z10 = iSafeUnbox != 0;
            z11 = iSafeUnbox == 0;
            str3 = str9 + "可用";
            int i14 = zSafeUnbox ? 0 : 8;
            i11 = zSafeUnbox ? 8 : 0;
            boolean z12 = iSafeUnbox2 != 1;
            boolean z13 = iSafeUnbox2 == 1;
            if ((j10 & 5) != 0) {
                j10 = z11 ? j10 | 16 : j10 | 8;
            }
            if ((j10 & 5) != 0) {
                j10 |= z12 ? 16384L : 8192L;
            }
            if ((j10 & 5) != 0) {
                j10 |= z13 ? 4096L : 2048L;
            }
            i10 = z12 ? 0 : 4;
            int i15 = z13 ? 0 : 4;
            str = strReceiveBtnText;
            str4 = amount_text;
            spannableStringBuilder = balance;
            str5 = use_range_text;
            i12 = i14;
            i13 = i15;
            j11 = 8;
        } else {
            str = null;
            str2 = null;
            z10 = false;
            iSafeUnbox = 0;
            coupon_name = null;
            str3 = null;
            color = 0;
            str4 = null;
            i10 = 0;
            z11 = false;
            i11 = 0;
            j11 = 8;
            spannableStringBuilder = null;
            str5 = null;
            i12 = 0;
            i13 = 0;
        }
        long j16 = j10 & j11;
        if (j16 != 0) {
            boolean z14 = iSafeUnbox == -1;
            if (j16 != 0) {
                j10 |= z14 ? 64L : 32L;
            }
            str6 = z14 ? "不适用范围" : "适用范围";
            j12 = 5;
        } else {
            j12 = 5;
            str6 = null;
        }
        long j17 = j12 & j10;
        if (j17 == 0) {
            str6 = null;
        } else if (z11) {
            str6 = "全部适用";
        }
        if (j17 != 0) {
            this.f42550r.setVisibility(i11);
            this.f42551s.setVisibility(i13);
            TextViewBindingAdapter.setText(this.f42552t, str);
            this.f42552t.setTextColor(color);
            this.f42553u.setVisibility(i12);
            TextViewBindingAdapter.setText(this.f42075b, str5);
            this.f42075b.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f42079f, str3);
            TextViewBindingAdapter.setText(this.f42080g, coupon_name);
            this.f42081h.setEnabled(z10);
            TextViewBindingAdapter.setText(this.f42081h, str6);
            TextViewBindingAdapter.setText(this.f42082i, str2);
            TextViewBindingAdapter.setText(this.f42083j, str4);
            TextViewBindingAdapter.setText(this.f42084k, spannableStringBuilder);
        }
        if ((j10 & 4) != 0) {
            this.f42551s.setOnClickListener(this.f42557y);
            this.f42552t.setOnClickListener(this.f42554v);
            this.f42076c.setOnClickListener(this.f42555w);
            this.f42081h.setOnClickListener(this.f42556x);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f42558z != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f42558z = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (27 == variableId) {
            u((CouponItemBean) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((CouponListClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.my
    public void t(@Nullable CouponListClickProxy Click) {
        this.f42089p = Click;
        synchronized (this) {
            this.f42558z |= 2;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.my
    public void u(@Nullable CouponItemBean ItemData) {
        this.f42088o = ItemData;
        synchronized (this) {
            this.f42558z |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    private ny(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[10], (TextView) bindings[7], (TextView) bindings[14], (TextView) bindings[15], (TextView) bindings[3], (TextView) bindings[8], (TextView) bindings[6], (TextView) bindings[9], (TextView) bindings[2], (TextView) bindings[5], (View) bindings[13], (View) bindings[17], (View) bindings[16]);
        this.f42558z = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f42549q = constraintLayout;
        constraintLayout.setTag(null);
        Group group = (Group) bindings[1];
        this.f42550r = group;
        group.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[11];
        this.f42551s = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) bindings[12];
        this.f42552t = textView;
        textView.setTag(null);
        Group group2 = (Group) bindings[4];
        this.f42553u = group2;
        group2.setTag(null);
        this.f42075b.setTag(null);
        this.f42076c.setTag(null);
        this.f42079f.setTag(null);
        this.f42080g.setTag(null);
        this.f42081h.setTag(null);
        this.f42082i.setTag(null);
        this.f42083j.setTag(null);
        this.f42084k.setTag(null);
        setRootTag(root);
        this.f42554v = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        this.f42555w = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f42556x = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f42557y = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        invalidateAll();
    }
}
