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
public final class a3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f35635c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f35636d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35637e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f35638f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35639g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f35640h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35641i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f35642j;

    private a3(@NonNull LinearLayout rootView, @NonNull ImageView back, @NonNull ImageView isGetLikeIv, @NonNull LinearLayout isGetLikeLl, @NonNull ImageView isGetMessageIv, @NonNull LinearLayout isGetMessageLl, @NonNull ImageView isGetReplayIv, @NonNull LinearLayout isGetReplayLl, @NonNull TextView title) {
        this.f35634b = rootView;
        this.f35635c = back;
        this.f35636d = isGetLikeIv;
        this.f35637e = isGetLikeLl;
        this.f35638f = isGetMessageIv;
        this.f35639g = isGetMessageLl;
        this.f35640h = isGetReplayIv;
        this.f35641i = isGetReplayLl;
        this.f35642j = title;
    }

    @NonNull
    public static a3 bind(@NonNull View rootView) {
        int i10 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
        if (imageView != null) {
            i10 = R.id.isGetLikeIv;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.isGetLikeIv);
            if (imageView2 != null) {
                i10 = R.id.isGetLikeLl;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.isGetLikeLl);
                if (linearLayout != null) {
                    i10 = R.id.isGetMessageIv;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.isGetMessageIv);
                    if (imageView3 != null) {
                        i10 = R.id.isGetMessageLl;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.isGetMessageLl);
                        if (linearLayout2 != null) {
                            i10 = R.id.isGetReplayIv;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.isGetReplayIv);
                            if (imageView4 != null) {
                                i10 = R.id.isGetReplayLl;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.isGetReplayLl);
                                if (linearLayout3 != null) {
                                    i10 = R.id.title;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                    if (textView != null) {
                                        return new a3((LinearLayout) rootView, imageView, imageView2, linearLayout, imageView3, linearLayout2, imageView4, linearLayout3, textView);
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
    public static a3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35634b;
    }

    @NonNull
    public static a3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_message_setting, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
