package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class gw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RecyclerView f39028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39029d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f39030e;

    private gw(@NonNull LinearLayout rootView, @NonNull RecyclerView appList, @NonNull TextView describ, @NonNull ImageView ivClose) {
        this.f39027b = rootView;
        this.f39028c = appList;
        this.f39029d = describ;
        this.f39030e = ivClose;
    }

    @NonNull
    public static gw bind(@NonNull View rootView) {
        int i10 = R.id.appList;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.appList);
        if (recyclerView != null) {
            i10 = R.id.describ;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.describ);
            if (textView != null) {
                i10 = R.id.iv_close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                if (imageView != null) {
                    return new gw((LinearLayout) rootView, recyclerView, textView, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39027b;
    }

    @NonNull
    public static gw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.install_notinstall_app_dialog_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
