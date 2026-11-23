package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class w20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f46585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f46587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46588e;

    private w20(@NonNull FrameLayout rootView, @NonNull SimpleDraweeView ivIcon, @NonNull View selectMask, @NonNull TextView tvGameName) {
        this.f46585b = rootView;
        this.f46586c = ivIcon;
        this.f46587d = selectMask;
        this.f46588e = tvGameName;
    }

    @NonNull
    public static w20 bind(@NonNull View rootView) {
        int i10 = R.id.ivIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivIcon);
        if (simpleDraweeView != null) {
            i10 = R.id.selectMask;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.selectMask);
            if (viewFindChildViewById != null) {
                i10 = R.id.tvGameName;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                if (textView != null) {
                    return new w20((FrameLayout) rootView, simpleDraweeView, viewFindChildViewById, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static w20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f46585b;
    }

    @NonNull
    public static w20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_header_discovery_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
