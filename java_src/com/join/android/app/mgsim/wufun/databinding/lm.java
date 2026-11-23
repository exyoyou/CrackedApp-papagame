package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class lm implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f41401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41402c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41403d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f41404e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f41405f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41406g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f41407h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41408i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f41409j;

    private lm(@NonNull FrameLayout rootView, @NonNull TextView archiveTime, @NonNull ImageView cloudArchive, @NonNull ImageView iv, @NonNull ImageView iv1, @NonNull TextView tv2, @NonNull ImageView wfArchive, @NonNull LinearLayout wfArchiveBlock, @NonNull ImageView wfVip) {
        this.f41401b = rootView;
        this.f41402c = archiveTime;
        this.f41403d = cloudArchive;
        this.f41404e = iv;
        this.f41405f = iv1;
        this.f41406g = tv2;
        this.f41407h = wfArchive;
        this.f41408i = wfArchiveBlock;
        this.f41409j = wfVip;
    }

    @NonNull
    public static lm bind(@NonNull View rootView) {
        int i10 = R.id.archive_time;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.archive_time);
        if (textView != null) {
            i10 = R.id.cloud_archive;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.cloud_archive);
            if (imageView != null) {
                i10 = R.id.iv;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv);
                if (imageView2 != null) {
                    i10 = R.id.iv1;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv1);
                    if (imageView3 != null) {
                        i10 = R.id.f35487tv;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.f35487tv);
                        if (textView2 != null) {
                            i10 = R.id.wf_archive;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.wf_archive);
                            if (imageView4 != null) {
                                i10 = R.id.wf_archive_block;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.wf_archive_block);
                                if (linearLayout != null) {
                                    i10 = R.id.wf_vip;
                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.wf_vip);
                                    if (imageView5 != null) {
                                        return new lm((FrameLayout) rootView, textView, imageView, imageView2, imageView3, textView2, imageView4, linearLayout, imageView5);
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
    public static lm inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f41401b;
    }

    @NonNull
    public static lm inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_hm_archive, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
