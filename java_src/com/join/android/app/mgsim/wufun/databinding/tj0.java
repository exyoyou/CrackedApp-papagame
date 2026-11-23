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
public final class tj0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45289c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45290d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45291e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45292f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f45293g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f45294h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f45295i;

    private tj0(@NonNull LinearLayout rootView, @NonNull TextView forumName, @NonNull LinearLayout forumNameParent, @NonNull TextView forumPostCommit, @NonNull TextView forumPostView, @NonNull ImageView imageView10, @NonNull ImageView imageView9, @NonNull View postFooterDivider) {
        this.f45288b = rootView;
        this.f45289c = forumName;
        this.f45290d = forumNameParent;
        this.f45291e = forumPostCommit;
        this.f45292f = forumPostView;
        this.f45293g = imageView10;
        this.f45294h = imageView9;
        this.f45295i = postFooterDivider;
    }

    @NonNull
    public static tj0 bind(@NonNull View rootView) {
        int i10 = R.id.forum_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_name);
        if (textView != null) {
            i10 = R.id.forum_name_parent;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_name_parent);
            if (linearLayout != null) {
                i10 = R.id.forum_post_commit;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_commit);
                if (textView2 != null) {
                    i10 = R.id.forum_post_view;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_view);
                    if (textView3 != null) {
                        i10 = R.id.imageView10;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView10);
                        if (imageView != null) {
                            i10 = R.id.imageView9;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView9);
                            if (imageView2 != null) {
                                i10 = R.id.post_footer_divider;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.post_footer_divider);
                                if (viewFindChildViewById != null) {
                                    return new tj0((LinearLayout) rootView, textView, linearLayout, textView2, textView3, imageView, imageView2, viewFindChildViewById);
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
    public static tj0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45288b;
    }

    @NonNull
    public static tj0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_fragment_game_topic_footer, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
