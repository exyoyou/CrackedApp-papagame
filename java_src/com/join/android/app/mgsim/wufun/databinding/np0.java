package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class np0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CheckBox f42478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42479d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42480e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42481f;

    private np0(@NonNull LinearLayout rootView, @NonNull CheckBox checkBox, @NonNull TextView couponName, @NonNull TextView expireDate, @NonNull TextView money) {
        this.f42477b = rootView;
        this.f42478c = checkBox;
        this.f42479d = couponName;
        this.f42480e = expireDate;
        this.f42481f = money;
    }

    @NonNull
    public static np0 bind(@NonNull View rootView) {
        int i10 = R.id.checkBox;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.checkBox);
        if (checkBox != null) {
            i10 = R.id.couponName;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.couponName);
            if (textView != null) {
                i10 = R.id.expireDate;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.expireDate);
                if (textView2 != null) {
                    i10 = R.id.money;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.money);
                    if (textView3 != null) {
                        return new np0((LinearLayout) rootView, checkBox, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static np0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42477b;
    }

    @NonNull
    public static np0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papa_coupon_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
