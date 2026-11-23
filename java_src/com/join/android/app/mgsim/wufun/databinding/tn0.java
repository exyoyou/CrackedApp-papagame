package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class tn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45349c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45350d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45351e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45352f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45353g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45354h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f45355i;

    private tn0(@NonNull LinearLayout rootView, @NonNull LinearLayout gameVoucherRight, @NonNull LinearLayout layoutGamevoucher, @NonNull TextView voucherContent, @NonNull TextView voucherGameGet, @NonNull TextView voucherGameNumber, @NonNull TextView voucherName, @NonNull TextView voucherPrice) {
        this.f45348b = rootView;
        this.f45349c = gameVoucherRight;
        this.f45350d = layoutGamevoucher;
        this.f45351e = voucherContent;
        this.f45352f = voucherGameGet;
        this.f45353g = voucherGameNumber;
        this.f45354h = voucherName;
        this.f45355i = voucherPrice;
    }

    @NonNull
    public static tn0 bind(@NonNull View rootView) {
        int i10 = R.id.gameVoucherRight;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gameVoucherRight);
        if (linearLayout != null) {
            LinearLayout linearLayout2 = (LinearLayout) rootView;
            i10 = R.id.voucherContent;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.voucherContent);
            if (textView != null) {
                i10 = R.id.voucherGameGet;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.voucherGameGet);
                if (textView2 != null) {
                    i10 = R.id.voucherGameNumber;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.voucherGameNumber);
                    if (textView3 != null) {
                        i10 = R.id.voucherName;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.voucherName);
                        if (textView4 != null) {
                            i10 = R.id.voucherPrice;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.voucherPrice);
                            if (textView5 != null) {
                                return new tn0(linearLayout2, linearLayout, linearLayout2, textView, textView2, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static tn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45348b;
    }

    @NonNull
    public static tn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_no_voucher_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
