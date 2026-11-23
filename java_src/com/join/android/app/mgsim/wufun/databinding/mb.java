package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class mb implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41815c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41816d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41817e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f41818f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41819g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41820h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41821i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f41822j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41823k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f41824l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f41825m;

    private mb(@NonNull LinearLayout rootView, @NonNull LinearLayout commentAllRootLl, @NonNull ImageView like, @NonNull TextView likeCount, @NonNull View line, @NonNull LinearLayout llLike, @NonNull LinearLayout llUnlike, @NonNull TextView phoneModle, @NonNull ImageView unlike, @NonNull TextView unlikeCount, @NonNull ImageView view, @NonNull TextView viewCount) {
        this.f41814b = rootView;
        this.f41815c = commentAllRootLl;
        this.f41816d = like;
        this.f41817e = likeCount;
        this.f41818f = line;
        this.f41819g = llLike;
        this.f41820h = llUnlike;
        this.f41821i = phoneModle;
        this.f41822j = unlike;
        this.f41823k = unlikeCount;
        this.f41824l = view;
        this.f41825m = viewCount;
    }

    @NonNull
    public static mb bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.like;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.like);
        if (imageView != null) {
            i10 = R.id.likeCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.likeCount);
            if (textView != null) {
                i10 = R.id.line;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                if (viewFindChildViewById != null) {
                    i10 = R.id.llLike;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llLike);
                    if (linearLayout2 != null) {
                        i10 = R.id.llUnlike;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llUnlike);
                        if (linearLayout3 != null) {
                            i10 = R.id.phoneModle;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.phoneModle);
                            if (textView2 != null) {
                                i10 = R.id.unlike;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.unlike);
                                if (imageView2 != null) {
                                    i10 = R.id.unlikeCount;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.unlikeCount);
                                    if (textView3 != null) {
                                        i10 = R.id.view;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.view);
                                        if (imageView3 != null) {
                                            i10 = R.id.viewCount;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.viewCount);
                                            if (textView4 != null) {
                                                return new mb(linearLayout, linearLayout, imageView, textView, viewFindChildViewById, linearLayout2, linearLayout3, textView2, imageView2, textView3, imageView3, textView4);
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
    public static mb inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41814b;
    }

    @NonNull
    public static mb inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.comment_list_item_footer, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
