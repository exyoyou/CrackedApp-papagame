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
public final class wc implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f46738c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f46739d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f46740e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46741f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final sv f46742g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46743h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46744i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f46745j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ClearEditText f46746k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final HListView f46747l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ViewPager f46748m;

    private wc(@NonNull LinearLayout rootView, @NonNull Button btnChatExtension, @NonNull Button btnChatPraise, @NonNull Button btnChatSend, @NonNull LinearLayout chatLayoutEmo, @NonNull sv chatLayoutExtension, @NonNull LinearLayout chatLayoutExtensionContainer, @NonNull LinearLayout chatLayoutMore, @NonNull TextView editCommentCount, @NonNull ClearEditText editUserComment, @NonNull HListView matchListView, @NonNull ViewPager pagerEmo) {
        this.f46737b = rootView;
        this.f46738c = btnChatExtension;
        this.f46739d = btnChatPraise;
        this.f46740e = btnChatSend;
        this.f46741f = chatLayoutEmo;
        this.f46742g = chatLayoutExtension;
        this.f46743h = chatLayoutExtensionContainer;
        this.f46744i = chatLayoutMore;
        this.f46745j = editCommentCount;
        this.f46746k = editUserComment;
        this.f46747l = matchListView;
        this.f46748m = pagerEmo;
    }

    @NonNull
    public static wc bind(@NonNull View rootView) {
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
                                                    return new wc((LinearLayout) rootView, button, button2, button3, linearLayout, svVarBind, linearLayout2, linearLayout3, textView, clearEditText, hListView, viewPager);
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
    public static wc inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46737b;
    }

    @NonNull
    public static wc inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detail_chat_bottom_bar, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
