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

/* JADX INFO: loaded from: classes4.dex */
public final class cn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37012c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37013d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37014e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37015f;

    private cn0(@NonNull LinearLayout rootView, @NonNull LinearLayout sectionFollow, @NonNull TextView textView, @NonNull TextView titleName, @NonNull TextView titleline) {
        this.f37011b = rootView;
        this.f37012c = sectionFollow;
        this.f37013d = textView;
        this.f37014e = titleName;
        this.f37015f = titleline;
    }

    @NonNull
    public static cn0 bind(@NonNull View rootView) {
        int i10 = R.id.section_follow;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.section_follow);
        if (linearLayout != null) {
            i10 = R.id.textView;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
            if (textView != null) {
                i10 = R.id.titleName;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleName);
                if (textView2 != null) {
                    i10 = R.id.titleline;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleline);
                    if (textView3 != null) {
                        return new cn0((LinearLayout) rootView, linearLayout, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37011b;
    }

    @NonNull
    public static cn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.must_play_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
