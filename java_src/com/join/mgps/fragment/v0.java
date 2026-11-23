package com.join.mgps.fragment;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.gson.JsonObject;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.DiscoveryPaiweiActivity_;
import com.join.mgps.activity.GamePaiWeiActivty_;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.Constant;
import com.join.mgps.dto.DiscoveryPaiweiGameBean;
import com.join.mgps.dto.DiscoveryPaiweiGameDetailBean;
import com.join.mgps.dto.DiscoveryPaiweiGameRankBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.service.CommonService_;
import com.papa91.arc.util.SignUtils;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Request;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.layout_discovery_paiwei_viewpager)
public class v0 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f71283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    RecyclerView f71284d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    CardView f71285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    TextView f71286f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f71287g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    Group f71288h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f71289i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    LinearLayout f71290j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    LinearLayout f71291k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    TextView f71292l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    CardView f71293m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    TextView f71294n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @FragmentArg
    String f71295o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @FragmentArg
    int f71296p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Context f71297q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private AccountUtil_ f71298r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private List<DiscoveryPaiweiGameRankBean> f71299s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f71300t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f71301u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final String f71302v = com.join.mgps.rpc.h.f72361m + "/game/discover/detail";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private b f71303w;

    class a extends com.join.android.app.common.http.d.p<String> {
        a() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception e10) {
            e10.printStackTrace();
            v0.this.showLodingFailed();
        }

        @Override // com.join.android.app.common.http.d.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String rs) {
            v0.this.Q(rs);
        }
    }

    class b extends BaseQuickAdapter<DiscoveryPaiweiGameRankBean, com.join.mgps.base.b> {
        public b(List<DiscoveryPaiweiGameRankBean> data) {
            super(R.layout.item_discovery_paiwei_list, data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, DiscoveryPaiweiGameRankBean item) {
            String str;
            com.join.mgps.base.b text = helper.setText(R.id.tvRank, String.valueOf(helper.getLayoutPosition() + 1)).setVisible(R.id.ivRank, helper.getLayoutPosition() <= 2).setVisible(R.id.tvRank, helper.getLayoutPosition() > 2).setText(R.id.tvNickname, item.getNickname());
            StringBuilder sb2 = new StringBuilder();
            String str2 = "";
            if (item.getCost_coin() > 0) {
                str = item.getCost_coin() + "币 ";
            } else {
                str = "";
            }
            sb2.append(str);
            sb2.append(item.getUse_time());
            com.join.mgps.base.b text2 = text.setText(R.id.tvScore, sb2.toString());
            if (item.getRole() != null && item.getRole_rank() > 0) {
                str2 = "第" + item.getRole_rank() + item.getRole();
            }
            text2.setText(R.id.tvDesc, str2);
            UtilsMy.M3(this.mContext, item.getAvatar(), (SimpleDraweeView) helper.getView(R.id.avatar));
            if (helper.getLayoutPosition() == 0) {
                helper.setImageResource(R.id.ivRank, R.drawable.ic_discovery_paiwei_rank_1).setBackgroundRes(R.id.avatarBg, R.drawable.shape_paiwei_ring_rank_1);
                return;
            }
            if (helper.getLayoutPosition() == 1) {
                helper.setImageResource(R.id.ivRank, R.drawable.ic_discovery_paiwei_rank_2).setBackgroundRes(R.id.avatarBg, R.drawable.shape_paiwei_ring_rank_2);
            } else if (helper.getLayoutPosition() == 2) {
                helper.setImageResource(R.id.ivRank, R.drawable.ic_discovery_paiwei_rank_3).setBackgroundRes(R.id.avatarBg, R.drawable.shape_paiwei_ring_rank_3);
            } else {
                helper.setBackgroundRes(R.id.avatarBg, R.color.transparent);
            }
        }
    }

    private void N(boolean isAutoEnter) {
        DownloadTask downloadTaskG = q5.f.M().G(this.f71295o);
        if (UtilsMy.W(this.f71297q, downloadTaskG, false, true) == null) {
            return;
        }
        String fight_fun = downloadTaskG.getFight_fun();
        if (fight_fun.length() > 12 && P(this.f71297q, downloadTaskG) && fight_fun.charAt(12) == '1') {
            this.f71300t = 1;
        }
        if (fight_fun.length() > 14 && P(this.f71297q, downloadTaskG) && fight_fun.charAt(14) == '1') {
            this.f71300t = 14;
        }
        int i10 = this.f71300t;
        if (i10 != 1 && i10 != 14) {
            showMessage("该游戏暂不支持排位赛");
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this.f71297q)) {
            showMessage("无网络连接");
            return;
        }
        if (UtilsMy.X(this.f71297q, downloadTaskG) == null && !isAutoEnter) {
            Toast.makeText(this.f71297q, "正在下载插件...", 1).show();
        } else if (MApplication.f3182z.getActivity() instanceof DiscoveryPaiweiActivity_) {
            GamePaiWeiActivty_.o0(this.f71297q).a(this.f71295o).b(this.f71296p).c(this.f71300t).start();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Click
    void M() {
        if (q5.f.M().G(this.f71295o) != null) {
            N(false);
        } else {
            ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this.f71297q).extra("gameDownloadDetail", this.f71295o)).extra("fromRecomDown", true)).extra("_from", 155)).a();
            this.f71301u = true;
        }
    }

    @Background
    void O() {
        showLoding();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("gameId", this.f71295o);
        jsonObject.addProperty(Constants.TOKEN, this.f71298r.getToken());
        jsonObject.addProperty("uid ", this.f71298r.getUid());
        jsonObject.addProperty(Constant.MD5, SignUtils.buildRequestSign(jsonObject));
        com.join.android.app.common.http.d.G().H().v(this.f71302v, jsonObject, new a(), null);
    }

    boolean P(Context context, DownloadTask downloadTask) {
        int i10;
        if (downloadTask == null) {
            return false;
        }
        try {
            i10 = Integer.parseInt(downloadTask.getPlugin_num());
        } catch (Exception unused) {
            i10 = 0;
        }
        try {
            if (i10 != ConstantIntEnum.FBA.value() && i10 != ConstantIntEnum.FC.value()) {
                return true;
            }
            EMUApkTable eMUApkTableN = t6.o.o().n(downloadTask.getRomType());
            if (!new APKUtils().e(context, eMUApkTableN.getPackage_name())) {
                if (eMUApkTableN.getDown_type() == 2 && eMUApkTableN.getDown_type() == 2) {
                    return com.join.android.app.common.utils.o.t(context, eMUApkTableN, false, new String[0]);
                }
                return false;
            }
            try {
                try {
                    PackageInfo packageInfo = context.getPackageManager().getPackageInfo(eMUApkTableN.getPackage_name(), 0);
                    if (packageInfo == null) {
                        return false;
                    }
                    try {
                        return packageInfo.versionCode > 330;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return true;
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return false;
                }
            } catch (Exception e12) {
                e12.printStackTrace();
                return false;
            }
        } catch (Exception e13) {
            e13.printStackTrace();
            return true;
        }
    }

    @UiThread
    void Q(String rs) {
        try {
            JSONObject jSONObject = new JSONObject(rs);
            if (jSONObject.optInt("code") != 200) {
                String strOptString = jSONObject.optString("message");
                if (!TextUtils.isEmpty(strOptString)) {
                    showMessage(strOptString);
                }
                showLodingFailed();
                return;
            }
            DiscoveryPaiweiGameBean discoveryPaiweiGameBean = (DiscoveryPaiweiGameBean) JsonMapper.getInstance().fromJson(jSONObject.optString("data"), DiscoveryPaiweiGameBean.class);
            if (discoveryPaiweiGameBean == null || discoveryPaiweiGameBean.getDetail() == null) {
                showEmpty();
                return;
            }
            showMain();
            DiscoveryPaiweiGameDetailBean detail = discoveryPaiweiGameBean.getDetail();
            if (detail.getRank_list() != null) {
                this.f71299s.addAll(detail.getRank_list());
                this.f71303w.replaceData(this.f71299s);
            }
            com.join.android.app.common.utils.l.o(this.f71283c, detail.getBig_img());
            TextView textView = this.f71287g;
            if (textView != null) {
                textView.setText("今日" + detail.getNum() + "人挑战");
            }
            CardView cardView = this.f71285e;
            if (cardView == null || this.f71286f == null) {
                return;
            }
            cardView.setVisibility(0);
            if (detail.getMonth_best() == null) {
                this.f71286f.setText("暂无成绩");
                return;
            }
            this.f71286f.setText("第" + detail.getMonth_best().getRank() + "名");
        } catch (JSONException e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    @AfterViews
    void afterviews() {
        FragmentActivity activity = getActivity();
        this.f71297q = activity;
        this.f71298r = AccountUtil_.getInstance_(activity);
        com.join.mgps.Util.j0.a().d(this);
        this.f71299s = new ArrayList();
        this.f71303w = new b(this.f71299s);
        this.f71284d.setLayoutManager(new LinearLayoutManager(this.f71297q));
        this.f71284d.setAdapter(this.f71303w);
        O();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            DownloadTask downloadTaskG = q5.f.M().G(this.f71295o);
            if (TextUtils.equals(downloadTaskA.getCrc_link_type_val(), this.f71295o) || (this.f71301u && downloadTaskG != null && TextUtils.equals(downloadTaskA.getCrc_link_type_val(), downloadTaskG.getPlugin_num()))) {
                this.f71292l.setText("下载中");
                this.f71293m.setClickable(false);
                return;
            }
            return;
        }
        if (iC == 5) {
            DownloadTask downloadTaskG2 = q5.f.M().G(this.f71295o);
            if (TextUtils.equals(downloadTaskA.getCrc_link_type_val(), this.f71295o) || (this.f71301u && downloadTaskG2 != null && TextUtils.equals(downloadTaskA.getCrc_link_type_val(), downloadTaskG2.getPlugin_num()))) {
                this.f71292l.setText("去挑战");
                this.f71293m.setClickable(true);
                N(true);
                return;
            }
            return;
        }
        if (iC == 11 || iC == 48) {
            DownloadTask downloadTaskG3 = q5.f.M().G(this.f71295o);
            if (TextUtils.equals(downloadTaskA.getCrc_link_type_val(), this.f71295o) || (this.f71301u && downloadTaskG3 != null && TextUtils.equals(downloadTaskA.getCrc_link_type_val(), downloadTaskG3.getPlugin_num()))) {
                this.f71292l.setText("安装中");
                this.f71293m.setClickable(false);
            }
        }
    }

    @Click
    void relodingimag() {
        if (this.f71299s == null) {
            this.f71299s = new ArrayList();
        }
        this.f71299s.clear();
        O();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f71297q);
    }

    @UiThread
    void showEmpty() {
        LinearLayout linearLayout = this.f71291k;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f71289i;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(0);
        }
        LinearLayout linearLayout3 = this.f71290j;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        Group group = this.f71288h;
        if (group != null) {
            group.setVisibility(8);
        }
    }

    @UiThread
    void showLoding() {
        com.join.mgps.Util.g1.c("显示加载中");
        LinearLayout linearLayout = this.f71291k;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f71289i;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(0);
        }
        LinearLayout linearLayout3 = this.f71290j;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        Group group = this.f71288h;
        if (group != null) {
            group.setVisibility(8);
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f71291k;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f71290j;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(0);
        }
        LinearLayout linearLayout3 = this.f71289i;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        Group group = this.f71288h;
        if (group != null) {
            group.setVisibility(8);
        }
    }

    @UiThread
    void showMain() {
        com.join.mgps.Util.g1.c("显示主界面main");
        LinearLayout linearLayout = this.f71291k;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f71290j;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f71289i;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        Group group = this.f71288h;
        if (group != null) {
            group.setVisibility(0);
        }
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.f71297q).d(message);
    }
}
