package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;

/* JADX INFO: loaded from: classes4.dex */
public final class z implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f48001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48002c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f48003d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f48004e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final XListView2 f48005f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f48006g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48007h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f48008i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f48009j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48010k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final View f48011l;

    private z(@NonNull RelativeLayout rootView, @NonNull RelativeLayout actionbarLayout, @NonNull ImageView back, @NonNull ImageView backImage, @NonNull XListView2 listview, @NonNull ForumLoadingView loadingView, @NonNull RelativeLayout newTitle, @NonNull TextView setting2, @NonNull TextView setting3, @NonNull RelativeLayout t10, @NonNull View titleStatubar) {
        this.f48001b = rootView;
        this.f48002c = actionbarLayout;
        this.f48003d = back;
        this.f48004e = backImage;
        this.f48005f = listview;
        this.f48006g = loadingView;
        this.f48007h = newTitle;
        this.f48008i = setting2;
        this.f48009j = setting3;
        this.f48010k = t10;
        this.f48011l = titleStatubar;
    }

    @NonNull
    public static z bind(@NonNull View rootView) {
        int i10 = R.id.actionbarLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.actionbarLayout);
        if (relativeLayout != null) {
            i10 = R.id.back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
            if (imageView != null) {
                i10 = R.id.back_image;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
                if (imageView2 != null) {
                    i10 = R.id.listview;
                    XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listview);
                    if (xListView2 != null) {
                        i10 = R.id.loadingView;
                        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                        if (forumLoadingView != null) {
                            i10 = R.id.newTitle;
                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.newTitle);
                            if (relativeLayout2 != null) {
                                i10 = R.id.setting2;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.setting2);
                                if (textView != null) {
                                    i10 = R.id.setting3;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.setting3);
                                    if (textView2 != null) {
                                        i10 = R.id.f35486t;
                                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.f35486t);
                                        if (relativeLayout3 != null) {
                                            i10 = R.id.titleStatubar;
                                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.titleStatubar);
                                            if (viewFindChildViewById != null) {
                                                return new z((RelativeLayout) rootView, relativeLayout, imageView, imageView2, xListView2, forumLoadingView, relativeLayout2, textView, textView2, relativeLayout3, viewFindChildViewById);
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
    public static z inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f48001b;
    }

    @NonNull
    public static z inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_comment_self_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
