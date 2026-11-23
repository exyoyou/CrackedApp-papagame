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
public final class o30 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42632e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42633f;

    private o30(@NonNull LinearLayout rootView, @NonNull LinearLayout llRoot, @NonNull TextView tvTime, @NonNull TextView tvTitle, @NonNull TextView tvType) {
        this.f42629b = rootView;
        this.f42630c = llRoot;
        this.f42631d = tvTime;
        this.f42632e = tvTitle;
        this.f42633f = tvType;
    }

    @NonNull
    public static o30 bind(@NonNull View rootView) {
        int i10 = R.id.ll_root;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_root);
        if (linearLayout != null) {
            i10 = R.id.tv_time;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_time);
            if (textView != null) {
                i10 = R.id.tv_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                if (textView2 != null) {
                    i10 = R.id.tv_type;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_type);
                    if (textView3 != null) {
                        return new o30((LinearLayout) rootView, linearLayout, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static o30 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42629b;
    }

    @NonNull
    public static o30 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_introduction_progress, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
