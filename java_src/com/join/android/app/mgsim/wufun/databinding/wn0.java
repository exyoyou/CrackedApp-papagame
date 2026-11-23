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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46876c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46877d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46878e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46879f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46880g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46881h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46882i;

    private wn0(@NonNull LinearLayout rootView, @NonNull TextView appName, @NonNull TextView gameVoucherConsume, @NonNull TextView gameVoucherPrice, @NonNull SimpleDraweeView mgListviewItemIcon, @NonNull TextView voucherHand, @NonNull TextView voucherIs, @NonNull TextView voucherOut) {
        this.f46875b = rootView;
        this.f46876c = appName;
        this.f46877d = gameVoucherConsume;
        this.f46878e = gameVoucherPrice;
        this.f46879f = mgListviewItemIcon;
        this.f46880g = voucherHand;
        this.f46881h = voucherIs;
        this.f46882i = voucherOut;
    }

    @NonNull
    public static wn0 bind(@NonNull View rootView) {
        int i10 = R.id.appName;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
        if (textView != null) {
            i10 = R.id.gameVoucherConsume;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameVoucherConsume);
            if (textView2 != null) {
                i10 = R.id.gameVoucherPrice;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameVoucherPrice);
                if (textView3 != null) {
                    i10 = R.id.mgListviewItemIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemIcon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.voucherHand;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.voucherHand);
                        if (textView4 != null) {
                            i10 = R.id.voucherIs;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.voucherIs);
                            if (textView5 != null) {
                                i10 = R.id.voucherOut;
                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.voucherOut);
                                if (textView6 != null) {
                                    return new wn0((LinearLayout) rootView, textView, textView2, textView3, simpleDraweeView, textView4, textView5, textView6);
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
    public static wn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46875b;
    }

    @NonNull
    public static wn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_voucher_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
