package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ss0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44946c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44947d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44948e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44949f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44950g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44951h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f44952i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44953j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f44954k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f44955l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f44956m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f44957n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44958o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f44959p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f44960q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44961r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final FrameLayout f44962s;

    private ss0(@NonNull RelativeLayout rootView, @NonNull ImageView pushNotificationBigIcon, @NonNull TextView pushNotificationContent, @NonNull TextView pushNotificationContentOneLine, @NonNull TextView pushNotificationDate, @NonNull TextView pushNotificationDot, @NonNull LinearLayout pushNotificationLayoutLefttop, @NonNull ImageView pushNotificationSmallIcon, @NonNull RelativeLayout pushNotificationStyle1, @NonNull ImageView pushNotificationStyle1BigIcon, @NonNull TextView pushNotificationStyle1Content, @NonNull TextView pushNotificationStyle1Date, @NonNull TextView pushNotificationStyle1Title, @NonNull RelativeLayout pushNotificationStyleDefault, @NonNull TextView pushNotificationSubTitle, @NonNull TextView pushNotificationTitle, @NonNull RelativeLayout pushRootView, @NonNull FrameLayout v10) {
        this.f44945b = rootView;
        this.f44946c = pushNotificationBigIcon;
        this.f44947d = pushNotificationContent;
        this.f44948e = pushNotificationContentOneLine;
        this.f44949f = pushNotificationDate;
        this.f44950g = pushNotificationDot;
        this.f44951h = pushNotificationLayoutLefttop;
        this.f44952i = pushNotificationSmallIcon;
        this.f44953j = pushNotificationStyle1;
        this.f44954k = pushNotificationStyle1BigIcon;
        this.f44955l = pushNotificationStyle1Content;
        this.f44956m = pushNotificationStyle1Date;
        this.f44957n = pushNotificationStyle1Title;
        this.f44958o = pushNotificationStyleDefault;
        this.f44959p = pushNotificationSubTitle;
        this.f44960q = pushNotificationTitle;
        this.f44961r = pushRootView;
        this.f44962s = v10;
    }

    @NonNull
    public static ss0 bind(@NonNull View rootView) {
        int i10 = R.id.push_notification_big_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.push_notification_big_icon);
        if (imageView != null) {
            i10 = R.id.push_notification_content;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.push_notification_content);
            if (textView != null) {
                i10 = R.id.push_notification_content_one_line;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.push_notification_content_one_line);
                if (textView2 != null) {
                    i10 = R.id.push_notification_date;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.push_notification_date);
                    if (textView3 != null) {
                        i10 = R.id.push_notification_dot;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.push_notification_dot);
                        if (textView4 != null) {
                            i10 = R.id.push_notification_layout_lefttop;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.push_notification_layout_lefttop);
                            if (linearLayout != null) {
                                i10 = R.id.push_notification_small_icon;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.push_notification_small_icon);
                                if (imageView2 != null) {
                                    i10 = R.id.push_notification_style_1;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.push_notification_style_1);
                                    if (relativeLayout != null) {
                                        i10 = R.id.push_notification_style_1_big_icon;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.push_notification_style_1_big_icon);
                                        if (imageView3 != null) {
                                            i10 = R.id.push_notification_style_1_content;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.push_notification_style_1_content);
                                            if (textView5 != null) {
                                                i10 = R.id.push_notification_style_1_date;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.push_notification_style_1_date);
                                                if (textView6 != null) {
                                                    i10 = R.id.push_notification_style_1_title;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.push_notification_style_1_title);
                                                    if (textView7 != null) {
                                                        i10 = R.id.push_notification_style_default;
                                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.push_notification_style_default);
                                                        if (relativeLayout2 != null) {
                                                            i10 = R.id.push_notification_sub_title;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.push_notification_sub_title);
                                                            if (textView8 != null) {
                                                                i10 = R.id.push_notification_title;
                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.push_notification_title);
                                                                if (textView9 != null) {
                                                                    RelativeLayout relativeLayout3 = (RelativeLayout) rootView;
                                                                    i10 = R.id.f35489v;
                                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.f35489v);
                                                                    if (frameLayout != null) {
                                                                        return new ss0(relativeLayout3, imageView, textView, textView2, textView3, textView4, linearLayout, imageView2, relativeLayout, imageView3, textView5, textView6, textView7, relativeLayout2, textView8, textView9, relativeLayout3, frameLayout);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ss0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44945b;
    }

    @NonNull
    public static ss0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.push_notification, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
