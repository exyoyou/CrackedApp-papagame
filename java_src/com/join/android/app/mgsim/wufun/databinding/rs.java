package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class rs implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f44474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f44475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f44476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44477g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44478h;

    private rs(@NonNull LinearLayout rootView, @NonNull LinearLayout goCommit, @NonNull View layoutTop, @NonNull View layoutTop2, @NonNull ImageView progressBar2, @NonNull LinearLayout starlayout, @NonNull TextView textMessage) {
        this.f44472b = rootView;
        this.f44473c = goCommit;
        this.f44474d = layoutTop;
        this.f44475e = layoutTop2;
        this.f44476f = progressBar2;
        this.f44477g = starlayout;
        this.f44478h = textMessage;
    }

    @NonNull
    public static rs bind(@NonNull View rootView) {
        int i10 = R.id.goCommit;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.goCommit);
        if (linearLayout != null) {
            i10 = R.id.layoutTop;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layoutTop);
            if (viewFindChildViewById != null) {
                i10 = R.id.layoutTop2;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.layoutTop2);
                if (viewFindChildViewById2 != null) {
                    i10 = R.id.progressBar2;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.progressBar2);
                    if (imageView != null) {
                        i10 = R.id.starlayout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.starlayout);
                        if (linearLayout2 != null) {
                            i10 = R.id.textMessage;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textMessage);
                            if (textView != null) {
                                return new rs((LinearLayout) rootView, linearLayout, viewFindChildViewById, viewFindChildViewById2, imageView, linearLayout2, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rs inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44472b;
    }

    @NonNull
    public static rs inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetial_comment_game_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
