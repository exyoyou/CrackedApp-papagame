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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class in implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f39883e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39884f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f39885g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f39886h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f39887i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ProgressBar f39888j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f39889k;

    private in(@NonNull ConstraintLayout rootView, @NonNull TextView desc, @NonNull SimpleDraweeView icon, @NonNull ImageView imageView61, @NonNull TextView install, @NonNull View line, @NonNull View more, @NonNull TextView name, @NonNull ProgressBar progressBar, @NonNull TextView speedUp) {
        this.f39880b = rootView;
        this.f39881c = desc;
        this.f39882d = icon;
        this.f39883e = imageView61;
        this.f39884f = install;
        this.f39885g = line;
        this.f39886h = more;
        this.f39887i = name;
        this.f39888j = progressBar;
        this.f39889k = speedUp;
    }

    @NonNull
    public static in bind(@NonNull View rootView) {
        int i10 = R.id.desc;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
        if (textView != null) {
            i10 = R.id.icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
            if (simpleDraweeView != null) {
                i10 = R.id.imageView61;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView61);
                if (imageView != null) {
                    i10 = R.id.install;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.install);
                    if (textView2 != null) {
                        i10 = R.id.line;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.more;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.more);
                            if (viewFindChildViewById2 != null) {
                                i10 = R.id.name;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                if (textView3 != null) {
                                    i10 = R.id.progressBar;
                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                    if (progressBar != null) {
                                        i10 = R.id.speedUp;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.speedUp);
                                        if (textView4 != null) {
                                            return new in((ConstraintLayout) rootView, textView, simpleDraweeView, imageView, textView2, viewFindChildViewById, viewFindChildViewById2, textView3, progressBar, textView4);
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
    public static in inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39880b;
    }

    @NonNull
    public static in inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_my_game_item_plug, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
