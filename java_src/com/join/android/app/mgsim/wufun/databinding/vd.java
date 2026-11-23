package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class vd implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46203c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f46204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46205e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46206f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46207g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46208h;

    private vd(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView ivAchievement, @NonNull ImageView ivClose, @NonNull TextView tvAchievement, @NonNull TextView tvRate, @NonNull TextView tvTitle, @NonNull TextView tvToAll) {
        this.f46202b = rootView;
        this.f46203c = ivAchievement;
        this.f46204d = ivClose;
        this.f46205e = tvAchievement;
        this.f46206f = tvRate;
        this.f46207g = tvTitle;
        this.f46208h = tvToAll;
    }

    @NonNull
    public static vd bind(@NonNull View rootView) {
        int i10 = R.id.ivAchievement;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivAchievement);
        if (simpleDraweeView != null) {
            i10 = R.id.ivClose;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivClose);
            if (imageView != null) {
                i10 = R.id.tvAchievement;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvAchievement);
                if (textView != null) {
                    i10 = R.id.tvRate;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvRate);
                    if (textView2 != null) {
                        i10 = R.id.tvTitle;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
                        if (textView3 != null) {
                            i10 = R.id.tvToAll;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvToAll);
                            if (textView4 != null) {
                                return new vd((ConstraintLayout) rootView, simpleDraweeView, imageView, textView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vd inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46202b;
    }

    @NonNull
    public static vd inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_achievement_done, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
