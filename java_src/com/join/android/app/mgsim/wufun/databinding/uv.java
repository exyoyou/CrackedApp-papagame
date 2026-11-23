package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
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
public final class uv implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f45923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f45924d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f45925e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45926f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final sv f45927g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45928h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45929i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45930j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ClearEditText f45931k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final HListView f45932l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ViewPager f45933m;

    private uv(@NonNull LinearLayout rootView, @NonNull Button btnChatExtension, @NonNull Button btnChatPraise, @NonNull Button btnChatSend, @NonNull LinearLayout chatLayoutEmo, @NonNull sv chatLayoutExtension, @NonNull LinearLayout chatLayoutExtensionContainer, @NonNull LinearLayout chatLayoutMore, @NonNull TextView editCommentCount, @NonNull ClearEditText editUserComment, @NonNull HListView matchListView, @NonNull ViewPager pagerEmo) {
        this.f45922b = rootView;
        this.f45923c = btnChatExtension;
        this.f45924d = btnChatPraise;
        this.f45925e = btnChatSend;
        this.f45926f = chatLayoutEmo;
        this.f45927g = chatLayoutExtension;
        this.f45928h = chatLayoutExtensionContainer;
        this.f45929i = chatLayoutMore;
        this.f45930j = editCommentCount;
        this.f45931k = editUserComment;
        this.f45932l = matchListView;
        this.f45933m = pagerEmo;
    }

    @NonNull
    public static uv bind(@NonNull View rootView) {
        int i10 = R.id.btn_chat_extension;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_chat_extension);
        if (button != null) {
            i10 = R.id.btn_chat_praise;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_chat_praise);
            if (button2 != null) {
                i10 = R.id.btn_chat_send;
                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_chat_send);
                if (button3 != null) {
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
                                            i10 = R.id.matchListView;
                                            HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.matchListView);
                                            if (hListView != null) {
                                                i10 = R.id.pager_emo;
                                                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.pager_emo);
                                                if (viewPager != null) {
                                                    return new uv((LinearLayout) rootView, button, button2, button3, linearLayout, svVarBind, linearLayout2, linearLayout3, textView, clearEditText, hListView, viewPager);
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
    public static uv inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45922b;
    }

    @NonNull
    public static uv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.include_chat_bottom_bar, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
