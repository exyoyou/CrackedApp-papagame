package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class sf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44774d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44775e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f44776f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44777g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44778h;

    private sf(@NonNull RelativeLayout rootView, @NonNull TextView accountId, @NonNull SimpleDraweeView avatar, @NonNull TextView button, @NonNull ImageView close, @NonNull TextView name, @NonNull TextView tv1) {
        this.f44772b = rootView;
        this.f44773c = accountId;
        this.f44774d = avatar;
        this.f44775e = button;
        this.f44776f = close;
        this.f44777g = name;
        this.f44778h = tv1;
    }

    @NonNull
    public static sf bind(@NonNull View rootView) {
        int i10 = R.id.accountId;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.accountId);
        if (textView != null) {
            i10 = R.id.avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
            if (simpleDraweeView != null) {
                i10 = R.id.button;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.button);
                if (textView2 != null) {
                    i10 = R.id.close;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
                    if (imageView != null) {
                        i10 = R.id.name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                        if (textView3 != null) {
                            i10 = R.id.tv1;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv1);
                            if (textView4 != null) {
                                return new sf((RelativeLayout) rootView, textView, simpleDraweeView, textView2, imageView, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44772b;
    }

    @NonNull
    public static sf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_friend_add, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
