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
public final class dc0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37364e;

    private dc0(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView ivAchievement, @NonNull TextView tvAchievement, @NonNull TextView tvUnlockPercent) {
        this.f37361b = rootView;
        this.f37362c = ivAchievement;
        this.f37363d = tvAchievement;
        this.f37364e = tvUnlockPercent;
    }

    @NonNull
    public static dc0 bind(@NonNull View rootView) {
        int i10 = R.id.ivAchievement;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivAchievement);
        if (simpleDraweeView != null) {
            i10 = R.id.tvAchievement;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvAchievement);
            if (textView != null) {
                i10 = R.id.tvUnlockPercent;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvUnlockPercent);
                if (textView2 != null) {
                    return new dc0((LinearLayout) rootView, simpleDraweeView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static dc0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37361b;
    }

    @NonNull
    public static dc0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_simulator_achievement_list_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
