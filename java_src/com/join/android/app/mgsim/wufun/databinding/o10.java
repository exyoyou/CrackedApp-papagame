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
import com.join.mgps.customview.ExpandLayout;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;

/* JADX INFO: loaded from: classes4.dex */
public final class o10 implements ViewBinding {

    @NonNull
    public final RelativeLayout A;

    @NonNull
    public final TextView B;

    @NonNull
    public final TextView C;

    @NonNull
    public final SimpleDraweeView D;

    @NonNull
    public final View E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42582b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42583c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final MStarBar f42584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42585e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ExpandLayout f42586f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final CopyTextView f42587g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final CopyTextViewNew f42588h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42589i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f42590j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f42591k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42592l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f42593m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f42594n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f42595o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f42596p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f42597q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final View f42598r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final VipView f42599s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final ImageView f42600t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f42601u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final ImageView f42602v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f42603w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f42604x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42605y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42606z;

    private o10(@NonNull LinearLayout rootView, @NonNull LinearLayout commentAllRootLl, @NonNull MStarBar commentHeadMstarBar, @NonNull TextView commentHeadNumTx, @NonNull ExpandLayout content, @NonNull CopyTextView content2, @NonNull CopyTextViewNew contentWeb, @NonNull TextView deleteTx, @NonNull ImageView down, @NonNull TextView downNumber, @NonNull LinearLayout editLl, @NonNull TextView editTx, @NonNull ImageView isAuth, @NonNull TextView isConnoisseurs, @NonNull ImageView isGood, @NonNull TextView isMe, @NonNull View layoutTop, @NonNull VipView levelTv, @NonNull ImageView message, @NonNull TextView messageNumber, @NonNull ImageView parise, @NonNull TextView pariseNumber, @NonNull TextView phoneModle, @NonNull LinearLayout tbl1Ll, @NonNull LinearLayout tbl2Ll, @NonNull RelativeLayout tbl3Rl, @NonNull TextView time, @NonNull TextView userName, @NonNull SimpleDraweeView usericon, @NonNull View vDivider) {
        this.f42582b = rootView;
        this.f42583c = commentAllRootLl;
        this.f42584d = commentHeadMstarBar;
        this.f42585e = commentHeadNumTx;
        this.f42586f = content;
        this.f42587g = content2;
        this.f42588h = contentWeb;
        this.f42589i = deleteTx;
        this.f42590j = down;
        this.f42591k = downNumber;
        this.f42592l = editLl;
        this.f42593m = editTx;
        this.f42594n = isAuth;
        this.f42595o = isConnoisseurs;
        this.f42596p = isGood;
        this.f42597q = isMe;
        this.f42598r = layoutTop;
        this.f42599s = levelTv;
        this.f42600t = message;
        this.f42601u = messageNumber;
        this.f42602v = parise;
        this.f42603w = pariseNumber;
        this.f42604x = phoneModle;
        this.f42605y = tbl1Ll;
        this.f42606z = tbl2Ll;
        this.A = tbl3Rl;
        this.B = time;
        this.C = userName;
        this.D = usericon;
        this.E = vDivider;
    }

    @NonNull
    public static o10 bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.comment_head_mstarBar;
        MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(rootView, R.id.comment_head_mstarBar);
        if (mStarBar != null) {
            i10 = R.id.comment_head_num_tx;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_head_num_tx);
            if (textView != null) {
                i10 = R.id.content;
                ExpandLayout expandLayout = (ExpandLayout) ViewBindings.findChildViewById(rootView, R.id.content);
                if (expandLayout != null) {
                    i10 = R.id.content2;
                    CopyTextView copyTextView = (CopyTextView) ViewBindings.findChildViewById(rootView, R.id.content2);
                    if (copyTextView != null) {
                        i10 = R.id.contentWeb;
                        CopyTextViewNew copyTextViewNew = (CopyTextViewNew) ViewBindings.findChildViewById(rootView, R.id.contentWeb);
                        if (copyTextViewNew != null) {
                            i10 = R.id.deleteTx;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.deleteTx);
                            if (textView2 != null) {
                                i10 = R.id.down;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.down);
                                if (imageView != null) {
                                    i10 = R.id.downNumber;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downNumber);
                                    if (textView3 != null) {
                                        i10 = R.id.editLl;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.editLl);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.editTx;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.editTx);
                                            if (textView4 != null) {
                                                i10 = R.id.isAuth;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.isAuth);
                                                if (imageView2 != null) {
                                                    i10 = R.id.isConnoisseurs;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.isConnoisseurs);
                                                    if (textView5 != null) {
                                                        i10 = R.id.isGood;
                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.isGood);
                                                        if (imageView3 != null) {
                                                            i10 = R.id.isMe;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.isMe);
                                                            if (textView6 != null) {
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
                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.messageNumber);
                                                                            if (textView7 != null) {
                                                                                i10 = R.id.parise;
                                                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.parise);
                                                                                if (imageView5 != null) {
                                                                                    i10 = R.id.pariseNumber;
                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pariseNumber);
                                                                                    if (textView8 != null) {
                                                                                        i10 = R.id.phoneModle;
                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.phoneModle);
                                                                                        if (textView9 != null) {
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
                                                                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time);
                                                                                                        if (textView10 != null) {
                                                                                                            i10 = R.id.userName;
                                                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                                                                                                            if (textView11 != null) {
                                                                                                                i10 = R.id.usericon;
                                                                                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.usericon);
                                                                                                                if (simpleDraweeView != null) {
                                                                                                                    i10 = R.id.v_divider;
                                                                                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_divider);
                                                                                                                    if (viewFindChildViewById2 != null) {
                                                                                                                        return new o10(linearLayout, linearLayout, mStarBar, textView, expandLayout, copyTextView, copyTextViewNew, textView2, imageView, textView3, linearLayout2, textView4, imageView2, textView5, imageView3, textView6, viewFindChildViewById, vipView, imageView4, textView7, imageView5, textView8, textView9, linearLayout3, linearLayout4, relativeLayout, textView10, textView11, simpleDraweeView, viewFindChildViewById2);
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
    public static o10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42582b;
    }

    @NonNull
    public static o10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_detail_comment_list_item_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
