package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
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
public final class ox implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f43110c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Group f43111d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f43112e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f43113f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43114g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43115h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f43116i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f43117j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43118k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f43119l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f43120m;

    private ox(@NonNull LinearLayout rootView, @NonNull DownloadNormalView dvView, @NonNull Group g10, @NonNull ImageView iv1, @NonNull ImageView iv2, @NonNull ConstraintLayout relateLayoutApp, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvText1, @NonNull TextView tvText2, @NonNull TextView tvText3, @NonNull TextView tvText4, @NonNull TextView tvText5) {
        this.f43109b = rootView;
        this.f43110c = dvView;
        this.f43111d = g10;
        this.f43112e = iv1;
        this.f43113f = iv2;
        this.f43114g = relateLayoutApp;
        this.f43115h = sdvImage;
        this.f43116i = tvText1;
        this.f43117j = tvText2;
        this.f43118k = tvText3;
        this.f43119l = tvText4;
        this.f43120m = tvText5;
    }

    @NonNull
    public static ox bind(@NonNull View rootView) {
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
                                                    return new ox((LinearLayout) rootView, downloadNormalView, group, imageView, imageView2, constraintLayout, simpleDraweeView, textView, textView2, textView3, textView4, textView5);
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
    public static ox inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43109b;
    }

    @NonNull
    public static ox inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_collection_seven_game_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
