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
public final class uq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45819c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45820d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45821e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45822f;

    private uq0(@NonNull LinearLayout rootView, @NonNull TextView payNumber, @NonNull TextView paySuccess, @NonNull TextView payTime, @NonNull TextView payType) {
        this.f45818b = rootView;
        this.f45819c = payNumber;
        this.f45820d = paySuccess;
        this.f45821e = payTime;
        this.f45822f = payType;
    }

    @NonNull
    public static uq0 bind(@NonNull View rootView) {
        int i10 = R.id.payNumber;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.payNumber);
        if (textView != null) {
            i10 = R.id.paySuccess;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.paySuccess);
            if (textView2 != null) {
                i10 = R.id.payTime;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.payTime);
                if (textView3 != null) {
                    i10 = R.id.payType;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.payType);
                    if (textView4 != null) {
                        return new uq0((LinearLayout) rootView, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static uq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45818b;
    }

    @NonNull
    public static uq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papay_history_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
