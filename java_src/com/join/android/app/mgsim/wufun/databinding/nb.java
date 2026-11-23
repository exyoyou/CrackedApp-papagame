package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MStarBar;

/* JADX INFO: loaded from: classes4.dex */
public final class nb implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42253c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42254d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final MStarBar f42255e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42256f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f42257g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f42258h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42259i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f42260j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f42261k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42262l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42263m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42264n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f42265o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f42266p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42267q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f42268r;

    private nb(@NonNull LinearLayout rootView, @NonNull TextView addTime, @NonNull LinearLayout commentAllRootLl, @NonNull MStarBar commentHeadMstarBar, @NonNull TextView commentHeadNumTx, @NonNull View divider, @NonNull ImageView isAuth, @NonNull TextView isConnoisseurs, @NonNull ImageView isGood, @NonNull TextView isMe, @NonNull LinearLayout tbl1Ll, @NonNull LinearLayout tbl2Ll, @NonNull RelativeLayout tbl3Rl, @NonNull TextView textView73, @NonNull TextView time, @NonNull SimpleDraweeView usericon, @NonNull TextView username) {
        this.f42252b = rootView;
        this.f42253c = addTime;
        this.f42254d = commentAllRootLl;
        this.f42255e = commentHeadMstarBar;
        this.f42256f = commentHeadNumTx;
        this.f42257g = divider;
        this.f42258h = isAuth;
        this.f42259i = isConnoisseurs;
        this.f42260j = isGood;
        this.f42261k = isMe;
        this.f42262l = tbl1Ll;
        this.f42263m = tbl2Ll;
        this.f42264n = tbl3Rl;
        this.f42265o = textView73;
        this.f42266p = time;
        this.f42267q = usericon;
        this.f42268r = username;
    }

    @NonNull
    public static nb bind(@NonNull View rootView) {
        int i10 = R.id.addTime;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.addTime);
        if (textView != null) {
            i10 = R.id.commentAllRootLl;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.commentAllRootLl);
            if (linearLayout != null) {
                i10 = R.id.comment_head_mstarBar;
                MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(rootView, R.id.comment_head_mstarBar);
                if (mStarBar != null) {
                    i10 = R.id.comment_head_num_tx;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_head_num_tx);
                    if (textView2 != null) {
                        i10 = R.id.divider;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.isAuth;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.isAuth);
                            if (imageView != null) {
                                i10 = R.id.isConnoisseurs;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.isConnoisseurs);
                                if (textView3 != null) {
                                    i10 = R.id.isGood;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.isGood);
                                    if (imageView2 != null) {
                                        i10 = R.id.isMe;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.isMe);
                                        if (textView4 != null) {
                                            i10 = R.id.tbl_1_ll;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tbl_1_ll);
                                            if (linearLayout2 != null) {
                                                i10 = R.id.tbl_2_ll;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tbl_2_ll);
                                                if (linearLayout3 != null) {
                                                    i10 = R.id.tbl_3_rl;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.tbl_3_rl);
                                                    if (relativeLayout != null) {
                                                        i10 = R.id.textView73;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView73);
                                                        if (textView5 != null) {
                                                            i10 = R.id.time;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time);
                                                            if (textView6 != null) {
                                                                i10 = R.id.usericon;
                                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.usericon);
                                                                if (simpleDraweeView != null) {
                                                                    i10 = R.id.username;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.username);
                                                                    if (textView7 != null) {
                                                                        return new nb((LinearLayout) rootView, textView, linearLayout, mStarBar, textView2, viewFindChildViewById, imageView, textView3, imageView2, textView4, linearLayout2, linearLayout3, relativeLayout, textView5, textView6, simpleDraweeView, textView7);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nb inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42252b;
    }

    @NonNull
    public static nb inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.comment_list_item_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
