package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.PictureHProgress;

/* JADX INFO: loaded from: classes4.dex */
public final class b3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PictureHProgress f36201d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36202e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f36203f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36204g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36205h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36206i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f36207j;

    private b3(@NonNull LinearLayout rootView, @NonNull LinearLayout llBack, @NonNull PictureHProgress pbProgress, @NonNull SimpleDraweeView sdvImage, @NonNull View statubar, @NonNull TextView tvCancel, @NonNull TextView tvLoadingProgress, @NonNull TextView tvName, @NonNull TextView tvSpeed) {
        this.f36199b = rootView;
        this.f36200c = llBack;
        this.f36201d = pbProgress;
        this.f36202e = sdvImage;
        this.f36203f = statubar;
        this.f36204g = tvCancel;
        this.f36205h = tvLoadingProgress;
        this.f36206i = tvName;
        this.f36207j = tvSpeed;
    }

    @NonNull
    public static b3 bind(@NonNull View rootView) {
        int i10 = R.id.ll_back;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_back);
        if (linearLayout != null) {
            i10 = R.id.pb_progress;
            PictureHProgress pictureHProgress = (PictureHProgress) ViewBindings.findChildViewById(rootView, R.id.pb_progress);
            if (pictureHProgress != null) {
                i10 = R.id.sdv_image;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                if (simpleDraweeView != null) {
                    i10 = R.id.statubar;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.tv_cancel;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_cancel);
                        if (textView != null) {
                            i10 = R.id.tv_loading_progress;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_loading_progress);
                            if (textView2 != null) {
                                i10 = R.id.tv_name;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name);
                                if (textView3 != null) {
                                    i10 = R.id.tv_speed;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_speed);
                                    if (textView4 != null) {
                                        return new b3((LinearLayout) rootView, linearLayout, pictureHProgress, simpleDraweeView, viewFindChildViewById, textView, textView2, textView3, textView4);
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
    public static b3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36199b;
    }

    @NonNull
    public static b3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_mini_game_loading, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
