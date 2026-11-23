package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MStarBar;

/* JADX INFO: loaded from: classes4.dex */
public final class ad implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CardView f35771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f35772c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35774e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final MStarBar f35775f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35776g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35777h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35778i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f35779j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f35780k;

    private ad(@NonNull CardView rootView, @NonNull TextView appName, @NonNull TextView comment, @NonNull TextView gameScore, @NonNull MStarBar gameStar, @NonNull SimpleDraweeView icon, @NonNull SimpleDraweeView img, @NonNull LinearLayout main, @NonNull TextView scrolNew, @NonNull TextView tag) {
        this.f35771b = rootView;
        this.f35772c = appName;
        this.f35773d = comment;
        this.f35774e = gameScore;
        this.f35775f = gameStar;
        this.f35776g = icon;
        this.f35777h = img;
        this.f35778i = main;
        this.f35779j = scrolNew;
        this.f35780k = tag;
    }

    @NonNull
    public static ad bind(@NonNull View rootView) {
        int i10 = R.id.appName;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
        if (textView != null) {
            i10 = R.id.comment;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment);
            if (textView2 != null) {
                i10 = R.id.gameScore;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameScore);
                if (textView3 != null) {
                    i10 = R.id.gameStar;
                    MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(rootView, R.id.gameStar);
                    if (mStarBar != null) {
                        i10 = R.id.icon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                        if (simpleDraweeView != null) {
                            i10 = R.id.img;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.main;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                                if (linearLayout != null) {
                                    i10 = R.id.scrolNew;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.scrolNew);
                                    if (textView4 != null) {
                                        i10 = R.id.tag;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tag);
                                        if (textView5 != null) {
                                            return new ad((CardView) rootView, textView, textView2, textView3, mStarBar, simpleDraweeView, simpleDraweeView2, linearLayout, textView4, textView5);
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
    public static ad inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f35771b;
    }

    @NonNull
    public static ad inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detail_guesslike_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
