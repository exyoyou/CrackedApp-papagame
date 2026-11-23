package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class xu0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47441c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47442d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47444f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47445g;

    private xu0(@NonNull LinearLayout rootView, @NonNull ImageView ivHorn, @NonNull LinearLayout llShowTitle, @NonNull TextView tvKnow, @NonNull TextView tvShowTime, @NonNull TextView tvShowTitle) {
        this.f47440b = rootView;
        this.f47441c = ivHorn;
        this.f47442d = llShowTitle;
        this.f47443e = tvKnow;
        this.f47444f = tvShowTime;
        this.f47445g = tvShowTitle;
    }

    @NonNull
    public static xu0 bind(@NonNull View rootView) {
        int i10 = R.id.iv_horn;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_horn);
        if (imageView != null) {
            i10 = R.id.ll_show_title;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_show_title);
            if (linearLayout != null) {
                i10 = R.id.tv_know;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_know);
                if (textView != null) {
                    i10 = R.id.tv_show_time;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_show_time);
                    if (textView2 != null) {
                        i10 = R.id.tv_show_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_show_title);
                        if (textView3 != null) {
                            return new xu0((LinearLayout) rootView, imageView, linearLayout, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static xu0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47440b;
    }

    @NonNull
    public static xu0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.show_popu, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
