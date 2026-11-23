package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class nm implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f42411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42412c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f42413d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f42415f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42416g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42417h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RecyclerView f42418i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42419j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f42420k;

    private nm(@NonNull ConstraintLayout rootView, @NonNull LinearLayout backApp, @NonNull ConstraintLayout clMenu, @NonNull FrameLayout close, @NonNull ImageView ivPlus, @NonNull FrameLayout main, @NonNull LinearLayout relaunch, @NonNull RecyclerView rvMenu, @NonNull LinearLayout timerContainer, @NonNull TextView tvRemainTime) {
        this.f42411b = rootView;
        this.f42412c = backApp;
        this.f42413d = clMenu;
        this.f42414e = close;
        this.f42415f = ivPlus;
        this.f42416g = main;
        this.f42417h = relaunch;
        this.f42418i = rvMenu;
        this.f42419j = timerContainer;
        this.f42420k = tvRemainTime;
    }

    @NonNull
    public static nm bind(@NonNull View rootView) {
        int i10 = R.id.back_app;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.back_app);
        if (linearLayout != null) {
            i10 = R.id.cl_menu;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_menu);
            if (constraintLayout != null) {
                i10 = R.id.close;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.close);
                if (frameLayout != null) {
                    i10 = R.id.iv_plus;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_plus);
                    if (imageView != null) {
                        i10 = R.id.main;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                        if (frameLayout2 != null) {
                            i10 = R.id.relaunch;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.relaunch);
                            if (linearLayout2 != null) {
                                i10 = R.id.rvMenu;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvMenu);
                                if (recyclerView != null) {
                                    i10 = R.id.timer_container;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.timer_container);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.tv_remain_time;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_remain_time);
                                        if (textView != null) {
                                            return new nm((ConstraintLayout) rootView, linearLayout, constraintLayout, frameLayout, imageView, frameLayout2, linearLayout2, recyclerView, linearLayout3, textView);
                                        }
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
    public static nm inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f42411b;
    }

    @NonNull
    public static nm inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_hm_menu, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
