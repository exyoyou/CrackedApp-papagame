package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class fm0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38456f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38457g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f38458h;

    private fm0(@NonNull RelativeLayout rootView, @NonNull ImageView icon, @NonNull SimpleDraweeView iconGif, @NonNull LinearLayout llMain, @NonNull RelativeLayout main, @NonNull TextView name, @NonNull TextView tvRedPoint) {
        this.f38452b = rootView;
        this.f38453c = icon;
        this.f38454d = iconGif;
        this.f38455e = llMain;
        this.f38456f = main;
        this.f38457g = name;
        this.f38458h = tvRedPoint;
    }

    @NonNull
    public static fm0 bind(@NonNull View rootView) {
        int i10 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icon);
        if (imageView != null) {
            i10 = R.id.icon_gif;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon_gif);
            if (simpleDraweeView != null) {
                i10 = R.id.llMain;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llMain);
                if (linearLayout != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) rootView;
                    i10 = R.id.name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                    if (textView != null) {
                        i10 = R.id.tvRedPoint;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvRedPoint);
                        if (textView2 != null) {
                            return new fm0(relativeLayout, imageView, simpleDraweeView, linearLayout, relativeLayout, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fm0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38452b;
    }

    @NonNull
    public static fm0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mod_tab_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
