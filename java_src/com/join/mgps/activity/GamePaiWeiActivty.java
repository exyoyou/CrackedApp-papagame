package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.gson.JsonObject;
import com.haima.hmcp.ConstantsInternal;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.GamePaiWeiAdapter;
import com.join.mgps.customview.AutoScrollViewPager;
import com.join.mgps.db.tables.GamePaiWeiUpTaskTable;
import com.join.mgps.dto.Constant;
import com.join.mgps.dto.GetPaiWeiPlayCodeBean;
import com.join.mgps.dto.PaiWeiUploadFileBean;
import com.join.mgps.dto.PaiWeiUploadFileNewBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.pref.PrefDef_;
import com.papa91.arc.bean.PaiWeiDataBean;
import com.papa91.arc.common.constants.BAction;
import com.papa91.arc.common.constants.IntentKeys;
import com.papa91.arc.util.SignUtils;
import com.papa91.arc.util.StoreUtils;
import com.windmill.sdk.WMConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import okhttp3.Request;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activty_game_paiwei)
public class GamePaiWeiActivty extends Activity implements GamePaiWeiAdapter.b {

    @Extra
    String A;

    @Extra
    int B;

    @Extra
    int C;
    int D;
    int E;
    int F;
    private DownloadTask N;
    private com.join.mgps.adapter.h6 O;
    PrefDef_ T;
    RankRecordReceiver U;
    com.join.mgps.dialog.b2 V;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewById
    LinearLayout f53182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    ImageView f53184c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    ImageView f53185d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    ImageView f53186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    Button f53187f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f53189g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    TextView f53190h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    TextView f53191i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    TextView f53193j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    TextView f53194k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    TextView f53195l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    TextView f53197m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    TextView f53198n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    ListView f53199o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    ListView f53200p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewById
    RelativeLayout f53203q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @ViewById
    AutoScrollViewPager<PaiWeiDataBean.AdListBean> f53204r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f53205s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Context f53206t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private GamePaiWeiAdapter f53207u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private List<GamePaiWeiAdapter.d> f53208v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    com.join.mgps.rpc.l f53210x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    com.join.mgps.rpc.l f53211y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @Bean
    com.join.mgps.Util.b f53212z;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f53209w = "币";
    private com.join.mgps.dialog.f1 G = null;
    private String H = "";
    private String I = "";
    private String J = "";
    private String K = "";
    private String L = "";
    private String M = "";
    private int P = 0;
    private final String Q = com.join.mgps.rpc.h.f72357l + "/lobby/game_rank/fileUpload";
    private final String R = com.join.mgps.rpc.h.f72361m + "/v2/game/ranking/submitUpload";
    private final String S = com.join.mgps.rpc.h.f72361m + "/v2/game/ranking/addPlayTimes";
    private List<GamePaiWeiUpTaskTable> W = null;
    private int X = 0;
    private int Y = 1;
    long Z = 0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private GamePaiWeiUpTaskTable f53201p0 = null;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private List<PaiWeiDataBean.RankListBean> f53183b1 = new ArrayList();

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private List<PaiWeiDataBean.RankListBean> f53188f1 = new ArrayList();

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private List<PaiWeiDataBean.RolesBean> f53192i1 = new ArrayList();

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private List<PaiWeiDataBean.RolesBean> f53196l1 = new ArrayList();

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private List<PaiWeiDataBean.AdListBean> f53202p1 = new ArrayList();

    public class RankRecordReceiver extends BroadcastReceiver {
        public RankRecordReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (BAction.ACTION_RANK_RECORD_UPLOAD.equals(intent.getAction())) {
                GamePaiWeiActivty.this.D = intent.getIntExtra(IntentKeys.KEY_PARAMS_RANK_COIN, 1);
                GamePaiWeiActivty.this.F = intent.getIntExtra(IntentKeys.KEY_PARAMS_RANK_PLAY_TIME, 1);
                GamePaiWeiActivty.this.E = intent.getIntExtra(IntentKeys.KEY_PARAMS_RANK_ROLE_ID, 0);
                GamePaiWeiActivty.this.P();
                GamePaiWeiActivty.this.H(2);
            }
        }
    }

    class a implements AutoScrollViewPager.e {
        a() {
        }

        @Override // com.join.mgps.customview.AutoScrollViewPager.e
        public View a(int position) {
            GamePaiWeiActivty gamePaiWeiActivty = GamePaiWeiActivty.this;
            return gamePaiWeiActivty.x(gamePaiWeiActivty.f53202p1, position);
        }
    }

    class b implements com.join.mgps.dialog.h2.b {
        b() {
        }

        @Override // com.join.mgps.dialog.h2.b
        public void a(boolean check) {
            GamePaiWeiActivty.this.T.rankNotify().g(Boolean.valueOf(!check));
        }

        @Override // com.join.mgps.dialog.h2.b
        public void onClose() {
        }

        @Override // com.join.mgps.dialog.h2.b
        public void onConfirm() {
            GamePaiWeiActivty.this.B();
        }
    }

    class c extends com.join.android.app.common.http.d.p<String> {
        c() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception e10) {
            e10.printStackTrace();
        }

        @Override // com.join.android.app.common.http.d.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String rs) {
        }
    }

    class d extends com.join.android.app.common.http.d.p<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PaiWeiDataBean.RankListBean f53217b;

        d(final PaiWeiDataBean.RankListBean val$rankListBean) {
            this.f53217b = val$rankListBean;
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception e10) {
            Toast.makeText(GamePaiWeiActivty.this.f53206t, "回放失败！", 0).show();
            GamePaiWeiActivty.this.s();
        }

        @Override // com.join.android.app.common.http.d.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String response) {
            GamePaiWeiActivty.this.N(response);
            PaiWeiDataBean.RankListBean rankListBean = this.f53217b;
            if (rankListBean != null) {
                GamePaiWeiActivty gamePaiWeiActivty = GamePaiWeiActivty.this;
                if (gamePaiWeiActivty.C == 14) {
                    gamePaiWeiActivty.o(rankListBean.getPlay_id());
                }
            }
            GamePaiWeiActivty.this.s();
        }
    }

    class e implements com.join.mgps.dialog.b.c {
        e() {
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b d10) {
            d10.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b d10) {
            d10.dismiss();
            GamePaiWeiActivty.this.X = 0;
            GamePaiWeiActivty.this.Y = 1;
            GamePaiWeiActivty.this.G.b();
            GamePaiWeiActivty.this.R();
        }
    }

    class f implements com.join.mgps.dialog.b2.b {
        f() {
        }

        @Override // com.join.mgps.dialog.b2.b
        public void a(com.join.mgps.dialog.b2 d10) {
            d10.dismiss();
        }

        @Override // com.join.mgps.dialog.b2.b
        public void b(com.join.mgps.dialog.b2 d10) {
            d10.dismiss();
        }
    }

    class g extends com.join.android.app.common.http.d.p<String> {
        g() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception e10) {
            e10.printStackTrace();
            GamePaiWeiActivty.this.y(false);
        }

        @Override // com.join.android.app.common.http.d.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String rs) {
            GamePaiWeiActivty.this.y(true);
        }
    }

    class h extends com.join.android.app.common.http.d.p<String> {
        h() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception e10) {
            e10.printStackTrace();
            GamePaiWeiActivty.this.y(false);
        }

        @Override // com.join.android.app.common.http.d.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String rs) {
            GamePaiWeiActivty.this.y(true);
        }
    }

    class i extends com.join.android.app.common.http.d.p<String> {
        i() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception e10) {
            e10.printStackTrace();
            GamePaiWeiActivty.this.O(e10.getMessage());
        }

        @Override // com.join.android.app.common.http.d.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String rs) {
            GamePaiWeiActivty.this.T((PaiWeiUploadFileNewBean) JsonMapper.getInstance().fromJson(rs, PaiWeiUploadFileNewBean.class));
        }
    }

    class j extends com.join.android.app.common.http.d.p<String> {
        j() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception e10) {
            e10.printStackTrace();
            GamePaiWeiActivty.this.O(e10.getMessage());
        }

        @Override // com.join.android.app.common.http.d.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String rs) {
            GamePaiWeiActivty.this.S((PaiWeiUploadFileBean) JsonMapper.getInstance().fromJson(rs, PaiWeiUploadFileBean.class));
        }
    }

    class k implements AdapterView.OnItemClickListener {
        k() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            GamePaiWeiActivty.this.O.a(position);
            GamePaiWeiActivty gamePaiWeiActivty = GamePaiWeiActivty.this;
            gamePaiWeiActivty.f53198n.setText(((PaiWeiDataBean.RolesBean) gamePaiWeiActivty.f53192i1.get(position)).getRole());
            GamePaiWeiActivty gamePaiWeiActivty2 = GamePaiWeiActivty.this;
            gamePaiWeiActivty2.q((PaiWeiDataBean.RolesBean) gamePaiWeiActivty2.f53192i1.get(position));
            GamePaiWeiActivty.this.G();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (GamePaiWeiActivty.this.f53202p1 == null || GamePaiWeiActivty.this.f53202p1.size() <= 0) {
                return;
            }
            GamePaiWeiActivty gamePaiWeiActivty = GamePaiWeiActivty.this;
            IntentUtil.getInstance().intentActivity(GamePaiWeiActivty.this.f53206t, gamePaiWeiActivty.u((PaiWeiDataBean.AdListBean) gamePaiWeiActivty.f53202p1.get(0)));
        }
    }

    class m implements AutoScrollViewPager.f {
        m() {
        }

        @Override // com.join.mgps.customview.AutoScrollViewPager.f
        public void a(View view, int position) {
            if (GamePaiWeiActivty.this.f53202p1 == null || GamePaiWeiActivty.this.f53202p1.size() <= 0) {
                return;
            }
            GamePaiWeiActivty gamePaiWeiActivty = GamePaiWeiActivty.this;
            IntentUtil.getInstance().intentActivity(GamePaiWeiActivty.this.f53206t, gamePaiWeiActivty.u((PaiWeiDataBean.AdListBean) gamePaiWeiActivty.f53202p1.get(position)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        this.G.b();
        w();
    }

    private void F(boolean isSuccess) {
        if (this.f53201p0 != null) {
            this.f53201p0 = t6.v.n().g(Integer.valueOf(this.f53201p0.getId()));
        } else if (this.C == 14) {
            this.f53201p0 = new GamePaiWeiUpTaskTable(this.f53212z.getUid(), this.H, this.A, this.B, this.I, isSuccess, System.currentTimeMillis(), this.D, this.E, this.C, this.F);
        } else {
            this.f53201p0 = new GamePaiWeiUpTaskTable(this.f53212z.getUid(), this.H, this.A, this.B, this.I, isSuccess, System.currentTimeMillis());
        }
        t6.v.n().m(this.f53201p0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(int result) {
        Intent intent = new Intent(BAction.ACTION_RANK_RECORD_UPLOAD_RESULT);
        intent.putExtra(IntentKeys.KEY_PARAMS_RANK_UPLOAD, result);
        sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        if (System.currentTimeMillis() - this.Z < 2000) {
            return;
        }
        this.Z = System.currentTimeMillis();
        String str = this.L + this.J + ".rec";
        boolean zD = com.join.mgps.Util.o0.D(str);
        if (!zD) {
            str = this.L + this.J + "_v2.rec";
            zD = com.join.mgps.Util.o0.D(str);
        }
        if (!zD) {
            str = this.L + this.J + "_v3.rec";
            zD = com.join.mgps.Util.o0.D(str);
        }
        if (!zD) {
            String str2 = this.J;
            if (str2 == null || str2.isEmpty()) {
                return;
            }
            this.J = "";
            this.H = "";
            this.I = "";
            Toast.makeText(this.f53206t, "挑战失败！", 0).show();
            return;
        }
        this.I = str;
        File file = new File(str);
        String strSubstring = str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
        if (com.join.android.app.common.utils.m.j(this)) {
            this.G.b();
            Q(file, strSubstring);
        } else {
            F(false);
            Toast.makeText(this.f53206t, "网络异常，无法上传排位数据！", 0).show();
            U();
        }
    }

    private void U() {
        if (this.V == null) {
            com.join.mgps.dialog.b2 b2VarI = new com.join.mgps.dialog.b2(this.f53206t, R.style.HKDialogLoading).g("网络不佳，上传失败。联网后再次进入此页面，可重新上传此排位赛记录").j("我知道了").k("提示").i(new f());
            this.V = b2VarI;
            b2VarI.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.join.mgps.activity.k2
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f57380b.z(dialogInterface);
                }
            });
        }
        this.V.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(PaiWeiDataBean.RolesBean rolesBean) {
        this.f53208v.clear();
        int i10 = 0;
        if (rolesBean.getRole_id().equals(WMConstants.TIMER_STAGE_NONE)) {
            while (true) {
                List<PaiWeiDataBean.RankListBean> list = this.f53183b1;
                if (list == null || i10 >= list.size()) {
                    break;
                }
                this.f53208v.add(new GamePaiWeiAdapter.d(GamePaiWeiAdapter.ViewType.RANK, new GamePaiWeiAdapter.d.a(this.f53183b1.get(i10))));
                i10++;
            }
        } else {
            this.f53188f1.clear();
            for (int i11 = 0; i11 < this.f53183b1.size(); i11++) {
                if (this.f53183b1.get(i11).getRole_id().equals(rolesBean.getRole_id())) {
                    this.f53188f1.add(this.f53183b1.get(i11));
                }
            }
            while (true) {
                List<PaiWeiDataBean.RankListBean> list2 = this.f53188f1;
                if (list2 == null || i10 >= list2.size()) {
                    break;
                }
                this.f53208v.add(new GamePaiWeiAdapter.d(GamePaiWeiAdapter.ViewType.RANK, new GamePaiWeiAdapter.d.a(this.f53188f1.get(i10))));
                i10++;
            }
        }
        this.f53207u.notifyDataSetChanged();
    }

    private void r(boolean isFirst) {
        String str;
        List<GamePaiWeiUpTaskTable> listP = t6.v.n().p(this.f53212z.getUid());
        this.W = listP;
        if (listP == null || listP.size() <= 0) {
            return;
        }
        if (isFirst) {
            str = "你有" + this.W.size() + "个排位成绩未上传!";
        } else {
            str = "上传失败，你还有" + this.W.size() + "个历史排位成绩未上传!";
        }
        new com.join.mgps.dialog.b(this.f53206t, R.style.HKDialogLoading).g(str).j("立即上传").d("下次再说").k("提示").i(new e()).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SimpleDraweeView x(final List<PaiWeiDataBean.AdListBean> datas, final int position) {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this.f53206t);
        simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
        RoundingParams roundingParams = new RoundingParams();
        roundingParams.t(0.0f);
        com.join.android.app.common.utils.l.f(simpleDraweeView, R.drawable.iv_default_newarena_banner, datas.get(position).getPic_remote(), roundingParams);
        return simpleDraweeView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(DialogInterface dialogInterface) {
        this.V = null;
    }

    public long A(byte[] input, int offset, boolean littleEndian) {
        if (offset < 0 || offset + 8 > input.length) {
            throw new IllegalArgumentException(String.format("less than 8 bytes from index %d  is insufficient for long", Integer.valueOf(offset)));
        }
        long j10 = 0;
        for (int i10 = 0; i10 < 8; i10++) {
            int i11 = (littleEndian ? i10 : 7 - i10) << 3;
            j10 |= (255 << i11) & (((long) input[offset + i10]) << i11);
        }
        return j10;
    }

    @Click
    void C() {
        finish();
    }

    @Click
    void D() {
        new com.join.mgps.dialog.x1(this.f53206t, R.style.HKDialogLoading).show();
    }

    @Click
    void E() {
        MobclickAgentKt.onEvent(this.f53206t, "onStartQualifying");
        if (!IntentUtil.getInstance().isLogined(this.f53206t) || IntentUtil.getInstance().isTourist(this.f53206t)) {
            this.J = "";
            this.H = "";
            this.I = "";
            IntentUtil.getInstance().goLoginBattle(this);
            return;
        }
        if (this.C != 14) {
            B();
            return;
        }
        if (!this.T.rankNotify().d().booleanValue()) {
            B();
            return;
        }
        com.join.mgps.dialog.h2 h2Var = new com.join.mgps.dialog.h2(this);
        h2Var.u(new b());
        h2Var.w("系统提示");
        h2Var.show();
    }

    @Click
    void G() {
        if (this.f53199o.getVisibility() == 0) {
            this.f53199o.setVisibility(8);
            this.f53185d.setImageResource(R.drawable.rank_down_ic);
        } else {
            this.f53199o.setVisibility(0);
            this.f53185d.setImageResource(R.drawable.rank_up_ic);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I(List<PaiWeiDataBean.AdListBean> adListBean) {
        if (adListBean != null) {
            this.f53202p1.clear();
            this.f53202p1.addAll(adListBean);
            if (this.f53202p1.size() == 1) {
                this.f53205s.setVisibility(0);
                this.f53204r.setVisibility(8);
                String pic_remote = this.f53202p1.get(0).getPic_remote();
                if (com.join.mgps.Util.t2.i(pic_remote)) {
                    RoundingParams roundingParams = new RoundingParams();
                    roundingParams.t(0.0f);
                    com.join.android.app.common.utils.l.f(this.f53205s, R.drawable.iv_default_newarena_banner, pic_remote, roundingParams);
                }
                this.f53205s.setOnClickListener(new l());
                return;
            }
            if (adListBean.size() > 0) {
                this.f53205s.setVisibility(8);
                this.f53204r.setVisibility(0);
                this.f53204r.setLoopTime(4000);
                this.f53204r.setOnItemClickListener(new m());
                this.f53204r.setOnCreateItemViewListener(new a());
                this.f53204r.l(com.join.mgps.Util.i0.a(this.f53206t, 0.0f), com.join.mgps.Util.i0.a(this.f53206t, 0.0f), this.f53202p1);
                this.f53204r.m();
                if (adListBean.size() <= 1) {
                    this.f53204r.n();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J(PaiWeiDataBean.MonthBestBean monthBestBean) {
        if (monthBestBean == null || monthBestBean.getRole() == null) {
            this.f53194k.setVisibility(8);
            this.f53195l.setVisibility(8);
            this.f53189g.setText("暂无数据");
            this.f53190h.setText("暂无数据");
            this.f53191i.setText("暂无数据");
            this.f53197m.setText("暂无数据");
            return;
        }
        this.f53194k.setVisibility(0);
        this.f53195l.setVisibility(0);
        this.f53189g.setText(monthBestBean.getUse_time());
        this.f53190h.setText(monthBestBean.getRank() + "");
        if (monthBestBean.getRole().isEmpty()) {
            this.f53191i.setText("暂无数据");
        } else {
            this.f53191i.setText(monthBestBean.getRole());
        }
        if (this.f53209w.contains("命")) {
            this.f53197m.setText(monthBestBean.getCost_coin() + " 命");
            return;
        }
        this.f53197m.setText(monthBestBean.getCost_coin() + " 币");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K() {
        List<PaiWeiDataBean.RankListBean> list = this.f53183b1;
        int i10 = 0;
        if (list == null || list.size() == 0) {
            this.f53193j.setVisibility(0);
            this.f53200p.setVisibility(8);
            return;
        }
        this.f53193j.setVisibility(8);
        this.f53200p.setVisibility(0);
        this.f53208v.clear();
        while (true) {
            List<PaiWeiDataBean.RankListBean> list2 = this.f53183b1;
            if (list2 == null || i10 >= list2.size()) {
                break;
            }
            this.f53208v.add(new GamePaiWeiAdapter.d(GamePaiWeiAdapter.ViewType.RANK, new GamePaiWeiAdapter.d.a(this.f53183b1.get(i10))));
            i10++;
        }
        this.f53207u.d(this.f53209w);
        this.f53207u.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L() {
        List<PaiWeiDataBean.RolesBean> list = this.f53192i1;
        if (list == null || list.size() <= 0) {
            this.f53198n.setVisibility(4);
            this.f53185d.setVisibility(4);
            return;
        }
        this.f53198n.setVisibility(0);
        this.f53185d.setVisibility(0);
        PaiWeiDataBean.RolesBean rolesBean = new PaiWeiDataBean.RolesBean();
        rolesBean.setRole("全部角色");
        rolesBean.setRole_id(WMConstants.TIMER_STAGE_NONE);
        this.f53192i1.add(0, rolesBean);
        if (this.O == null) {
            this.O = new com.join.mgps.adapter.h6(this.f53206t, this.f53192i1);
        } else {
            this.f53207u.notifyDataSetChanged();
        }
        this.f53199o.setAdapter((ListAdapter) this.O);
        this.f53199o.setOnItemClickListener(new k());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M(String code) {
        UtilsMy.y4(this.f53206t, this.f53212z.getUid(), this.N, 14, this.J, this.B, this.P, JsonMapper.toJsonString(this.f53196l1), this.C);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N(String path) {
        UtilsMy.F4(this.f53206t, this.f53212z.getUid(), this.N, 15, path, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O(String message) {
        F(false);
        s();
        Toast.makeText(this.f53206t, message, 0).show();
        r(false);
        this.J = "";
        this.H = "";
        this.I = "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q(File file, String fname) {
        if (this.C != 14) {
            com.join.android.app.common.http.d.I().f(this.Q, "file", file, new com.join.android.app.common.http.d.n[]{new com.join.android.app.common.http.d.n("file_name", fname)}, new j(), file.getName());
            return;
        }
        HashMap map = new HashMap();
        map.put("costCoin", this.D + "");
        map.put("fileName", fname);
        map.put("gameId", this.A);
        map.put("millisecond", this.F + "");
        map.put("playId", this.H);
        map.put("roleId", this.E + "");
        map.put("uid", this.f53212z.getUid());
        map.put(Constants.TOKEN, this.f53212z.getToken());
        com.join.android.app.common.http.d.I().f(this.R, "file", file, new com.join.android.app.common.http.d.n[]{new com.join.android.app.common.http.d.n("fileName", fname), new com.join.android.app.common.http.d.n("costCoin", this.D + ""), new com.join.android.app.common.http.d.n("gameId", this.A), new com.join.android.app.common.http.d.n("millisecond", this.F + ""), new com.join.android.app.common.http.d.n("playId", this.H), new com.join.android.app.common.http.d.n("roleId", this.E + ""), new com.join.android.app.common.http.d.n("uid", this.f53212z.getUid()), new com.join.android.app.common.http.d.n(Constants.TOKEN, this.f53212z.getToken()), new com.join.android.app.common.http.d.n(Constant.MD5, SignUtils.buildRequestSign(map))}, new i(), file.getName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        String filePath = this.W.get(this.X).getFilePath();
        File file = new File(filePath);
        com.join.android.app.common.http.d.n nVar = new com.join.android.app.common.http.d.n("fileName", filePath.substring(filePath.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1));
        GamePaiWeiUpTaskTable gamePaiWeiUpTaskTable = this.W.get(this.X);
        if (gamePaiWeiUpTaskTable != null) {
            this.C = gamePaiWeiUpTaskTable.getRank_auto_upload();
        }
        if (this.C != 14) {
            com.join.android.app.common.http.d.I().f(this.Q, "file", file, new com.join.android.app.common.http.d.n[]{nVar}, new h(), file.getName());
            return;
        }
        if (gamePaiWeiUpTaskTable != null) {
            HashMap map = new HashMap();
            map.put("costCoin", gamePaiWeiUpTaskTable.getCost_coin() + "");
            map.put("fileName", filePath.substring(filePath.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1));
            map.put("gameId", gamePaiWeiUpTaskTable.getGameId());
            map.put("millisecond", gamePaiWeiUpTaskTable.getRank_play_time() + "");
            map.put("playId", gamePaiWeiUpTaskTable.getPlayId());
            map.put("roleId", gamePaiWeiUpTaskTable.getRole_id() + "");
            map.put("uid", gamePaiWeiUpTaskTable.getUserId());
            map.put(Constants.TOKEN, this.f53212z.getToken());
            com.join.android.app.common.http.d.I().f(this.R, "file", file, new com.join.android.app.common.http.d.n[]{nVar, new com.join.android.app.common.http.d.n("costCoin", gamePaiWeiUpTaskTable.getCost_coin() + ""), new com.join.android.app.common.http.d.n("gameId", gamePaiWeiUpTaskTable.getGameId()), new com.join.android.app.common.http.d.n("millisecond", gamePaiWeiUpTaskTable.getRank_play_time() + ""), new com.join.android.app.common.http.d.n("playId", gamePaiWeiUpTaskTable.getPlayId()), new com.join.android.app.common.http.d.n("roleId", gamePaiWeiUpTaskTable.getRole_id() + ""), new com.join.android.app.common.http.d.n("uid", gamePaiWeiUpTaskTable.getUserId()), new com.join.android.app.common.http.d.n(Constants.TOKEN, this.f53212z.getToken()), new com.join.android.app.common.http.d.n(Constant.MD5, SignUtils.buildRequestSign(map))}, new g(), file.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S(PaiWeiUploadFileBean paiWeiUploadFileBean) {
        if (paiWeiUploadFileBean == null || !ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS.equals(paiWeiUploadFileBean.getData().getCode())) {
            s();
            F(false);
            r(false);
        } else {
            Toast.makeText(this.f53206t, "数据更新成功！", 0).show();
            this.f53194k.setVisibility(0);
            this.f53195l.setVisibility(0);
            this.f53189g.setText(paiWeiUploadFileBean.getData().getInfo().getTime());
            this.f53190h.setText(paiWeiUploadFileBean.getData().getInfo().getCurrent_rank());
            this.f53191i.setText(paiWeiUploadFileBean.getData().getInfo().getRecplayer());
            if (this.f53209w.contains("命")) {
                this.f53197m.setText(paiWeiUploadFileBean.getData().getInfo().getCoin() + " 命");
            } else {
                this.f53197m.setText(paiWeiUploadFileBean.getData().getInfo().getCoin() + " 币");
            }
            F(true);
            if (paiWeiUploadFileBean.getData().getInfo().getRefresh().equals("1")) {
                v("1");
            } else {
                s();
            }
        }
        this.J = "";
        this.H = "";
        this.I = "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T(PaiWeiUploadFileNewBean paiWeiUploadFileBean) {
        if (paiWeiUploadFileBean == null || paiWeiUploadFileBean.getCode() != 200) {
            s();
            F(false);
            r(false);
        } else {
            Toast.makeText(this.f53206t, "数据更新成功！", 0).show();
            this.f53194k.setVisibility(0);
            this.f53195l.setVisibility(0);
            this.f53189g.setText(paiWeiUploadFileBean.getData().getTime());
            this.f53190h.setText(paiWeiUploadFileBean.getData().getCurrent_rank());
            this.f53191i.setText(paiWeiUploadFileBean.getData().getRecplayer());
            if (this.f53209w.contains("命")) {
                this.f53197m.setText(paiWeiUploadFileBean.getData().getCoin() + " 命");
            } else {
                this.f53197m.setText(paiWeiUploadFileBean.getData().getCoin() + " 币");
            }
            F(true);
            if (paiWeiUploadFileBean.getData().getRefresh().equals("1")) {
                v("1");
            } else {
                s();
            }
        }
        this.J = "";
        this.H = "";
        this.I = "";
    }

    @Override // com.join.mgps.adapter.GamePaiWeiAdapter.b
    public void a(int position, String url) {
        if (url.isEmpty()) {
            Toast.makeText(this.f53206t, "回放失败！", 0).show();
            return;
        }
        File file = new File(this.L + url.substring(url.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1));
        PaiWeiDataBean.RankListBean rankListBean = this.f53183b1.get(position);
        if (!file.exists()) {
            this.G.b();
            com.join.android.app.common.http.d.B().a(url, this.L, new d(rankListBean));
            return;
        }
        N(file.getPath());
        if (rankListBean == null || this.C != 14) {
            return;
        }
        o(rankListBean.getPlay_id());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void o(String playId) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("play_id", playId);
        jsonObject.addProperty(Constants.TOKEN, this.f53212z.getToken());
        jsonObject.addProperty("uid", this.f53212z.getUid());
        jsonObject.addProperty(Constant.MD5, SignUtils.buildRequestSign(jsonObject));
        com.join.android.app.common.http.d.G().H().n(this.S, jsonObject.toString(), new c());
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        RankRecordReceiver rankRecordReceiver = this.U;
        if (rankRecordReceiver != null) {
            unregisterReceiver(rankRecordReceiver);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!"".equals(this.J)) {
            P();
        } else {
            this.G.b();
            v("0");
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        AutoScrollViewPager<PaiWeiDataBean.AdListBean> autoScrollViewPager = this.f53204r;
        if (autoScrollViewPager != null) {
            autoScrollViewPager.n();
        }
    }

    @AfterViews
    void p() {
        this.f53210x = com.join.mgps.rpc.impl.l.n0();
        this.f53211y = com.join.mgps.rpc.impl.l.o0();
        this.f53206t = this;
        this.f53208v = new ArrayList();
        this.G = com.join.mgps.Util.h0.h0(this.f53206t).x(this.f53206t);
        int width = ((getWindowManager().getDefaultDisplay().getWidth() * 58) / 100) - com.join.mgps.Util.i0.a(this.f53206t, 20.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(width, (width * 725) / 3344);
        layoutParams.leftMargin = com.join.mgps.Util.i0.a(this.f53206t, 10.0f);
        layoutParams.rightMargin = com.join.mgps.Util.i0.a(this.f53206t, 10.0f);
        layoutParams.topMargin = com.join.mgps.Util.i0.a(this.f53206t, 5.0f);
        layoutParams.gravity = 1;
        this.f53203q.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(width, (width * 44) / MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS);
        layoutParams2.gravity = 1;
        this.f53187f.setLayoutParams(layoutParams2);
        DownloadTask downloadTaskG = q5.f.M().G(this.A);
        this.N = downloadTaskG;
        if (downloadTaskG == null || downloadTaskG.getStatus() != 5) {
            Toast.makeText(this.f53206t, "请先下载游戏！", 0).show();
        } else {
            String gameZipPath = this.N.getGameZipPath();
            String strSubstring = gameZipPath.substring(0, gameZipPath.lastIndexOf(net.lingala.zip4j.util.e.F0));
            this.K = strSubstring;
            this.M = strSubstring.substring(strSubstring.lastIndexOf(net.lingala.zip4j.util.e.F0), this.K.length());
            String strD2 = !"".equals(this.N.getRomType()) ? UtilsMy.d2(Integer.parseInt(this.N.getRomType())) : "arc";
            this.L = StoreUtils.getEmuRoot(this) + net.lingala.zip4j.util.e.F0 + strD2 + this.M + net.lingala.zip4j.util.e.F0;
        }
        GamePaiWeiAdapter gamePaiWeiAdapter = new GamePaiWeiAdapter(this.f53206t, this.f53208v, this);
        this.f53207u = gamePaiWeiAdapter;
        this.f53200p.setAdapter((ListAdapter) gamePaiWeiAdapter);
        this.T = new PrefDef_(this);
        r(true);
        IntentFilter intentFilter = new IntentFilter(BAction.ACTION_RANK_RECORD_UPLOAD);
        RankRecordReceiver rankRecordReceiver = new RankRecordReceiver();
        this.U = rankRecordReceiver;
        registerReceiver(rankRecordReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s() {
        try {
            com.join.mgps.dialog.f1 f1Var = this.G;
            if (f1Var == null || !f1Var.isShowing()) {
                return;
            }
            this.G.dismiss();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t() {
        Toast.makeText(this.f53206t, "网络错误，请稍候再试！", 0).show();
    }

    public IntentDateBean u(PaiWeiDataBean.AdListBean adListBean) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setJump_type(Integer.valueOf(adListBean.getJump_type()).intValue());
        intentDateBean.setLink_type(Integer.valueOf(adListBean.getLink_type()).intValue());
        intentDateBean.setLink_type_val(adListBean.getLink_type_val());
        if (Integer.valueOf(adListBean.getLink_type()).intValue() == 1) {
            intentDateBean.setTpl_type(String.valueOf(adListBean.getGame_info_tpl_type()));
        } else {
            intentDateBean.setTpl_type(String.valueOf(adListBean.getLink_type()));
        }
        intentDateBean.setCrc_link_type_val(adListBean.getCrc_link_type_val());
        if (com.join.mgps.Util.t2.i(adListBean.getTitle())) {
            intentDateBean.setObject(adListBean.getTitle());
        }
        return intentDateBean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void v(String refresh) {
        ResultResMainBean<PaiWeiDataBean> resultResMainBeanF;
        String uid = this.f53212z.getUid();
        String token = this.f53212z.getToken();
        try {
            try {
                if (this.C == 14) {
                    HashMap map = new HashMap();
                    map.put("gameid", this.A);
                    map.put("refresh", refresh);
                    map.put("uid", uid);
                    map.put(Constants.TOKEN, token);
                    resultResMainBeanF = this.f53211y.E(uid, token, this.A, refresh, SignUtils.buildRequestSign(map));
                } else {
                    resultResMainBeanF = this.f53210x.f(uid, token, this.A, refresh);
                }
                if (resultResMainBeanF != null) {
                    PaiWeiDataBean.MonthBestBean month_best = resultResMainBeanF.getData().getMonth_best();
                    List<PaiWeiDataBean.AdListBean> ad_list = resultResMainBeanF.getData().getAd_list();
                    this.f53183b1 = resultResMainBeanF.getData().getRank_list();
                    this.f53196l1.clear();
                    this.f53196l1.addAll(resultResMainBeanF.getData().getRoles());
                    this.f53192i1 = resultResMainBeanF.getData().getRoles();
                    this.f53209w = resultResMainBeanF.getData().getUnit();
                    this.P = resultResMainBeanF.getData().getMinimum_passing_time();
                    J(month_best);
                    I(ad_list);
                    K();
                    L();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            s();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void w() {
        ResultResMainBean<GetPaiWeiPlayCodeBean> resultResMainBeanV;
        String uid = this.f53212z.getUid();
        String token = this.f53212z.getToken();
        try {
            try {
                if (this.C == 14) {
                    HashMap map = new HashMap();
                    map.put("gameid", this.A);
                    map.put("uid", uid);
                    map.put(Constants.TOKEN, token);
                    resultResMainBeanV = this.f53211y.K(uid, this.A, this.f53212z.getToken(), SignUtils.buildRequestSign(map));
                } else {
                    resultResMainBeanV = this.f53210x.v(uid, this.A);
                }
                if (resultResMainBeanV != null) {
                    String play_code = resultResMainBeanV.getData().getPlay_code();
                    if (play_code.isEmpty()) {
                        t();
                    } else {
                        this.H = play_code;
                        this.J = play_code;
                        M(play_code);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                t();
            }
        } finally {
            s();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y(boolean isSu) {
        if (isSu) {
            t6.v.n().delete(this.W.get(this.X));
            this.Y++;
        }
        int i10 = this.X + 1;
        this.X = i10;
        if (i10 < this.W.size()) {
            R();
            return;
        }
        s();
        if (this.Y == this.W.size()) {
            v("1");
        } else {
            r(false);
        }
    }
}
