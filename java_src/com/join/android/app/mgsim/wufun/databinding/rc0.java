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
public final class rc0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44298c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44299d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44300e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44301f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44302g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44303h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f44304i;

    private rc0(@NonNull LinearLayout rootView, @NonNull TextView tvBattle, @NonNull TextView tvLastPlayTime, @NonNull TextView tvOnlinePlayerCount, @NonNull TextView tvTitle1, @NonNull TextView tvTitle2, @NonNull TextView tvTitle3, @NonNull TextView tvTotalPlayTime) {
        this.f44297b = rootView;
        this.f44298c = tvBattle;
        this.f44299d = tvLastPlayTime;
        this.f44300e = tvOnlinePlayerCount;
        this.f44301f = tvTitle1;
        this.f44302g = tvTitle2;
        this.f44303h = tvTitle3;
        this.f44304i = tvTotalPlayTime;
    }

    @NonNull
    public static rc0 bind(@NonNull View rootView) {
        int i10 = R.id.tvBattle;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvBattle);
        if (textView != null) {
            i10 = R.id.tvLastPlayTime;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvLastPlayTime);
            if (textView2 != null) {
                i10 = R.id.tvOnlinePlayerCount;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvOnlinePlayerCount);
                if (textView3 != null) {
                    i10 = R.id.tvTitle1;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle1);
                    if (textView4 != null) {
                        i10 = R.id.tvTitle2;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle2);
                        if (textView5 != null) {
                            i10 = R.id.tvTitle3;
                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle3);
                            if (textView6 != null) {
                                i10 = R.id.tvTotalPlayTime;
                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTotalPlayTime);
                                if (textView7 != null) {
                                    return new rc0((LinearLayout) rootView, textView, textView2, textView3, textView4, textView5, textView6, textView7);
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
    public static rc0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44297b;
    }

    @NonNull
    public static rc0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_simulator_launch_moment_item_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
