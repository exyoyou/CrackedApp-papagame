package com.join.android.app.mgsim.wufun.databinding;

import android.support.v4.media.session.PlaybackStateCompat;
import android.text.SpannableStringBuilder;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
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
import com.join.kotlin.discount.model.bean.CouponUseTip;
import com.join.kotlin.discount.proxy.CouponListClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public class ly extends ky implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    @Nullable
    private static final ViewDataBinding.IncludedLayouts C = null;

    @Nullable
    private static final SparseIntArray D;

    @Nullable
    private final View.OnClickListener A;
    private long B;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41605t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    private final Group f41606u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    private final ImageView f41607v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    private final Group f41608w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    private final Group f41609x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41610y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41611z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        D = sparseIntArray;
        sparseIntArray.put(R.id.v_left, 15);
        sparseIntArray.put(R.id.tv_label_y, 16);
        sparseIntArray.put(R.id.tv_label_ye, 17);
        sparseIntArray.put(R.id.tv_label_discount, 18);
        sparseIntArray.put(R.id.v_right, 19);
        sparseIntArray.put(R.id.v_line_h, 20);
    }

    public ly(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 21, C, D));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            CouponItemBean couponItemBean = this.f41071r;
            CouponListClickProxy couponListClickProxy = this.f41072s;
            if (couponListClickProxy != null) {
                couponListClickProxy.onUnSupportClick(couponItemBean);
                return;
            }
            return;
        }
        if (sourceId == 2) {
            CouponItemBean couponItemBean2 = this.f41071r;
            CouponListClickProxy couponListClickProxy2 = this.f41072s;
            if (couponListClickProxy2 != null) {
                couponListClickProxy2.onDetailClick(couponItemBean2);
                return;
            }
            return;
        }
        if (sourceId != 3) {
            return;
        }
        CouponItemBean couponItemBean3 = this.f41071r;
        CouponListClickProxy couponListClickProxy3 = this.f41072s;
        if (couponListClickProxy3 != null) {
            if (couponItemBean3 != null) {
                couponListClickProxy3.showUseTip(couponItemBean3.getUse_tip());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x019a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:104:0x019c  */
    /* JADX WARN: Code duplicated, block: B:105:0x019f  */
    /* JADX WARN: Code duplicated, block: B:109:0x01a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:110:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:111:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:114:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:115:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:117:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:118:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:120:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:121:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:123:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:126:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:129:0x0231  */
    /* JADX WARN: Code duplicated, block: B:136:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x0177 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x0179  */
    /* JADX WARN: Code duplicated, block: B:89:0x017d  */
    /* JADX WARN: Code duplicated, block: B:90:0x017f  */
    /* JADX WARN: Code duplicated, block: B:93:0x0183  */
    /* JADX WARN: Code duplicated, block: B:95:0x0186  */
    /* JADX WARN: Code duplicated, block: B:97:0x0189 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x018b  */
    /* JADX WARN: Code duplicated, block: B:99:0x018e  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        int iSafeUnbox;
        String coupon_name;
        String str;
        int i10;
        String str2;
        String str3;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        long j11;
        String str4;
        int i11;
        String str5;
        SpannableStringBuilder spannableStringBuilder;
        String str6;
        String str7;
        boolean zSafeUnbox;
        boolean z14;
        long j12;
        int i12;
        int i13;
        int i14;
        boolean z15;
        int i15;
        int i16;
        long j13;
        long j14;
        long j15;
        Integer range_op;
        String str8;
        String str9;
        Integer coupon_type;
        String amount;
        String threshold_text;
        CouponUseTip use_tip;
        String discount;
        SpannableStringBuilder balance;
        String use_range_text;
        long j16;
        long j17;
        long j18;
        long j19;
        synchronized (this) {
            j10 = this.B;
            this.B = 0L;
        }
        CouponItemBean couponItemBean = this.f41071r;
        long j20 = j10 & 5;
        if (j20 != 0) {
            if (couponItemBean != null) {
                range_op = couponItemBean.getRange_op();
                coupon_name = couponItemBean.getCoupon_name();
                coupon_type = couponItemBean.getCoupon_type();
                amount = couponItemBean.getAmount();
                threshold_text = couponItemBean.getThreshold_text();
                use_tip = couponItemBean.getUse_tip();
                discount = couponItemBean.getDiscount();
                String threshold = couponItemBean.getThreshold();
                balance = couponItemBean.formatBalance();
                String use_time_text = couponItemBean.getUse_time_text();
                use_range_text = couponItemBean.getUse_range_text();
                str8 = threshold;
                str9 = use_time_text;
            } else {
                range_op = null;
                coupon_name = null;
                str8 = null;
                str9 = null;
                coupon_type = null;
                amount = null;
                threshold_text = null;
                use_tip = null;
                discount = null;
                balance = null;
                use_range_text = null;
            }
            iSafeUnbox = ViewDataBinding.safeUnbox(range_op);
            int iSafeUnbox2 = ViewDataBinding.safeUnbox(coupon_type);
            boolean z16 = use_tip != null;
            String str10 = "满" + str8;
            str3 = "使用时间:" + str9;
            if (j20 != 0) {
                j10 |= z16 ? 65536L : 32768L;
            }
            z10 = iSafeUnbox != 0;
            z11 = iSafeUnbox == 0;
            z12 = iSafeUnbox2 == 0;
            z13 = iSafeUnbox2 != 0;
            int i17 = z16 ? 0 : 8;
            str = str10 + "可用";
            if ((j10 & 5) != 0) {
                j10 |= z11 ? 64L : 32L;
            }
            if ((j10 & 5) != 0) {
                if (z12) {
                    j18 = j10 | 262144;
                    j19 = 4194304;
                } else {
                    j18 = j10 | 131072;
                    j19 = PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
                }
                j10 = j18 | j19;
            }
            if ((j10 & 5) != 0) {
                if (z13) {
                    j16 = j10 | 16384;
                    j17 = 1048576;
                } else {
                    j16 = j10 | 8192;
                    j17 = PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
                }
                j10 = j16 | j17;
            }
            i10 = z12 ? 0 : 8;
            str2 = amount;
            str4 = threshold_text;
            i11 = i17;
            str5 = discount;
            spannableStringBuilder = balance;
            str6 = use_range_text;
            j11 = 32;
        } else {
            iSafeUnbox = 0;
            coupon_name = null;
            str = null;
            i10 = 0;
            str2 = null;
            str3 = null;
            z10 = false;
            z11 = false;
            z12 = false;
            z13 = false;
            j11 = 32;
            str4 = null;
            i11 = 0;
            str5 = null;
            spannableStringBuilder = null;
            str6 = null;
        }
        long j21 = j10 & j11;
        if (j21 != 0) {
            boolean z17 = iSafeUnbox == -1;
            if (j21 != 0) {
                j10 |= z17 ? 1024L : 512L;
            }
            str7 = z17 ? "不适用范围" : "适用范围";
        } else {
            str7 = null;
        }
        if ((3162112 & j10) != 0) {
            zSafeUnbox = ViewDataBinding.safeUnbox(couponItemBean != null ? couponItemBean.getRepeatable() : null);
            z14 = (2113536 & j10) != 0 ? !zSafeUnbox : false;
            j12 = j10 & 5;
            if (j12 != 0) {
                if (z11) {
                    str7 = "全部适用";
                }
                if (z13) {
                    z15 = z14;
                } else {
                    z15 = false;
                }
                if (!z13) {
                    zSafeUnbox = false;
                }
                if (z12) {
                    z14 = true;
                }
                if (j12 != 0) {
                    if (z15) {
                        j15 = 4096;
                    } else {
                        j15 = 2048;
                    }
                    j10 |= j15;
                }
                if ((j10 & 5) != 0) {
                    if (zSafeUnbox) {
                        j14 = 256;
                    } else {
                        j14 = 128;
                    }
                    j10 |= j14;
                }
                if ((j10 & 5) != 0) {
                    if (z14) {
                        j13 = 16;
                    } else {
                        j13 = 8;
                    }
                    j10 |= j13;
                }
                if (z15) {
                    i15 = 0;
                } else {
                    i15 = 8;
                }
                if (zSafeUnbox) {
                    i12 = 0;
                } else {
                    i12 = 8;
                }
                if (z14) {
                    i16 = 0;
                } else {
                    i16 = 8;
                }
                i14 = i15;
                i13 = i16;
            } else {
                i12 = 0;
                str7 = null;
                i13 = 0;
                i14 = 0;
            }
            if ((j10 & 5) != 0) {
                this.f41606u.setVisibility(i14);
                this.f41607v.setVisibility(i11);
                this.f41608w.setVisibility(i12);
                this.f41609x.setVisibility(i10);
                this.f41055b.setVisibility(i13);
                TextViewBindingAdapter.setText(this.f41055b, str6);
                TextViewBindingAdapter.setText(this.f41057d, str5);
                TextViewBindingAdapter.setText(this.f41058e, str4);
                TextViewBindingAdapter.setText(this.f41062i, str);
                TextViewBindingAdapter.setText(this.f41063j, coupon_name);
                this.f41064k.setEnabled(z10);
                TextViewBindingAdapter.setText(this.f41064k, str7);
                TextViewBindingAdapter.setText(this.f41065l, str3);
                TextViewBindingAdapter.setText(this.f41066m, str2);
                TextViewBindingAdapter.setText(this.f41067n, spannableStringBuilder);
            }
            if ((j10 & 4) != 0) {
                this.f41607v.setOnClickListener(this.f41611z);
                this.f41056c.setOnClickListener(this.f41610y);
                this.f41064k.setOnClickListener(this.A);
            }
        }
        zSafeUnbox = false;
        j12 = j10 & 5;
        if (j12 != 0) {
            if (z11) {
                str7 = "全部适用";
            }
            if (z13) {
                z15 = z14;
            } else {
                z15 = false;
            }
            if (!z13) {
                zSafeUnbox = false;
            }
            if (z12) {
                z14 = true;
            }
            if (j12 != 0) {
                if (z15) {
                    j15 = 4096;
                } else {
                    j15 = 2048;
                }
                j10 |= j15;
            }
            if ((j10 & 5) != 0) {
                if (zSafeUnbox) {
                    j14 = 256;
                } else {
                    j14 = 128;
                }
                j10 |= j14;
            }
            if ((j10 & 5) != 0) {
                if (z14) {
                    j13 = 16;
                } else {
                    j13 = 8;
                }
                j10 |= j13;
            }
            if (z15) {
                i15 = 0;
            } else {
                i15 = 8;
            }
            if (zSafeUnbox) {
                i12 = 0;
            } else {
                i12 = 8;
            }
            if (z14) {
                i16 = 0;
            } else {
                i16 = 8;
            }
            i14 = i15;
            i13 = i16;
        } else {
            i12 = 0;
            str7 = null;
            i13 = 0;
            i14 = 0;
        }
        if ((j10 & 5) != 0) {
            this.f41606u.setVisibility(i14);
            this.f41607v.setVisibility(i11);
            this.f41608w.setVisibility(i12);
            this.f41609x.setVisibility(i10);
            this.f41055b.setVisibility(i13);
            TextViewBindingAdapter.setText(this.f41055b, str6);
            TextViewBindingAdapter.setText(this.f41057d, str5);
            TextViewBindingAdapter.setText(this.f41058e, str4);
            TextViewBindingAdapter.setText(this.f41062i, str);
            TextViewBindingAdapter.setText(this.f41063j, coupon_name);
            this.f41064k.setEnabled(z10);
            TextViewBindingAdapter.setText(this.f41064k, str7);
            TextViewBindingAdapter.setText(this.f41065l, str3);
            TextViewBindingAdapter.setText(this.f41066m, str2);
            TextViewBindingAdapter.setText(this.f41067n, spannableStringBuilder);
        }
        if ((j10 & 4) != 0) {
            this.f41607v.setOnClickListener(this.f41611z);
            this.f41056c.setOnClickListener(this.f41610y);
            this.f41064k.setOnClickListener(this.A);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.B != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.B = 4L;
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

    @Override // com.join.android.app.mgsim.wufun.databinding.ky
    public void t(@Nullable CouponListClickProxy Click) {
        this.f41072s = Click;
        synchronized (this) {
            this.B |= 2;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ky
    public void u(@Nullable CouponItemBean ItemData) {
        this.f41071r = ItemData;
        synchronized (this) {
            this.B |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    private ly(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[14], (TextView) bindings[7], (TextView) bindings[9], (TextView) bindings[10], (TextView) bindings[18], (TextView) bindings[16], (TextView) bindings[17], (TextView) bindings[3], (TextView) bindings[11], (TextView) bindings[6], (TextView) bindings[13], (TextView) bindings[2], (TextView) bindings[5], (View) bindings[15], (View) bindings[20], (View) bindings[19]);
        this.B = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f41605t = constraintLayout;
        constraintLayout.setTag(null);
        Group group = (Group) bindings[1];
        this.f41606u = group;
        group.setTag(null);
        ImageView imageView = (ImageView) bindings[12];
        this.f41607v = imageView;
        imageView.setTag(null);
        Group group2 = (Group) bindings[4];
        this.f41608w = group2;
        group2.setTag(null);
        Group group3 = (Group) bindings[8];
        this.f41609x = group3;
        group3.setTag(null);
        this.f41055b.setTag(null);
        this.f41056c.setTag(null);
        this.f41057d.setTag(null);
        this.f41058e.setTag(null);
        this.f41062i.setTag(null);
        this.f41063j.setTag(null);
        this.f41064k.setTag(null);
        this.f41065l.setTag(null);
        this.f41066m.setTag(null);
        this.f41067n.setTag(null);
        setRootTag(root);
        this.f41610y = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f41611z = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.A = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
