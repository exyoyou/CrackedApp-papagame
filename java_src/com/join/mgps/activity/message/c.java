package com.join.mgps.activity.message;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.Editable;
import android.text.Html;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.AbsoluteSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.s2;
import com.join.mgps.activity.CommentDetailActivity_;
import com.join.mgps.activity.GivePraiceActivity_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.customview.i;
import com.join.mgps.customview.j;
import com.join.mgps.dto.CommentCreateArgs;
import com.join.mgps.dto.CommentCreateBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.GameReplyMessageListBean;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes9.dex */
@EFragment(R.layout.fragment_communtity)
public class c extends Fragment {
    EditText A;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    LinearLayout f57630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f57631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    XListView2 f57632e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    f f57633f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f57634g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f57635h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f57636i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    TextView f57637j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    com.join.mgps.rpc.e f57638k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    com.join.mgps.rpc.f f57639l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    Context f57640m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Pref
    PrefDef_ f57642o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    Button f57643p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private UserInfo f57645r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    List<g> f57646s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    List<GameReplyMessageListBean.MessagesBean.DataBean> f57647t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    PopupWindow f57649v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    InputFilter[] f57650w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    View f57652y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    View f57653z;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f57641n = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f57644q = true;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f57648u = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    boolean f57651x = false;

    class a implements i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            c.this.M();
            c.this.Q();
        }
    }

    class b implements j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            c.this.M();
            c cVar = c.this;
            cVar.f57641n = 1;
            cVar.Q();
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.activity.message.c$c, reason: collision with other inner class name */
    class ViewOnClickListenerC0683c implements View.OnClickListener {
        ViewOnClickListenerC0683c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            PopupWindow popupWindow = c.this.f57649v;
            if (popupWindow == null || !popupWindow.isShowing()) {
                return;
            }
            c.this.f57649v.dismiss();
            c.this.f57644q = true;
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
        final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f57658b;

        e(final GameReplyMessageListBean.MessagesBean.DataBean val$bean) {
            this.f57658b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            c.this.f57649v.dismiss();
            c cVar = c.this;
            cVar.X(cVar.A.getText().toString().trim(), this.f57658b);
        }
    }

    class f extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Context f57660b;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f57662b;

            a(final GameReplyMessageListBean.MessagesBean.DataBean val$bean) {
                this.f57662b = val$bean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                c.this.a0(this.f57662b);
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f57664b;

            b(final GameReplyMessageListBean.MessagesBean.DataBean val$bean3) {
                this.f57664b = val$bean3;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                CommentDetailActivity_.intent(f.this.f57660b).d(this.f57664b.getGame_id()).b(this.f57664b.getOriginal_text_id() + "").f("").a(1).e(0).h(1).g("").c(this.f57664b.getComment_score_switch() + "").start();
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.activity.message.c$f$c, reason: collision with other inner class name */
        class ViewOnClickListenerC0684c implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f57666b;

            ViewOnClickListenerC0684c(final GameReplyMessageListBean.MessagesBean.DataBean val$bean4) {
                this.f57666b = val$bean4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                c.this.a0(this.f57666b);
            }
        }

        class d implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f57668b;

            d(final GameReplyMessageListBean.MessagesBean.DataBean val$bean5) {
                this.f57668b = val$bean5;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                CommentDetailActivity_.intent(f.this.f57660b).d(this.f57668b.getGame_id()).b(this.f57668b.getOriginal_text_id() + "").f("").a(1).e(0).h(1).g("").c(this.f57668b.getComment_score_switch() + "").start();
            }
        }

        class e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            RelativeLayout f57670a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            SimpleDraweeView f57671b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            TextView f57672c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            TextView f57673d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            TextView f57674e;

            e() {
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.activity.message.c$f$f, reason: collision with other inner class name */
        class C0685f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f57676a;

            C0685f() {
            }
        }

        class g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f57678a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            LinearLayout f57679b;

            g() {
            }
        }

        class h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            LinearLayout f57681a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            TextView f57682b;

            h() {
            }
        }

        class i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f57684a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            RelativeLayout f57685b;

            i() {
            }
        }

        public f(Context c10) {
            this.f57660b = c10;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return c.this.f57646s.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return c.this.f57646s.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int position) {
            return c.this.f57646s.get(position).f57688b;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            e eVar;
            String str;
            String strSubstring;
            String strSubstring2;
            String strSubstring3;
            String strSubstring4;
            i iVar;
            View viewInflate;
            g gVar;
            View viewInflate2;
            h hVar;
            View viewInflate3;
            int itemViewType = getItemViewType(position);
            if (itemViewType != 1) {
                if (itemViewType == 2) {
                    if (convertView == null) {
                        convertView = LayoutInflater.from(this.f57660b).inflate(R.layout.community_iconitem, (ViewGroup) null);
                        eVar = new e();
                        eVar.f57670a = (RelativeLayout) convertView.findViewById(R.id.rl_icon);
                        eVar.f57671b = (SimpleDraweeView) convertView.findViewById(R.id.simv);
                        eVar.f57672c = (TextView) convertView.findViewById(R.id.tv_name);
                        eVar.f57674e = (TextView) convertView.findViewById(R.id.tv_reply);
                        eVar.f57673d = (TextView) convertView.findViewById(R.id.tv_time);
                        convertView.setTag(eVar);
                    } else {
                        eVar = (e) convertView.getTag();
                        convertView = convertView;
                    }
                    GameReplyMessageListBean.MessagesBean.DataBean dataBean = (GameReplyMessageListBean.MessagesBean.DataBean) c.this.f57646s.get(position).f57687a;
                    eVar.f57671b.setImageURI(dataBean.getCurrent_reply_user_ico());
                    eVar.f57672c.setText(dataBean.getCurrent_reply_title().split(" ")[0]);
                    eVar.f57674e.setText(dataBean.getCurrent_reply_title().split(" ")[1]);
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
                    Date date = new Date(System.currentTimeMillis());
                    Date date2 = new Date(dataBean.getCurrent_reply_time() * 1000);
                    String str2 = simpleDateFormat.format(date);
                    String str3 = simpleDateFormat.format(date2);
                    String strSubstring5 = "";
                    if (str3 == null || str3.equals("")) {
                        str = "";
                        strSubstring = str;
                        strSubstring2 = strSubstring;
                        strSubstring3 = strSubstring2;
                        strSubstring4 = strSubstring3;
                    } else {
                        strSubstring5 = str3.substring(0, str3.indexOf("年"));
                        strSubstring4 = str3.substring(str3.indexOf("年") + 1, str3.indexOf("月"));
                        strSubstring = str3.substring(str3.indexOf("月") + 1, str3.indexOf("日"));
                        strSubstring2 = str2.substring(0, str2.indexOf("年"));
                        String strSubstring6 = str2.substring(str2.indexOf("年") + 1, str2.indexOf("月"));
                        strSubstring3 = str2.substring(str2.indexOf("月") + 1, str2.indexOf("日"));
                        str = strSubstring6;
                    }
                    if (!strSubstring5.equals(strSubstring2)) {
                        eVar.f57673d.setText(strSubstring5 + "年" + strSubstring4 + "月" + strSubstring + "日");
                    } else if (!strSubstring4.equals(str)) {
                        eVar.f57673d.setText(strSubstring4 + "月" + strSubstring + "日");
                    } else if (strSubstring.equals(strSubstring3)) {
                        eVar.f57673d.setText(str3.contains(":") ? str3.substring(str3.indexOf(" ") + 1, str3.lastIndexOf(":")) : str3.substring(str3.indexOf(" ") + 1, str3.indexOf("分")));
                    } else {
                        eVar.f57673d.setText(strSubstring4 + "月" + strSubstring + "日");
                    }
                    eVar.f57670a.setOnClickListener(new a(dataBean));
                } else {
                    if (itemViewType == 3) {
                        if (convertView == null) {
                            viewInflate = LayoutInflater.from(this.f57660b).inflate(R.layout.community_replyitem, (ViewGroup) null);
                            iVar = new i();
                            iVar.f57684a = (TextView) viewInflate.findViewById(R.id.reply_name);
                            iVar.f57685b = (RelativeLayout) viewInflate.findViewById(R.id.rl_reply);
                            viewInflate.setTag(iVar);
                        } else {
                            iVar = (i) convertView.getTag();
                            viewInflate = convertView;
                        }
                        GameReplyMessageListBean.MessagesBean.DataBean dataBean2 = (GameReplyMessageListBean.MessagesBean.DataBean) c.this.f57646s.get(position).f57687a;
                        try {
                            if (dataBean2.getReply_sub().getReply_text().contains("@")) {
                                String str4 = dataBean2.getReply_sub().getReply_text().split("@")[1];
                                String str5 = dataBean2.getReply_sub().getReply_text().split("@")[0];
                                String str6 = str4.split(":")[1];
                                iVar.f57684a.setText(Html.fromHtml("<font color='#3CA4FD'>" + str5 + "</font><font color='#000000'>" + str6 + "</font>"));
                            } else {
                                iVar.f57684a.setText(dataBean2.getReply_sub().getReply_text());
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                        iVar.f57685b.setOnClickListener(new b(dataBean2));
                        return viewInflate;
                    }
                    if (itemViewType == 4) {
                        if (convertView == null) {
                            viewInflate2 = LayoutInflater.from(this.f57660b).inflate(R.layout.community_messageitem, (ViewGroup) null);
                            gVar = new g();
                            gVar.f57678a = (TextView) viewInflate2.findViewById(R.id.tv_message);
                            gVar.f57679b = (LinearLayout) viewInflate2.findViewById(R.id.LL_message);
                            viewInflate2.setTag(gVar);
                        } else {
                            gVar = (g) convertView.getTag();
                            viewInflate2 = convertView;
                        }
                        GameReplyMessageListBean.MessagesBean.DataBean dataBean3 = (GameReplyMessageListBean.MessagesBean.DataBean) c.this.f57646s.get(position).f57687a;
                        gVar.f57678a.setText(dataBean3.getCurrent_reply_text().substring(dataBean3.getCurrent_reply_text().indexOf(":") + 1, dataBean3.getCurrent_reply_text().length()));
                        gVar.f57679b.setOnClickListener(new ViewOnClickListenerC0684c(dataBean3));
                        return viewInflate2;
                    }
                    if (itemViewType == 5) {
                        if (convertView == null) {
                            viewInflate3 = LayoutInflater.from(this.f57660b).inflate(R.layout.community_postitem, (ViewGroup) null);
                            hVar = new h();
                            hVar.f57681a = (LinearLayout) viewInflate3.findViewById(R.id.ll_post);
                            hVar.f57682b = (TextView) viewInflate3.findViewById(R.id.tv_post);
                            viewInflate3.setTag(hVar);
                        } else {
                            hVar = (h) convertView.getTag();
                            viewInflate3 = convertView;
                        }
                        GameReplyMessageListBean.MessagesBean.DataBean dataBean4 = (GameReplyMessageListBean.MessagesBean.DataBean) c.this.f57646s.get(position).f57687a;
                        if (dataBean4.getOriginal_text().contains("@") && dataBean4.getOriginal_text().substring(0, 1).equals("@")) {
                            String[] strArrSplit = dataBean4.getOriginal_text().split(":");
                            String str7 = strArrSplit.length > 1 ? strArrSplit[1] : strArrSplit[0];
                            hVar.f57682b.setText("原文：" + str7);
                        } else {
                            hVar.f57682b.setText("原文：" + dataBean4.getOriginal_text());
                        }
                        hVar.f57681a.setOnClickListener(new d(dataBean4));
                        return viewInflate3;
                    }
                }
            } else {
                if (convertView == null) {
                    View viewInflate4 = LayoutInflater.from(this.f57660b).inflate(R.layout.community_lineitem, (ViewGroup) null);
                    viewInflate4.setTag(new C0685f());
                    return viewInflate4;
                }
            }
            return convertView;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 6;
        }
    }

    class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f57687a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f57688b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        GameReplyMessageListBean.MessagesBean.DataBean f57689c;

        public g(Object object, int type) {
            this.f57687a = object;
            this.f57688b = type;
        }
    }

    private void Z(View rootview) {
        this.f57649v.showAtLocation(rootview, 81, 0, 0);
    }

    @UiThread
    void M() {
        try {
            XListView2 xListView2 = this.f57632e;
            if (xListView2 != null) {
                xListView2.l();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void N(List<g> datas) {
        datas.clear();
        f fVar = this.f57633f;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    public CommentCreateArgs O(String gameid, String replyCommentId, String str, String upPhoneModel, String reply_comment_user_id, String reply_comment_user_name, String reply_comment_id, int pn) {
        String str2;
        String avatarSrc;
        String token;
        int i10;
        String strD = this.f57642o.commentToken().d();
        UserInfo accountData = AccountUtil_.getInstance_(this.f57640m).getAccountData();
        this.f57645r = accountData;
        if (accountData != null) {
            int uid = accountData.getUid();
            String nickname = this.f57645r.getNickname();
            i10 = uid;
            str2 = nickname;
            avatarSrc = this.f57645r.getAvatarSrc();
            token = this.f57645r.getToken();
        } else {
            str2 = "";
            avatarSrc = str2;
            token = avatarSrc;
            i10 = -1;
        }
        return RequestBeanUtil.getInstance(this.f57640m).getReplyCreateCommentBean(gameid, 0.0f, str, strD, upPhoneModel, 2, replyCommentId, str2, avatarSrc, token, i10, reply_comment_user_id, reply_comment_user_name, reply_comment_id, pn);
    }

    @Background
    void P() {
        if (m.j(this.f57640m)) {
            try {
                CommentResponse<CommentTokenBean> commentResponseG = this.f57639l.g(RequestBeanUtil.getInstance(this.f57640m).getTokenRequestBean(AccountUtil_.getInstance_(this.f57640m).getUid(), ""));
                if (commentResponseG == null || commentResponseG.getCode() != 0 || commentResponseG.getData_info() == null || TextUtils.isEmpty(commentResponseG.getData_info().getToken())) {
                    return;
                }
                this.f57642o.commentToken().g(AESUtils.f(commentResponseG.getData_info().getToken() + "|" + commentResponseG.getData_info().getTimes()));
                this.f57642o.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Background
    void Q() {
        try {
            if (!m.j(this.f57640m)) {
                Y(2);
                R();
                showLodingFailed();
                return;
            }
            ArrayList arrayList = new ArrayList();
            RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this.f57640m);
            int i10 = this.f57641n;
            this.f57641n = i10 + 1;
            GameReplyMessageListBean gameReplyMessageListBeanG = this.f57638k.G(requestBeanUtil.getGameReplyMessageRequestBean(i10, this.f57645r.getUid(), this.f57645r.getToken()));
            e0();
            if (gameReplyMessageListBeanG != null) {
                if (gameReplyMessageListBeanG.getMessages() == null || gameReplyMessageListBeanG.getMessages().getData() == null || gameReplyMessageListBeanG.getMessages().getData().size() <= 0) {
                    if (this.f57641n != 2) {
                        W();
                        return;
                    }
                    R();
                    Y(1);
                    W();
                    return;
                }
                this.f57647t = gameReplyMessageListBeanG.getMessages().getData();
                if (this.f57641n == 2) {
                    arrayList.clear();
                    N(this.f57646s);
                }
                for (int i11 = 0; i11 < this.f57647t.size(); i11++) {
                    arrayList.add(new g("", 1));
                    if (this.f57647t.get(i11).getCurrent_reply_text() != null && !this.f57647t.get(i11).getCurrent_reply_text().equals("")) {
                        arrayList.add(new g(this.f57647t.get(i11), 2));
                    }
                    if (this.f57647t.get(i11).getReply_sub() != null && this.f57647t.get(i11).getReply_sub().getReply_text() != null && !this.f57647t.get(i11).getReply_sub().getReply_text().equals("")) {
                        arrayList.add(new g(this.f57647t.get(i11), 3));
                    }
                    if (this.f57647t.get(i11).getCurrent_reply_text() != null && !this.f57647t.get(i11).getCurrent_reply_text().equals("")) {
                        arrayList.add(new g(this.f57647t.get(i11), 4));
                    }
                    if (this.f57647t.get(i11).getOriginal_text() != null && !this.f57647t.get(i11).getOriginal_text().equals("")) {
                        arrayList.add(new g(this.f57647t.get(i11), 5));
                    }
                }
                T(arrayList);
                R();
                if (this.f57647t.size() < 10) {
                    W();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            R();
            showLodingFailed();
        }
    }

    @UiThread
    void R() {
        LinearLayout linearLayout;
        if (this.f57635h == null || (linearLayout = this.f57634g) == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f57635h.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void S() {
        TextView textView = this.f57637j;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    @UiThread
    void T(List<g> datas2) {
        try {
            this.f57646s.addAll(datas2);
            f fVar = this.f57633f;
            if (fVar != null) {
                fVar.notifyDataSetChanged();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void U(CommentResponse bean) {
        if (bean.getCode() != 801) {
            a3.b(this.f57640m).d(bean.getMsg());
        } else {
            P();
            a3.b(this.f57640m).d("数据访问失败，请稍候再试！");
        }
    }

    @UiThread
    void V(String msg, CommentCreateBean.InfoBean bean, boolean b10) {
        a3.b(this.f57640m).d(msg);
    }

    @UiThread
    void W() {
        XListView2 xListView2 = this.f57632e;
        if (xListView2 != null) {
            xListView2.setNoMore();
            this.f57632e.u();
            this.f57632e.v();
        }
    }

    @Background
    void X(String trim, final GameReplyMessageListBean.MessagesBean.DataBean bean) {
        if (trim.equals("")) {
            a3.b(this.f57640m).d("不能回复空字符串");
            return;
        }
        if (!s2.d(trim, 4)) {
            a3.b(this.f57640m).d("超过3个字才能回复");
            return;
        }
        if (!m.j(this.f57640m)) {
            V("网络连接失败，再试试吧~", null, false);
            return;
        }
        try {
            String str = bean.getCurrent_reply_text_id() + "";
            String str2 = bean.getCurrent_reply_title().split(" ")[0];
            CommentResponse<CommentCreateBean> commentResponseB = this.f57639l.b(O(bean.getGame_id(), str, trim, Build.MODEL, bean.getCurrent_reply_text_uid() + "", str2, str, this.f57641n));
            if (commentResponseB == null) {
                V("回复失败，请稍候再试~", null, false);
            } else if (commentResponseB.getCode() != 0) {
                if (commentResponseB.getCode() == 801) {
                    U(commentResponseB);
                } else {
                    V(commentResponseB.getMsg(), null, false);
                }
            } else if (commentResponseB.getData_info().getInfo() != null) {
                V("回复成功，内容将在审核后显示", commentResponseB.getData_info().getInfo(), true);
            }
        } catch (Exception e10) {
            V(e10.getMessage(), null, false);
            e10.printStackTrace();
        }
    }

    @UiThread
    void Y(int i10) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f57631d;
        if (ptrClassicFrameLayout == null || this.f57632e == null || this.f57636i == null) {
            return;
        }
        if (i10 != 1) {
            ptrClassicFrameLayout.setVisibility(8);
            this.f57632e.setVisibility(8);
        } else {
            ptrClassicFrameLayout.setVisibility(8);
            this.f57632e.setVisibility(8);
            this.f57636i.setVisibility(0);
        }
    }

    @UiThread
    void a0(final GameReplyMessageListBean.MessagesBean.DataBean bean) {
        this.f57644q = false;
        if (this.f57652y != null) {
            ((InputMethodManager) this.f57640m.getSystemService("input_method")).toggleSoftInput(0, 2);
            SpannableString spannableString = new SpannableString("@ " + bean.getCurrent_reply_title().split(" ")[0] + ":");
            spannableString.setSpan(new AbsoluteSizeSpan(15, true), 0, spannableString.length(), 33);
            this.A.setHint(new SpannedString(spannableString));
            this.f57649v.showAtLocation(this.f57653z, 81, 0, 0);
            return;
        }
        this.f57652y = LayoutInflater.from(this.f57640m).inflate(R.layout.appointment_pay_popwindow_page, (ViewGroup) null);
        this.f57649v = new PopupWindow(this.f57652y, -1, -1, true);
        this.A = (EditText) this.f57652y.findViewById(R.id.edit);
        ((LinearLayout) this.f57652y.findViewById(R.id.ll_dismiss)).setOnClickListener(new ViewOnClickListenerC0683c());
        SpannableString spannableString2 = new SpannableString("@ " + bean.getCurrent_reply_title().split(" ")[0] + ":");
        spannableString2.setSpan(new AbsoluteSizeSpan(15, true), 0, spannableString2.length(), 33);
        this.A.setHint(new SpannedString(spannableString2));
        Button button = (Button) this.f57652y.findViewById(R.id.btn_confirm);
        this.A.addTextChangedListener(new d());
        button.setOnClickListener(new e(bean));
        this.A.setFocusable(true);
        this.f57649v.setFocusable(true);
        this.A.setFocusableInTouchMode(true);
        this.A.setFocusable(true);
        this.A.requestFocus();
        ((InputMethodManager) this.f57640m.getSystemService("input_method")).toggleSoftInput(0, 2);
        View viewInflate = LayoutInflater.from(this.f57640m).inflate(R.layout.fragment_communtity, (ViewGroup) null);
        this.f57653z = viewInflate;
        Z(viewInflate);
    }

    @AfterViews
    void afterViews() {
        this.f57640m = getActivity();
        this.f57646s = new ArrayList();
        this.f57647t = new ArrayList();
        getArguments();
        f fVar = new f(getActivity());
        this.f57633f = fVar;
        this.f57632e.setAdapter((ListAdapter) fVar);
        this.f57638k = com.join.mgps.rpc.impl.d.O1();
        this.f57639l = com.join.mgps.rpc.impl.e.m();
        this.f57645r = AccountUtil_.getInstance_(getActivity()).getAccountData();
        showLoding();
        Q();
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.P;
        if (dataBean != null && dataBean.getPraise_surplus_number() > 0) {
            c0();
        }
        this.f57632e.setPullLoadEnable(new a());
        this.f57632e.setPullRefreshEnable(new b());
        this.f57632e.l();
    }

    @UiThread
    void b0() {
        this.f57630c.setVisibility(0);
    }

    @UiThread
    void c0() {
        TextView textView = this.f57637j;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }

    @Click
    void d0() {
        S();
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.P;
        if (dataBean != null) {
            dataBean.setPraise_surplus_number(0);
        }
        Intent intent = new Intent(getActivity(), (Class<?>) GivePraiceActivity_.class);
        intent.putExtra("praice", 2);
        startActivity(intent);
    }

    @UiThread
    void e0() {
        XListView2 xListView2 = this.f57632e;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.f57632e.v();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f57640m);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (isVisibleToUser && this.f57648u) {
            this.f57648u = false;
            this.f57641n = 1;
            Q();
        }
    }

    @UiThread
    void showLoding() {
        try {
            LinearLayout linearLayout = this.f57634g;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f57635h;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f57635h;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f57634g;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    @UiThread
    void showToast(String str) {
        Toast.makeText(this.f57640m, str, 0).show();
    }
}
