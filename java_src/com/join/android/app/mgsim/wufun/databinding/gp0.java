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
public final class gp0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38945e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38946f;

    private gp0(@NonNull LinearLayout rootView, @NonNull ImageView notifyIv, @NonNull TextView notifyProgressTv, @NonNull LinearLayout notifyRootLl, @NonNull TextView notifyTitleTv) {
        this.f38942b = rootView;
        this.f38943c = notifyIv;
        this.f38944d = notifyProgressTv;
        this.f38945e = notifyRootLl;
        this.f38946f = notifyTitleTv;
    }

    @NonNull
    public static gp0 bind(@NonNull View rootView) {
        int i10 = R.id.notifyIv;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.notifyIv);
        if (imageView != null) {
            i10 = R.id.notifyProgressTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.notifyProgressTv);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) rootView;
                i10 = R.id.notifyTitleTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.notifyTitleTv);
                if (textView2 != null) {
                    return new gp0(linearLayout, imageView, textView, linearLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gp0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38942b;
    }

    @NonNull
    public static gp0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.notification_jpush_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
