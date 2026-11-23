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
public final class po0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43457c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43458d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43459e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43460f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43461g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43462h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f43463i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f43464j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43465k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f43466l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f43467m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f43468n;

    private po0(@NonNull LinearLayout rootView, @NonNull LinearLayout countdownLayout, @NonNull SimpleDraweeView gameIcon, @NonNull TextView gameName, @NonNull TextView installButton, @NonNull TextView moneyText, @NonNull TextView openState, @NonNull TextView openTime, @NonNull TextView sectionTitle, @NonNull TextView textView10, @NonNull TextView textView7, @NonNull TextView timeH, @NonNull TextView timeM) {
        this.f43456b = rootView;
        this.f43457c = countdownLayout;
        this.f43458d = gameIcon;
        this.f43459e = gameName;
        this.f43460f = installButton;
        this.f43461g = moneyText;
        this.f43462h = openState;
        this.f43463i = openTime;
        this.f43464j = sectionTitle;
        this.f43465k = textView10;
        this.f43466l = textView7;
        this.f43467m = timeH;
        this.f43468n = timeM;
    }

    @NonNull
    public static po0 bind(@NonNull View rootView) {
        int i10 = R.id.countdownLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.countdownLayout);
        if (linearLayout != null) {
            i10 = R.id.gameIcon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon);
            if (simpleDraweeView != null) {
                i10 = R.id.gameName;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
                if (textView != null) {
                    i10 = R.id.installButton;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.installButton);
                    if (textView2 != null) {
                        i10 = R.id.moneyText;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText);
                        if (textView3 != null) {
                            i10 = R.id.openState;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.openState);
                            if (textView4 != null) {
                                i10 = R.id.openTime;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.openTime);
                                if (textView5 != null) {
                                    i10 = R.id.sectionTitle;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.sectionTitle);
                                    if (textView6 != null) {
                                        i10 = R.id.textView10;
                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView10);
                                        if (textView7 != null) {
                                            i10 = R.id.textView7;
                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView7);
                                            if (textView8 != null) {
                                                i10 = R.id.time_h;
                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time_h);
                                                if (textView9 != null) {
                                                    i10 = R.id.time_m;
                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time_m);
                                                    if (textView10 != null) {
                                                        return new po0((LinearLayout) rootView, linearLayout, simpleDraweeView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10);
                                                    }
                                                }
                                            }
                                        }
                                    }
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
    public static po0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43456b;
    }

    @NonNull
    public static po0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.new_game_explosion, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
