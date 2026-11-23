package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomEdittext;
import it.sephiroth.android.library.widget.HListView;

/* JADX INFO: loaded from: classes4.dex */
public final class t3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f45095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f45096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45097e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f45098f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final FrameLayout f45099g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final FrameLayout f45100h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45101i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45102j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45103k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final EditText f45104l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final HListView f45105m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final View f45106n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final CustomEdittext f45107o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final CustomEdittext f45108p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45109q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final iw0 f45110r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f45111s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f45112t;

    private t3(@NonNull RelativeLayout rootView, @NonNull Button btnSelectedCoins, @NonNull Button btnSelectedGames, @NonNull LinearLayout editMainContainer, @NonNull FrameLayout flInsertLabel, @NonNull FrameLayout flInsertPic, @NonNull FrameLayout flPostingTypeContainer, @NonNull LinearLayout llBottom, @NonNull LinearLayout llHelpPosting, @NonNull RelativeLayout llPostingRecGame, @NonNull EditText postsContent, @NonNull HListView postsPicHlist, @NonNull View postsResLine, @NonNull CustomEdittext postsResLink, @NonNull CustomEdittext postsTitle, @NonNull RelativeLayout rlMain, @NonNull iw0 title, @NonNull TextView tvCoins, @NonNull TextView tvRecGame) {
        this.f45094b = rootView;
        this.f45095c = btnSelectedCoins;
        this.f45096d = btnSelectedGames;
        this.f45097e = editMainContainer;
        this.f45098f = flInsertLabel;
        this.f45099g = flInsertPic;
        this.f45100h = flPostingTypeContainer;
        this.f45101i = llBottom;
        this.f45102j = llHelpPosting;
        this.f45103k = llPostingRecGame;
        this.f45104l = postsContent;
        this.f45105m = postsPicHlist;
        this.f45106n = postsResLine;
        this.f45107o = postsResLink;
        this.f45108p = postsTitle;
        this.f45109q = rlMain;
        this.f45110r = title;
        this.f45111s = tvCoins;
        this.f45112t = tvRecGame;
    }

    @NonNull
    public static t3 bind(@NonNull View rootView) {
        int i10 = R.id.btn_selectedCoins;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_selectedCoins);
        if (button != null) {
            i10 = R.id.btn_selectedGames;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_selectedGames);
            if (button2 != null) {
                i10 = R.id.editMainContainer;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.editMainContainer);
                if (linearLayout != null) {
                    i10 = R.id.fl_insert_label;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fl_insert_label);
                    if (frameLayout != null) {
                        i10 = R.id.fl_insert_pic;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fl_insert_pic);
                        if (frameLayout2 != null) {
                            i10 = R.id.fl_posting_type_container;
                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fl_posting_type_container);
                            if (frameLayout3 != null) {
                                i10 = R.id.ll_bottom;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_bottom);
                                if (linearLayout2 != null) {
                                    i10 = R.id.ll_help_posting;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_help_posting);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.ll_posting_rec_game;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.ll_posting_rec_game);
                                        if (relativeLayout != null) {
                                            i10 = R.id.posts_content;
                                            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.posts_content);
                                            if (editText != null) {
                                                i10 = R.id.posts_pic_hlist;
                                                HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.posts_pic_hlist);
                                                if (hListView != null) {
                                                    i10 = R.id.posts_res_line;
                                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.posts_res_line);
                                                    if (viewFindChildViewById != null) {
                                                        i10 = R.id.posts_res_link;
                                                        CustomEdittext customEdittext = (CustomEdittext) ViewBindings.findChildViewById(rootView, R.id.posts_res_link);
                                                        if (customEdittext != null) {
                                                            i10 = R.id.posts_title;
                                                            CustomEdittext customEdittext2 = (CustomEdittext) ViewBindings.findChildViewById(rootView, R.id.posts_title);
                                                            if (customEdittext2 != null) {
                                                                i10 = R.id.rl_main;
                                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_main);
                                                                if (relativeLayout2 != null) {
                                                                    i10 = R.id.title;
                                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.title);
                                                                    if (viewFindChildViewById2 != null) {
                                                                        iw0 iw0VarBind = iw0.bind(viewFindChildViewById2);
                                                                        i10 = R.id.tv_coins;
                                                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_coins);
                                                                        if (textView != null) {
                                                                            i10 = R.id.tv_rec_game;
                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_rec_game);
                                                                            if (textView2 != null) {
                                                                                return new t3((RelativeLayout) rootView, button, button2, linearLayout, frameLayout, frameLayout2, frameLayout3, linearLayout2, linearLayout3, relativeLayout, editText, hListView, viewFindChildViewById, customEdittext, customEdittext2, relativeLayout2, iw0VarBind, textView, textView2);
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
    public static t3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45094b;
    }

    @NonNull
    public static t3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_posting, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
