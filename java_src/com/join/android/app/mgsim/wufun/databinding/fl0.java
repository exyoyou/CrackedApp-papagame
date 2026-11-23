package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class fl0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f38429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38431f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38432g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f38433h;

    private fl0(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView ivGameIcon, @NonNull ConstraintLayout root, @NonNull TextView tvDate, @NonNull TextView tvDesc, @NonNull TextView tvGameName, @NonNull View viewTag) {
        this.f38427b = rootView;
        this.f38428c = ivGameIcon;
        this.f38429d = root;
        this.f38430e = tvDate;
        this.f38431f = tvDesc;
        this.f38432g = tvGameName;
        this.f38433h = viewTag;
    }

    @NonNull
    public static fl0 bind(@NonNull View rootView) {
        int i10 = R.id.ivGameIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivGameIcon);
        if (simpleDraweeView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
            i10 = R.id.tvDate;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDate);
            if (textView != null) {
                i10 = R.id.tvDesc;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDesc);
                if (textView2 != null) {
                    i10 = R.id.tvGameName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                    if (textView3 != null) {
                        i10 = R.id.viewTag;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.viewTag);
                        if (viewFindChildViewById != null) {
                            return new fl0(constraintLayout, simpleDraweeView, constraintLayout, textView, textView2, textView3, viewFindChildViewById);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fl0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38427b;
    }

    @NonNull
    public static fl0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgpapa_home_game_news_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
