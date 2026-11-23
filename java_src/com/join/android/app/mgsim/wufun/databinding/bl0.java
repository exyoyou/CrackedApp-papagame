package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class bl0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final View f36443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36444c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36445d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36446e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36447f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36448g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36449h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f36450i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f36451j;

    private bl0(@NonNull View rootView, @NonNull ImageView arrowImage, @NonNull ImageView arrowImageCommit, @NonNull ImageView commitImage, @NonNull TextView itemTitle, @NonNull RelativeLayout llComment, @NonNull RelativeLayout llPost, @NonNull ImageView messageImage, @NonNull TextView unreadMessageCountBadge) {
        this.f36443b = rootView;
        this.f36444c = arrowImage;
        this.f36445d = arrowImageCommit;
        this.f36446e = commitImage;
        this.f36447f = itemTitle;
        this.f36448g = llComment;
        this.f36449h = llPost;
        this.f36450i = messageImage;
        this.f36451j = unreadMessageCountBadge;
    }

    @NonNull
    public static bl0 a(@NonNull LayoutInflater inflater, @NonNull ViewGroup parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        }
        inflater.inflate(R.layout.mg_view_forum_my_header_view, parent);
        return bind(parent);
    }

    @NonNull
    public static bl0 bind(@NonNull View rootView) {
        int i10 = R.id.arrowImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrowImage);
        if (imageView != null) {
            i10 = R.id.arrowImageCommit;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrowImageCommit);
            if (imageView2 != null) {
                i10 = R.id.commitImage;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.commitImage);
                if (imageView3 != null) {
                    i10 = R.id.itemTitle;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.itemTitle);
                    if (textView != null) {
                        i10 = R.id.llComment;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.llComment);
                        if (relativeLayout != null) {
                            i10 = R.id.llPost;
                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.llPost);
                            if (relativeLayout2 != null) {
                                i10 = R.id.messageImage;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.messageImage);
                                if (imageView4 != null) {
                                    i10 = R.id.unreadMessageCountBadge;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.unreadMessageCountBadge);
                                    if (textView2 != null) {
                                        return new bl0(rootView, imageView, imageView2, imageView3, textView, relativeLayout, relativeLayout2, imageView4, textView2);
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

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f36443b;
    }
}
