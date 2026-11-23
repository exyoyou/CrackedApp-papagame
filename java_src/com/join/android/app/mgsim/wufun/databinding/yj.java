package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class yj implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f47768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47769d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47770e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47771f;

    private yj(@NonNull RelativeLayout rootView, @NonNull TextView fightSubTitle, @NonNull TextView fightTitle, @NonNull LinearLayout linearLayoutMFight, @NonNull TextView textLine) {
        this.f47767b = rootView;
        this.f47768c = fightSubTitle;
        this.f47769d = fightTitle;
        this.f47770e = linearLayoutMFight;
        this.f47771f = textLine;
    }

    @NonNull
    public static yj bind(@NonNull View rootView) {
        int i10 = R.id.fightSubTitle;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.fightSubTitle);
        if (textView != null) {
            i10 = R.id.fightTitle;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.fightTitle);
            if (textView2 != null) {
                i10 = R.id.linearLayoutMFight;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayoutMFight);
                if (linearLayout != null) {
                    i10 = R.id.textLine;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textLine);
                    if (textView3 != null) {
                        return new yj((RelativeLayout) rootView, textView, textView2, linearLayout, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static yj inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47767b;
    }

    @NonNull
    public static yj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fight_type_title, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
