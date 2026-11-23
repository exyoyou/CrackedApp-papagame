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
public final class hp implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39449d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39451f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f39452g;

    private hp(@NonNull LinearLayout rootView, @NonNull TextView bottom, @NonNull LinearLayout llSub, @NonNull SimpleDraweeView smvSub, @NonNull TextView tvSubSub, @NonNull TextView tvSubTitle) {
        this.f39447b = rootView;
        this.f39448c = bottom;
        this.f39449d = llSub;
        this.f39450e = smvSub;
        this.f39451f = tvSubSub;
        this.f39452g = tvSubTitle;
    }

    @NonNull
    public static hp bind(@NonNull View rootView) {
        int i10 = R.id.bottom;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.bottom);
        if (textView != null) {
            i10 = R.id.ll_sub;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_sub);
            if (linearLayout != null) {
                i10 = R.id.smv_sub;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.smv_sub);
                if (simpleDraweeView != null) {
                    i10 = R.id.tv_sub_sub;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_sub_sub);
                    if (textView2 != null) {
                        i10 = R.id.tv_sub_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_sub_title);
                        if (textView3 != null) {
                            return new hp((LinearLayout) rootView, textView, linearLayout, simpleDraweeView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hp inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39447b;
    }

    @NonNull
    public static hp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_detail_foot, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
