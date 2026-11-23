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
public final class d6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37288c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37289d;

    private d6(@NonNull LinearLayout rootView, @NonNull ImageView ivDialogIcon, @NonNull TextView tvDialogTitle) {
        this.f37287b = rootView;
        this.f37288c = ivDialogIcon;
        this.f37289d = tvDialogTitle;
    }

    @NonNull
    public static d6 bind(@NonNull View rootView) {
        int i10 = R.id.iv_dialog_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_dialog_icon);
        if (imageView != null) {
            i10 = R.id.tv_dialog_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_dialog_title);
            if (textView != null) {
                return new d6((LinearLayout) rootView, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static d6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37287b;
    }

    @NonNull
    public static d6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.alert_head_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
