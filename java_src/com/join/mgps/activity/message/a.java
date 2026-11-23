package com.join.mgps.activity.message;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.text.Editable;
import android.text.Html;
import android.text.InputFilter;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextWatcher;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.d0;
import com.join.mgps.Util.r0;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.join.mgps.activity.GivePraiceActivity_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.customview.j;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumProfileMessageBean;
import com.join.mgps.dto.ForumProfileMessageData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.MessageCommentReplyResponse;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes9.dex */
@EFragment(R.layout.fragment_communtity)
public class a extends Fragment {
    View A;
    EditText B;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    LinearLayout f57536c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f57537d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    XListView2 f57538e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    g f57539f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f57540g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f57541h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f57542i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    TextView f57543j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    com.join.mgps.rpc.i f57544k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Context f57545l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    Button f57547n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private UserInfo f57548o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    List<i> f57549p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    float f57550q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    float f57551r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    float f57552s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ObjectAnimator f57553t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ObjectAnimator f57554u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    PopupWindow f57556w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    InputFilter[] f57557x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    View f57559z;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f57546m = 1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    boolean f57555v = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    boolean f57558y = false;
    boolean C = true;

    /* JADX INFO: renamed from: com.join.mgps.activity.message.a$a, reason: collision with other inner class name */
    class C0679a implements com.join.mgps.customview.i {
        C0679a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            a.this.M();
            a.this.P();
        }
    }

    class b implements j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            a.this.M();
            a aVar = a.this;
            aVar.f57546m = 1;
            aVar.P();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            PopupWindow popupWindow = a.this.f57556w;
            if (popupWindow == null || !popupWindow.isShowing()) {
                return;
            }
            a.this.f57556w.dismiss();
            a.this.C = true;
        }
    }

    class d implements TextWatcher {
        d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f57564b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f57565c;

        e(final int val$pid, final int val$rid) {
            this.f57564b = val$pid;
            this.f57565c = val$rid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f57556w.dismiss();
            a aVar = a.this;
            aVar.U(aVar.B.getText().toString().trim(), this.f57564b, this.f57565c);
        }
    }

    class f implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f57567b;

        f(final View val$decorView) {
            this.f57567b = val$decorView;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Rect rect = new Rect();
            this.f57567b.getWindowVisibleDisplayFrame(rect);
            if (rect.bottom - rect.top <= (this.f57567b.getHeight() / 3) * 2) {
                a.this.f57558y = true;
                return;
            }
            a aVar = a.this;
            if (aVar.f57558y) {
                aVar.f57556w.dismiss();
                a.this.f57558y = false;
            }
        }
    }

    class g extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Context f57569b;

        /* JADX INFO: renamed from: com.join.mgps.activity.message.a$g$a, reason: collision with other inner class name */
        class ViewOnClickListenerC0680a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ForumProfileMessageBean f57571b;

            ViewOnClickListenerC0680a(final ForumProfileMessageBean val$bean) {
                this.f57571b = val$bean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                a.this.Y(this.f57571b.getComment_id(), this.f57571b.getRid(), this.f57571b.getFrom_nickname());
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ForumProfileMessageBean f57573b;

            b(final ForumProfileMessageBean val$bean3) {
                this.f57573b = val$bean3;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(this.f57573b.getPid());
                r0.w0(g.this.f57569b, forumPostsBean, null);
            }
        }

        class c implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ForumProfileMessageBean f57575b;

            c(final ForumProfileMessageBean val$bean1) {
                this.f57575b = val$bean1;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                a.this.Y(this.f57575b.getComment_id(), this.f57575b.getRid(), this.f57575b.getFrom_nickname());
            }
        }

        class d implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ForumBean.ForumPostsBean f57577b;

            d(final ForumBean.ForumPostsBean val$bean2) {
                this.f57577b = val$bean2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(this.f57577b.getPid());
                r0.w0(g.this.f57569b, forumPostsBean, null);
            }
        }

        class e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            RelativeLayout f57579a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            SimpleDraweeView f57580b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            TextView f57581c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            TextView f57582d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            TextView f57583e;

            e() {
            }
        }

        class f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f57585a;

            f() {
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.activity.message.a$g$g, reason: collision with other inner class name */
        class C0681g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f57587a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            LinearLayout f57588b;

            C0681g() {
            }
        }

        class h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            LinearLayout f57590a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            TextView f57591b;

            h() {
            }
        }

        class i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f57593a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            RelativeLayout f57594b;

            i() {
            }
        }

        public g(Context c10) {
            this.f57569b = c10;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return a.this.f57549p.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return a.this.f57549p.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int position) {
            return a.this.f57549p.get(position).f57600b;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            e eVar;
            View viewInflate;
            String str;
            String strSubstring;
            String strSubstring2;
            String strSubstring3;
            String strSubstring4;
            String strSubstring5;
            i iVar;
            View viewInflate2;
            C0681g c0681g;
            View viewInflate3;
            h hVar;
            View viewInflate4;
            int itemViewType = getItemViewType(position);
            if (itemViewType != 1) {
                String strSubstring6 = "";
                if (itemViewType == 2) {
                    if (convertView == null) {
                        viewInflate = LayoutInflater.from(this.f57569b).inflate(R.layout.community_iconitem, (ViewGroup) null);
                        eVar = new e();
                        eVar.f57579a = (RelativeLayout) viewInflate.findViewById(R.id.rl_icon);
                        eVar.f57580b = (SimpleDraweeView) viewInflate.findViewById(R.id.simv);
                        eVar.f57581c = (TextView) viewInflate.findViewById(R.id.tv_name);
                        eVar.f57583e = (TextView) viewInflate.findViewById(R.id.tv_reply);
                        eVar.f57582d = (TextView) viewInflate.findViewById(R.id.tv_time);
                        viewInflate.setTag(eVar);
                    } else {
                        eVar = (e) convertView.getTag();
                        viewInflate = convertView;
                    }
                    ForumProfileMessageBean forumProfileMessageBean = (ForumProfileMessageBean) a.this.f57549p.get(position).f57599a;
                    eVar.f57580b.setImageURI(forumProfileMessageBean.getFrom_avatar_src());
                    eVar.f57581c.setText(forumProfileMessageBean.getFrom_nickname());
                    int i10 = position + 1;
                    if (a.this.f57549p.get(i10).f57600b == 4) {
                        str = "帖子";
                    } else {
                        int i11 = a.this.f57549p.get(i10).f57600b;
                        str = "了你";
                    }
                    eVar.f57583e.setText("回复" + str);
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
                    Date date = new Date(System.currentTimeMillis());
                    Date date2 = new Date(forumProfileMessageBean.getAdd_time() * 1000);
                    String str2 = simpleDateFormat.format(date);
                    String str3 = simpleDateFormat.format(date2);
                    if (str3 == null || str3.equals("")) {
                        strSubstring = "";
                        strSubstring2 = strSubstring;
                        strSubstring3 = strSubstring2;
                        strSubstring4 = strSubstring3;
                        strSubstring5 = strSubstring4;
                    } else {
                        strSubstring6 = str3.substring(0, str3.indexOf("年"));
                        strSubstring3 = str3.substring(str3.indexOf("年") + 1, str3.indexOf("月"));
                        strSubstring4 = str3.substring(str3.indexOf("月") + 1, str3.indexOf("日"));
                        strSubstring2 = str2.substring(0, str2.indexOf("年"));
                        strSubstring5 = str2.substring(str2.indexOf("年") + 1, str2.indexOf("月"));
                        strSubstring = str2.substring(str2.indexOf("月") + 1, str2.indexOf("日"));
                    }
                    if (!strSubstring6.equals(strSubstring2)) {
                        eVar.f57582d.setText(strSubstring6 + "年" + strSubstring3 + "月" + strSubstring4 + "日");
                    } else if (!strSubstring3.equals(strSubstring5)) {
                        eVar.f57582d.setText(strSubstring3 + "月" + strSubstring4 + "日");
                    } else if (strSubstring4.equals(strSubstring)) {
                        eVar.f57582d.setText(str3.contains(":") ? str3.substring(str3.indexOf(" ") + 1, str3.lastIndexOf(":")) : str3.substring(str3.indexOf(" ") + 1, str3.indexOf("分")));
                    } else {
                        eVar.f57582d.setText(strSubstring3 + "月" + strSubstring4 + "日");
                    }
                    eVar.f57579a.setOnClickListener(new ViewOnClickListenerC0680a(forumProfileMessageBean));
                    return viewInflate;
                }
                if (itemViewType == 3) {
                    if (convertView == null) {
                        viewInflate2 = LayoutInflater.from(this.f57569b).inflate(R.layout.community_replyitem, (ViewGroup) null);
                        iVar = new i();
                        iVar.f57593a = (TextView) viewInflate2.findViewById(R.id.reply_name);
                        iVar.f57594b = (RelativeLayout) viewInflate2.findViewById(R.id.rl_reply);
                        viewInflate2.setTag(iVar);
                    } else {
                        iVar = (i) convertView.getTag();
                        viewInflate2 = convertView;
                    }
                    ForumProfileMessageBean forumProfileMessageBean2 = (ForumProfileMessageBean) a.this.f57549p.get(position).f57599a;
                    iVar.f57593a.setText(Html.fromHtml("<font color='#3CA4FD'>" + forumProfileMessageBean2.getReply().getNickname() + ":  </font><font color='#000000'>" + forumProfileMessageBean2.getReply().getMessage() + "</font>"));
                    iVar.f57594b.setOnClickListener(new b(forumProfileMessageBean2));
                    return viewInflate2;
                }
                if (itemViewType == 4) {
                    if (convertView == null) {
                        viewInflate3 = LayoutInflater.from(this.f57569b).inflate(R.layout.community_messageitem, (ViewGroup) null);
                        c0681g = new C0681g();
                        c0681g.f57587a = (TextView) viewInflate3.findViewById(R.id.tv_message);
                        c0681g.f57588b = (LinearLayout) viewInflate3.findViewById(R.id.LL_message);
                    } else {
                        c0681g = (C0681g) convertView.getTag();
                        viewInflate3 = convertView;
                    }
                    ForumProfileMessageBean forumProfileMessageBean3 = (ForumProfileMessageBean) a.this.f57549p.get(position).f57599a;
                    c0681g.f57587a.setText(forumProfileMessageBean3.getMessage());
                    viewInflate3.setTag(c0681g);
                    a.this.S(c0681g.f57587a);
                    c0681g.f57588b.setOnClickListener(new c(forumProfileMessageBean3));
                    return viewInflate3;
                }
                if (itemViewType == 5) {
                    if (convertView == null) {
                        viewInflate4 = LayoutInflater.from(this.f57569b).inflate(R.layout.community_postitem, (ViewGroup) null);
                        hVar = new h();
                        hVar.f57590a = (LinearLayout) viewInflate4.findViewById(R.id.ll_post);
                        hVar.f57591b = (TextView) viewInflate4.findViewById(R.id.tv_post);
                        viewInflate4.setTag(hVar);
                    } else {
                        hVar = (h) convertView.getTag();
                        viewInflate4 = convertView;
                    }
                    ForumBean.ForumPostsBean forumPostsBean = (ForumBean.ForumPostsBean) a.this.f57549p.get(position).f57599a;
                    String message = (forumPostsBean.getMessage() == null || forumPostsBean.getSubject().equals("")) ? forumPostsBean.getMessage() : forumPostsBean.getSubject();
                    hVar.f57591b.setText("原文：" + message);
                    hVar.f57590a.setOnClickListener(new d(forumPostsBean));
                    return viewInflate4;
                }
            } else {
                if (convertView == null) {
                    View viewInflate5 = LayoutInflater.from(this.f57569b).inflate(R.layout.community_lineitem, (ViewGroup) null);
                    viewInflate5.setTag(new f());
                    return viewInflate5;
                }
            }
            return convertView;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 6;
        }
    }

    class h extends ClickableSpan {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Context f57596b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f57597c;

        public h(Context context, String url) {
            this.f57596b = context;
            this.f57597c = url;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            IntentUtil.getInstance().goShareWebActivity(this.f57596b, this.f57597c);
        }
    }

    class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f57599a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f57600b;

        public i(Object object, int type) {
            this.f57599a = object;
            this.f57600b = type;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(TextView tv2) {
        tv2.setMovementMethod(d0.a());
        CharSequence text = tv2.getText();
        if (text instanceof Spannable) {
            int length = text.length();
            Spannable spannable = (Spannable) tv2.getText();
            URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, length, URLSpan.class);
            if (uRLSpanArr.length == 0) {
                return;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
            for (URLSpan uRLSpan : uRLSpanArr) {
                String url = uRLSpan.getURL();
                if (url.indexOf("http://") == 0 || url.indexOf("https://") == 0) {
                    spannableStringBuilder.setSpan(new h(tv2.getContext(), url), spannable.getSpanStart(uRLSpan), spannable.getSpanEnd(uRLSpan), 17);
                }
            }
            tv2.setText(spannableStringBuilder);
        }
    }

    private void X(View rootview) {
        this.f57556w.showAtLocation(rootview, 81, 0, 0);
    }

    @UiThread
    void M() {
        try {
            XListView2 xListView2 = this.f57538e;
            if (xListView2 != null) {
                xListView2.l();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void O(List<i> datas) {
        datas.clear();
        g gVar = this.f57539f;
        if (gVar != null) {
            gVar.notifyDataSetChanged();
        }
    }

    @Background
    void P() {
        try {
            if (!m.j(this.f57545l)) {
                W(2);
                Q();
                showLodingFailed();
                return;
            }
            ArrayList arrayList = new ArrayList();
            com.join.mgps.rpc.i iVar = this.f57544k;
            int uid = this.f57548o.getUid();
            String token = this.f57548o.getToken();
            int i10 = this.f57546m;
            this.f57546m = i10 + 1;
            ForumResponse<ForumProfileMessageData> forumResponseZ = iVar.Z(uid, token, i10, 10);
            c0();
            if (forumResponseZ == null || forumResponseZ.getData() == null) {
                return;
            }
            forumResponseZ.getData().getUn_read_praise_count();
            if (forumResponseZ.getData().getMessage_list() == null || forumResponseZ.getData().getMessage_list().size() <= 0) {
                if (this.f57546m != 2) {
                    V();
                    return;
                }
                Q();
                W(1);
                V();
                return;
            }
            List<ForumProfileMessageBean> message_list = forumResponseZ.getData().getMessage_list();
            if (this.f57546m == 2) {
                arrayList.clear();
                O(this.f57549p);
            }
            for (int i11 = 0; i11 < message_list.size(); i11++) {
                arrayList.add(new i("", 1));
                arrayList.add(new i(message_list.get(i11), 2));
                if (message_list.get(i11).getReply() != null) {
                    arrayList.add(new i(message_list.get(i11), 3));
                }
                if (message_list.get(i11) != null && message_list.get(i11).getMessage() != null) {
                    arrayList.add(new i(message_list.get(i11), 4));
                }
                if (message_list.get(i11).getPosts() != null) {
                    arrayList.add(new i(message_list.get(i11).getPosts(), 5));
                }
            }
            T(arrayList);
            Q();
            if (message_list.size() < 10) {
                V();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            Q();
            showLodingFailed();
        }
    }

    @UiThread
    void Q() {
        LinearLayout linearLayout = this.f57540g;
        if (linearLayout == null || this.f57541h == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f57541h.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void R() {
        TextView textView = this.f57543j;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    @UiThread
    void T(List<i> datas2) {
        try {
            this.f57549p.addAll(datas2);
            g gVar = this.f57539f;
            if (gVar != null) {
                gVar.notifyDataSetChanged();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void U(String message, int pid, int rid) {
        if (message.equals("")) {
            showToast("不能回复空字符串");
            return;
        }
        String str = com.join.mgps.rpc.h.f72353k + "/group/comment/reply";
        if (!m.j(this.f57545l)) {
            showToast("暂无网络");
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put("uid", Integer.valueOf(this.f57548o.getUid()));
            map.put(Constants.TOKEN, this.f57548o.getToken());
            map.put(ForumPostsTagSelectActivity_.PID_EXTRA, Integer.valueOf(pid));
            map.put("message", message);
            map.put("device_id", "");
            map.put("rid", Integer.valueOf(rid));
            ForumResponse<MessageCommentReplyResponse> forumResponseA = this.f57544k.A(str, map);
            if (forumResponseA == null || forumResponseA.getData() == null || !forumResponseA.getData().isResult()) {
                showToast("评论失败");
            } else {
                showToast("评论成功，内容将在审核后显示");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void V() {
        XListView2 xListView2 = this.f57538e;
        if (xListView2 != null) {
            xListView2.setNoMore();
            this.f57538e.u();
            this.f57538e.v();
        }
    }

    @UiThread
    void W(int i10) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f57537d;
        if (ptrClassicFrameLayout == null || this.f57538e == null || this.f57542i == null) {
            return;
        }
        if (i10 != 1) {
            ptrClassicFrameLayout.setVisibility(8);
            this.f57538e.setVisibility(8);
        } else {
            ptrClassicFrameLayout.setVisibility(8);
            this.f57538e.setVisibility(8);
            this.f57542i.setVisibility(0);
        }
    }

    @UiThread
    void Y(final int pid, final int rid, String name) {
        this.C = false;
        if (this.f57559z != null) {
            ((InputMethodManager) this.f57545l.getSystemService("input_method")).toggleSoftInput(0, 2);
            SpannableString spannableString = new SpannableString("@ " + name + ":");
            spannableString.setSpan(new AbsoluteSizeSpan(15, true), 0, spannableString.length(), 33);
            this.B.setHint(new SpannedString(spannableString));
            PopupWindow popupWindow = this.f57556w;
            if (popupWindow != null) {
                popupWindow.showAtLocation(this.A, 81, 0, 0);
                return;
            }
            return;
        }
        this.f57559z = LayoutInflater.from(this.f57545l).inflate(R.layout.appointment_pay_popwindow_page, (ViewGroup) null);
        this.f57556w = new PopupWindow(this.f57559z, -1, -1, true);
        this.B = (EditText) this.f57559z.findViewById(R.id.edit);
        ((LinearLayout) this.f57559z.findViewById(R.id.ll_dismiss)).setOnClickListener(new c());
        SpannableString spannableString2 = new SpannableString("@ " + name + ":");
        spannableString2.setSpan(new AbsoluteSizeSpan(15, true), 0, spannableString2.length(), 33);
        this.B.setHint(new SpannedString(spannableString2));
        Button button = (Button) this.f57559z.findViewById(R.id.btn_confirm);
        this.B.addTextChangedListener(new d());
        button.setOnClickListener(new e(pid, rid));
        this.B.setFocusable(true);
        this.f57556w.setFocusable(true);
        this.B.setFocusableInTouchMode(true);
        this.B.setFocusable(true);
        this.B.requestFocus();
        ((InputMethodManager) this.f57545l.getSystemService("input_method")).toggleSoftInput(0, 2);
        View decorView = getActivity().getWindow().getDecorView();
        decorView.getViewTreeObserver().addOnGlobalLayoutListener(new f(decorView));
        View viewInflate = LayoutInflater.from(this.f57545l).inflate(R.layout.fragment_communtity, (ViewGroup) null);
        this.A = viewInflate;
        X(viewInflate);
    }

    @UiThread
    void Z() {
        LinearLayout linearLayout = this.f57536c;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
    }

    @UiThread
    void a0() {
        TextView textView = this.f57543j;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }

    @AfterViews
    @SuppressLint({"ClickableViewAccessibility"})
    void afterViews() {
        this.f57545l = getActivity();
        this.f57549p = new ArrayList();
        getArguments();
        g gVar = new g(getActivity());
        this.f57539f = gVar;
        this.f57538e.setAdapter((ListAdapter) gVar);
        this.f57544k = com.join.mgps.rpc.impl.g.A0();
        this.f57548o = AccountUtil_.getInstance_(getActivity()).getAccountData();
        this.f57538e.l();
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.P;
        if (dataBean != null && dataBean.getCommunity_praise_surplus_number() > 0) {
            a0();
        }
        this.f57538e.setPullLoadEnable(new C0679a());
        this.f57538e.setPullRefreshEnable(new b());
        showLoding();
        P();
    }

    @Click
    void b0() {
        R();
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.P;
        if (dataBean != null) {
            dataBean.setCommunity_praise_surplus_number(0);
        }
        Intent intent = new Intent(getActivity(), (Class<?>) GivePraiceActivity_.class);
        intent.putExtra("praice", 1);
        startActivity(intent);
    }

    @UiThread
    void c0() {
        XListView2 xListView2 = this.f57538e;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.f57538e.v();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f57545l);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (isVisibleToUser && this.f57555v) {
            this.f57555v = false;
            this.f57546m = 1;
            P();
        }
    }

    @UiThread
    void showLoding() {
        try {
            LinearLayout linearLayout = this.f57540g;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f57541h;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f57541h;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f57540g;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    @UiThread
    void showToast(String mess) {
        a3.b(this.f57545l).d(mess);
    }
}
