package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ju implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40422f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40423g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40424h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ScrollView f40426j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final hw0 f40427k;

    private ju(@NonNull LinearLayout rootView, @NonNull TextView giftContent, @NonNull SimpleDraweeView giftIcon, @NonNull TextView giftMethod, @NonNull TextView giftNameTv, @NonNull TextView giftTime, @NonNull TextView saveCodeContent, @NonNull TextView saveCodeTv, @NonNull ScrollView scrollView, @NonNull hw0 titleBarLayout) {
        this.f40418b = rootView;
        this.f40419c = giftContent;
        this.f40420d = giftIcon;
        this.f40421e = giftMethod;
        this.f40422f = giftNameTv;
        this.f40423g = giftTime;
        this.f40424h = saveCodeContent;
        this.f40425i = saveCodeTv;
        this.f40426j = scrollView;
        this.f40427k = titleBarLayout;
    }

    @NonNull
    public static ju bind(@NonNull View rootView) {
        int i10 = R.id.giftContent;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftContent);
        if (textView != null) {
            i10 = R.id.giftIcon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.giftIcon);
            if (simpleDraweeView != null) {
                i10 = R.id.giftMethod;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftMethod);
                if (textView2 != null) {
                    i10 = R.id.giftNameTv;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftNameTv);
                    if (textView3 != null) {
                        i10 = R.id.giftTime;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftTime);
                        if (textView4 != null) {
                            i10 = R.id.saveCodeContent;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.saveCodeContent);
                            if (textView5 != null) {
                                i10 = R.id.saveCodeTv;
                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.saveCodeTv);
                                if (textView6 != null) {
                                    i10 = R.id.scrollView;
                                    ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
                                    if (scrollView != null) {
                                        i10 = R.id.title_bar_layout;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                                        if (viewFindChildViewById != null) {
                                            return new ju((LinearLayout) rootView, textView, simpleDraweeView, textView2, textView3, textView4, textView5, textView6, scrollView, hw0.bind(viewFindChildViewById));
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
    public static ju inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40418b;
    }

    @NonNull
    public static ju inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gift_detail_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
