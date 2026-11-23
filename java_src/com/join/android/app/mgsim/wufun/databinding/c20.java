package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class c20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f36711c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Group f36712d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36713e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f36714f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f36715g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36716h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36717i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f36718j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f36719k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f36720l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f36721m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f36722n;

    private c20(@NonNull RelativeLayout rootView, @NonNull DownloadNormalView dvView, @NonNull Group g10, @NonNull ImageView iv1, @NonNull ImageView iv2, @NonNull ImageView ivGameTag, @NonNull ConstraintLayout relateLayoutApp, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvText1, @NonNull TextView tvText2, @NonNull TextView tvText3, @NonNull TextView tvText4, @NonNull TextView tvText5) {
        this.f36710b = rootView;
        this.f36711c = dvView;
        this.f36712d = g10;
        this.f36713e = iv1;
        this.f36714f = iv2;
        this.f36715g = ivGameTag;
        this.f36716h = relateLayoutApp;
        this.f36717i = sdvImage;
        this.f36718j = tvText1;
        this.f36719k = tvText2;
        this.f36720l = tvText3;
        this.f36721m = tvText4;
        this.f36722n = tvText5;
    }

    @NonNull
    public static c20 bind(@NonNull View rootView) {
        int i10 = R.id.dv_view;
        DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
        if (downloadNormalView != null) {
            i10 = R.id.g_1;
            Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.g_1);
            if (group != null) {
                i10 = R.id.iv_1;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
                if (imageView != null) {
                    i10 = R.id.iv_2;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_2);
                    if (imageView2 != null) {
                        i10 = R.id.ivGameTag;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivGameTag);
                        if (imageView3 != null) {
                            i10 = R.id.relateLayoutApp;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.relateLayoutApp);
                            if (constraintLayout != null) {
                                i10 = R.id.sdv_image;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                                if (simpleDraweeView != null) {
                                    i10 = R.id.tv_text_1;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                                    if (textView != null) {
                                        i10 = R.id.tv_text_2;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                                        if (textView2 != null) {
                                            i10 = R.id.tv_text_3;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_3);
                                            if (textView3 != null) {
                                                i10 = R.id.tv_text_4;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_4);
                                                if (textView4 != null) {
                                                    i10 = R.id.tv_text_5;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_5);
                                                    if (textView5 != null) {
                                                        return new c20((RelativeLayout) rootView, downloadNormalView, group, imageView, imageView2, imageView3, constraintLayout, simpleDraweeView, textView, textView2, textView3, textView4, textView5);
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
    public static c20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36710b;
    }

    @NonNull
    public static c20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_express_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
