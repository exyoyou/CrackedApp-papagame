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
import com.join.mgps.customview.CopyTextView;
import com.join.mgps.customview.CopyTextViewNew;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;

/* JADX INFO: loaded from: classes4.dex */
public final class ob implements ViewBinding {

    @NonNull
    public final LinearLayout A;

    @NonNull
    public final RelativeLayout B;

    @NonNull
    public final TextView C;

    @NonNull
    public final TextView D;

    @NonNull
    public final SimpleDraweeView E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42744c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final MStarBar f42745d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42747f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final CopyTextView f42748g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final CopyTextViewNew f42749h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42750i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f42751j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f42752k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42753l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f42754m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f42755n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f42756o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f42757p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f42758q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final View f42759r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final VipView f42760s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final ImageView f42761t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f42762u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f42763v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final ImageView f42764w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f42765x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f42766y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42767z;

    private ob(@NonNull LinearLayout rootView, @NonNull LinearLayout commentAllRootLl, @NonNull MStarBar commentHeadMstarBar, @NonNull TextView commentHeadNumTx, @NonNull TextView content, @NonNull CopyTextView content2, @NonNull CopyTextViewNew contentWeb, @NonNull TextView deleteTx, @NonNull ImageView down, @NonNull TextView downNumber, @NonNull LinearLayout editLl, @NonNull TextView editTx, @NonNull ImageView isAuth, @NonNull TextView isConnoisseurs, @NonNull ImageView isGood, @NonNull TextView isMe, @NonNull View layoutTop, @NonNull VipView levelTv, @NonNull ImageView message, @NonNull TextView messageNumber, @NonNull TextView more, @NonNull ImageView parise, @NonNull TextView pariseNumber, @NonNull TextView phoneModle, @NonNull LinearLayout tbl1Ll, @NonNull LinearLayout tbl2Ll, @NonNull RelativeLayout tbl3Rl, @NonNull TextView time, @NonNull TextView userName, @NonNull SimpleDraweeView usericon) {
        this.f42743b = rootView;
        this.f42744c = commentAllRootLl;
        this.f42745d = commentHeadMstarBar;
        this.f42746e = commentHeadNumTx;
        this.f42747f = content;
        this.f42748g = content2;
        this.f42749h = contentWeb;
        this.f42750i = deleteTx;
        this.f42751j = down;
        this.f42752k = downNumber;
        this.f42753l = editLl;
        this.f42754m = editTx;
        this.f42755n = isAuth;
        this.f42756o = isConnoisseurs;
        this.f42757p = isGood;
        this.f42758q = isMe;
        this.f42759r = layoutTop;
        this.f42760s = levelTv;
        this.f42761t = message;
        this.f42762u = messageNumber;
        this.f42763v = more;
        this.f42764w = parise;
        this.f42765x = pariseNumber;
        this.f42766y = phoneModle;
        this.f42767z = tbl1Ll;
        this.A = tbl2Ll;
        this.B = tbl3Rl;
        this.C = time;
        this.D = userName;
        this.E = usericon;
    }

    @NonNull
    public static ob bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.comment_head_mstarBar;
        MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(rootView, R.id.comment_head_mstarBar);
        if (mStarBar != null) {
            i10 = R.id.comment_head_num_tx;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_head_num_tx);
            if (textView != null) {
                i10 = R.id.content;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
                if (textView2 != null) {
                    i10 = R.id.content2;
                    CopyTextView copyTextView = (CopyTextView) ViewBindings.findChildViewById(rootView, R.id.content2);
                    if (copyTextView != null) {
                        i10 = R.id.contentWeb;
                        CopyTextViewNew copyTextViewNew = (CopyTextViewNew) ViewBindings.findChildViewById(rootView, R.id.contentWeb);
                        if (copyTextViewNew != null) {
                            i10 = R.id.deleteTx;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.deleteTx);
                            if (textView3 != null) {
                                i10 = R.id.down;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.down);
                                if (imageView != null) {
                                    i10 = R.id.downNumber;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downNumber);
                                    if (textView4 != null) {
                                        i10 = R.id.editLl;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.editLl);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.editTx;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.editTx);
                                            if (textView5 != null) {
                                                i10 = R.id.isAuth;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.isAuth);
                                                if (imageView2 != null) {
                                                    i10 = R.id.isConnoisseurs;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.isConnoisseurs);
                                                    if (textView6 != null) {
                                                        i10 = R.id.isGood;
                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.isGood);
                                                        if (imageView3 != null) {
                                                            i10 = R.id.isMe;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.isMe);
                                                            if (textView7 != null) {
                                                                i10 = R.id.layoutTop;
                                                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layoutTop);
                                                                if (viewFindChildViewById != null) {
                                                                    i10 = R.id.levelTv;
                                                                    VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.levelTv);
                                                                    if (vipView != null) {
                                                                        i10 = R.id.message;
                                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.message);
                                                                        if (imageView4 != null) {
                                                                            i10 = R.id.messageNumber;
                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.messageNumber);
                                                                            if (textView8 != null) {
                                                                                i10 = R.id.more;
                                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.more);
                                                                                if (textView9 != null) {
                                                                                    i10 = R.id.parise;
                                                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.parise);
                                                                                    if (imageView5 != null) {
                                                                                        i10 = R.id.pariseNumber;
                                                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pariseNumber);
                                                                                        if (textView10 != null) {
                                                                                            i10 = R.id.phoneModle;
                                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.phoneModle);
                                                                                            if (textView11 != null) {
                                                                                                i10 = R.id.tbl_1_ll;
                                                                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tbl_1_ll);
                                                                                                if (linearLayout3 != null) {
                                                                                                    i10 = R.id.tbl_2_ll;
                                                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tbl_2_ll);
                                                                                                    if (linearLayout4 != null) {
                                                                                                        i10 = R.id.tbl_3_rl;
                                                                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.tbl_3_rl);
                                                                                                        if (relativeLayout != null) {
                                                                                                            i10 = R.id.time;
                                                                                                            TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time);
                                                                                                            if (textView12 != null) {
                                                                                                                i10 = R.id.userName;
                                                                                                                TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                                                                                                                if (textView13 != null) {
                                                                                                                    i10 = R.id.usericon;
                                                                                                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.usericon);
                                                                                                                    if (simpleDraweeView != null) {
                                                                                                                        return new ob(linearLayout, linearLayout, mStarBar, textView, textView2, copyTextView, copyTextViewNew, textView3, imageView, textView4, linearLayout2, textView5, imageView2, textView6, imageView3, textView7, viewFindChildViewById, vipView, imageView4, textView8, textView9, imageView5, textView10, textView11, linearLayout3, linearLayout4, relativeLayout, textView12, textView13, simpleDraweeView);
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
    public static ob inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42743b;
    }

    @NonNull
    public static ob inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.comment_list_item_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
