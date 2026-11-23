package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.WFTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class wf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f46772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f46773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46774d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46775e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46776f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final WFTextView f46777g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46778h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46779i;

    private wf(@NonNull FrameLayout rootView, @NonNull ImageView ivClose, @NonNull ConstraintLayout layoutCode, @NonNull TextView tvCode, @NonNull TextView tvCopy, @NonNull WFTextView tvEnterGame, @NonNull TextView tvExpire, @NonNull TextView tvTitle) {
        this.f46772b = rootView;
        this.f46773c = ivClose;
        this.f46774d = layoutCode;
        this.f46775e = tvCode;
        this.f46776f = tvCopy;
        this.f46777g = tvEnterGame;
        this.f46778h = tvExpire;
        this.f46779i = tvTitle;
    }

    @NonNull
    public static wf bind(@NonNull View rootView) {
        int i10 = R.id.ivClose;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivClose);
        if (imageView != null) {
            i10 = R.id.layoutCode;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.layoutCode);
            if (constraintLayout != null) {
                i10 = R.id.tvCode;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvCode);
                if (textView != null) {
                    i10 = R.id.tvCopy;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvCopy);
                    if (textView2 != null) {
                        i10 = R.id.tvEnterGame;
                        WFTextView wFTextView = (WFTextView) ViewBindings.findChildViewById(rootView, R.id.tvEnterGame);
                        if (wFTextView != null) {
                            i10 = R.id.tvExpire;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvExpire);
                            if (textView3 != null) {
                                i10 = R.id.tvTitle;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
                                if (textView4 != null) {
                                    return new wf((FrameLayout) rootView, imageView, constraintLayout, textView, textView2, wFTextView, textView3, textView4);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f46772b;
    }

    @NonNull
    public static wf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_game_detail_gift_receive_success, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
