package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class g0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final EditText f38638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f38639d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38640e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f38641f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f38642g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38643h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38644i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final StandardVideoView f38645j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f38646k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f38647l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f38648m;

    private g0(@NonNull LinearLayout rootView, @NonNull EditText etDesc, @NonNull EditText etTitle, @NonNull ImageView ivBack, @NonNull ImageView ivDeleteVideo, @NonNull ImageView ivThumb, @NonNull LinearLayout llChooseVideo, @NonNull RelativeLayout rlVideo, @NonNull StandardVideoView svvView, @NonNull TextView tvCommit, @NonNull TextView tvCustomer, @NonNull TextView tvTitle) {
        this.f38637b = rootView;
        this.f38638c = etDesc;
        this.f38639d = etTitle;
        this.f38640e = ivBack;
        this.f38641f = ivDeleteVideo;
        this.f38642g = ivThumb;
        this.f38643h = llChooseVideo;
        this.f38644i = rlVideo;
        this.f38645j = svvView;
        this.f38646k = tvCommit;
        this.f38647l = tvCustomer;
        this.f38648m = tvTitle;
    }

    @NonNull
    public static g0 bind(@NonNull View rootView) {
        int i10 = R.id.et_desc;
        EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.et_desc);
        if (editText != null) {
            i10 = R.id.et_title;
            EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.et_title);
            if (editText2 != null) {
                i10 = R.id.iv_back;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_back);
                if (imageView != null) {
                    i10 = R.id.iv_delete_video;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_delete_video);
                    if (imageView2 != null) {
                        i10 = R.id.iv_thumb;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_thumb);
                        if (imageView3 != null) {
                            i10 = R.id.ll_choose_video;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_choose_video);
                            if (linearLayout != null) {
                                i10 = R.id.rl_video;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_video);
                                if (relativeLayout != null) {
                                    i10 = R.id.svv_view;
                                    StandardVideoView standardVideoView = (StandardVideoView) ViewBindings.findChildViewById(rootView, R.id.svv_view);
                                    if (standardVideoView != null) {
                                        i10 = R.id.tv_commit;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_commit);
                                        if (textView != null) {
                                            i10 = R.id.tv_customer;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_customer);
                                            if (textView2 != null) {
                                                i10 = R.id.tv_title;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                                                if (textView3 != null) {
                                                    return new g0((LinearLayout) rootView, editText, editText2, imageView, imageView2, imageView3, linearLayout, relativeLayout, standardVideoView, textView, textView2, textView3);
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
    public static g0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38637b;
    }

    @NonNull
    public static g0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_create_end_game_commit, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
