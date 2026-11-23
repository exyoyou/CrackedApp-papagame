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
public final class od0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42811d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42813f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42814g;

    private od0(@NonNull LinearLayout rootView, @NonNull LinearLayout llUser, @NonNull TextView tvLoad, @NonNull TextView tvSize, @NonNull TextView tvUsername, @NonNull SimpleDraweeView userIcon) {
        this.f42809b = rootView;
        this.f42810c = llUser;
        this.f42811d = tvLoad;
        this.f42812e = tvSize;
        this.f42813f = tvUsername;
        this.f42814g = userIcon;
    }

    @NonNull
    public static od0 bind(@NonNull View rootView) {
        int i10 = R.id.ll_user;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_user);
        if (linearLayout != null) {
            i10 = R.id.tv_load;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_load);
            if (textView != null) {
                i10 = R.id.tv_size;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_size);
                if (textView2 != null) {
                    i10 = R.id.tv_username;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_username);
                    if (textView3 != null) {
                        i10 = R.id.user_icon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.user_icon);
                        if (simpleDraweeView != null) {
                            return new od0((LinearLayout) rootView, linearLayout, textView, textView2, textView3, simpleDraweeView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static od0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42809b;
    }

    @NonNull
    public static od0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.list_item_user, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
