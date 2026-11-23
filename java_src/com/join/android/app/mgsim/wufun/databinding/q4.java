package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class q4 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43690d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43691e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43692f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f43693g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f43694h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f43695i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ProgressBar f43696j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43697k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RecyclerView f43698l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f43699m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f43700n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f43701o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f43702p;

    private q4(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView adIcon, @NonNull TextView adTitle, @NonNull ConstraintLayout constraintLayout7, @NonNull TextView exit, @NonNull ImageView info, @NonNull ImageView levelIcon, @NonNull TextView levelName, @NonNull ProgressBar progressBar, @NonNull TextView progressTv, @NonNull RecyclerView recyclerView, @NonNull TextView resume, @NonNull TextView save, @NonNull TextView title, @NonNull TextView tvTips) {
        this.f43688b = rootView;
        this.f43689c = adIcon;
        this.f43690d = adTitle;
        this.f43691e = constraintLayout7;
        this.f43692f = exit;
        this.f43693g = info;
        this.f43694h = levelIcon;
        this.f43695i = levelName;
        this.f43696j = progressBar;
        this.f43697k = progressTv;
        this.f43698l = recyclerView;
        this.f43699m = resume;
        this.f43700n = save;
        this.f43701o = title;
        this.f43702p = tvTips;
    }

    @NonNull
    public static q4 bind(@NonNull View rootView) {
        int i10 = R.id.adIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.adIcon);
        if (simpleDraweeView != null) {
            i10 = R.id.adTitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.adTitle);
            if (textView != null) {
                i10 = R.id.constraintLayout7;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.constraintLayout7);
                if (constraintLayout != null) {
                    i10 = R.id.exit;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.exit);
                    if (textView2 != null) {
                        i10 = R.id.info;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.info);
                        if (imageView != null) {
                            i10 = R.id.levelIcon;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.levelIcon);
                            if (imageView2 != null) {
                                i10 = R.id.levelName;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.levelName);
                                if (textView3 != null) {
                                    i10 = R.id.progressBar;
                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                    if (progressBar != null) {
                                        i10 = R.id.progressTv;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.progressTv);
                                        if (textView4 != null) {
                                            i10 = R.id.recyclerView;
                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
                                            if (recyclerView != null) {
                                                i10 = R.id.resume;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.resume);
                                                if (textView5 != null) {
                                                    i10 = R.id.save;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.save);
                                                    if (textView6 != null) {
                                                        i10 = R.id.title;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                        if (textView7 != null) {
                                                            i10 = R.id.tvTips;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTips);
                                                            if (textView8 != null) {
                                                                return new q4((ConstraintLayout) rootView, simpleDraweeView, textView, constraintLayout, textView2, imageView, imageView2, textView3, progressBar, textView4, recyclerView, textView5, textView6, textView7, textView8);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static q4 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43688b;
    }

    @NonNull
    public static q4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_simulator_exit_play, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
