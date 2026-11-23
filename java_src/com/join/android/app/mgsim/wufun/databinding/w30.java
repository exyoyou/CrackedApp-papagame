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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class w30 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46608c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46609d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f46610e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46611f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ProgressBar f46612g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46613h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46614i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f46615j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f46616k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f46617l;

    private w30(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView ivGameIcon, @NonNull SimpleDraweeView ivGamePoster, @NonNull ImageView ivIconTag, @NonNull LinearLayout llTag, @NonNull ProgressBar progress, @NonNull ConstraintLayout root, @NonNull TextView tvGameName, @NonNull TextView tvOption, @NonNull TextView tvTag, @NonNull TextView tvTags) {
        this.f46607b = rootView;
        this.f46608c = ivGameIcon;
        this.f46609d = ivGamePoster;
        this.f46610e = ivIconTag;
        this.f46611f = llTag;
        this.f46612g = progress;
        this.f46613h = root;
        this.f46614i = tvGameName;
        this.f46615j = tvOption;
        this.f46616k = tvTag;
        this.f46617l = tvTags;
    }

    @NonNull
    public static w30 bind(@NonNull View rootView) {
        int i10 = R.id.ivGameIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivGameIcon);
        if (simpleDraweeView != null) {
            i10 = R.id.ivGamePoster;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivGamePoster);
            if (simpleDraweeView2 != null) {
                i10 = R.id.ivIconTag;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivIconTag);
                if (imageView != null) {
                    i10 = R.id.llTag;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llTag);
                    if (linearLayout != null) {
                        i10 = R.id.progress;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progress);
                        if (progressBar != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
                            i10 = R.id.tvGameName;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                            if (textView != null) {
                                i10 = R.id.tvOption;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvOption);
                                if (textView2 != null) {
                                    i10 = R.id.tvTag;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTag);
                                    if (textView3 != null) {
                                        i10 = R.id.tvTags;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTags);
                                        if (textView4 != null) {
                                            return new w30(constraintLayout, simpleDraweeView, simpleDraweeView2, imageView, linearLayout, progressBar, constraintLayout, textView, textView2, textView3, textView4);
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
    public static w30 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46607b;
    }

    @NonNull
    public static w30 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_mod_game_recommend_expand, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
