package com.join.mgps.customview;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.t2;
import com.join.mgps.dialog.x0;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.Arrays;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EBean;
import org.androidannotations.annotations.UiThread;

/* JADX INFO: loaded from: classes3.dex */
@EBean
public class e extends PopupWindow implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f66310b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f66311c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f66312d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f66313e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f66314f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View f66315g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f66316h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View f66317i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f66318j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f66319k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f66320l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f66321m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f66322n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f66323o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f66324p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    com.join.mgps.rpc.i f66325q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Object[] f66326r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ForumBean.ForumPostsBean f66327s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    d f66328t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private x0 f66329u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f66330v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    boolean f66331w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    boolean f66332x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    boolean f66333y;

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            if (event.getAction() != 4) {
                return false;
            }
            e.this.dismiss();
            return true;
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            e.this.f66329u.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            e.this.g();
            e.this.f66329u.dismiss();
        }
    }

    public interface d {
        void a(int pid);

        void b(ForumBean.ForumPostsBean bean);

        void c(ForumBean.ForumPostsBean bean);

        void d(int pid, boolean success);

        void e(ForumBean.ForumPostsBean bean);

        void onCancel();
    }

    public e(Context context) {
        super(context);
        this.f66319k = 0;
        this.f66320l = 1;
        this.f66321m = 2;
        this.f66322n = 3;
        this.f66323o = 99;
        this.f66324p = 0;
        this.f66331w = false;
        this.f66332x = false;
        this.f66333y = false;
        this.f66310b = context;
        this.f66325q = com.join.mgps.rpc.impl.g.A0();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.mg_forum_ext_func_popwindow, (ViewGroup) null);
        this.f66312d = viewInflate;
        setContentView(viewInflate);
        setWidth(this.f66310b.getResources().getDimensionPixelSize(R.dimen.mg_forum_ext_func_width));
        setHeight(-2);
        o();
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f66326r == null) {
        }
        switch (this.f66330v) {
            case R.id.extFuncBest /* 2131363275 */:
                d();
                break;
            case R.id.extFuncCancel /* 2131363277 */:
                dismiss();
                break;
            case R.id.extFuncDelete /* 2131363278 */:
                c();
                break;
            case R.id.extFuncFavorite /* 2131363279 */:
                e();
                break;
            case R.id.extFuncReply /* 2131363281 */:
                k();
                break;
            case R.id.extFuncReport /* 2131363282 */:
                f();
                break;
        }
    }

    private void h() {
        this.f66311c = this.f66312d.findViewById(R.id.extFuncShare);
        this.f66313e = this.f66312d.findViewById(R.id.extFuncFavorite);
        this.f66314f = this.f66312d.findViewById(R.id.extFuncBest);
        this.f66315g = this.f66312d.findViewById(R.id.extFuncReply);
        this.f66316h = this.f66312d.findViewById(R.id.extFuncReport);
        this.f66317i = this.f66312d.findViewById(R.id.extFuncDelete);
        this.f66318j = this.f66312d.findViewById(R.id.extFuncCancel);
        this.f66311c.setOnClickListener(this);
        this.f66313e.setOnClickListener(this);
        this.f66314f.setOnClickListener(this);
        this.f66315g.setOnClickListener(this);
        this.f66316h.setOnClickListener(this);
        this.f66317i.setOnClickListener(this);
        this.f66318j.setOnClickListener(this);
    }

    private void o() {
        setBackgroundDrawable(new BitmapDrawable());
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new a());
    }

    private void q() {
        String str;
        dismiss();
        switch (this.f66330v) {
            case R.id.extFuncBest /* 2131363275 */:
                str = this.f66327s.getBest() != 1 ? "确定要设为精华吗？" : "确定要取消精华吗？";
                break;
            case R.id.extFuncBestTv /* 2131363276 */:
            case R.id.extFuncCancel /* 2131363277 */:
            case R.id.extFuncFavoriteTv /* 2131363280 */:
            default:
                return;
            case R.id.extFuncDelete /* 2131363278 */:
                str = "确定要删除吗？";
                break;
            case R.id.extFuncFavorite /* 2131363279 */:
                e();
                return;
            case R.id.extFuncReply /* 2131363281 */:
                str = "确定要回复吗？";
                break;
            case R.id.extFuncReport /* 2131363282 */:
                str = "确定要设为举报吗？";
                break;
            case R.id.extFuncShare /* 2131363283 */:
                com.join.mgps.Util.r0.H1(this.f66310b, this.f66327s);
                return;
        }
        if (this.f66310b == null) {
            return;
        }
        if (this.f66329u == null) {
            this.f66329u = new x0(this.f66310b);
        }
        this.f66329u.f("确定");
        this.f66329u.d("取消");
        this.f66329u.b(8);
        this.f66329u.g(str).c(new b());
        this.f66329u.e(new c());
        if (this.f66329u.isShowing()) {
            return;
        }
        this.f66329u.show();
    }

    @Background
    void c() {
        ForumData.ForumPostsDeleteData data;
        Context context = this.f66310b;
        int pid = this.f66327s.getPid();
        try {
            if (com.join.mgps.Util.r0.c0(context, pid) != null) {
                ForumResponse<ForumData.ForumPostsDeleteData> forumResponseI = this.f66325q.I(com.join.mgps.Util.r0.c0(context, pid).getParams());
                i(pid, forumResponseI != null && forumResponseI.getError() == 0 && (data = forumResponseI.getData()) != null && data.isResult());
            }
        } catch (Exception unused) {
            i(pid, false);
        }
    }

    @Background
    void d() {
        if (this.f66332x) {
            return;
        }
        int i10 = 1;
        this.f66332x = true;
        Context context = this.f66310b;
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        try {
            ForumBean.ForumPostsBean forumPostsBean2 = this.f66327s;
            if (forumPostsBean2 != null) {
                forumPostsBean = (ForumBean.ForumPostsBean) forumPostsBean2.clone();
            }
        } catch (CloneNotSupportedException e10) {
            e10.printStackTrace();
        }
        if (!com.join.android.app.common.utils.m.j(context)) {
            r(context.getString(R.string.net_connect_failed));
            this.f66332x = false;
            return;
        }
        try {
            try {
                if (!com.join.mgps.Util.r0.Y0(context)) {
                    com.join.mgps.Util.r0.L0(context);
                    r(context.getString(R.string.forum_user_not_login));
                    return;
                }
                UserInfo userInfoT = com.join.mgps.Util.r0.T(context);
                ForumResponse<ForumData.ForumPostsBestData> forumResponseU0 = this.f66325q.u0(new ForumRequestBean.ForumPostsFavoritesRequestBean(userInfoT.getUid(), userInfoT.getToken(), forumPostsBean.getPid(), "").getParams());
                if (forumResponseU0 != null) {
                    int error = forumResponseU0.getError();
                    if (error == 0) {
                        ForumData.ForumPostsBestData data = forumResponseU0.getData();
                        if (data == null) {
                            r(context.getString(R.string.forum_post_best_fail));
                        } else if (data.isResult()) {
                            boolean z10 = data.getBest() == 1;
                            if (z10) {
                                r(context.getString(R.string.forum_post_best_success));
                            } else {
                                r(context.getString(R.string.forum_post_debest_success));
                            }
                            if (!z10) {
                                i10 = 0;
                            }
                            forumPostsBean.setBest(i10);
                        } else if (t2.i(data.getMessage())) {
                            r(data.getMessage());
                        }
                    } else if (error == 701) {
                        r(context.getString(R.string.forum_user_login_invalid));
                    }
                } else {
                    r(context.getString(R.string.forum_post_best_fail));
                }
                d dVar = this.f66328t;
                if (dVar != null) {
                    dVar.e(forumPostsBean);
                }
            } catch (Exception e11) {
                d dVar2 = this.f66328t;
                if (dVar2 != null) {
                    dVar2.e(forumPostsBean);
                }
                r(context.getString(R.string.forum_post_best_fail));
                e11.printStackTrace();
            }
        } finally {
            this.f66332x = false;
        }
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        d dVar = this.f66328t;
        if (dVar != null) {
            dVar.onCancel();
        }
        Activity activity = (Activity) this.f66310b;
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = 1.0f;
        activity.getWindow().setAttributes(attributes);
        super.dismiss();
    }

    @Background
    void e() {
        Context context = this.f66310b;
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        try {
            ForumBean.ForumPostsBean forumPostsBean2 = this.f66327s;
            if (forumPostsBean2 == null) {
                return;
            } else {
                forumPostsBean = (ForumBean.ForumPostsBean) forumPostsBean2.clone();
            }
        } catch (CloneNotSupportedException e10) {
            e10.printStackTrace();
        }
        if (!com.join.android.app.common.utils.m.j(context)) {
            r(context.getString(R.string.net_connect_failed));
            this.f66331w = false;
            return;
        }
        AccountUtil_.getInstance_(context).getAccountData();
        if (IntentUtil.getInstance().goLoginInteractive(context)) {
            return;
        }
        this.f66331w = true;
        try {
            try {
                if (!com.join.mgps.Util.r0.Y0(context)) {
                    com.join.mgps.Util.r0.L0(context);
                    r(context.getString(R.string.forum_user_not_login));
                    return;
                }
                UserInfo userInfoT = com.join.mgps.Util.r0.T(context);
                ForumRequestBean.ForumPostsFavoritesRequestBean forumPostsFavoritesRequestBean = new ForumRequestBean.ForumPostsFavoritesRequestBean(userInfoT.getUid(), userInfoT.getToken(), forumPostsBean.getPid(), "");
                forumPostsFavoritesRequestBean.setApp_ver(com.join.android.app.common.utils.q.n(context).z() + "_" + com.join.android.app.common.utils.q.n(context).A());
                ForumResponse<ForumData.ForumPostsFavoritesData> forumResponseF = this.f66325q.F(forumPostsFavoritesRequestBean.getParams());
                if (forumResponseF != null) {
                    int error = forumResponseF.getError();
                    if (error == 0) {
                        ForumData.ForumPostsFavoritesData data = forumResponseF.getData();
                        if (data != null) {
                            forumPostsBean.setIs_favorite(data.isFavorites());
                            if (data.isFavorites()) {
                                r(context.getString(R.string.forum_post_favorite_success));
                            } else {
                                r(context.getString(R.string.forum_post_defavorite_success));
                            }
                            com.join.mgps.Util.r0.f1(forumPostsBean.getPid(), data.isFavorites());
                        } else {
                            r(context.getString(R.string.forum_post_favorite_fail));
                        }
                    } else if (error == 701) {
                        r(context.getString(R.string.forum_user_login_invalid));
                    }
                } else {
                    r(context.getString(R.string.forum_post_favorite_fail));
                }
                d dVar = this.f66328t;
                if (dVar != null) {
                    dVar.c(forumPostsBean);
                }
            } catch (Exception e11) {
                d dVar2 = this.f66328t;
                if (dVar2 != null) {
                    dVar2.c(forumPostsBean);
                }
                r(context.getString(R.string.forum_post_favorite_fail));
                e11.printStackTrace();
            }
        } finally {
            this.f66331w = false;
        }
    }

    @Background
    void f() {
        if (this.f66333y) {
            return;
        }
        this.f66333y = true;
        Context context = this.f66310b;
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        try {
            ForumBean.ForumPostsBean forumPostsBean2 = this.f66327s;
            if (forumPostsBean2 != null) {
                forumPostsBean = (ForumBean.ForumPostsBean) forumPostsBean2.clone();
            }
        } catch (CloneNotSupportedException e10) {
            e10.printStackTrace();
        }
        if (!com.join.android.app.common.utils.m.j(context)) {
            r(context.getString(R.string.net_connect_failed));
            this.f66333y = false;
            return;
        }
        try {
            try {
                if (!com.join.mgps.Util.r0.Y0(context)) {
                    com.join.mgps.Util.r0.L0(context);
                    r(context.getString(R.string.forum_user_not_login));
                    return;
                }
                UserInfo userInfoT = com.join.mgps.Util.r0.T(context);
                ForumResponse<ForumData.ForumPostsReportData> forumResponseC = this.f66325q.c(new ForumRequestBean.ForumPostsFavoritesRequestBean(userInfoT.getUid(), userInfoT.getToken(), forumPostsBean.getPid(), "").getParams());
                if (forumResponseC != null) {
                    int error = forumResponseC.getError();
                    if (error == 0) {
                        ForumData.ForumPostsReportData data = forumResponseC.getData();
                        if (data == null || !data.isResult()) {
                            r(context.getString(R.string.forum_post_report_fail));
                        } else {
                            r(context.getString(R.string.forum_post_report_success));
                        }
                    } else if (error == 701) {
                        r(context.getString(R.string.forum_user_login_invalid));
                    }
                } else {
                    r(context.getString(R.string.forum_post_report_fail));
                }
                d dVar = this.f66328t;
                if (dVar != null) {
                    dVar.b(forumPostsBean);
                }
            } finally {
                this.f66333y = false;
            }
        } catch (Exception e11) {
            d dVar2 = this.f66328t;
            if (dVar2 != null) {
                dVar2.b(forumPostsBean);
            }
            r(context.getString(R.string.forum_post_report_fail));
            e11.printStackTrace();
        }
    }

    @UiThread
    void i(int pid, boolean success) {
        if (success) {
            a3.b(this.f66310b).d("删除成功");
        } else {
            a3.b(this.f66310b).d("删除失败");
        }
        d dVar = this.f66328t;
        if (dVar != null) {
            dVar.d(pid, success);
        }
    }

    @UiThread
    void j(ForumBean.ForumPostsBean bean) {
        TextView textView = (TextView) this.f66313e.findViewById(R.id.extFuncFavoriteTv);
        if (bean.is_favorite()) {
            textView.setText("取消收藏");
        } else {
            textView.setText("收藏");
        }
        TextView textView2 = (TextView) this.f66314f.findViewById(R.id.extFuncBestTv);
        if (bean.getBest() == 1) {
            textView2.setText("取消精华");
        } else {
            textView2.setText("精华");
        }
    }

    void k() {
        ForumBean.ForumPostsBean forumPostsBean = this.f66327s;
        if (forumPostsBean == null) {
            return;
        }
        Context context = this.f66310b;
        if (context != null) {
            com.join.mgps.Util.r0.v0(context, forumPostsBean);
        }
        d dVar = this.f66328t;
        if (dVar != null) {
            dVar.a(this.f66327s.getPid());
        }
    }

    public int l(Object[] args) {
        try {
            this.f66326r = args;
            if (args != null && args.length != 0) {
                ForumBean.ForumPostsBean forumPostsBean = (ForumBean.ForumPostsBean) args[0];
                this.f66327s = forumPostsBean;
                j(forumPostsBean);
            }
            ForumBean.ForumPostsBean forumPostsBean2 = this.f66327s;
            if (forumPostsBean2 == null) {
                return 7;
            }
            int auth = forumPostsBean2.getAuth();
            if (auth == 0) {
                this.f66324p = 0;
            } else if (auth == 1) {
                this.f66324p = 1;
            } else if (auth == 2) {
                this.f66324p = 2;
            } else if (auth == 3) {
                this.f66324p = 3;
            } else if (auth != 99) {
                this.f66324p = 0;
            } else {
                this.f66324p = 99;
            }
            return n(this.f66324p);
        } catch (Exception e10) {
            e10.printStackTrace();
            return 7;
        }
    }

    public void m(d l10) {
        this.f66328t = l10;
    }

    public int n(int type) {
        this.f66324p = type;
        boolean z10 = false;
        if (!Arrays.asList(0, 2, 1, 3, 99).contains(Integer.valueOf(this.f66324p))) {
            this.f66324p = 0;
        }
        this.f66311c.setVisibility(0);
        this.f66313e.setVisibility(0);
        this.f66314f.setVisibility(0);
        this.f66315g.setVisibility(0);
        this.f66316h.setVisibility(0);
        this.f66317i.setVisibility(0);
        this.f66318j.setVisibility(0);
        this.f66315g.setVisibility(8);
        int i10 = this.f66324p;
        if (i10 == 0 || i10 == 1) {
            this.f66314f.setVisibility(8);
            this.f66317i.setVisibility(8);
        } else {
            if (i10 != 2) {
                if (i10 == 3) {
                    UserInfo accountData = AccountUtil_.getInstance_(this.f66310b).getAccountData();
                    if (accountData != null && accountData.getUid() == this.f66327s.getUid()) {
                        z10 = true;
                    }
                    if (z10) {
                        this.f66316h.setVisibility(8);
                        return 5;
                    }
                }
                return 6;
            }
            this.f66314f.setVisibility(8);
            this.f66316h.setVisibility(8);
        }
        return 4;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        if (v10.getId() == R.id.extFuncCancel) {
            dismiss();
        }
        this.f66330v = v10.getId();
        q();
    }

    public void p(View view, Object... args) {
        if (view == null) {
            return;
        }
        Activity activity = (Activity) view.getContext();
        l(args);
        setAnimationStyle(R.style.animation_image_pager_popup);
        activity.getResources().getDimension(R.dimen.mg_forum_ext_func_item_height);
        showAtLocation(((Activity) this.f66310b).findViewById(android.R.id.content), 17, 0, 0);
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = 0.3f;
        activity.getWindow().setAttributes(attributes);
    }

    @UiThread
    void r(String msg) {
        a3.b(this.f66310b).d(msg);
    }
}
