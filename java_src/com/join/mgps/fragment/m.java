package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.czhj.sdk.common.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.DocumentManageActivity;
import com.join.mgps.activity.GameMainActivity3;
import com.join.mgps.customview.ClouldItemView3;
import com.join.mgps.customview.XListView2;
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
import com.join.mgps.ptr.PtrClassicFrameLayout;
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
@EFragment(R.layout.fragment_cloud_list)
public class m extends Fragment implements w6.c {
    ArchiveNumDataBean F;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f70140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    XListView2 f70141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70142f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f70143g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f70144h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f70145i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    RelativeLayout f70146j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    TextView f70147k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    LinearLayout f70148l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    IntentFilter f70149m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Pref
    PrefDef_ f70150n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private UserInfo f70151o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f70152p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f70153q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    String f70154r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f70156t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    com.join.mgps.rpc.d f70157u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    List<CloudListDataBean> f70158v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    h f70159w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    LocalBroadcastManager f70160x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    GameMainActivity3 f70161y;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f70139c = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f70155s = 1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    boolean f70162z = false;
    boolean A = true;
    private boolean B = true;
    public boolean C = false;
    public boolean D = true;
    public boolean E = true;
    int G = 0;
    List<String> H = new ArrayList(0);
    List<CloudListDataBean> I = new ArrayList(0);

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            m.this.m0();
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            m mVar = m.this;
            mVar.d0(mVar.f70155s);
            m.this.N();
        }
    }

    class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            m mVar = m.this;
            mVar.f70155s = 1;
            mVar.N();
            m mVar2 = m.this;
            mVar2.d0(mVar2.f70155s);
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
                m.this.B = false;
            } else {
                m.this.B = true;
            }
        }
    }

    class f implements com.join.mgps.dialog.w.e {
        f() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
            IntentUtil.getInstance().goShareWebActivity(m.this.getContext(), "http://anv3btapi.5fun.com/user/activity/cloud_archive?gameId=" + m.this.f70154r);
            if (!m.this.B) {
                m.this.f70150n.DownloadRecoderNoticeMarcket().g(Boolean.FALSE);
            }
            dialog.dismiss();
        }
    }

    class g implements com.join.mgps.dialog.w.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f70169a;

        g(final CloudListDataBean val$dataBean) {
            this.f70169a = val$dataBean;
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
            m.this.b0(this.f70169a);
            if (!m.this.B) {
                m.this.f70150n.DownloadRecoderNoticeMarcket().g(Boolean.FALSE);
            }
            dialog.dismiss();
        }
    }

    class h extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Context f70171b;

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            ClouldItemView3 f70173a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            LinearLayout f70174b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            TextView f70175c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            TextView f70176d;

            a() {
            }
        }

        public h(Context context) {
            this.f70171b = context;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return m.this.f70158v.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return m.this.f70158v.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
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
        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            a aVar;
            try {
                if (convertView == null) {
                    aVar = new a();
                    convertView = LayoutInflater.from(this.f70171b).inflate(R.layout.item_cloud_list_item, (ViewGroup) null);
                    aVar.f70173a = (ClouldItemView3) convertView.findViewById(R.id.coulditem);
                    aVar.f70174b = (LinearLayout) convertView.findViewById(R.id.ll_show);
                    aVar.f70175c = (TextView) convertView.findViewById(R.id.tv_today_id);
                    aVar.f70176d = (TextView) convertView.findViewById(R.id.tv_zong_id);
                    convertView.setTag(aVar);
                } else {
                    aVar = (a) convertView.getTag();
                }
                aVar.f70173a.setCloudItemListener(m.this);
                if (m.this.f70158v.size() - 1 == position) {
                    ClouldItemView3 clouldItemView3 = aVar.f70173a;
                    m mVar = m.this;
                    String str = mVar.f70154r;
                    CloudListDataBean cloudListDataBean = mVar.f70158v.get(position);
                    m mVar2 = m.this;
                    clouldItemView3.setData(str, cloudListDataBean, mVar2.f70153q, mVar2.f70152p, false, true, mVar2);
                } else {
                    ClouldItemView3 clouldItemView4 = aVar.f70173a;
                    m mVar3 = m.this;
                    String str2 = mVar3.f70154r;
                    CloudListDataBean cloudListDataBean2 = mVar3.f70158v.get(position);
                    m mVar4 = m.this;
                    clouldItemView4.setData(str2, cloudListDataBean2, mVar4.f70153q, mVar4.f70152p, false, false, mVar4);
                }
                aVar.f70173a.setGBAType(m.this.f70161y.isVBA);
                ClouldItemView3 clouldItemView5 = aVar.f70173a;
                GameMainActivity3 gameMainActivity3 = m.this.f70161y;
                clouldItemView5.setPGN(gameMainActivity3.marcketDownEnable, gameMainActivity3.marcketPGNEnable);
                if (m.this.f70152p == 4) {
                    aVar.f70174b.setVisibility(0);
                    aVar.f70175c.setText(m.this.f70158v.get(position).getTodayCoin() + "");
                    aVar.f70176d.setText(m.this.f70158v.get(position).getTotalCoin() + "");
                } else {
                    aVar.f70174b.setVisibility(8);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return convertView;
        }
    }

    private void W(CloudListDataBean dataBean, boolean isMarcket) {
        if (isMarcket) {
            dataBean.setArchiveFilePath(com.join.mgps.Util.z.f50170i + File.separator + dataBean.getArchiveFileName());
        } else {
            dataBean.setArchiveFilePath(com.join.mgps.Util.z.f50169h + File.separator + dataBean.getArchiveFileName());
        }
        if (dataBean.getIsVip() == 1) {
            com.papa.sim.statistic.t.l(getContext()).R1(Event.VipArchive_download_page, new Ext().setGameId(this.f70154r));
        }
        Intent intent = new Intent(p5.a.f96200i0);
        intent.putExtra("downCloud", dataBean);
        getActivity().sendBroadcast(intent);
    }

    private ArchiveBuyArgs X() {
        if (this.f70151o == null) {
            return null;
        }
        RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getActivity());
        String str = this.f70151o.getUid() + "";
        String token = this.f70151o.getToken();
        String str2 = this.f70154r;
        int i10 = this.f70155s;
        this.f70155s = i10 + 1;
        return requestBeanUtil.getArchiveBuy(str, token, str2, i10);
    }

    private ArchiveColudArgs Y() {
        if (this.f70151o == null) {
            return RequestBeanUtil.getInstance(getContext()).getArchiveNum("", "", this.f70154r);
        }
        return RequestBeanUtil.getInstance(getContext()).getArchiveNum(this.f70151o.getUid() + "", this.f70151o.getToken(), this.f70154r);
    }

    private ArchiveevaluateArgs Z(CloudListDataBean dataBean, int commentType) {
        if (this.f70151o == null) {
            return null;
        }
        String id2 = this.f70153q == 3 ? dataBean.getId() : dataBean.getArchiveId();
        return RequestBeanUtil.getInstance(getActivity()).getArchiveEvaluate(this.f70151o.getUid() + "", this.f70151o.getToken(), id2, commentType);
    }

    private ArchiveshopArgs a0() {
        if (this.f70151o == null) {
            RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getActivity());
            String str = this.f70154r;
            int i10 = this.f70156t;
            int i11 = this.f70155s;
            this.f70155s = i11 + 1;
            return requestBeanUtil.getArchiveshop("", "", str, i10, i11);
        }
        RequestBeanUtil requestBeanUtil2 = RequestBeanUtil.getInstance(getActivity());
        String str2 = this.f70151o.getUid() + "";
        String token = this.f70151o.getToken();
        String str3 = this.f70154r;
        int i12 = this.f70156t;
        int i13 = this.f70155s;
        this.f70155s = i13 + 1;
        return requestBeanUtil2.getArchiveshop(str2, token, str3, i12, i13);
    }

    private void c0() {
        this.H.clear();
        showLoding();
        d0(this.f70155s);
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
            if (com.join.mgps.Util.b.piv(accountData) || dataBean.getIsVip() == 1) {
                b0(dataBean);
                return;
            }
            if (dataBean.getArchiveCoin() != null && accountData.getPapaMoney() < Integer.parseInt(dataBean.getArchiveCoin())) {
                com.join.mgps.Util.a3.b(getContext()).d("剩余铜板不足，去签到领取更多铜板吧");
                return;
            }
            if (!this.f70150n.DownloadRecoderNoticeMarcket().d().booleanValue() || dataBean.getArchiveCoin() == null || Integer.parseInt(dataBean.getArchiveCoin()) == 0) {
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
            this.A = true;
            r0();
        } catch (Exception e10) {
            showLodingFailed();
            e10.printStackTrace();
        }
    }

    @UiThread
    void N() {
        try {
            XListView2 xListView2 = this.f70141e;
            if (xListView2 != null) {
                xListView2.l();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void O(final CloudListDataBean dataBean, final int commentType) {
        try {
            if (commentType != 4) {
                ArchiveEvaluteDataBean archiveEvaluteDataBeanA = this.f70157u.a(Z(dataBean, commentType).getArgs());
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
            map.put("uid", this.f70151o.getUid() + "");
            map.put(Constants.TOKEN, this.f70151o.getToken());
            ArchiveResponseMain<ArchiveResponseMessage> archiveResponseMainD = this.f70157u.d(map);
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
            for (CloudDownRecoderTable cloudDownRecoderTable : t6.i.o().n(this.f70154r)) {
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
            this.f70158v.clear();
            if (data != null) {
                this.f70158v.addAll(data);
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
        ArchiveResponseMain<ArchiveResponseMessage> archiveResponseMainB = this.f70157u.b(map);
        if (archiveResponseMainB != null && archiveResponseMainB.getCode() == 600) {
            u0(dataBean);
            return;
        }
        if (archiveResponseMainB != null) {
            if (!"701".equals(archiveResponseMainB.getMsg())) {
                showMessage(archiveResponseMainB.getMsg());
            } else {
                o0();
                showMessage("你的登陆已失效，请重新登陆。");
            }
        }
    }

    boolean U() {
        if (this.H.size() <= 0) {
            return false;
        }
        this.H.clear();
        this.I.clear();
        this.G = this.f70155s - 1;
        showLoding();
        s0(1);
        return true;
    }

    @UiThread
    void V(List<CloudListDataBean> listDataReplace) {
        try {
            if (this.f70155s == 2) {
                this.f70158v.clear();
            }
            x0();
            for (int i10 = 0; i10 < listDataReplace.size(); i10++) {
                this.f70158v.add(listDataReplace.get(i10));
            }
            this.A = true;
            if (listDataReplace.size() < 10) {
                p0();
            }
            Iterator<CloudListDataBean> it2 = this.f70158v.iterator();
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
        this.f70152p = getArguments().getInt("type", 9);
        this.f70153q = getArguments().getInt("typeIndex");
        this.f70154r = getArguments().getString("gameid");
        this.f70151o = AccountUtil_.getInstance_(getActivity()).getAccountData();
        this.f70160x = LocalBroadcastManager.getInstance(getActivity());
        this.f70157u = com.join.mgps.rpc.impl.c.k();
        this.f70158v = new ArrayList();
        org.greenrobot.eventbus.c.f().v(this);
        this.f70159w = new h(getActivity());
        this.f70161y = (GameMainActivity3) getActivity();
        this.f70141e.setAdapter((ListAdapter) this.f70159w);
        int i10 = this.f70152p;
        if (i10 == 1) {
            this.f70156t = 0;
            c0();
        } else if (i10 == 2) {
            this.f70156t = 2;
            c0();
        } else if (i10 == 3) {
            this.f70156t = 1;
            c0();
        } else {
            this.f70156t = 3;
            c0();
        }
        this.f70140d.setOnClickListener(new a());
        this.f70141e.setPullLoadEnable(new b());
        P();
        this.f70141e.setPullRefreshEnable(new c());
        this.f70141e.setPreLoadCount(3);
        this.f70141e.l();
    }

    @Background
    void b0(CloudListDataBean dataBean) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            HashMap map = new HashMap();
            if (this.f70153q == 4) {
                map.put("id", dataBean.getArchiveId());
            } else {
                map.put("id", dataBean.getId());
            }
            map.put("uid", accountData.getUid() + "");
            map.put(Constants.TOKEN, accountData.getToken());
            ArchiveDownDataBean archiveDownDataBeanE = this.f70157u.e(map);
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
            if (this.A) {
                this.A = false;
                if (this.f70153q == 3) {
                    ArchiveShopDataBean archiveShopDataBeanF = this.f70157u.f(a0().getArgs());
                    v0();
                    if ((archiveShopDataBeanF == null || archiveShopDataBeanF.getData_info() == null || archiveShopDataBeanF.getData_info().getMarketList() == null || archiveShopDataBeanF.getData_info().getMarketList().size() == 0) && this.f70155s == 2) {
                        r0();
                        return;
                    } else {
                        M(archiveShopDataBeanF);
                        return;
                    }
                }
                ArchiveBuyArgs archiveBuyArgsX = X();
                if (!AccountUtil_.getInstance_(getActivity()).getToken().equals("") && this.f70151o.getUid() != 0 && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                    ArchiveShopDataBean archiveShopDataBeanH = this.f70157u.h(archiveBuyArgsX.getArgs());
                    v0();
                    if (archiveShopDataBeanH.getCode() == -1 && archiveShopDataBeanH.getMsg().equals("701") && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                        this.A = true;
                        AccountUtil_.getInstance_(getActivity()).accountLoginOut(getActivity());
                        o0();
                        return;
                    } else if (archiveShopDataBeanH.getData_info().getMarketList().size() == 0 && this.f70155s == 2) {
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
        LinearLayout linearLayout = this.f70144h;
        if (linearLayout == null || this.f70145i == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f70145i.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void g0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f70142f;
        if (ptrClassicFrameLayout == null || this.f70140d == null) {
            return;
        }
        try {
            ptrClassicFrameLayout.setVisibility(8);
            this.f70140d.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void h0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f70142f;
        if (ptrClassicFrameLayout == null || this.f70140d == null) {
            return;
        }
        try {
            ptrClassicFrameLayout.setVisibility(0);
            this.f70140d.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void i0() {
        LinearLayout linearLayout = this.f70140d;
        if (linearLayout == null || this.f70142f == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f70142f.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // w6.c
    public String j() {
        return this.f70150n.cloudVipLink().d();
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
        this.C = isVBA;
    }

    public void l0() {
        LinearLayout linearLayout = this.f70140d;
        if (linearLayout == null || linearLayout.getVisibility() != 0) {
            return;
        }
        m0();
    }

    public void m0() {
        showLoding();
        List<CloudListDataBean> list = this.f70158v;
        if (list == null || list.size() <= 0) {
            this.f70155s = 1;
            N();
            i0();
            d0(this.f70155s);
            return;
        }
        this.f70158v.clear();
        x0();
        this.f70155s = 1;
        N();
        i0();
        d0(this.f70155s);
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
        this.f70139c = true;
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMain(com.join.mgps.event.m event) {
        if (this.f70152p != 4) {
            this.f70162z = true;
            String strA = event.a();
            if (this.f70153q == 3 && com.join.mgps.Util.t2.i(strA)) {
                Iterator<CloudListDataBean> it2 = this.f70158v.iterator();
                while (it2.hasNext()) {
                    String archiveDesc = it2.next().getArchiveDesc();
                    if (com.join.mgps.Util.t2.i(archiveDesc) && archiveDesc.equals(strA)) {
                        this.H.add(event.a());
                    }
                }
                List<CloudListDataBean> list = this.f70158v;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (int i10 = 0; i10 < this.f70158v.size(); i10++) {
                    if (this.f70158v.get(i10).getArchiveDesc().equals(strA)) {
                        this.f70158v.remove(i10);
                        x0();
                    }
                }
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.i cloudEvent) {
        h.a aVar;
        ClouldItemView3 clouldItemView3;
        List<CloudListDataBean> list = this.f70158v;
        if (list == null || list.size() == 0) {
            if (this.f70152p == 4) {
                r0();
                return;
            }
            return;
        }
        this.f70159w.notifyDataSetChanged();
        int i10 = 0;
        while (i10 < this.f70158v.size()) {
            CloudListDataBean cloudListDataBean = this.f70158v.get(i10);
            if (cloudEvent.a().getFileMd5().equals(cloudListDataBean.getFileMd5())) {
                cloudListDataBean.setStatus(cloudEvent.e());
                int firstVisiblePosition = this.f70141e.getFirstVisiblePosition();
                int lastVisiblePosition = this.f70141e.getLastVisiblePosition();
                if (i10 >= firstVisiblePosition && i10 <= lastVisiblePosition && (aVar = (h.a) this.f70141e.getChildAt(i10 - firstVisiblePosition).getTag()) != null && (clouldItemView3 = aVar.f70173a) != null) {
                    clouldItemView3.setData(this.f70154r, cloudListDataBean, this.f70153q, this.f70152p, false, this.f70158v.size() - 1 == i10, this);
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
        if (this.f70153q == 3) {
            l0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f70151o = AccountUtil_.getInstance_(getActivity()).getAccountData();
    }

    @UiThread
    void p0() {
        XListView2 xListView2 = this.f70141e;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.f70141e.v();
                this.f70141e.setNoMore();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @UiThread
    void q0() {
        LinearLayout linearLayout = this.f70140d;
        if (linearLayout == null || this.f70142f == null || this.f70141e == null) {
            return;
        }
        try {
            this.A = true;
            if (this.f70155s == 2) {
                linearLayout.setVisibility(0);
                if (this.f70153q == 3) {
                    this.f70143g.setText("从本地挑一个分享吧");
                } else {
                    this.f70143g.setText("去推荐下载一个吧");
                }
                this.f70142f.setVisibility(8);
                return;
            }
            linearLayout.setVisibility(8);
            this.f70142f.setVisibility(0);
            this.f70141e.u();
            this.f70141e.v();
            this.f70141e.setNoMore();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void r0() {
        if (this.f70140d == null || this.f70142f == null) {
            return;
        }
        try {
            f0();
            this.A = true;
            this.f70140d.setVisibility(0);
            if (this.f70153q == 3) {
                this.f70143g.setText("从本地挑一个分享吧");
            } else {
                this.f70143g.setText("去推荐下载一个吧");
            }
            this.f70142f.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void s0(int pn) {
        try {
            ArchiveshopArgs archiveshopArgsA0 = a0();
            archiveshopArgsA0.setPn(pn);
            ArchiveShopDataBean.DataInfoBean data_info = this.f70157u.f(archiveshopArgsA0.getArgs()).getData_info();
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
            this.I.addAll(marketList);
            if (i10 <= this.G) {
                s0(i10);
            } else {
                S(new ArrayList(this.I));
                f0();
            }
        } catch (Exception unused) {
            f0();
            showLodingFailed();
            this.I.clear();
            this.H.clear();
        }
    }

    @UiThread
    void showLoding() {
        try {
            LinearLayout linearLayout = this.f70144h;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f70145i;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f70145i;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f70144h;
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
        Iterator<CloudListDataBean> it2 = this.f70158v.iterator();
        while (it2.hasNext()) {
            if (it2.next().getArchiveDesc().equals(dataBean.getArchiveDesc())) {
                it2.remove();
                break;
            }
        }
        this.f70159w.notifyDataSetChanged();
        if (this.f70158v.size() == 0) {
            r0();
        } else {
            m0();
        }
    }

    @UiThread
    void u0(CloudListDataBean dataBean) {
        Iterator<CloudListDataBean> it2 = this.f70158v.iterator();
        while (it2.hasNext()) {
            if (it2.next().getArchiveDesc().equals(dataBean.getArchiveDesc())) {
                it2.remove();
                w0();
                if (this.f70158v.size() == 0) {
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
        XListView2 xListView2 = this.f70141e;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.f70141e.v();
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
        if (this.f70139c) {
            return;
        }
        this.f70159w.notifyDataSetChanged();
    }

    @Override // w6.c
    public void x(CloudListDataBean dataBean) {
        if (dataBean.getIsVip() == 1) {
            com.papa.sim.statistic.t.l(getContext()).R1(Event.VipArchive_startover_page, new Ext().setGameId(this.f70154r));
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
            if (this.f70139c) {
                return;
            }
            this.f70159w.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
