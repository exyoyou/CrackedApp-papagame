package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class oh0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42867c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42868d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42869e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42870f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42871g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42872h;

    private oh0(@NonNull LinearLayout rootView, @NonNull RelativeLayout forumPostMediaContainer, @NonNull LinearLayout forumPostMediaPicMain, @NonNull TextView imagesCount, @NonNull SimpleDraweeView imgM1, @NonNull SimpleDraweeView imgM2, @NonNull SimpleDraweeView imgM3) {
        this.f42866b = rootView;
        this.f42867c = forumPostMediaContainer;
        this.f42868d = forumPostMediaPicMain;
        this.f42869e = imagesCount;
        this.f42870f = imgM1;
        this.f42871g = imgM2;
        this.f42872h = imgM3;
    }

    @NonNull
    public static oh0 bind(@NonNull View rootView) {
        int i10 = R.id.forum_post_media_container;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.forum_post_media_container);
        if (relativeLayout != null) {
            i10 = R.id.forum_post_media_pic_main;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_post_media_pic_main);
            if (linearLayout != null) {
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
                                return new oh0((LinearLayout) rootView, relativeLayout, linearLayout, textView, simpleDraweeView, simpleDraweeView2, simpleDraweeView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static oh0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42866b;
    }

    @NonNull
    public static oh0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_activity_item_post_image_thumbnail, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
