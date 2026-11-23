package com.join.android.app.mgsim.wufun.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ImageViewBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.coupon.ClickProxy;
import com.join.mgps.dto.BTGameCouponBean;

/* JADX INFO: loaded from: classes4.dex */
public class bc extends ac implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f36325w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f36326x;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36327m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    private final TextView f36328n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36329o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    private final TextView f36330p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    private final TextView f36331q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    private final TextView f36332r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    private final ImageView f36333s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f36334t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f36335u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f36336v;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f36326x = sparseIntArray;
        sparseIntArray.put(R.id.money, 13);
        sparseIntArray.put(R.id.line, 14);
    }

    public bc(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 15, f36325w, f36326x));
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ac
    public void A(@Nullable ClickProxy Click) {
        this.f35765l = Click;
        synchronized (this) {
            this.f36336v |= 4;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ac
    public void B(@Nullable Boolean Isdiscount) {
        this.f35764k = Isdiscount;
        synchronized (this) {
            this.f36336v |= 2;
        }
        notifyPropertyChanged(25);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            BTGameCouponBean bTGameCouponBean = this.f35763j;
            ClickProxy clickProxy = this.f35765l;
            if (clickProxy != null) {
                clickProxy.onClickGet(bTGameCouponBean);
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        BTGameCouponBean bTGameCouponBean2 = this.f35763j;
        ClickProxy clickProxy2 = this.f35765l;
        if (clickProxy2 != null) {
            clickProxy2.onClickMore(bTGameCouponBean2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0165  */
    /* JADX WARN: Code duplicated, block: B:68:0x0172  */
    /* JADX WARN: Code duplicated, block: B:73:0x0181  */
    /* JADX WARN: Code duplicated, block: B:74:0x0183  */
    /* JADX WARN: Code duplicated, block: B:77:0x018c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x018e  */
    /* JADX WARN: Code duplicated, block: B:80:0x0193  */
    /* JADX WARN: Code duplicated, block: B:83:0x019c  */
    /* JADX WARN: Code duplicated, block: B:86:0x01db  */
    /* JADX WARN: Code duplicated, block: B:89:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:91:0x0200  */
    /* JADX WARN: Code duplicated, block: B:98:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String string;
        String str;
        String str2;
        String str3;
        Drawable drawable;
        String usable_gamesShow;
        int colorFromResource;
        String str4;
        boolean z10;
        int i10;
        String coupon_name;
        boolean zSafeUnbox;
        int i11;
        int i12;
        String discount;
        String amount;
        long j11;
        String str5;
        long j12;
        long j13;
        boolean zIsShowDetial;
        String str6;
        String effect_time_hint;
        boolean zIsReceivable;
        Context context;
        int i13;
        long j14;
        long j15;
        long j16;
        long j17;
        synchronized (this) {
            j10 = this.f36336v;
            this.f36336v = 0L;
        }
        BTGameCouponBean bTGameCouponBean = this.f35763j;
        Boolean bool = this.f35764k;
        long j18 = j10 & 9;
        if (j18 != 0) {
            if (bTGameCouponBean != null) {
                zIsShowDetial = bTGameCouponBean.isShowDetial();
                usable_gamesShow = bTGameCouponBean.getUsable_gamesShow();
                coupon_name = bTGameCouponBean.getCoupon_name();
                String usable_games = bTGameCouponBean.getUsable_games();
                String use_condition_no_price = bTGameCouponBean.getUse_condition_no_price();
                effect_time_hint = bTGameCouponBean.getEffect_time_hint();
                zIsReceivable = bTGameCouponBean.isReceivable();
                str6 = usable_games;
                str4 = use_condition_no_price;
            } else {
                zIsShowDetial = false;
                usable_gamesShow = null;
                str6 = null;
                str4 = null;
                coupon_name = null;
                effect_time_hint = null;
                zIsReceivable = false;
            }
            if (j18 != 0) {
                if (zIsShowDetial) {
                    j16 = j10 | 2048;
                    j17 = 32768;
                } else {
                    j16 = j10 | 1024;
                    j17 = 16384;
                }
                j10 = j16 | j17;
            }
            if ((j10 & 9) != 0) {
                if (zIsReceivable) {
                    j14 = j10 | 32;
                    j15 = 128;
                } else {
                    j14 = j10 | 16;
                    j15 = 64;
                }
                j10 = j14 | j15;
            }
            i10 = zIsShowDetial ? 0 : 8;
            if (zIsShowDetial) {
                context = this.f36333s.getContext();
                i13 = R.drawable.detial_more_up;
            } else {
                context = this.f36333s.getContext();
                i13 = R.drawable.more_arrow;
            }
            drawable = AppCompatResources.getDrawable(context, i13);
            str2 = this.f36330p.getResources().getString(R.string.use_range) + str6;
            str3 = this.f36331q.getResources().getString(R.string.use_condition) + str4;
            colorFromResource = ViewDataBinding.getColorFromResource(this.f35761h, zIsReceivable ? R.color.coupon_gettext_color : R.color.coupon_hasgettext_color);
            string = zIsReceivable ? this.f35761h.getResources().getString(R.string.get) : this.f35761h.getResources().getString(R.string.has_get);
            str = effect_time_hint;
            z10 = zIsReceivable;
        } else {
            string = null;
            str = null;
            str2 = null;
            str3 = null;
            drawable = null;
            usable_gamesShow = null;
            colorFromResource = 0;
            str4 = null;
            z10 = false;
            i10 = 0;
            coupon_name = null;
        }
        if ((j10 & 11) != 0) {
            zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if ((j10 & 10) != 0) {
                if (zSafeUnbox) {
                    j12 = j10 | 512;
                    j13 = 8192;
                } else {
                    j12 = j10 | 256;
                    j13 = 4096;
                }
                j10 = j12 | j13;
            }
            if ((j10 & 11) != 0) {
                j10 = zSafeUnbox ? j10 | 131072 : j10 | 65536;
            }
            if ((j10 & 10) != 0) {
                int i14 = zSafeUnbox ? 8 : 0;
                i12 = zSafeUnbox ? 0 : 8;
                i11 = i14;
            }
            if ((j10 & 196608) != 0) {
                if ((j10 & 65536) != 0 || bTGameCouponBean == null) {
                    amount = null;
                } else {
                    amount = bTGameCouponBean.getAmount();
                }
                if ((j10 & 131072) != 0 || bTGameCouponBean == null) {
                    discount = null;
                } else {
                    discount = bTGameCouponBean.getDiscount();
                }
            } else {
                discount = null;
                amount = null;
            }
            j11 = j10 & 11;
            if (j11 != 0) {
                if (zSafeUnbox) {
                    amount = discount;
                }
                str5 = amount;
            } else {
                str5 = null;
            }
            if ((j10 & 9) != 0) {
                TextViewBindingAdapter.setText(this.f35755b, coupon_name);
                TextViewBindingAdapter.setText(this.f35756c, usable_gamesShow);
                this.f36329o.setVisibility(i10);
                TextViewBindingAdapter.setText(this.f36330p, str2);
                TextViewBindingAdapter.setText(this.f36331q, str3);
                ImageViewBindingAdapter.setImageDrawable(this.f36333s, drawable);
                TextViewBindingAdapter.setText(this.f35759f, str4);
                this.f35761h.setEnabled(z10);
                TextViewBindingAdapter.setText(this.f35761h, string);
                this.f35761h.setTextColor(colorFromResource);
                TextViewBindingAdapter.setText(this.f35762i, str);
            }
            if ((j10 & 10) != 0) {
                this.f36328n.setVisibility(i11);
                this.f36332r.setVisibility(i12);
            }
            if ((j10 & 8) != 0) {
                this.f36333s.setOnClickListener(this.f36335u);
                this.f35761h.setOnClickListener(this.f36334t);
            }
            if (j11 != 0) {
                TextViewBindingAdapter.setText(this.f35760g, str5);
            }
        }
        zSafeUnbox = false;
        i11 = 0;
        i12 = 0;
        if ((j10 & 196608) != 0) {
            if ((j10 & 65536) != 0) {
                amount = null;
            } else {
                amount = null;
            }
            if ((j10 & 131072) != 0) {
                discount = null;
            } else {
                discount = null;
            }
        } else {
            discount = null;
            amount = null;
        }
        j11 = j10 & 11;
        if (j11 != 0) {
            if (zSafeUnbox) {
                amount = discount;
            }
            str5 = amount;
        } else {
            str5 = null;
        }
        if ((j10 & 9) != 0) {
            TextViewBindingAdapter.setText(this.f35755b, coupon_name);
            TextViewBindingAdapter.setText(this.f35756c, usable_gamesShow);
            this.f36329o.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f36330p, str2);
            TextViewBindingAdapter.setText(this.f36331q, str3);
            ImageViewBindingAdapter.setImageDrawable(this.f36333s, drawable);
            TextViewBindingAdapter.setText(this.f35759f, str4);
            this.f35761h.setEnabled(z10);
            TextViewBindingAdapter.setText(this.f35761h, string);
            this.f35761h.setTextColor(colorFromResource);
            TextViewBindingAdapter.setText(this.f35762i, str);
        }
        if ((j10 & 10) != 0) {
            this.f36328n.setVisibility(i11);
            this.f36332r.setVisibility(i12);
        }
        if ((j10 & 8) != 0) {
            this.f36333s.setOnClickListener(this.f36335u);
            this.f35761h.setOnClickListener(this.f36334t);
        }
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.f35760g, str5);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f36336v != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f36336v = 8L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (3 == variableId) {
            z((BTGameCouponBean) variable);
        } else if (25 == variableId) {
            B((Boolean) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            A((ClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ac
    public void z(@Nullable BTGameCouponBean Album) {
        this.f35763j = Album;
        synchronized (this) {
            this.f36336v |= 1;
        }
        notifyPropertyChanged(3);
        super.requestRebind();
    }

    private bc(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[5], (TextView) bindings[7], (View) bindings[14], (ConstraintLayout) bindings[13], (TextView) bindings[4], (TextView) bindings[2], (TextView) bindings[8], (TextView) bindings[6]);
        this.f36336v = -1L;
        this.f35755b.setTag(null);
        this.f35756c.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f36327m = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) bindings[1];
        this.f36328n = textView;
        textView.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) bindings[10];
        this.f36329o = linearLayout2;
        linearLayout2.setTag(null);
        TextView textView2 = (TextView) bindings[11];
        this.f36330p = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) bindings[12];
        this.f36331q = textView3;
        textView3.setTag(null);
        TextView textView4 = (TextView) bindings[3];
        this.f36332r = textView4;
        textView4.setTag(null);
        ImageView imageView = (ImageView) bindings[9];
        this.f36333s = imageView;
        imageView.setTag(null);
        this.f35759f.setTag(null);
        this.f35760g.setTag(null);
        this.f35761h.setTag(null);
        this.f35762i.setTag(null);
        setRootTag(root);
        this.f36334t = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f36335u = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
