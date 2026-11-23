package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class cp implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37029c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37030d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37031e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37032f;

    private cp(@NonNull LinearLayout rootView, @NonNull RelativeLayout rlContent, @NonNull SimpleDraweeView smvIcon, @NonNull TextView tvSize, @NonNull TextView tvTitle) {
        this.f37028b = rootView;
        this.f37029c = rlContent;
        this.f37030d = smvIcon;
        this.f37031e = tvSize;
        this.f37032f = tvTitle;
    }

    @NonNull
    public static cp bind(@NonNull View rootView) {
        int i10 = R.id.rl_content;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_content);
        if (relativeLayout != null) {
            i10 = R.id.smv_icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.smv_icon);
            if (simpleDraweeView != null) {
                i10 = R.id.tv_size;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_size);
                if (textView != null) {
                    i10 = R.id.tv_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                    if (textView2 != null) {
                        return new cp((LinearLayout) rootView, relativeLayout, simpleDraweeView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cp inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37028b;
    }

    @NonNull
    public static cp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_build_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
