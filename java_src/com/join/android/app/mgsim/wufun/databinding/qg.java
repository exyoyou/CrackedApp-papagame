package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f43806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43807d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43808e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43809f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43810g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f43811h;

    private qg(@NonNull RelativeLayout rootView, @NonNull Button localGameOneBt, @NonNull ImageView localGameOneCloseTv, @NonNull TextView localGameOneContentTv, @NonNull TextView localGameOneNotTv, @NonNull TextView localGameOneTitleTv, @NonNull ImageView localGameOneTopIv) {
        this.f43805b = rootView;
        this.f43806c = localGameOneBt;
        this.f43807d = localGameOneCloseTv;
        this.f43808e = localGameOneContentTv;
        this.f43809f = localGameOneNotTv;
        this.f43810g = localGameOneTitleTv;
        this.f43811h = localGameOneTopIv;
    }

    @NonNull
    public static qg bind(@NonNull View rootView) {
        int i10 = R.id.localGameOneBt;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.localGameOneBt);
        if (button != null) {
            i10 = R.id.localGameOneCloseTv;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.localGameOneCloseTv);
            if (imageView != null) {
                i10 = R.id.localGameOneContentTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.localGameOneContentTv);
                if (textView != null) {
                    i10 = R.id.localGameOneNotTv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.localGameOneNotTv);
                    if (textView2 != null) {
                        i10 = R.id.localGameOneTitleTv;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.localGameOneTitleTv);
                        if (textView3 != null) {
                            i10 = R.id.localGameOneTopIv;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.localGameOneTopIv);
                            if (imageView2 != null) {
                                return new qg((RelativeLayout) rootView, button, imageView, textView, textView2, textView3, imageView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43805b;
    }

    @NonNull
    public static qg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_localgame_one_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
