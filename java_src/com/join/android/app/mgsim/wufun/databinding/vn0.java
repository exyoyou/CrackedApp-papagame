package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class vn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46358c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46359d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46360e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46361f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46362g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46363h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46364i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f46365j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f46366k;

    private vn0(@NonNull LinearLayout rootView, @NonNull LinearLayout layoutLeft, @NonNull RelativeLayout layoutRight, @NonNull LinearLayout layoutVoucherLeft, @NonNull TextView voucherDate, @NonNull TextView voucherName, @NonNull TextView voucherNo, @NonNull TextView voucherPrice, @NonNull ImageView voucherStateButtom, @NonNull ImageView voucherStateTop) {
        this.f46357b = rootView;
        this.f46358c = layoutLeft;
        this.f46359d = layoutRight;
        this.f46360e = layoutVoucherLeft;
        this.f46361f = voucherDate;
        this.f46362g = voucherName;
        this.f46363h = voucherNo;
        this.f46364i = voucherPrice;
        this.f46365j = voucherStateButtom;
        this.f46366k = voucherStateTop;
    }

    @NonNull
    public static vn0 bind(@NonNull View rootView) {
        int i10 = R.id.layoutLeft;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutLeft);
        if (linearLayout != null) {
            i10 = R.id.layoutRight;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layoutRight);
            if (relativeLayout != null) {
                i10 = R.id.layoutVoucherLeft;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutVoucherLeft);
                if (linearLayout2 != null) {
                    i10 = R.id.voucherDate;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.voucherDate);
                    if (textView != null) {
                        i10 = R.id.voucherName;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.voucherName);
                        if (textView2 != null) {
                            i10 = R.id.voucherNo;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.voucherNo);
                            if (textView3 != null) {
                                i10 = R.id.voucherPrice;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.voucherPrice);
                                if (textView4 != null) {
                                    i10 = R.id.voucherStateButtom;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.voucherStateButtom);
                                    if (imageView != null) {
                                        i10 = R.id.voucherStateTop;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.voucherStateTop);
                                        if (imageView2 != null) {
                                            return new vn0((LinearLayout) rootView, linearLayout, relativeLayout, linearLayout2, textView, textView2, textView3, textView4, imageView, imageView2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46357b;
    }

    @NonNull
    public static vn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_voucher_game_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
