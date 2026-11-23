package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.HorizontalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class mc0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41838e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ProgressBar f41839f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final HorizontalRecyclerView f41840g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final HorizontalRecyclerView f41841h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41842i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41843j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41844k;

    private mc0(@NonNull ConstraintLayout rootView, @NonNull LinearLayout llLocked, @NonNull LinearLayout llProgress, @NonNull LinearLayout llUnlocked, @NonNull ProgressBar progressBar, @NonNull HorizontalRecyclerView rvAchievementLocked, @NonNull HorizontalRecyclerView rvAchievementUnlocked, @NonNull TextView tvLockCount, @NonNull TextView tvProgress, @NonNull TextView tvUnlockCount) {
        this.f41835b = rootView;
        this.f41836c = llLocked;
        this.f41837d = llProgress;
        this.f41838e = llUnlocked;
        this.f41839f = progressBar;
        this.f41840g = rvAchievementLocked;
        this.f41841h = rvAchievementUnlocked;
        this.f41842i = tvLockCount;
        this.f41843j = tvProgress;
        this.f41844k = tvUnlockCount;
    }

    @NonNull
    public static mc0 bind(@NonNull View rootView) {
        int i10 = R.id.llLocked;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llLocked);
        if (linearLayout != null) {
            i10 = R.id.llProgress;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llProgress);
            if (linearLayout2 != null) {
                i10 = R.id.llUnlocked;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llUnlocked);
                if (linearLayout3 != null) {
                    i10 = R.id.progressBar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                    if (progressBar != null) {
                        i10 = R.id.rvAchievementLocked;
                        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvAchievementLocked);
                        if (horizontalRecyclerView != null) {
                            i10 = R.id.rvAchievementUnlocked;
                            HorizontalRecyclerView horizontalRecyclerView2 = (HorizontalRecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvAchievementUnlocked);
                            if (horizontalRecyclerView2 != null) {
                                i10 = R.id.tvLockCount;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvLockCount);
                                if (textView != null) {
                                    i10 = R.id.tvProgress;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvProgress);
                                    if (textView2 != null) {
                                        i10 = R.id.tvUnlockCount;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvUnlockCount);
                                        if (textView3 != null) {
                                            return new mc0((ConstraintLayout) rootView, linearLayout, linearLayout2, linearLayout3, progressBar, horizontalRecyclerView, horizontalRecyclerView2, textView, textView2, textView3);
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
    public static mc0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f41835b;
    }

    @NonNull
    public static mc0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_simulator_launch_achievement_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
