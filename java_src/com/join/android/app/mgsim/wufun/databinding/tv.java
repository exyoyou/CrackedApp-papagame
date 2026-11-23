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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;

/* JADX INFO: loaded from: classes4.dex */
public final class tv implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f45448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f45449d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f45450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f45451f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45452g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final sv f45453h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45454i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45455j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f45456k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ClearEditText f45457l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f45458m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final HListView f45459n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ViewPager f45460o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45461p;

    private tv(@NonNull LinearLayout rootView, @NonNull Button btnChatExtension, @NonNull Button btnChatPraise, @NonNull Button btnChatSend, @NonNull Button btnChatStar, @NonNull LinearLayout chatLayoutEmo, @NonNull sv chatLayoutExtension, @NonNull LinearLayout chatLayoutExtensionContainer, @NonNull LinearLayout chatLayoutMore, @NonNull TextView editCommentCount, @NonNull ClearEditText editUserComment, @NonNull ImageView ivCommentCount, @NonNull HListView matchListView, @NonNull ViewPager pagerEmo, @NonNull RelativeLayout rlCommentCount) {
        this.f45447b = rootView;
        this.f45448c = btnChatExtension;
        this.f45449d = btnChatPraise;
        this.f45450e = btnChatSend;
        this.f45451f = btnChatStar;
        this.f45452g = chatLayoutEmo;
        this.f45453h = chatLayoutExtension;
        this.f45454i = chatLayoutExtensionContainer;
        this.f45455j = chatLayoutMore;
        this.f45456k = editCommentCount;
        this.f45457l = editUserComment;
        this.f45458m = ivCommentCount;
        this.f45459n = matchListView;
        this.f45460o = pagerEmo;
        this.f45461p = rlCommentCount;
    }

    @NonNull
    public static tv bind(@NonNull View rootView) {
        int i10 = R.id.btn_chat_extension;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_chat_extension);
        if (button != null) {
            i10 = R.id.btn_chat_praise;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_chat_praise);
            if (button2 != null) {
                i10 = R.id.btn_chat_send;
                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_chat_send);
                if (button3 != null) {
                    i10 = R.id.btn_chat_star;
                    Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_chat_star);
                    if (button4 != null) {
                        i10 = R.id.chat_layout_emo;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.chat_layout_emo);
                        if (linearLayout != null) {
                            i10 = R.id.chat_layout_extension;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.chat_layout_extension);
                            if (viewFindChildViewById != null) {
                                sv svVarBind = sv.bind(viewFindChildViewById);
                                i10 = R.id.chat_layout_extension_container;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.chat_layout_extension_container);
                                if (linearLayout2 != null) {
                                    i10 = R.id.chat_layout_more;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.chat_layout_more);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.edit_comment_count;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.edit_comment_count);
                                        if (textView != null) {
                                            i10 = R.id.edit_user_comment;
                                            ClearEditText clearEditText = (ClearEditText) ViewBindings.findChildViewById(rootView, R.id.edit_user_comment);
                                            if (clearEditText != null) {
                                                i10 = R.id.iv_comment_count;
                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_comment_count);
                                                if (imageView != null) {
                                                    i10 = R.id.matchListView;
                                                    HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.matchListView);
                                                    if (hListView != null) {
                                                        i10 = R.id.pager_emo;
                                                        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.pager_emo);
                                                        if (viewPager != null) {
                                                            i10 = R.id.rl_comment_count;
                                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_comment_count);
                                                            if (relativeLayout != null) {
                                                                return new tv((LinearLayout) rootView, button, button2, button3, button4, linearLayout, svVarBind, linearLayout2, linearLayout3, textView, clearEditText, imageView, hListView, viewPager, relativeLayout);
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
    public static tv inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45447b;
    }

    @NonNull
    public static tv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.include_chat_bottom_bar1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
