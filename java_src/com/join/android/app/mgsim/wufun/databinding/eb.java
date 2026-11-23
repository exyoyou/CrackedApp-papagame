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
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class eb implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37870c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f37871d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37872e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f37873f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f37874g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37875h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f37876i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f37877j;

    private eb(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull XListView2 commentAllList, @NonNull TextView editText5, @NonNull ImageView imageView44, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull LinearLayout noCommentLl, @NonNull TextView textTopRight, @NonNull TextView titleTextview) {
        this.f37869b = rootView;
        this.f37870c = backImage;
        this.f37871d = commentAllList;
        this.f37872e = editText5;
        this.f37873f = imageView44;
        this.f37874g = mPtrFrame;
        this.f37875h = noCommentLl;
        this.f37876i = textTopRight;
        this.f37877j = titleTextview;
    }

    @NonNull
    public static eb bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.comment_all_list;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.comment_all_list);
            if (xListView2 != null) {
                i10 = R.id.editText5;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.editText5);
                if (textView != null) {
                    i10 = R.id.imageView44;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView44);
                    if (imageView2 != null) {
                        i10 = R.id.mPtrFrame;
                        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                        if (ptrClassicFrameLayout != null) {
                            i10 = R.id.noCommentLl;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.noCommentLl);
                            if (linearLayout != null) {
                                i10 = R.id.textTopRight;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textTopRight);
                                if (textView2 != null) {
                                    i10 = R.id.title_textview;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                    if (textView3 != null) {
                                        return new eb((LinearLayout) rootView, imageView, xListView2, textView, imageView2, ptrClassicFrameLayout, linearLayout, textView2, textView3);
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
    public static eb inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37869b;
    }

    @NonNull
    public static eb inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.comment_all_list_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
