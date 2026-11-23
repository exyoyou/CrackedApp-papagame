package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ok implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42910d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42911e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42912f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f42913g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ProgressBar f42914h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f42915i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f42916j;

    private ok(@NonNull LinearLayout rootView, @NonNull LinearLayout forumSendFailedContainer, @NonNull TextView forumSendFailedTv, @NonNull LinearLayout forumSendLoadingContainer, @NonNull LinearLayout forumSendSuccessContainer, @NonNull TextView forumSendSuccessTv, @NonNull ProgressBar mgLoading, @NonNull ImageView mgLoadingFailed, @NonNull ImageView mgLoadingSuccess) {
        this.f42908b = rootView;
        this.f42909c = forumSendFailedContainer;
        this.f42910d = forumSendFailedTv;
        this.f42911e = forumSendLoadingContainer;
        this.f42912f = forumSendSuccessContainer;
        this.f42913g = forumSendSuccessTv;
        this.f42914h = mgLoading;
        this.f42915i = mgLoadingFailed;
        this.f42916j = mgLoadingSuccess;
    }

    @NonNull
    public static ok bind(@NonNull View rootView) {
        int i10 = R.id.forum_send_failed_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_send_failed_container);
        if (linearLayout != null) {
            i10 = R.id.forum_send_failed_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_send_failed_tv);
            if (textView != null) {
                i10 = R.id.forum_send_loading_container;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_send_loading_container);
                if (linearLayout2 != null) {
                    i10 = R.id.forum_send_success_container;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_send_success_container);
                    if (linearLayout3 != null) {
                        i10 = R.id.forum_send_success_tv;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_send_success_tv);
                        if (textView2 != null) {
                            i10 = R.id.mg_loading;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.mg_loading);
                            if (progressBar != null) {
                                i10 = R.id.mg_loading_failed;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.mg_loading_failed);
                                if (imageView != null) {
                                    i10 = R.id.mg_loading_success;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.mg_loading_success);
                                    if (imageView2 != null) {
                                        return new ok((LinearLayout) rootView, linearLayout, textView, linearLayout2, linearLayout3, textView2, progressBar, imageView, imageView2);
                                    }
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
    public static ok inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42908b;
    }

    @NonNull
    public static ok inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.forum_send_loading_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
