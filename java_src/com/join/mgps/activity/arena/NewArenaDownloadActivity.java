package com.join.mgps.activity.arena;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.g;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.j0;
import com.join.mgps.Util.t2;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.FriendInviteBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.r;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.e;
import com.papa91.arc.bean.ButtonBean;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import q5.f;
import t6.o;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.dialog_arena_download_game_plugin)
public class NewArenaDownloadActivity extends Activity {
    private int A = 1;
    private int B = 2;
    private int C = 3;
    private int D = 1;
    private EMUApkTable E;
    String F;
    private String G;
    private String H;
    private String I;
    private String J;
    private String K;
    private String L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Extra
    String f56665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Extra
    boolean f56666c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Extra
    boolean f56667d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Extra
    String f56668e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    e f56669f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    DetailResultBean f56670g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f56671h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    TextView f56672i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    TextView f56673j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    ProgressBar f56674k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    TextView f56675l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f56676m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    TextView f56677n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    ProgressBar f56678o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    TextView f56679p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewById
    Button f56680q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @ViewById
    LinearLayout f56681r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ViewById
    LinearLayout f56682s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ViewById
    ImageView f56683t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @ViewById
    Button f56684u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @ViewById
    View f56685v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @ViewById
    LinearLayout f56686w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @ViewById
    LinearLayout f56687x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @ViewById
    LinearLayout f56688y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @ViewById
    TextView f56689z;

    class a implements GameRoomActivity.x {
        a() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            NewArenaDownloadActivity.this.c();
        }
    }

    private boolean j(String uri) {
        try {
            getPackageManager().getPackageInfo(uri, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    @AfterViews
    void a() {
        this.f56669f = com.join.mgps.rpc.impl.d.O1();
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        Intent intent = getIntent();
        this.f56665b = intent.getStringExtra("gameId");
        this.f56666c = intent.getBooleanExtra(NewArenaDownloadActivity_.P, false);
        this.f56667d = intent.getBooleanExtra(NewArenaDownloadActivity_.Q, false);
        j0.a().d(this);
        setFinishOnTouchOutside(false);
        g();
        i();
        p();
    }

    @Click
    void b() {
        String str;
        DetailResultBean detailResultBean = this.f56670g;
        if (detailResultBean == null) {
            return;
        }
        if (UtilsMy.w2((TextUtils.isEmpty(detailResultBean.getPlugin_num()) || !t2.j(this.f56670g.getPlugin_num())) ? 0 : Integer.parseInt(this.f56670g.getPlugin_num()))) {
            str = UtilsMy.f2(this.f56670g.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
        } else {
            str = "";
        }
        try {
            String strD = new PrefDef_(this).androidIdNullsKey().d();
            if (t2.i(strD)) {
                List list = (List) JsonMapper.getInstance().fromJson(strD, List.class);
                if (t2.i(MApplication.K) && list.contains(MApplication.K) && IntentUtil.getInstance().goLogin(this)) {
                    return;
                }
            }
        } catch (Exception unused) {
        }
        if (new PrefDef_(this).download_game_switch().d().booleanValue()) {
            UtilsMy.A0(this, 2, this.f56665b, str, new a());
        } else {
            c();
        }
    }

    void c() {
        DownloadTask downloadtaskDown;
        int i10 = this.D;
        if (i10 != this.A) {
            if (i10 == this.C) {
                Intent intent = new Intent();
                intent.putExtra("gameId", this.f56665b);
                setResult(-1, intent);
                finish();
                if (TextUtils.isEmpty(this.f56668e) || !this.f56668e.equals("MGMainActivity_10004")) {
                    return;
                }
                com.wufan.friend.chat.c.u().O();
                return;
            }
            return;
        }
        DetailResultBean detailResultBean = this.f56670g;
        if (detailResultBean != null) {
            downloadtaskDown = detailResultBean.getDownloadtaskDown();
            downloadtaskDown.setFromRecomDown(true);
        } else {
            downloadtaskDown = null;
        }
        if (downloadtaskDown != null) {
            downloadtaskDown.setDisableShowSpeedUpPrompt(true);
        }
        if (this.f56670g != null && UtilsMy.p1(this, downloadtaskDown, null)) {
            if (downloadtaskDown == null || TextUtils.isEmpty(downloadtaskDown.getDownload_source_switch_v2()) || !"1".equals(downloadtaskDown.getDownload_source_switch_v2())) {
                return;
            }
            if (TextUtils.isEmpty(downloadtaskDown.getDownload_source_url()) && TextUtils.isEmpty(downloadtaskDown.getDownload_outside_url())) {
                return;
            }
            finish();
            return;
        }
        DetailResultBean detailResultBean2 = this.f56670g;
        if (detailResultBean2 != null && detailResultBean2.getDown_status() == 5) {
            UtilsMy.n1(this, downloadtaskDown);
            return;
        }
        this.f56689z.setText("点击关闭按钮后，游戏会在后台\n继续下载哦~");
        this.D = this.B;
        this.f56680q.setBackgroundDrawable(getResources().getDrawable(R.drawable.bg_btn_border_gray_four_1));
        if (!this.f56666c) {
            DetailResultBean detailResultBean3 = this.f56670g;
            if (detailResultBean3 != null) {
                this.F = detailResultBean3.getPlugin_num();
            }
            this.E = o.o().n(this.F);
            DownloadTask downloadTaskG = f.M().G(this.F);
            if (downloadTaskG != null) {
                if (downloadTaskG.getUrl().equals(this.E.getDown_url()) && downloadTaskG.getVerCode() == this.E.getVerCode() && (this.E.getDown_type() != 2 || !com.join.android.app.common.utils.o.A(this.E, false))) {
                    File file = downloadTaskG.getGameZipPath() != null ? new File(downloadTaskG.getGameZipPath()) : null;
                    if ((downloadTaskG.getStatus() == 5 || downloadTaskG.getStatus() == 11) && file != null && file.exists()) {
                        if (com.join.android.app.common.utils.o.H(downloadTaskG, null)) {
                            UtilsMy.i3(downloadTaskG, 5);
                        } else {
                            g.t0(this).z(this, file);
                        }
                    }
                } else if (downloadTaskG.getStatus() == 5) {
                    downloadTaskG.setStatus(9);
                    if (this.E.getDown_type() == 2) {
                        UtilsMy.N0(downloadTaskG);
                    }
                    f.M().update(downloadTaskG);
                } else if (com.join.android.app.common.utils.o.i(this.E) || (downloadTaskG.getDown_type() == 2 && downloadTaskG.getStatus() == 11)) {
                    j.f().w(this, downloadTaskG);
                    return;
                } else {
                    if (downloadTaskG.getStatus() == 36 || downloadTaskG.getStatus() == 12) {
                        return;
                    }
                    com.php25.PDownload.d.i(downloadTaskG);
                    com.php25.PDownload.d.a(downloadTaskG);
                    f.M().delete(downloadTaskG);
                }
            }
            e();
        }
        if (this.f56667d) {
            return;
        }
        f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d(DetailResultBean detialResultBean) {
        this.f56670g = detialResultBean;
        if (detialResultBean != null) {
            detialResultBean.set_from(120);
            this.K = detialResultBean.getGame_name();
            this.J = detialResultBean.getIco_remote();
            this.L = detialResultBean.getSize();
            this.f56667d = false;
            EMUApkTable eMUApkTableN = o.o().n(detialResultBean.getPlugin_num());
            this.E = eMUApkTableN;
            if (eMUApkTableN != null) {
                if (!com.join.android.app.common.utils.o.t(this, eMUApkTableN, false, new String[0]) || UtilsMy.D0(this, this.E)) {
                    this.f56666c = false;
                    this.G = this.E.getLogo();
                    this.H = this.E.getApk_name();
                    this.I = this.E.getSize();
                    this.F = this.E.getTag_id();
                } else {
                    this.f56666c = true;
                }
            }
            o();
            return;
        }
        DownloadTask downloadTaskG = f.M().G(this.f56665b + "");
        if (downloadTaskG == null || downloadTaskG.getStatus() != 5) {
            this.f56667d = false;
            g();
            return;
        }
        this.f56667d = true;
        EMUApkTable eMUApkTableN2 = o.o().n(downloadTaskG.getPlugin_num());
        if (eMUApkTableN2 == null) {
            this.f56666c = true;
        } else if (!com.join.android.app.common.utils.o.t(this, eMUApkTableN2, false, new String[0])) {
            this.F = eMUApkTableN2.getTag_id();
            this.f56666c = false;
            this.G = eMUApkTableN2.getLogo();
            this.H = eMUApkTableN2.getApk_name();
            this.I = eMUApkTableN2.getSize();
        } else if (UtilsMy.D0(this, eMUApkTableN2)) {
            this.f56666c = false;
            this.G = eMUApkTableN2.getLogo();
            this.H = eMUApkTableN2.getApk_name();
            this.I = eMUApkTableN2.getSize();
            this.F = eMUApkTableN2.getTag_id();
        } else {
            this.f56666c = true;
        }
        o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void e() {
        UtilsMy.q1(this.E, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 800)
    public void f() {
        DetailResultBean detailResultBean = this.f56670g;
        if (detailResultBean == null) {
            return;
        }
        DownloadTask downloadtaskDown = detailResultBean.getDownloadtaskDown();
        downloadtaskDown.setFromRecomDown(true);
        downloadtaskDown.setDisableShowSpeedUpPrompt(true);
        com.php25.PDownload.d.c(downloadtaskDown, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g() {
        if (!m.j(this)) {
            n();
            d(this.f56670g);
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            ResultMainBean<List<DetailResultBean>> resultMainBeanI0 = this.f56669f.I0(RequestBeanUtil.getInstance(this).getAppDetialBean(this.f56665b + "", uid, null));
            if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() == 0) {
                if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() == 0) {
                    n();
                    return;
                } else {
                    n();
                    return;
                }
            }
            List<DetailResultBean> data = resultMainBeanI0.getMessages().getData();
            if (data.size() != 0) {
                DetailResultBean detailResultBean = data.get(0);
                this.f56670g = detailResultBean;
                d(detailResultBean);
            }
        } catch (Exception unused) {
            n();
            d(this.f56670g);
        }
    }

    void h() {
        FriendInviteBean friendInviteBeanS = com.wufan.friend.chat.c.u().s();
        if (friendInviteBeanS == null || TextUtils.isEmpty(this.f56665b) || friendInviteBeanS.getGameId() == 0) {
            return;
        }
        if (this.f56665b.equals("" + friendInviteBeanS.getGameId())) {
            com.wufan.friend.chat.c.u().P();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i() {
        this.f56686w.setVisibility(8);
        this.f56681r.setVisibility(0);
        this.f56682s.setVisibility(8);
    }

    @Click
    void k() {
        h();
        finish();
    }

    @Click
    void l() {
        i();
    }

    @Click
    void m() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n() {
        this.f56686w.setVisibility(8);
        this.f56681r.setVisibility(8);
        this.f56682s.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o() {
        DownloadTask downloadTaskG = f.M().G(this.f56665b + "");
        this.f56686w.setVisibility(0);
        this.f56681r.setVisibility(8);
        this.f56682s.setVisibility(8);
        StringBuilder sb2 = new StringBuilder("你需要下载游戏 ");
        if (!this.f56667d) {
            this.f56688y.setVisibility(0);
            SimpleDraweeView simpleDraweeView = this.f56671h;
            if (simpleDraweeView != null) {
                simpleDraweeView.getContext();
                String str = this.J;
                if (str == null) {
                    l.f(this.f56671h, R.drawable.net_match_default_user_icon, l.G(this, R.drawable.net_match_default_user_icon).toString(), l.E(this));
                } else {
                    l.w(this.f56671h, R.drawable.net_match_default_user_icon, str, l.E(this));
                }
            }
            TextView textView = this.f56672i;
            if (textView != null) {
                textView.setText(this.K);
            }
            TextView textView2 = this.f56675l;
            if (textView2 != null) {
                textView2.setText(this.L + "M");
            }
            if (downloadTaskG != null) {
                if (downloadTaskG.getStatus() == 5) {
                    this.f56674k.setVisibility(4);
                    this.f56667d = true;
                    this.f56675l.setText("下载完成");
                } else {
                    this.f56674k.setProgress((int) downloadTaskG.getProgress());
                }
            }
        }
        if (!this.f56666c) {
            this.f56687x.setVisibility(0);
            SimpleDraweeView simpleDraweeView2 = this.f56676m;
            if (simpleDraweeView2 == null) {
                return;
            }
            Context context = simpleDraweeView2.getContext();
            String str2 = this.G;
            if (str2 == null) {
                l.f(this.f56676m, R.drawable.net_match_default_user_icon, l.G(context, R.drawable.net_match_default_user_icon).toString(), l.E(this));
            } else {
                l.w(this.f56676m, R.drawable.net_match_default_user_icon, str2, l.E(this));
            }
            this.f56677n.setText(this.H);
            this.f56679p.setText(this.I + "M");
            EMUApkTable eMUApkTableN = o.o().n(this.F);
            DownloadTask downloadTaskG2 = f.M().G(this.F);
            if (eMUApkTableN != null && downloadTaskG2 != null && downloadTaskG2.getUrl().equals(eMUApkTableN.getDown_url())) {
                if (downloadTaskG2.getStatus() == 48) {
                    this.f56680q.setText("安装中");
                    this.f56678o.setProgress(100);
                } else if (downloadTaskG2.getStatus() == 11) {
                    this.f56680q.setText("安装");
                    this.f56678o.setProgress(100);
                } else {
                    this.f56678o.setProgress((int) downloadTaskG2.getProgress());
                }
            }
        }
        this.f56689z.setText(sb2.deleteCharAt(sb2.length() - 1).toString());
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        h();
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(r downloadTaskEvent) {
        boolean z10;
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        if (this.E == null || this.f56666c || !this.f56667d || downloadTaskA == null || downloadTaskA.getUrl().equals(this.E.getDown_url()) || downloadTaskA.getCrc_link_type_val().equals(this.f56665b)) {
            int iC = downloadTaskEvent.c();
            boolean z11 = true;
            if (iC != 5) {
                if (iC == 8) {
                    boolean z12 = this.f56666c;
                    if (z12 && this.f56667d) {
                        return;
                    }
                    if (z12) {
                        z10 = false;
                    } else {
                        DownloadTask downloadTaskG = j.f().g(this.F + "");
                        if (downloadTaskG == null) {
                            return;
                        }
                        EMUApkTable eMUApkTable = this.E;
                        if (eMUApkTable != null && !eMUApkTable.getDown_url().equals(downloadTaskG.getUrl())) {
                            return;
                        }
                        this.f56678o.setVisibility(0);
                        this.f56678o.setProgress((int) downloadTaskG.getProgress());
                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                        this.f56679p.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        z10 = true;
                    }
                    if (this.f56667d) {
                        z11 = z10;
                    } else {
                        DownloadTask downloadTaskG2 = j.f().g(this.f56665b + "");
                        if (downloadTaskG2 == null) {
                            return;
                        }
                        this.f56674k.setVisibility(0);
                        this.f56674k.setProgress((int) downloadTaskG2.getProgress());
                        long j11 = (long) (Double.parseDouble(downloadTaskG2.getShowSize()) * 1024.0d * 1024.0d);
                        this.f56675l.setText(UtilsMy.c(downloadTaskG2.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                    }
                    if (z11) {
                        this.f56689z.setText("点击关闭按钮后，游戏会在后台\n继续下载哦~");
                        this.D = this.B;
                        this.f56680q.setBackgroundDrawable(getResources().getDrawable(R.drawable.bg_btn_border_gray_four_1));
                        return;
                    }
                    return;
                }
                if (iC != 11 && iC != 48) {
                    return;
                }
            }
            DownloadTask downloadTaskA2 = downloadTaskEvent.a();
            if (downloadTaskA2 == null || downloadTaskA2.getCrc_link_type_val().equals(this.f56665b) || downloadTaskA2.getFileType().equals(Dtype.chajian.name())) {
                if (downloadTaskA2.getFileType().equals(Dtype.chajian.name())) {
                    this.f56666c = true;
                    this.f56679p.setText("下载完成");
                    this.f56678o.setVisibility(4);
                } else if (downloadTaskA2.getFileType().equals(Dtype.apk.name())) {
                    this.f56667d = true;
                    this.f56675l.setText("下载完成");
                    this.f56674k.setVisibility(4);
                }
                p();
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        p();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void p() {
        DownloadTask downloadTaskG = f.M().G(this.f56665b + "");
        if (downloadTaskG != null && this.F == null) {
            this.F = downloadTaskG.getPlugin_num();
        }
        if (this.E == null && this.F != null) {
            this.E = o.o().n(this.F);
        }
        EMUApkTable eMUApkTable = this.E;
        if (eMUApkTable != null) {
            if (com.join.android.app.common.utils.o.t(this, eMUApkTable, false, new String[0]) && !UtilsMy.D0(this, this.E)) {
                if (downloadTaskG == null || downloadTaskG.getStatus() != 5) {
                    this.f56680q.setBackgroundDrawable(getResources().getDrawable(R.drawable.bg_btn_border_gray_four_1));
                    return;
                }
                this.D = this.C;
                this.f56680q.setBackgroundDrawable(getResources().getDrawable(R.drawable.bg_btn_border_blue_four));
                this.f56680q.setText("进入房间");
                return;
            }
            if (downloadTaskG != null) {
                DownloadTask downloadTaskG2 = f.M().G(downloadTaskG.getPlugin_num());
                if (downloadTaskG.getStatus() == 5 && downloadTaskG2 != null && downloadTaskG2.getStatus() == 11) {
                    a3.b(this).d("插件正在安装...");
                    j.f().w(this, downloadTaskG2);
                    finish();
                }
            }
        }
    }
}
