package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class f40 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f38255c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Group f38256d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38257e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f38258f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f38259g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f38260h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f38261i;

    private f40(@NonNull ConstraintLayout rootView, @NonNull View divider, @NonNull Group groupChecked, @NonNull ImageView ivChecked, @NonNull ImageView ivIcon, @NonNull ImageView ivLoading, @NonNull TextView tvCheckedInfo, @NonNull TextView tvTitle) {
        this.f38254b = rootView;
        this.f38255c = divider;
        this.f38256d = groupChecked;
        this.f38257e = ivChecked;
        this.f38258f = ivIcon;
        this.f38259g = ivLoading;
        this.f38260h = tvCheckedInfo;
        this.f38261i = tvTitle;
    }

    @NonNull
    public static f40 bind(@NonNull View rootView) {
        int i10 = R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
        if (viewFindChildViewById != null) {
            i10 = R.id.groupChecked;
            Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.groupChecked);
            if (group != null) {
                i10 = R.id.ivChecked;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivChecked);
                if (imageView != null) {
                    i10 = R.id.ivIcon;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivIcon);
                    if (imageView2 != null) {
                        i10 = R.id.ivLoading;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivLoading);
                        if (imageView3 != null) {
                            i10 = R.id.tvCheckedInfo;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvCheckedInfo);
                            if (textView != null) {
                                i10 = R.id.tvTitle;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
                                if (textView2 != null) {
                                    return new f40((ConstraintLayout) rootView, viewFindChildViewById, group, imageView, imageView2, imageView3, textView, textView2);
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
    public static f40 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38254b;
    }

    @NonNull
    public static f40 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_online_check_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
