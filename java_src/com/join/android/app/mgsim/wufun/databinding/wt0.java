package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wt0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46965c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46966d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f46967e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46968f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46969g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46970h;

    private wt0(@NonNull RelativeLayout rootView, @NonNull TextView messageHeader, @NonNull LinearLayout messageLayout, @NonNull ImageView reloadingHeader, @NonNull LinearLayout searchHeaderLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f46964b = rootView;
        this.f46965c = messageHeader;
        this.f46966d = messageLayout;
        this.f46967e = reloadingHeader;
        this.f46968f = searchHeaderLayout;
        this.f46969g = textView;
        this.f46970h = textView2;
    }

    @NonNull
    public static wt0 bind(@NonNull View rootView) {
        int i10 = R.id.messageHeader;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.messageHeader);
        if (textView != null) {
            i10 = R.id.messageLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.messageLayout);
            if (linearLayout != null) {
                i10 = R.id.reloadingHeader;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.reloadingHeader);
                if (imageView != null) {
                    i10 = R.id.searchHeaderLayout;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.searchHeaderLayout);
                    if (linearLayout2 != null) {
                        i10 = R.id.textView;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                        if (textView2 != null) {
                            i10 = R.id.textView2;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                            if (textView3 != null) {
                                return new wt0((RelativeLayout) rootView, textView, linearLayout, imageView, linearLayout2, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wt0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46964b;
    }

    @NonNull
    public static wt0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_failed_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
