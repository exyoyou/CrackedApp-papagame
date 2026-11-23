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
public final class ey0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38172e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38173f;

    private ey0(@NonNull LinearLayout rootView, @NonNull TextView closeNotice, @NonNull SimpleDraweeView image, @NonNull TextView message, @NonNull LinearLayout noticeLayout) {
        this.f38169b = rootView;
        this.f38170c = closeNotice;
        this.f38171d = image;
        this.f38172e = message;
        this.f38173f = noticeLayout;
    }

    @NonNull
    public static ey0 bind(@NonNull View rootView) {
        int i10 = R.id.closeNotice;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.closeNotice);
        if (textView != null) {
            i10 = R.id.image;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.image);
            if (simpleDraweeView != null) {
                i10 = R.id.message;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
                if (textView2 != null) {
                    LinearLayout linearLayout = (LinearLayout) rootView;
                    return new ey0(linearLayout, textView, simpleDraweeView, textView2, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ey0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38169b;
    }

    @NonNull
    public static ey0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.vip_pop_layout_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
