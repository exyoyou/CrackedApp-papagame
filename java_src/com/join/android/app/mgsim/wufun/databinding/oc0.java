package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class oc0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f42795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f42796c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42797d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f42798e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Group f42799f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f42800g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f42801h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f42802i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f42803j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f42804k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f42805l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f42806m;

    private oc0(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clContainer, @NonNull SimpleDraweeView ivAchievement, @NonNull ProgressBar progressBar, @NonNull Group progressGroup, @NonNull View treeBall, @NonNull View treeLineBottom, @NonNull View treeLineTop, @NonNull TextView tvAchievementDesc, @NonNull TextView tvAchievementName, @NonNull TextView tvAchievementUnlockPercent, @NonNull TextView tvProgress) {
        this.f42795b = rootView;
        this.f42796c = clContainer;
        this.f42797d = ivAchievement;
        this.f42798e = progressBar;
        this.f42799f = progressGroup;
        this.f42800g = treeBall;
        this.f42801h = treeLineBottom;
        this.f42802i = treeLineTop;
        this.f42803j = tvAchievementDesc;
        this.f42804k = tvAchievementName;
        this.f42805l = tvAchievementUnlockPercent;
        this.f42806m = tvProgress;
    }

    @NonNull
    public static oc0 bind(@NonNull View rootView) {
        int i10 = R.id.clContainer;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.clContainer);
        if (constraintLayout != null) {
            i10 = R.id.ivAchievement;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivAchievement);
            if (simpleDraweeView != null) {
                i10 = R.id.progressBar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                if (progressBar != null) {
                    i10 = R.id.progressGroup;
                    Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.progressGroup);
                    if (group != null) {
                        i10 = R.id.treeBall;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.treeBall);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.treeLineBottom;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.treeLineBottom);
                            if (viewFindChildViewById2 != null) {
                                i10 = R.id.treeLineTop;
                                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.treeLineTop);
                                if (viewFindChildViewById3 != null) {
                                    i10 = R.id.tvAchievementDesc;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvAchievementDesc);
                                    if (textView != null) {
                                        i10 = R.id.tvAchievementName;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvAchievementName);
                                        if (textView2 != null) {
                                            i10 = R.id.tvAchievementUnlockPercent;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvAchievementUnlockPercent);
                                            if (textView3 != null) {
                                                i10 = R.id.tvProgress;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvProgress);
                                                if (textView4 != null) {
                                                    return new oc0((ConstraintLayout) rootView, constraintLayout, simpleDraweeView, progressBar, group, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, textView, textView2, textView3, textView4);
                                                }
                                            }
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
    public static oc0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f42795b;
    }

    @NonNull
    public static oc0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_simulator_launch_achievement_item_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
