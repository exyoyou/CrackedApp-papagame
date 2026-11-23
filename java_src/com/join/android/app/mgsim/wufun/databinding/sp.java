package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class sp implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44898c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44899d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f44900e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f44901f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44902g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44903h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44904i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44905j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f44906k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f44907l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f44908m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f44909n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44910o;

    private sp(@NonNull LinearLayout rootView, @NonNull RelativeLayout forumPostMediaContainer, @NonNull LinearLayout forumPostMediaPicMain, @NonNull ImageView imageView16, @NonNull ImageView imageView17, @NonNull TextView imagesCount, @NonNull SimpleDraweeView imgM1, @NonNull SimpleDraweeView imgM2, @NonNull SimpleDraweeView imgM3, @NonNull View line, @NonNull TextView pubtime, @NonNull TextView pv, @NonNull TextView uv, @NonNull LinearLayout viewBottom) {
        this.f44897b = rootView;
        this.f44898c = forumPostMediaContainer;
        this.f44899d = forumPostMediaPicMain;
        this.f44900e = imageView16;
        this.f44901f = imageView17;
        this.f44902g = imagesCount;
        this.f44903h = imgM1;
        this.f44904i = imgM2;
        this.f44905j = imgM3;
        this.f44906k = line;
        this.f44907l = pubtime;
        this.f44908m = pv;
        this.f44909n = uv;
        this.f44910o = viewBottom;
    }

    @NonNull
    public static sp bind(@NonNull View rootView) {
        int i10 = R.id.forum_post_media_container;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.forum_post_media_container);
        if (relativeLayout != null) {
            i10 = R.id.forum_post_media_pic_main;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_post_media_pic_main);
            if (linearLayout != null) {
                i10 = R.id.imageView16;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView16);
                if (imageView != null) {
                    i10 = R.id.imageView17;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView17);
                    if (imageView2 != null) {
                        i10 = R.id.images_count;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.images_count);
                        if (textView != null) {
                            i10 = R.id.img_m_1;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_m_1);
                            if (simpleDraweeView != null) {
                                i10 = R.id.img_m_2;
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_m_2);
                                if (simpleDraweeView2 != null) {
                                    i10 = R.id.img_m_3;
                                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_m_3);
                                    if (simpleDraweeView3 != null) {
                                        i10 = R.id.line;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                                        if (viewFindChildViewById != null) {
                                            i10 = R.id.pubtime;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pubtime);
                                            if (textView2 != null) {
                                                i10 = R.id.pv;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pv);
                                                if (textView3 != null) {
                                                    i10 = R.id.uv;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.uv);
                                                    if (textView4 != null) {
                                                        i10 = R.id.viewBottom;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.viewBottom);
                                                        if (linearLayout2 != null) {
                                                            return new sp((LinearLayout) rootView, relativeLayout, linearLayout, imageView, imageView2, textView, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, viewFindChildViewById, textView2, textView3, textView4, linearLayout2);
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
    public static sp inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44897b;
    }

    @NonNull
    public static sp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_detial_item_strategy_itemimage3, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
