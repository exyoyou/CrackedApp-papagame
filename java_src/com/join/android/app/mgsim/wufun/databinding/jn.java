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
public final class jn implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f40311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40312f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f40313g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f40314h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40315i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ProgressBar f40316j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f40317k;

    private jn(@NonNull ConstraintLayout rootView, @NonNull TextView desc, @NonNull SimpleDraweeView icon, @NonNull ImageView imageView61, @NonNull TextView install, @NonNull View line, @NonNull View more, @NonNull TextView name, @NonNull ProgressBar progressBar, @NonNull TextView speedUp) {
        this.f40308b = rootView;
        this.f40309c = desc;
        this.f40310d = icon;
        this.f40311e = imageView61;
        this.f40312f = install;
        this.f40313g = line;
        this.f40314h = more;
        this.f40315i = name;
        this.f40316j = progressBar;
        this.f40317k = speedUp;
    }

    @NonNull
    public static jn bind(@NonNull View rootView) {
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
                                            return new jn((ConstraintLayout) rootView, textView, simpleDraweeView, imageView, textView2, viewFindChildViewById, viewFindChildViewById2, textView3, progressBar, textView4);
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
    public static jn inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40308b;
    }

    @NonNull
    public static jn inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_my_game_item_plug_v1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
