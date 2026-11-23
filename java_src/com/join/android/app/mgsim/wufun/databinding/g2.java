package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class g2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38663c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38664d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38665e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38666f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38667g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38668h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38669i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f38670j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RecyclerView f38671k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f38672l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f38673m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f38674n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RecyclerView f38675o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final Button f38676p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f38677q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f38678r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f38679s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38680t;

    private g2(@NonNull RelativeLayout rootView, @NonNull ImageView gameTransferBackImg, @NonNull ImageView gameTransferBarImg, @NonNull LinearLayout gameTransferBottomNavigationBarLl, @NonNull TextView gameTransferBottomNavigationLeftTxt, @NonNull TextView gameTransferBottomNavigationRightTxt, @NonNull RelativeLayout gameTransferBottomRl, @NonNull RelativeLayout gameTransferHistoryHintRl, @NonNull TextView gameTransferHistoryListHintTxt, @NonNull RecyclerView gameTransferHistoryListRv, @NonNull TextView gameTransferLeftPhoneTxt, @NonNull TextView gameTransferListChooseAllTxt, @NonNull ImageView gameTransferListHintCloseImg, @NonNull RecyclerView gameTransferListRv, @NonNull Button gameTransferOkBtn, @NonNull TextView gameTransferRightPhoneTxt, @NonNull TextView gameTransferSelectedNumTxt, @NonNull TextView gameTransferTitleTxt, @NonNull RelativeLayout gameTransferTopRl) {
        this.f38662b = rootView;
        this.f38663c = gameTransferBackImg;
        this.f38664d = gameTransferBarImg;
        this.f38665e = gameTransferBottomNavigationBarLl;
        this.f38666f = gameTransferBottomNavigationLeftTxt;
        this.f38667g = gameTransferBottomNavigationRightTxt;
        this.f38668h = gameTransferBottomRl;
        this.f38669i = gameTransferHistoryHintRl;
        this.f38670j = gameTransferHistoryListHintTxt;
        this.f38671k = gameTransferHistoryListRv;
        this.f38672l = gameTransferLeftPhoneTxt;
        this.f38673m = gameTransferListChooseAllTxt;
        this.f38674n = gameTransferListHintCloseImg;
        this.f38675o = gameTransferListRv;
        this.f38676p = gameTransferOkBtn;
        this.f38677q = gameTransferRightPhoneTxt;
        this.f38678r = gameTransferSelectedNumTxt;
        this.f38679s = gameTransferTitleTxt;
        this.f38680t = gameTransferTopRl;
    }

    @NonNull
    public static g2 bind(@NonNull View rootView) {
        int i10 = R.id.game_transfer_back_img;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_back_img);
        if (imageView != null) {
            i10 = R.id.game_transfer_bar_img;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_bar_img);
            if (imageView2 != null) {
                i10 = R.id.game_transfer_bottom_navigation_bar_ll;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.game_transfer_bottom_navigation_bar_ll);
                if (linearLayout != null) {
                    i10 = R.id.game_transfer_bottom_navigation_left_txt;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_bottom_navigation_left_txt);
                    if (textView != null) {
                        i10 = R.id.game_transfer_bottom_navigation_right_txt;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_bottom_navigation_right_txt);
                        if (textView2 != null) {
                            i10 = R.id.game_transfer_bottom_rl;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.game_transfer_bottom_rl);
                            if (relativeLayout != null) {
                                i10 = R.id.game_transfer_history_hint_rl;
                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.game_transfer_history_hint_rl);
                                if (relativeLayout2 != null) {
                                    i10 = R.id.game_transfer_history_list_hint_txt;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_history_list_hint_txt);
                                    if (textView3 != null) {
                                        i10 = R.id.game_transfer_historyList_rv;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_historyList_rv);
                                        if (recyclerView != null) {
                                            i10 = R.id.game_transfer_left_phone_txt;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_left_phone_txt);
                                            if (textView4 != null) {
                                                i10 = R.id.game_transfer_list_choose_all_txt;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_list_choose_all_txt);
                                                if (textView5 != null) {
                                                    i10 = R.id.game_transfer_list_hint_close_img;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_list_hint_close_img);
                                                    if (imageView3 != null) {
                                                        i10 = R.id.game_transfer_list_rv;
                                                        RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_list_rv);
                                                        if (recyclerView2 != null) {
                                                            i10 = R.id.game_transfer_ok_btn;
                                                            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.game_transfer_ok_btn);
                                                            if (button != null) {
                                                                i10 = R.id.game_transfer_right_phone_txt;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_right_phone_txt);
                                                                if (textView6 != null) {
                                                                    i10 = R.id.game_transfer_selected_num_txt;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_selected_num_txt);
                                                                    if (textView7 != null) {
                                                                        i10 = R.id.game_transfer_title_txt;
                                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_title_txt);
                                                                        if (textView8 != null) {
                                                                            i10 = R.id.game_transfer_top_rl;
                                                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.game_transfer_top_rl);
                                                                            if (relativeLayout3 != null) {
                                                                                return new g2((RelativeLayout) rootView, imageView, imageView2, linearLayout, textView, textView2, relativeLayout, relativeLayout2, textView3, recyclerView, textView4, textView5, imageView3, recyclerView2, button, textView6, textView7, textView8, relativeLayout3);
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
    public static g2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38662b;
    }

    @NonNull
    public static g2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_game_transfer, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
