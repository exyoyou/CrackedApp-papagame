package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wi0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46819d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46820e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46821f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f46822g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46823h;

    private wi0(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clRoot, @NonNull TextView count, @NonNull TextView desc, @NonNull SimpleDraweeView icon, @NonNull ImageView imageView49, @NonNull TextView name) {
        this.f46817b = rootView;
        this.f46818c = clRoot;
        this.f46819d = count;
        this.f46820e = desc;
        this.f46821f = icon;
        this.f46822g = imageView49;
        this.f46823h = name;
    }

    @NonNull
    public static wi0 bind(@NonNull View rootView) {
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
        int i10 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.count);
        if (textView != null) {
            i10 = R.id.desc;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
            if (textView2 != null) {
                i10 = R.id.icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                if (simpleDraweeView != null) {
                    i10 = R.id.imageView49;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView49);
                    if (imageView != null) {
                        i10 = R.id.name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                        if (textView3 != null) {
                            return new wi0(constraintLayout, constraintLayout, textView, textView2, simpleDraweeView, imageView, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wi0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46817b;
    }

    @NonNull
    public static wi0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_search_item_post_top_area, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
