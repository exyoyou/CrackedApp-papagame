package com.join.mgps.fragment;

import android.content.Intent;
import android.content.IntentFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.czhj.sdk.common.Constants;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.DocumentManageActivity;
import com.join.mgps.activity.GameMainActivity4;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.ClouldItemView3;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.dto.ArchiveBuyArgs;
import com.join.mgps.dto.ArchiveColudArgs;
import com.join.mgps.dto.ArchiveDownDataBean;
import com.join.mgps.dto.ArchiveEvaluteDataBean;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.ArchiveResponseMain;
import com.join.mgps.dto.ArchiveResponseMessage;
import com.join.mgps.dto.ArchiveShopDataBean;
import com.join.mgps.dto.ArchiveevaluateArgs;
import com.join.mgps.dto.ArchiveshopArgs;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_cloud_list_v2)
public class n extends Fragment implements w6.c {
    ArchiveNumDataBean B;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f70212d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    XRecyclerView f70213e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    TextView f70214f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f70215g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f70216h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    IntentFilter f70217i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Pref
    PrefDef_ f70218j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private UserInfo f70219k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f70220l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f70221m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    String f70222n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f70224p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    com.join.mgps.rpc.d f70225q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    List<CloudListDataBean> f70226r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    j f70227s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    LocalBroadcastManager f70228t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    GameMainActivity4 f70229u;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f70211c = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f70223o = 1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    boolean f70230v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    boolean f70231w = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f70232x = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f70233y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f70234z = true;
    public boolean A = true;
    int C = 0;
    List<String> D = new ArrayList(0);
    List<CloudListDataBean> E = new ArrayList(0);

    class a extends com.join.mgps.base.decoration.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.decoration.b.a f70235e;

        a(final com.join.mgps.base.decoration.b.a val$colorDecoration) {
            this.f70235e = val$colorDecoration;
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            return this.f70235e;
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            n.this.m0();
        }
    }

    class c implements XRecyclerView.f {
        c() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            n nVar = n.this;
            nVar.d0(nVar.f70223o);
            n.this.N();
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
            n nVar = n.this;
            nVar.f70223o = 1;
            nVar.N();
            n nVar2 = n.this;
            nVar2.d0(nVar2.f70223o);
        }
    }

    class d implements com.join.mgps.dialog.w.e {
        d() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
        }
    }

    class e implements CompoundButton.OnCheckedChangeListener {
        e() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            if (isChecked) {
                n.this.f70232x = false;
            } else {
                n.this.f70232x = true;
            }
        }
    }

    class f implements com.join.mgps.dialog.w.e {
        f() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
            IntentUtil.getInstance().goShareWebActivity(n.this.getContext(), "http://anv3btapi.5fun.com/user/activity/cloud_archive?gameId=" + n.this.f70222n);
            if (!n.this.f70232x) {
                n.this.f70218j.DownloadRecoderNoticeMarcket().g(Boolean.FALSE);
            }
            dialog.dismiss();
        }
    }

    class g implements com.join.mgps.dialog.w.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f70242a;

        g(final CloudListDataBean val$dataBean) {
            this.f70242a = val$dataBean;
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
            n.this.b0(this.f70242a);
            if (!n.this.f70232x) {
                n.this.f70218j.DownloadRecoderNoticeMarcket().g(Boolean.FALSE);
            }
            dialog.dismiss();
        }
    }

    class h extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ClouldItemView3 f70244d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        LinearLayout f70245e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f70246f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f70247g;

        public h(View itemView) {
            super(itemView);
            this.f70244d = (ClouldItemView3) itemView.findViewById(R.id.coulditem);
            this.f70245e = (LinearLayout) itemView.findViewById(R.id.ll_show);
            this.f70246f = (TextView) itemView.findViewById(R.id.tv_today_id);
            this.f70247g = (TextView) itemView.findViewById(R.id.tv_zong_id);
        }
    }

    class i extends BaseQuickAdapter<CloudListDataBean, com.join.mgps.base.b> {
        public i() {
            super(R.layout.item_cloud_list_item, n.this.f70226r);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, CloudListDataBean item) {
            ClouldItemView3 clouldItemView3 = (ClouldItemView3) helper.getView(R.id.coulditem);
            int layoutPosition = helper.getLayoutPosition();
            clouldItemView3.setCloudItemListener(n.this);
            if (n.this.f70226r.size() - 1 == layoutPosition) {
                n nVar = n.this;
                String str = nVar.f70222n;
                CloudListDataBean cloudListDataBean = nVar.f70226r.get(layoutPosition);
                n nVar2 = n.this;
                clouldItemView3.setData(str, cloudListDataBean, nVar2.f70221m, nVar2.f70220l, false, true, nVar2);
            } else {
                n nVar3 = n.this;
                String str2 = nVar3.f70222n;
                CloudListDataBean cloudListDataBean2 = nVar3.f70226r.get(layoutPosition);
                n nVar4 = n.this;
                clouldItemView3.setData(str2, cloudListDataBean2, nVar4.f70221m, nVar4.f70220l, false, false, nVar4);
            }
            clouldItemView3.setGBAType(n.this.f70229u.isVBA);
            GameMainActivity4 gameMainActivity4 = n.this.f70229u;
            clouldItemView3.setPGN(gameMainActivity4.marcketDownEnable, gameMainActivity4.marcketPGNEnable);
            if (n.this.f70220l != 4) {
                helper.setGone(R.id.ll_show, false);
                return;
            }
            helper.setVisible(R.id.ll_show, true).setText(R.id.tv_today_id, n.this.f70226r.get(layoutPosition).getTodayCoin() + "").setText(R.id.tv_zong_id, n.this.f70226r.get(layoutPosition).getTotalCoin() + "");
        }
    }

    class j extends RecyclerView.Adapter<h> {
        j() {
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NonNull h holder, int position) {
            holder.f70244d.setCloudItemListener(n.this);
            if (n.this.f70226r.size() - 1 == position) {
                ClouldItemView3 clouldItemView3 = holder.f70244d;
                n nVar = n.this;
                String str = nVar.f70222n;
                CloudListDataBean cloudListDataBean = nVar.f70226r.get(position);
                n nVar2 = n.this;
                clouldItemView3.setData(str, cloudListDataBean, nVar2.f70221m, nVar2.f70220l, false, true, nVar2);
            } else {
                ClouldItemView3 clouldItemView4 = holder.f70244d;
                n nVar3 = n.this;
                String str2 = nVar3.f70222n;
                CloudListDataBean cloudListDataBean2 = nVar3.f70226r.get(position);
                n nVar4 = n.this;
                clouldItemView4.setData(str2, cloudListDataBean2, nVar4.f70221m, nVar4.f70220l, false, false, nVar4);
            }
            holder.f70244d.setGBAType(n.this.f70229u.isVBA);
            ClouldItemView3 clouldItemView5 = holder.f70244d;
            GameMainActivity4 gameMainActivity4 = n.this.f70229u;
            clouldItemView5.setPGN(gameMainActivity4.marcketDownEnable, gameMainActivity4.marcketPGNEnable);
            if (n.this.f70220l != 4) {
                holder.f70245e.setVisibility(8);
                return;
            }
            holder.f70245e.setVisibility(0);
            holder.f70246f.setText(n.this.f70226r.get(position).getTodayCoin() + "");
            holder.f70247g.setText(n.this.f70226r.get(position).getTotalCoin() + "");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public h onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            n nVar = n.this;
            return nVar.new h(LayoutInflater.from(nVar.getContext()).inflate(R.layout.item_cloud_list_item, parent, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return n.this.f70226r.size();
        }
    }

    private void W(CloudListDataBean dataBean, boolean isMarcket) {
        if (isMarcket) {
            dataBean.setArchiveFilePath(com.join.mgps.Util.z.f50170i + File.separator + dataBean.getArchiveFileName());
        } else {
            dataBean.setArchiveFilePath(com.join.mgps.Util.z.f50169h + File.separator + dataBean.getArchiveFileName());
        }
        if (dataBean.getIsVip() == 1) {
            com.papa.sim.statistic.t.l(getContext()).R1(Event.VipArchive_download_page, new Ext().setGameId(this.f70222n));
        }
        Intent intent = new Intent(p5.a.f96200i0);
        intent.putExtra("downCloud", dataBean);
        getActivity().sendBroadcast(intent);
    }

    private ArchiveBuyArgs X() {
        if (this.f70219k == null) {
            return null;
        }
        RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getActivity());
        String str = this.f70219k.getUid() + "";
        String token = this.f70219k.getToken();
        String str2 = this.f70222n;
        int i10 = this.f70223o;
        this.f70223o = i10 + 1;
        return requestBeanUtil.getArchiveBuy(str, token, str2, i10);
    }

    private ArchiveColudArgs Y() {
        if (this.f70219k == null) {
            return RequestBeanUtil.getInstance(getContext()).getArchiveNum("", "", this.f70222n);
        }
        return RequestBeanUtil.getInstance(getContext()).getArchiveNum(this.f70219k.getUid() + "", this.f70219k.getToken(), this.f70222n);
    }

    private ArchiveevaluateArgs Z(CloudListDataBean dataBean, int commentType) {
        if (this.f70219k == null) {
            return null;
        }
        String id2 = this.f70221m == 3 ? dataBean.getId() : dataBean.getArchiveId();
        return RequestBeanUtil.getInstance(getActivity()).getArchiveEvaluate(this.f70219k.getUid() + "", this.f70219k.getToken(), id2, commentType);
    }

    private ArchiveshopArgs a0() {
        if (this.f70219k == null) {
            RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getActivity());
            String str = this.f70222n;
            int i10 = this.f70224p;
            int i11 = this.f70223o;
            this.f70223o = i11 + 1;
            return requestBeanUtil.getArchiveshop("", "", str, i10, i11);
        }
        RequestBeanUtil requestBeanUtil2 = RequestBeanUtil.getInstance(getActivity());
        String str2 = this.f70219k.getUid() + "";
        String token = this.f70219k.getToken();
        String str3 = this.f70222n;
        int i12 = this.f70224p;
        int i13 = this.f70223o;
        this.f70223o = i13 + 1;
        return requestBeanUtil2.getArchiveshop(str2, token, str3, i12, i13);
    }

    private void c0() {
        this.D.clear();
        showLoding();
        d0(this.f70223o);
    }

    private boolean e0() {
        if (AccountUtil_.getInstance_(getContext()).isTourist()) {
            IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
            return false;
        }
        if (AccountUtil_.getInstance_(getContext()).getAccountData().getUid() != 0) {
            return true;
        }
        IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
        return false;
    }

    @Override // w6.c
    public void B(final CloudListDataBean dataBean, boolean isMarcket) {
        if (e0()) {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            if (AccountUtil_.getInstance_(getContext()).isTourist()) {
                IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
            }
            if (accountData.getVipLevel() > 0 || dataBean.getIsVip() == 1) {
                b0(dataBean);
                return;
            }
            if (dataBean.getArchiveCoin() != null && accountData.getPapaMoney() < Integer.parseInt(dataBean.getArchiveCoin())) {
                com.join.mgps.Util.a3.b(getContext()).d("剩余铜板不足，去签到领取更多铜板吧");
                return;
            }
            if (!this.f70218j.DownloadRecoderNoticeMarcket().d().booleanValue() || dataBean.getArchiveCoin() == null || Integer.parseInt(dataBean.getArchiveCoin()) == 0) {
                b0(dataBean);
                return;
            }
            new com.join.mgps.dialog.w(getActivity(), R.style.MyDialog).g("获取须知").d("悟饭平台会员可免费下载该存档。如果你不想成为会员，可以选择扣除" + dataBean.getArchiveCoin() + "铜板的方式进行下载，铜板将返还至存档作者。").f("下载(扣除" + dataBean.getArchiveCoin() + ")").b("会员免费下载").e(new g(dataBean)).a(new f()).c(new e()).h(true).i(new d()).show();
        }
    }

    @Override // w6.c
    public void G(CloudListDataBean dataBean, int commentType) {
        if (e0()) {
            O(dataBean, commentType);
        }
    }

    void M(ArchiveShopDataBean shopDataBean) {
        try {
            f0();
            if (shopDataBean != null && shopDataBean.getCode() == 600) {
                List<CloudListDataBean> marketList = shopDataBean.getData_info().getMarketList();
                if (shopDataBean.getData_info().getMarketList().size() == 0) {
                    q0();
                    return;
                } else {
                    V(marketList);
                    return;
                }
            }
            this.f70231w = true;
            r0();
        } catch (Exception e10) {
            showLodingFailed();
            e10.printStackTrace();
        }
    }

    @UiThread
    void N() {
        try {
            XRecyclerView xRecyclerView = this.f70213e;
            if (xRecyclerView != null) {
                xRecyclerView.reset();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void O(final CloudListDataBean dataBean, final int commentType) {
        try {
            if (commentType != 4) {
                ArchiveEvaluteDataBean archiveEvaluteDataBeanA = this.f70225q.a(Z(dataBean, commentType).getArgs());
                if (archiveEvaluteDataBeanA.getCode() == 600) {
                    showMessage(archiveEvaluteDataBeanA.getData_info().getMsg());
                    m0();
                    return;
                } else {
                    if (archiveEvaluteDataBeanA.getCode() == -1) {
                        if (!"701".equals(archiveEvaluteDataBeanA.getMsg())) {
                            showMessage(archiveEvaluteDataBeanA.getMsg());
                            return;
                        } else {
                            o0();
                            showMessage("你的登陆已失效，请重新登陆。");
                            return;
                        }
                    }
                    return;
                }
            }
            HashMap map = new HashMap();
            if (com.join.mgps.Util.t2.h(dataBean.getArchiveId())) {
                map.put("id", dataBean.getId());
            } else {
                map.put("id", dataBean.getArchiveId());
            }
            map.put("uid", this.f70219k.getUid() + "");
            map.put(Constants.TOKEN, this.f70219k.getToken());
            ArchiveResponseMain<ArchiveResponseMessage> archiveResponseMainD = this.f70225q.d(map);
            if (archiveResponseMainD == null || archiveResponseMainD.getCode() != 600) {
                if (archiveResponseMainD != null) {
                    if (!"701".equals(archiveResponseMainD.getMsg())) {
                        showMessage(archiveResponseMainD.getMsg());
                        return;
                    } else {
                        o0();
                        showMessage("你的登陆已失效，请重新登陆。");
                        return;
                    }
                }
                return;
            }
            if (dataBean.getArchiveFilePath() != null && new File(dataBean.getArchiveFilePath()).exists()) {
                UtilsMy.delete(new File(dataBean.getArchiveFilePath()));
            }
            for (CloudDownRecoderTable cloudDownRecoderTable : t6.i.o().n(this.f70222n)) {
                if (cloudDownRecoderTable.getMd5().equals(dataBean.getFileMd5())) {
                    t6.i.o().delete(cloudDownRecoderTable);
                }
            }
            t0(dataBean);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void P() {
    }

    @UiThread
    void S(List<CloudListDataBean> data) {
        try {
            this.f70226r.clear();
            if (data != null) {
                this.f70226r.addAll(data);
            }
            x0();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void T(CloudListDataBean dataBean) {
        UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
        HashMap map = new HashMap();
        try {
            map.put("id", dataBean.getId() == null ? dataBean.getArchiveId() : dataBean.getId());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        map.put("uid", accountData.getUid() + "");
        map.put(Constants.TOKEN, accountData.getToken());
        ArchiveResponseMain<ArchiveResponseMessage> archiveResponseMainB = this.f70225q.b(map);
        if (archiveResponseMainB.getCode() == 600) {
            u0(dataBean);
        } else if (!"701".equals(archiveResponseMainB.getMsg())) {
            showMessage(archiveResponseMainB.getMsg());
        } else {
            o0();
            showMessage("你的登陆已失效，请重新登陆。");
        }
    }

    boolean U() {
        if (this.D.size() <= 0) {
            return false;
        }
        this.D.clear();
        this.E.clear();
        this.C = this.f70223o - 1;
        showLoding();
        s0(1);
        return true;
    }

    @UiThread
    void V(List<CloudListDataBean> listDataReplace) {
        try {
            if (this.f70223o == 2) {
                this.f70226r.clear();
            }
            x0();
            for (int i10 = 0; i10 < listDataReplace.size(); i10++) {
                this.f70226r.add(listDataReplace.get(i10));
            }
            this.f70231w = true;
            if (listDataReplace.size() < 10) {
                p0();
            }
            Iterator<CloudListDataBean> it2 = this.f70226r.iterator();
            while (it2.hasNext()) {
                it2.next().setStatus(6);
            }
            h0();
            x0();
        } catch (Exception e10) {
            showLodingFailed();
            e10.printStackTrace();
        }
    }

    @AfterViews
    @RequiresApi(api = 16)
    void afterView() {
        this.f70220l = getArguments().getInt("type", 9);
        this.f70221m = getArguments().getInt("typeIndex");
        this.f70222n = getArguments().getString("gameid");
        this.f70219k = AccountUtil_.getInstance_(getActivity()).getAccountData();
        this.f70228t = LocalBroadcastManager.getInstance(getActivity());
        this.f70225q = com.join.mgps.rpc.impl.c.k();
        this.f70226r = new ArrayList();
        org.greenrobot.eventbus.c.f().v(this);
        this.f70227s = new j();
        this.f70229u = (GameMainActivity4) getActivity();
        this.f70213e.setLayoutManager(new LinearLayoutManager(getContext()));
        com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
        aVar.f64116f = 0;
        aVar.f64120d = (int) getResources().getDimension(R.dimen.wdp16);
        this.f70213e.addItemDecoration(new a(aVar));
        this.f70213e.setAdapter(this.f70227s);
        int i10 = this.f70220l;
        if (i10 == 1) {
            this.f70224p = 0;
            c0();
        } else if (i10 == 2) {
            this.f70224p = 2;
            c0();
        } else if (i10 == 3) {
            this.f70224p = 1;
            c0();
        } else {
            this.f70224p = 3;
            c0();
        }
        this.f70212d.setOnClickListener(new b());
        this.f70213e.setLoadingListener(new c());
        this.f70213e.setPreLoadCount(3);
        this.f70213e.reset();
    }

    @Background
    void b0(CloudListDataBean dataBean) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            HashMap map = new HashMap();
            if (this.f70221m == 4) {
                map.put("id", dataBean.getArchiveId());
            } else {
                map.put("id", dataBean.getId());
            }
            map.put("uid", accountData.getUid() + "");
            map.put(Constants.TOKEN, accountData.getToken());
            ArchiveDownDataBean archiveDownDataBeanE = this.f70225q.e(map);
            if (archiveDownDataBeanE != null && archiveDownDataBeanE.getCode() == 600) {
                dataBean.setArchiveFile(archiveDownDataBeanE.getData_info().getDownloadUrl());
                dataBean.setArchiveFileName(System.currentTimeMillis() + archiveDownDataBeanE.getData_info().getArchiveFileName());
                W(dataBean, true);
                return;
            }
            if (archiveDownDataBeanE == null) {
                showMessage("购买失败");
            } else if (!"701".equals(archiveDownDataBeanE.getMsg())) {
                showMessage(archiveDownDataBeanE.getMsg());
            } else {
                o0();
                showMessage("你的登陆已失效，请重新登陆。");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void d0(int pns) {
        try {
            if (this.f70231w) {
                this.f70231w = false;
                if (this.f70221m == 3) {
                    ArchiveShopDataBean archiveShopDataBeanF = this.f70225q.f(a0().getArgs());
                    v0();
                    if ((archiveShopDataBeanF == null || archiveShopDataBeanF.getData_info() == null || archiveShopDataBeanF.getData_info().getMarketList() == null || archiveShopDataBeanF.getData_info().getMarketList().size() == 0) && this.f70223o == 2) {
                        r0();
                        return;
                    } else {
                        M(archiveShopDataBeanF);
                        return;
                    }
                }
                ArchiveBuyArgs archiveBuyArgsX = X();
                if (!AccountUtil_.getInstance_(getActivity()).getToken().equals("") && this.f70219k.getUid() != 0 && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                    ArchiveShopDataBean archiveShopDataBeanH = this.f70225q.h(archiveBuyArgsX.getArgs());
                    v0();
                    if (archiveShopDataBeanH.getCode() == -1 && archiveShopDataBeanH.getMsg().equals("701") && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                        this.f70231w = true;
                        AccountUtil_.getInstance_(getActivity()).accountLoginOut(getActivity());
                        o0();
                        return;
                    } else if (archiveShopDataBeanH.getData_info().getMarketList().size() == 0 && this.f70223o == 2) {
                        r0();
                        return;
                    } else {
                        M(archiveShopDataBeanH);
                        return;
                    }
                }
                r0();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    @UiThread
    void f0() {
        LinearLayout linearLayout = this.f70215g;
        if (linearLayout == null || this.f70216h == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f70216h.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void g0() {
        XRecyclerView xRecyclerView = this.f70213e;
        if (xRecyclerView == null || this.f70212d == null) {
            return;
        }
        try {
            xRecyclerView.setVisibility(8);
            this.f70212d.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void h0() {
        XRecyclerView xRecyclerView = this.f70213e;
        if (xRecyclerView == null || this.f70212d == null) {
            return;
        }
        try {
            xRecyclerView.setVisibility(0);
            this.f70212d.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void i0() {
        LinearLayout linearLayout = this.f70212d;
        if (linearLayout == null || this.f70213e == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f70213e.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // w6.c
    public String j() {
        return this.f70218j.cloudVipLink().d();
    }

    @Receiver(actions = {p5.a.f96202j0})
    void j0(Intent intent) {
        CloudListDataBean cloudListDataBean = (CloudListDataBean) intent.getSerializableExtra("cloud");
        if (cloudListDataBean != null) {
            T(cloudListDataBean);
        }
    }

    @Override // w6.c
    public void k(CloudListDataBean dataBean, int type) {
        T(dataBean);
    }

    public void k0(boolean isVBA) {
        this.f70233y = isVBA;
    }

    public void l0() {
        LinearLayout linearLayout = this.f70212d;
        if (linearLayout == null || linearLayout.getVisibility() != 0) {
            return;
        }
        m0();
    }

    public void m0() {
        showLoding();
        List<CloudListDataBean> list = this.f70226r;
        if (list == null || list.size() <= 0) {
            this.f70223o = 1;
            N();
            i0();
            d0(this.f70223o);
            return;
        }
        this.f70226r.clear();
        x0();
        this.f70223o = 1;
        N();
        i0();
        d0(this.f70223o);
    }

    public void n0() {
        P();
    }

    @UiThread
    void o0() {
        AccountUtil_.getInstance_(getContext()).accountLoginOut(getContext());
        IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f70211c = true;
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMain(com.join.mgps.event.m event) {
        if (this.f70220l != 4) {
            this.f70230v = true;
            String strA = event.a();
            if (this.f70221m == 3 && com.join.mgps.Util.t2.i(strA)) {
                Iterator<CloudListDataBean> it2 = this.f70226r.iterator();
                while (it2.hasNext()) {
                    String archiveDesc = it2.next().getArchiveDesc();
                    if (com.join.mgps.Util.t2.i(archiveDesc) && archiveDesc.equals(strA)) {
                        this.D.add(event.a());
                    }
                }
                List<CloudListDataBean> list = this.f70226r;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (int i10 = 0; i10 < this.f70226r.size(); i10++) {
                    if (this.f70226r.get(i10).getArchiveDesc().equals(strA)) {
                        this.f70226r.remove(i10);
                        x0();
                    }
                }
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.i cloudEvent) {
        View childAt;
        com.join.mgps.base.b bVar;
        List<CloudListDataBean> list = this.f70226r;
        if (list == null || list.size() == 0) {
            if (this.f70220l == 4) {
                r0();
                return;
            }
            return;
        }
        int i10 = 0;
        while (i10 < this.f70226r.size()) {
            CloudListDataBean cloudListDataBean = this.f70226r.get(i10);
            if (cloudEvent.a().getFileMd5().equals(cloudListDataBean.getFileMd5())) {
                cloudListDataBean.setStatus(cloudEvent.e());
                int firstVisiblePosition = this.f70213e.getFirstVisiblePosition();
                int lastVisiblePosition = this.f70213e.getLastVisiblePosition();
                if (i10 >= firstVisiblePosition && i10 <= lastVisiblePosition && (childAt = this.f70213e.getChildAt(i10 - firstVisiblePosition)) != null && (bVar = (com.join.mgps.base.b) this.f70213e.getChildViewHolder(childAt)) != null && bVar.getView(R.id.coulditem) != null) {
                    ((ClouldItemView3) bVar.getView(R.id.coulditem)).setData(this.f70222n, cloudListDataBean, this.f70221m, this.f70220l, false, this.f70226r.size() - 1 == i10, this);
                }
            }
            i10++;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        U();
        if (this.f70221m == 3) {
            l0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f70219k = AccountUtil_.getInstance_(getActivity()).getAccountData();
    }

    @UiThread
    void p0() {
        XRecyclerView xRecyclerView = this.f70213e;
        if (xRecyclerView != null) {
            try {
                xRecyclerView.stopLoadMore();
                this.f70213e.stopRefresh();
                this.f70213e.setNoMore();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @UiThread
    void q0() {
        XRecyclerView xRecyclerView;
        LinearLayout linearLayout = this.f70212d;
        if (linearLayout == null || (xRecyclerView = this.f70213e) == null || xRecyclerView == null) {
            return;
        }
        try {
            this.f70231w = true;
            if (this.f70223o == 2) {
                linearLayout.setVisibility(0);
                if (this.f70221m == 3) {
                    this.f70214f.setText("从本地挑一个分享吧");
                } else {
                    this.f70214f.setText("去推荐下载一个吧");
                }
                this.f70213e.setVisibility(8);
                return;
            }
            linearLayout.setVisibility(8);
            this.f70213e.setVisibility(0);
            this.f70213e.stopLoadMore();
            this.f70213e.stopRefresh();
            this.f70213e.setNoMore();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void r0() {
        if (this.f70212d == null || this.f70213e == null) {
            return;
        }
        try {
            f0();
            this.f70231w = true;
            this.f70212d.setVisibility(0);
            if (this.f70221m == 3) {
                this.f70214f.setText("从本地挑一个分享吧");
            } else {
                this.f70214f.setText("去推荐下载一个吧");
            }
            this.f70213e.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void s0(int pn) {
        try {
            ArchiveshopArgs archiveshopArgsA0 = a0();
            archiveshopArgsA0.setPn(pn);
            ArchiveShopDataBean.DataInfoBean data_info = this.f70225q.f(archiveshopArgsA0.getArgs()).getData_info();
            if (pn == 1 && (data_info == null || data_info.getMarketList().size() == 0)) {
                r0();
                return;
            }
            int i10 = pn + 1;
            if (data_info == null) {
                f0();
                r0();
                return;
            }
            List<CloudListDataBean> marketList = data_info.getMarketList();
            if (marketList == null || marketList.size() <= 0) {
                f0();
                return;
            }
            this.E.addAll(marketList);
            if (i10 <= this.C) {
                s0(i10);
            } else {
                S(new ArrayList(this.E));
                f0();
            }
        } catch (Exception unused) {
            f0();
            showLodingFailed();
            this.E.clear();
            this.D.clear();
        }
    }

    @UiThread
    void showLoding() {
        try {
            LinearLayout linearLayout = this.f70215g;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f70216h;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f70216h;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f70215g;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(getContext()).d(message);
    }

    @Override // w6.c
    public void t(CloudListDataBean dataBean) {
    }

    @UiThread
    void t0(CloudListDataBean dataBean) {
        dataBean.setStatus(6);
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.i(dataBean, dataBean.getStatus()));
        Iterator<CloudListDataBean> it2 = this.f70226r.iterator();
        while (it2.hasNext()) {
            if (it2.next().getArchiveDesc().equals(dataBean.getArchiveDesc())) {
                it2.remove();
                break;
            }
        }
        this.f70227s.notifyDataSetChanged();
        if (this.f70226r.size() == 0) {
            r0();
        } else {
            m0();
        }
    }

    @UiThread
    void u0(CloudListDataBean dataBean) {
        Iterator<CloudListDataBean> it2 = this.f70226r.iterator();
        while (it2.hasNext()) {
            if (it2.next().getArchiveDesc().equals(dataBean.getArchiveDesc())) {
                it2.remove();
                w0();
                if (this.f70226r.size() == 0) {
                    r0();
                } else {
                    m0();
                }
                org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.m(dataBean.getArchiveDesc()));
                return;
            }
        }
    }

    @UiThread
    void v0() {
        XRecyclerView xRecyclerView = this.f70213e;
        if (xRecyclerView != null) {
            try {
                xRecyclerView.stopLoadMore();
                this.f70213e.stopRefresh();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // w6.c
    public void w(CloudListDataBean dataBean) {
    }

    @UiThread
    void w0() {
        if (this.f70211c) {
            return;
        }
        this.f70227s.notifyDataSetChanged();
    }

    @Override // w6.c
    public void x(CloudListDataBean dataBean) {
        if (dataBean.getIsVip() == 1) {
            com.papa.sim.statistic.t.l(getContext()).R1(Event.VipArchive_startover_page, new Ext().setGameId(this.f70222n));
        }
        if (getActivity() instanceof DocumentManageActivity) {
            DocumentManageActivity documentManageActivity = (DocumentManageActivity) getActivity();
            if (documentManageActivity.isFromEMU()) {
                documentManageActivity.finish();
            }
        }
    }

    @UiThread
    void x0() {
        try {
            if (this.f70211c) {
                return;
            }
            this.f70227s.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
