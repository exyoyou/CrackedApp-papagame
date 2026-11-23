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
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.DocumentManageActivity;
import com.join.mgps.customview.ClouldItemView2;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.dto.ArchiveBuyArgs;
import com.join.mgps.dto.ArchiveDownDataBean;
import com.join.mgps.dto.ArchiveEvaluteDataBean;
import com.join.mgps.dto.ArchiveResponseMain;
import com.join.mgps.dto.ArchiveResponseMessage;
import com.join.mgps.dto.ArchiveShopDataBean;
import com.join.mgps.dto.ArchiveevaluateArgs;
import com.join.mgps.dto.ArchiveshopArgs;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.item_recommed_fragment)
public class c5 extends Fragment implements w6.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f69156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    XListView2 f69157e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f69158f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f69159g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f69160h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f69161i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    RelativeLayout f69162j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    TextView f69163k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    LinearLayout f69164l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    IntentFilter f69165m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Pref
    PrefDef_ f69166n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private UserInfo f69167o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f69168p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f69169q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    String f69170r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f69172t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    com.join.mgps.rpc.d f69173u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    List<CloudListDataBean> f69174v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    i f69175w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.join.mgps.dialog.x f69176x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    DocumentManageActivity f69177y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    LocalBroadcastManager f69178z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f69155c = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f69171s = 1;
    boolean A = false;
    boolean B = true;
    private boolean C = true;
    int D = 0;
    List<String> E = new ArrayList(0);
    List<CloudListDataBean> F = new ArrayList(0);

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            c5.this.j0();
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            c5 c5Var = c5.this;
            c5Var.c0(c5Var.f69171s);
            c5.this.N();
        }
    }

    class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            c5 c5Var = c5.this;
            c5Var.f69171s = 1;
            c5Var.N();
            c5 c5Var2 = c5.this;
            c5Var2.c0(c5Var2.f69171s);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(MApplication.S);
            com.join.mgps.Util.r0.w0(c5.this.getActivity(), forumPostsBean, null);
        }
    }

    class e implements com.join.mgps.dialog.w.e {
        e() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
        }
    }

    class f implements CompoundButton.OnCheckedChangeListener {
        f() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            if (isChecked) {
                c5.this.C = false;
            } else {
                c5.this.C = true;
            }
        }
    }

    class g implements com.join.mgps.dialog.w.e {
        g() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
            IntentUtil.getInstance().goShareWebActivity(c5.this.getContext(), "http://anv3btapi.5fun.com/user/activity/cloud_archive?gameId=" + c5.this.f69170r);
            if (!c5.this.C) {
                c5.this.f69166n.DownloadRecoderNoticeMarcket().g(Boolean.FALSE);
            }
            dialog.dismiss();
        }
    }

    class h implements com.join.mgps.dialog.w.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f69186a;

        h(final CloudListDataBean val$dataBean) {
            this.f69186a = val$dataBean;
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
            c5.this.a0(this.f69186a);
            if (!c5.this.C) {
                c5.this.f69166n.DownloadRecoderNoticeMarcket().g(Boolean.FALSE);
            }
            dialog.dismiss();
        }
    }

    class i extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Context f69188b;

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            ClouldItemView2 f69190a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            LinearLayout f69191b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            TextView f69192c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            TextView f69193d;

            a() {
            }
        }

        public i(Context context) {
            this.f69188b = context;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return c5.this.f69174v.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return c5.this.f69174v.get(position);
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
                    convertView = LayoutInflater.from(this.f69188b).inflate(R.layout.archiveshopfragmet_item, (ViewGroup) null);
                    aVar.f69190a = (ClouldItemView2) convertView.findViewById(R.id.coulditem);
                    aVar.f69191b = (LinearLayout) convertView.findViewById(R.id.ll_show);
                    aVar.f69192c = (TextView) convertView.findViewById(R.id.tv_today_id);
                    aVar.f69193d = (TextView) convertView.findViewById(R.id.tv_zong_id);
                    convertView.setTag(aVar);
                } else {
                    aVar = (a) convertView.getTag();
                }
                aVar.f69190a.setCloudItemListener(c5.this);
                if (c5.this.f69174v.size() - 1 == position) {
                    ClouldItemView2 clouldItemView2 = aVar.f69190a;
                    c5 c5Var = c5.this;
                    String str = c5Var.f69170r;
                    CloudListDataBean cloudListDataBean = c5Var.f69174v.get(position);
                    c5 c5Var2 = c5.this;
                    clouldItemView2.setData(str, cloudListDataBean, c5Var2.f69169q, c5Var2.f69168p, false, true, c5Var2);
                } else {
                    ClouldItemView2 clouldItemView3 = aVar.f69190a;
                    c5 c5Var3 = c5.this;
                    String str2 = c5Var3.f69170r;
                    CloudListDataBean cloudListDataBean2 = c5Var3.f69174v.get(position);
                    c5 c5Var4 = c5.this;
                    clouldItemView3.setData(str2, cloudListDataBean2, c5Var4.f69169q, c5Var4.f69168p, false, false, c5Var4);
                }
                aVar.f69190a.setGBAType(c5.this.f69177y.isVBA);
                ClouldItemView2 clouldItemView4 = aVar.f69190a;
                DocumentManageActivity documentManageActivity = c5.this.f69177y;
                clouldItemView4.setPGN(documentManageActivity.marcketDownEnable, documentManageActivity.marcketPGNEnable);
                if (c5.this.f69168p == 4) {
                    aVar.f69191b.setVisibility(0);
                    aVar.f69192c.setText(c5.this.f69174v.get(position).getTodayCoin() + "");
                    aVar.f69193d.setText(c5.this.f69174v.get(position).getTotalCoin() + "");
                } else {
                    aVar.f69191b.setVisibility(8);
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
            com.papa.sim.statistic.t.l(getContext()).R1(Event.VipArchive_download_emulator, new Ext().setGameId(this.f69170r));
        }
        Intent intent = new Intent(p5.a.f96198h0);
        intent.putExtra("downCloud", dataBean);
        getActivity().sendBroadcast(intent);
    }

    private ArchiveBuyArgs X() {
        if (this.f69167o == null) {
            return null;
        }
        RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getActivity());
        String str = this.f69167o.getUid() + "";
        String token = this.f69167o.getToken();
        String str2 = this.f69170r;
        int i10 = this.f69171s;
        this.f69171s = i10 + 1;
        return requestBeanUtil.getArchiveBuy(str, token, str2, i10);
    }

    private ArchiveevaluateArgs Y(CloudListDataBean dataBean, int commentType) {
        if (this.f69167o == null) {
            return null;
        }
        String id2 = this.f69169q == 3 ? dataBean.getId() : dataBean.getArchiveId();
        return RequestBeanUtil.getInstance(getActivity()).getArchiveEvaluate(this.f69167o.getUid() + "", this.f69167o.getToken(), id2, commentType);
    }

    private ArchiveshopArgs Z() {
        if (this.f69167o == null) {
            RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getActivity());
            String str = this.f69170r;
            int i10 = this.f69172t;
            int i11 = this.f69171s;
            this.f69171s = i11 + 1;
            return requestBeanUtil.getArchiveshop("", "", str, i10, i11);
        }
        RequestBeanUtil requestBeanUtil2 = RequestBeanUtil.getInstance(getActivity());
        String str2 = this.f69167o.getUid() + "";
        String token = this.f69167o.getToken();
        String str3 = this.f69170r;
        int i12 = this.f69172t;
        int i13 = this.f69171s;
        this.f69171s = i13 + 1;
        return requestBeanUtil2.getArchiveshop(str2, token, str3, i12, i13);
    }

    private void b0() {
        this.E.clear();
        showLoding();
        c0(this.f69171s);
    }

    private boolean d0() {
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
        if (d0()) {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            if (AccountUtil_.getInstance_(getContext()).isTourist()) {
                IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
            }
            if (com.join.mgps.Util.b.piv(accountData)) {
                a0(dataBean);
                return;
            }
            if (dataBean.getArchiveCoin() != null && accountData.getPapaMoney() < Integer.parseInt(dataBean.getArchiveCoin())) {
                ToastManager.show("剩余铜板不足，去签到领取更多铜板吧");
                return;
            }
            if (!this.f69166n.DownloadRecoderNoticeMarcket().d().booleanValue() || dataBean.getArchiveCoin() == null || Integer.parseInt(dataBean.getArchiveCoin()) == 0) {
                a0(dataBean);
                return;
            }
            new com.join.mgps.dialog.w(getActivity(), R.style.MyDialog).g("获取须知").d("悟饭平台会员可免费下载该存档。如果你不想成为会员，可以选择扣除" + dataBean.getArchiveCoin() + "铜板的方式进行下载，铜板将返还至存档作者。").f("下载(扣除" + dataBean.getArchiveCoin() + ")").b("会员免费下载").e(new h(dataBean)).a(new g()).c(new f()).h(true).i(new e()).show();
        }
    }

    @Override // w6.c
    public void G(CloudListDataBean dataBean, int commentType) {
        if (d0()) {
            O(dataBean, commentType);
        }
    }

    void M(ArchiveShopDataBean shopDataBean) {
        try {
            e0();
            if (shopDataBean != null && shopDataBean.getCode() == 600) {
                List<CloudListDataBean> marketList = shopDataBean.getData_info().getMarketList();
                if (shopDataBean.getData_info().getMarketList().size() == 0) {
                    n0();
                    return;
                } else {
                    V(marketList);
                    return;
                }
            }
            this.B = true;
            o0();
        } catch (Exception e10) {
            showLodingFailed();
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N() {
        try {
            XListView2 xListView2 = this.f69157e;
            if (xListView2 != null) {
                xListView2.l();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O(final CloudListDataBean dataBean, final int commentType) {
        try {
            if (commentType != 4) {
                ArchiveEvaluteDataBean archiveEvaluteDataBeanA = this.f69173u.a(Y(dataBean, commentType).getArgs());
                if (archiveEvaluteDataBeanA.getCode() == 600) {
                    showMessage(archiveEvaluteDataBeanA.getData_info().getMsg());
                    j0();
                    return;
                } else {
                    if (archiveEvaluteDataBeanA.getCode() == -1) {
                        if (!"701".equals(archiveEvaluteDataBeanA.getMsg())) {
                            showMessage(archiveEvaluteDataBeanA.getMsg());
                            return;
                        } else {
                            l0();
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
            map.put("uid", this.f69167o.getUid() + "");
            map.put(Constants.TOKEN, this.f69167o.getToken());
            ArchiveResponseMain<ArchiveResponseMessage> archiveResponseMainD = this.f69173u.d(map);
            if (archiveResponseMainD == null || archiveResponseMainD.getCode() != 600) {
                if (archiveResponseMainD != null) {
                    if (!"701".equals(archiveResponseMainD.getMsg())) {
                        showMessage(archiveResponseMainD.getMsg());
                        return;
                    } else {
                        l0();
                        showMessage("你的登陆已失效，请重新登陆。");
                        return;
                    }
                }
                return;
            }
            if (dataBean.getArchiveFilePath() != null && new File(dataBean.getArchiveFilePath()).exists()) {
                UtilsMy.delete(new File(dataBean.getArchiveFilePath()));
            }
            for (CloudDownRecoderTable cloudDownRecoderTable : t6.i.o().n(this.f69170r)) {
                if (cloudDownRecoderTable.getMd5().equals(dataBean.getFileMd5())) {
                    t6.i.o().delete(cloudDownRecoderTable);
                }
            }
            q0(dataBean);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P() {
        if (!MApplication.Q) {
            RelativeLayout relativeLayout = this.f69162j;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
                return;
            }
            return;
        }
        RelativeLayout relativeLayout2 = this.f69162j;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(0);
            this.f69163k.setText(MApplication.R);
        }
        LinearLayout linearLayout = this.f69164l;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new d());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S(List<CloudListDataBean> data) {
        try {
            this.f69174v.clear();
            if (data != null) {
                this.f69174v.addAll(data);
            }
            u0();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void T(CloudListDataBean dataBean) {
        UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
        HashMap map = new HashMap();
        try {
            map.put("id", dataBean.getId() == null ? dataBean.getArchiveId() : dataBean.getId());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        map.put("uid", accountData.getUid() + "");
        map.put(Constants.TOKEN, accountData.getToken());
        ArchiveResponseMain<ArchiveResponseMessage> archiveResponseMainB = this.f69173u.b(map);
        if (archiveResponseMainB.getCode() == 600) {
            r0(dataBean);
        } else if (!"701".equals(archiveResponseMainB.getMsg())) {
            showMessage(archiveResponseMainB.getMsg());
        } else {
            l0();
            showMessage("你的登陆已失效，请重新登陆。");
        }
    }

    boolean U() {
        if (this.E.size() <= 0) {
            return false;
        }
        this.E.clear();
        this.F.clear();
        this.D = this.f69171s - 1;
        showLoding();
        p0(1);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V(List<CloudListDataBean> listDataReplace) {
        try {
            if (this.f69171s == 2) {
                this.f69174v.clear();
            }
            u0();
            for (int i10 = 0; i10 < listDataReplace.size(); i10++) {
                this.f69174v.add(listDataReplace.get(i10));
            }
            this.B = true;
            if (listDataReplace.size() < 10) {
                m0();
            }
            Iterator<CloudListDataBean> it2 = this.f69174v.iterator();
            while (it2.hasNext()) {
                it2.next().setStatus(6);
            }
            g0();
            u0();
        } catch (Exception e10) {
            showLodingFailed();
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void a0(CloudListDataBean dataBean) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            HashMap map = new HashMap();
            if (this.f69169q == 4) {
                map.put("id", dataBean.getArchiveId());
            } else {
                map.put("id", dataBean.getId());
            }
            map.put("uid", accountData.getUid() + "");
            map.put(Constants.TOKEN, accountData.getToken());
            ArchiveDownDataBean archiveDownDataBeanE = this.f69173u.e(map);
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
                l0();
                showMessage("你的登陆已失效，请重新登陆。");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @AfterViews
    @RequiresApi(api = 16)
    void afterView() {
        this.f69168p = getArguments().getInt("type", 9);
        this.f69169q = getArguments().getInt("typeIndex");
        this.f69170r = getArguments().getString("gameid");
        this.f69177y = (DocumentManageActivity) getActivity();
        this.f69167o = AccountUtil_.getInstance_(getActivity()).getAccountData();
        this.f69178z = LocalBroadcastManager.getInstance(getActivity());
        this.f69173u = com.join.mgps.rpc.impl.c.k();
        this.f69174v = new ArrayList();
        org.greenrobot.eventbus.c.f().v(this);
        i iVar = new i(getActivity());
        this.f69175w = iVar;
        this.f69157e.setAdapter((ListAdapter) iVar);
        int i10 = this.f69168p;
        if (i10 == 1) {
            this.f69172t = 0;
            b0();
        } else if (i10 == 2) {
            this.f69172t = 2;
            b0();
        } else if (i10 == 3) {
            this.f69172t = 1;
            b0();
        } else {
            this.f69172t = 3;
            b0();
        }
        this.f69156d.setOnClickListener(new a());
        this.f69157e.setPullLoadEnable(new b());
        P();
        this.f69157e.setPullRefreshEnable(new c());
        this.f69157e.setPreLoadCount(3);
        this.f69157e.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void c0(int pns) {
        try {
            if (this.B) {
                this.B = false;
                if (this.f69169q == 3) {
                    ArchiveShopDataBean archiveShopDataBeanF = this.f69173u.f(Z().getArgs());
                    s0();
                    if ((archiveShopDataBeanF == null || archiveShopDataBeanF.getData_info() == null || archiveShopDataBeanF.getData_info().getMarketList() == null || archiveShopDataBeanF.getData_info().getMarketList().size() == 0) && this.f69171s == 2) {
                        o0();
                        return;
                    } else {
                        M(archiveShopDataBeanF);
                        return;
                    }
                }
                ArchiveBuyArgs archiveBuyArgsX = X();
                if (!AccountUtil_.getInstance_(getActivity()).getToken().equals("") && this.f69167o.getUid() != 0 && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                    ArchiveShopDataBean archiveShopDataBeanH = this.f69173u.h(archiveBuyArgsX.getArgs());
                    s0();
                    if (archiveShopDataBeanH.getCode() == -1 && archiveShopDataBeanH.getMsg().equals("701") && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                        this.B = true;
                        AccountUtil_.getInstance_(getActivity()).accountLoginOut(getActivity());
                        l0();
                        return;
                    } else if (archiveShopDataBeanH.getData_info().getMarketList().size() == 0 && this.f69171s == 2) {
                        o0();
                        return;
                    } else {
                        M(archiveShopDataBeanH);
                        return;
                    }
                }
                o0();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e0() {
        LinearLayout linearLayout = this.f69160h;
        if (linearLayout == null || this.f69161i == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f69161i.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f69158f;
        if (ptrClassicFrameLayout == null || this.f69156d == null) {
            return;
        }
        try {
            ptrClassicFrameLayout.setVisibility(8);
            this.f69156d.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f69158f;
        if (ptrClassicFrameLayout == null || this.f69156d == null) {
            return;
        }
        try {
            ptrClassicFrameLayout.setVisibility(0);
            this.f69156d.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        LinearLayout linearLayout = this.f69156d;
        if (linearLayout == null || this.f69158f == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f69158f.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void i0() {
        LinearLayout linearLayout = this.f69156d;
        if (linearLayout == null || linearLayout.getVisibility() != 0) {
            return;
        }
        j0();
    }

    @Override // w6.c
    public String j() {
        return this.f69166n.cloudVipLink().d();
    }

    public void j0() {
        showLoding();
        List<CloudListDataBean> list = this.f69174v;
        if (list == null || list.size() <= 0) {
            this.f69171s = 1;
            N();
            h0();
            c0(this.f69171s);
            return;
        }
        this.f69174v.clear();
        u0();
        this.f69171s = 1;
        N();
        h0();
        c0(this.f69171s);
    }

    @Override // w6.c
    public void k(CloudListDataBean dataBean, int type) {
        T(dataBean);
        Intent intent = new Intent(p5.a.f96202j0);
        intent.putExtra("cloud", dataBean);
        getActivity().sendBroadcast(intent);
    }

    public void k0() {
        P();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l0() {
        AccountUtil_.getInstance_(getContext()).accountLoginOut(getContext());
        IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m0() {
        XListView2 xListView2 = this.f69157e;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.f69157e.v();
                this.f69157e.setNoMore();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n0() {
        LinearLayout linearLayout = this.f69156d;
        if (linearLayout == null || this.f69158f == null || this.f69157e == null) {
            return;
        }
        try {
            this.B = true;
            if (this.f69171s == 2) {
                linearLayout.setVisibility(0);
                if (this.f69169q == 3) {
                    this.f69159g.setText("从本地挑一个分享吧");
                } else {
                    this.f69159g.setText("去推荐下载一个吧");
                }
                this.f69158f.setVisibility(8);
                return;
            }
            linearLayout.setVisibility(8);
            this.f69158f.setVisibility(0);
            this.f69157e.u();
            this.f69157e.v();
            this.f69157e.setNoMore();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o0() {
        if (this.f69156d == null || this.f69158f == null) {
            return;
        }
        try {
            e0();
            this.B = true;
            this.f69156d.setVisibility(0);
            if (this.f69169q == 3) {
                this.f69159g.setText("从本地挑一个分享吧");
            } else {
                this.f69159g.setText("去推荐下载一个吧");
            }
            this.f69158f.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f69155c = true;
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMain(com.join.mgps.event.m event) {
        if (this.f69168p != 4) {
            this.A = true;
            String strA = event.a();
            if (this.f69169q == 3 && com.join.mgps.Util.t2.i(strA)) {
                Iterator<CloudListDataBean> it2 = this.f69174v.iterator();
                while (it2.hasNext()) {
                    String archiveDesc = it2.next().getArchiveDesc();
                    if (com.join.mgps.Util.t2.i(archiveDesc) && archiveDesc.equals(strA)) {
                        this.E.add(event.a());
                    }
                }
                List<CloudListDataBean> list = this.f69174v;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (int i10 = 0; i10 < this.f69174v.size(); i10++) {
                    if (this.f69174v.get(i10).getArchiveDesc().equals(strA)) {
                        this.f69174v.remove(i10);
                        u0();
                    }
                }
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.i cloudEvent) {
        i.a aVar;
        ClouldItemView2 clouldItemView2;
        List<CloudListDataBean> list = this.f69174v;
        if (list == null || list.size() == 0) {
            if (this.f69168p == 4) {
                o0();
                return;
            }
            return;
        }
        int i10 = 0;
        while (i10 < this.f69174v.size()) {
            CloudListDataBean cloudListDataBean = this.f69174v.get(i10);
            if (cloudEvent.a().getFileMd5().equals(cloudListDataBean.getFileMd5())) {
                cloudListDataBean.setStatus(cloudEvent.e());
                int firstVisiblePosition = this.f69157e.getFirstVisiblePosition();
                int lastVisiblePosition = this.f69157e.getLastVisiblePosition();
                if (i10 >= firstVisiblePosition && i10 <= lastVisiblePosition && (aVar = (i.a) this.f69157e.getChildAt(i10 - firstVisiblePosition).getTag()) != null && (clouldItemView2 = aVar.f69190a) != null) {
                    clouldItemView2.setData(this.f69170r, cloudListDataBean, this.f69169q, this.f69168p, false, this.f69174v.size() - 1 == i10, this);
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
        if (this.f69169q == 3) {
            i0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f69167o = AccountUtil_.getInstance_(getActivity()).getAccountData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void p0(int pn) {
        try {
            ArchiveshopArgs archiveshopArgsZ = Z();
            archiveshopArgsZ.setPn(pn);
            ArchiveShopDataBean.DataInfoBean data_info = this.f69173u.f(archiveshopArgsZ.getArgs()).getData_info();
            if (pn == 1 && (data_info == null || data_info.getMarketList().size() == 0)) {
                o0();
                return;
            }
            int i10 = pn + 1;
            if (data_info == null) {
                e0();
                o0();
                return;
            }
            List<CloudListDataBean> marketList = data_info.getMarketList();
            if (marketList == null || marketList.size() <= 0) {
                e0();
                return;
            }
            this.F.addAll(marketList);
            if (i10 <= this.D) {
                p0(i10);
            } else {
                S(new ArrayList(this.F));
                e0();
            }
        } catch (Exception unused) {
            e0();
            showLodingFailed();
            this.F.clear();
            this.E.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void q0(CloudListDataBean dataBean) {
        dataBean.setStatus(6);
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.i(dataBean, dataBean.getStatus()));
        Iterator<CloudListDataBean> it2 = this.f69174v.iterator();
        while (it2.hasNext()) {
            if (it2.next().getArchiveDesc().equals(dataBean.getArchiveDesc())) {
                it2.remove();
                break;
            }
        }
        this.f69175w.notifyDataSetChanged();
        if (this.f69174v.size() == 0) {
            o0();
        } else {
            j0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r0(CloudListDataBean dataBean) {
        Iterator<CloudListDataBean> it2 = this.f69174v.iterator();
        while (it2.hasNext()) {
            if (it2.next().getArchiveDesc().equals(dataBean.getArchiveDesc())) {
                it2.remove();
                t0();
                if (this.f69174v.size() == 0) {
                    o0();
                } else {
                    j0();
                }
                org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.m(dataBean.getArchiveDesc()));
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s0() {
        XListView2 xListView2 = this.f69157e;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.f69157e.v();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.f69160h;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f69161i;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f69161i;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f69160h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        ToastManager.show(message);
    }

    @Override // w6.c
    public void t(CloudListDataBean dataBean) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t0() {
        if (this.f69155c) {
            return;
        }
        this.f69175w.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u0() {
        try {
            if (this.f69155c) {
                return;
            }
            this.f69175w.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // w6.c
    public void w(CloudListDataBean dataBean) {
    }

    @Override // w6.c
    public void x(CloudListDataBean dataBean) {
        if (dataBean.getIsVip() == 1) {
            com.papa.sim.statistic.t.l(getContext()).R1(Event.VipArchive_startover_emulator, new Ext().setGameId(this.f69170r));
        }
        if (getActivity() instanceof DocumentManageActivity) {
            DocumentManageActivity documentManageActivity = (DocumentManageActivity) getActivity();
            if (documentManageActivity.isFromEMU()) {
                documentManageActivity.finish();
            }
        }
    }
}
