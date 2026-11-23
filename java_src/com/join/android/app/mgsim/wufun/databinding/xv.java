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
public final class xv implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f47447c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47450f;

    private xv(@NonNull LinearLayout rootView, @NonNull TextView message, @NonNull TextView time, @NonNull SimpleDraweeView userIcon, @NonNull TextView userName) {
        this.f47446b = rootView;
        this.f47447c = message;
        this.f47448d = time;
        this.f47449e = userIcon;
        this.f47450f = userName;
    }

    @NonNull
    public static xv bind(@NonNull View rootView) {
        int i10 = R.id.message;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
        if (textView != null) {
            i10 = R.id.time;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time);
            if (textView2 != null) {
                i10 = R.id.userIcon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.userIcon);
                if (simpleDraweeView != null) {
                    i10 = R.id.userName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                    if (textView3 != null) {
                        return new xv((LinearLayout) rootView, textView, textView2, simpleDraweeView, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static xv inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47446b;
    }

    @NonNull
    public static xv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.information_comment_item__layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
