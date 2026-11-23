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
public final class un0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45783c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45784d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45785e;

    private un0(@NonNull LinearLayout rootView, @NonNull TextView gameVocherDetail, @NonNull TextView gamrVoucherNumber, @NonNull LinearLayout voucherGameDetail) {
        this.f45782b = rootView;
        this.f45783c = gameVocherDetail;
        this.f45784d = gamrVoucherNumber;
        this.f45785e = voucherGameDetail;
    }

    @NonNull
    public static un0 bind(@NonNull View rootView) {
        int i10 = R.id.gameVocherDetail;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameVocherDetail);
        if (textView != null) {
            i10 = R.id.gamrVoucherNumber;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamrVoucherNumber);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) rootView;
                return new un0(linearLayout, textView, textView2, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static un0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45782b;
    }

    @NonNull
    public static un0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_voucher_game_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
