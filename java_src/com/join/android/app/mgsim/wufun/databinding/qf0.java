package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TableLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TableLayout f43792c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43793d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f43794e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43795f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43796g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43797h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43798i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43799j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43800k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43801l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43802m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43803n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f43804o;

    private qf0(@NonNull RelativeLayout rootView, @NonNull TableLayout forumAdContainer, @NonNull TextView forumAdTitle, @NonNull View guide, @NonNull SimpleDraweeView layoutForumAd1, @NonNull SimpleDraweeView layoutForumAd2, @NonNull SimpleDraweeView layoutForumAd3, @NonNull SimpleDraweeView layoutForumAd4, @NonNull LinearLayout layoutForumAdRow1, @NonNull LinearLayout layoutForumAdRow2, @NonNull LinearLayout layoutForumAdTitle, @NonNull RelativeLayout relatiLayoutForumAdTitle, @NonNull RelativeLayout rlAdParent, @NonNull TextView textView9) {
        this.f43791b = rootView;
        this.f43792c = forumAdContainer;
        this.f43793d = forumAdTitle;
        this.f43794e = guide;
        this.f43795f = layoutForumAd1;
        this.f43796g = layoutForumAd2;
        this.f43797h = layoutForumAd3;
        this.f43798i = layoutForumAd4;
        this.f43799j = layoutForumAdRow1;
        this.f43800k = layoutForumAdRow2;
        this.f43801l = layoutForumAdTitle;
        this.f43802m = relatiLayoutForumAdTitle;
        this.f43803n = rlAdParent;
        this.f43804o = textView9;
    }

    @NonNull
    public static qf0 bind(@NonNull View rootView) {
        int i10 = R.id.forum_ad_container;
        TableLayout tableLayout = (TableLayout) ViewBindings.findChildViewById(rootView, R.id.forum_ad_container);
        if (tableLayout != null) {
            i10 = R.id.forum_ad_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_ad_title);
            if (textView != null) {
                i10 = R.id.guide;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.guide);
                if (viewFindChildViewById != null) {
                    i10 = R.id.layout_forum_ad_1;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.layout_forum_ad_1);
                    if (simpleDraweeView != null) {
                        i10 = R.id.layout_forum_ad_2;
                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.layout_forum_ad_2);
                        if (simpleDraweeView2 != null) {
                            i10 = R.id.layout_forum_ad_3;
                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.layout_forum_ad_3);
                            if (simpleDraweeView3 != null) {
                                i10 = R.id.layout_forum_ad_4;
                                SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.layout_forum_ad_4);
                                if (simpleDraweeView4 != null) {
                                    i10 = R.id.layout_forum_ad_row1;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_forum_ad_row1);
                                    if (linearLayout != null) {
                                        i10 = R.id.layout_forum_ad_row2;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_forum_ad_row2);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.layout_forum_ad_title;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_forum_ad_title);
                                            if (linearLayout3 != null) {
                                                i10 = R.id.relati_layout_forum_ad_title;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relati_layout_forum_ad_title);
                                                if (relativeLayout != null) {
                                                    RelativeLayout relativeLayout2 = (RelativeLayout) rootView;
                                                    i10 = R.id.textView9;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                                                    if (textView2 != null) {
                                                        return new qf0(relativeLayout2, tableLayout, textView, viewFindChildViewById, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, simpleDraweeView4, linearLayout, linearLayout2, linearLayout3, relativeLayout, relativeLayout2, textView2);
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
    public static qf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43791b;
    }

    @NonNull
    public static qf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_ad_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
