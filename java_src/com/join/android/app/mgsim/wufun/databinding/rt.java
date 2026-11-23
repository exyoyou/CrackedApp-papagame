package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class rt implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44483d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44484e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44485f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44486g;

    private rt(@NonNull LinearLayout rootView, @NonNull TextView folloNum, @NonNull LinearLayout main, @NonNull SimpleDraweeView userIcon, @NonNull TextView userName, @NonNull TextView userTag) {
        this.f44481b = rootView;
        this.f44482c = folloNum;
        this.f44483d = main;
        this.f44484e = userIcon;
        this.f44485f = userName;
        this.f44486g = userTag;
    }

    @NonNull
    public static rt bind(@NonNull View rootView) {
        int i10 = R.id.folloNum;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.folloNum);
        if (textView != null) {
            LinearLayout linearLayout = (LinearLayout) rootView;
            i10 = R.id.userIcon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.userIcon);
            if (simpleDraweeView != null) {
                i10 = R.id.userName;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                if (textView2 != null) {
                    i10 = R.id.userTag;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userTag);
                    if (textView3 != null) {
                        return new rt(linearLayout, textView, linearLayout, simpleDraweeView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rt inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44481b;
    }

    @NonNull
    public static rt inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamelist_hongrentuijian_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
