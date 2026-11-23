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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class wk implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FlowLayout f46838c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46839d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46841f;

    private wk(@NonNull LinearLayout rootView, @NonNull FlowLayout classifyGame, @NonNull LinearLayout fragmentClassify, @NonNull LinearLayout gameClassify, @NonNull TextView textView28) {
        this.f46837b = rootView;
        this.f46838c = classifyGame;
        this.f46839d = fragmentClassify;
        this.f46840e = gameClassify;
        this.f46841f = textView28;
    }

    @NonNull
    public static wk bind(@NonNull View rootView) {
        int i10 = R.id.classify_game;
        FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(rootView, R.id.classify_game);
        if (flowLayout != null) {
            LinearLayout linearLayout = (LinearLayout) rootView;
            i10 = R.id.game_classify;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.game_classify);
            if (linearLayout2 != null) {
                i10 = R.id.textView28;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView28);
                if (textView != null) {
                    return new wk(linearLayout, flowLayout, linearLayout, linearLayout2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wk inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46837b;
    }

    @NonNull
    public static wk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_classify, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
