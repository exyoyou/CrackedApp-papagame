package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class sc0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f44725c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Group f44726d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44727e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f44728f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44729g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RecyclerView f44730h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f44731i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f44732j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f44733k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f44734l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f44735m;

    private sc0(@NonNull ConstraintLayout rootView, @NonNull View divider, @NonNull Group groupAchievement, @NonNull SimpleDraweeView ivAvatar, @NonNull ImageView ivLike, @NonNull LinearLayout llLike, @NonNull RecyclerView rvAchievement, @NonNull View treeLine, @NonNull TextView tvAchievementTitle, @NonNull TextView tvDesc, @NonNull TextView tvLikeCount, @NonNull TextView tvName) {
        this.f44724b = rootView;
        this.f44725c = divider;
        this.f44726d = groupAchievement;
        this.f44727e = ivAvatar;
        this.f44728f = ivLike;
        this.f44729g = llLike;
        this.f44730h = rvAchievement;
        this.f44731i = treeLine;
        this.f44732j = tvAchievementTitle;
        this.f44733k = tvDesc;
        this.f44734l = tvLikeCount;
        this.f44735m = tvName;
    }

    @NonNull
    public static sc0 bind(@NonNull View rootView) {
        int i10 = R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
        if (viewFindChildViewById != null) {
            i10 = R.id.groupAchievement;
            Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.groupAchievement);
            if (group != null) {
                i10 = R.id.ivAvatar;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivAvatar);
                if (simpleDraweeView != null) {
                    i10 = R.id.ivLike;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivLike);
                    if (imageView != null) {
                        i10 = R.id.llLike;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llLike);
                        if (linearLayout != null) {
                            i10 = R.id.rvAchievement;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvAchievement);
                            if (recyclerView != null) {
                                i10 = R.id.treeLine;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.treeLine);
                                if (viewFindChildViewById2 != null) {
                                    i10 = R.id.tvAchievementTitle;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvAchievementTitle);
                                    if (textView != null) {
                                        i10 = R.id.tvDesc;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDesc);
                                        if (textView2 != null) {
                                            i10 = R.id.tvLikeCount;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvLikeCount);
                                            if (textView3 != null) {
                                                i10 = R.id.tvName;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvName);
                                                if (textView4 != null) {
                                                    return new sc0((ConstraintLayout) rootView, viewFindChildViewById, group, simpleDraweeView, imageView, linearLayout, recyclerView, viewFindChildViewById2, textView, textView2, textView3, textView4);
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
    public static sc0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44724b;
    }

    @NonNull
    public static sc0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_simulator_launch_moment_item_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
