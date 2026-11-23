package com.join.mgps.activity;

import android.content.Context;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.dao.ForeignCollection;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.DownloadUrlTable;
import com.join.mgps.db.tables.FightMainTable;
import com.join.mgps.db.tables.WarMatchAndLocalTable;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.FightDataBean;
import com.join.mgps.dto.FightMainDataBean;
import com.join.mgps.dto.FightSubDataBean;
import com.join.mgps.dto.LoadWarCenterBean;
import com.join.mgps.dto.WarIndexDataBean;
import com.join.mgps.dto.WarIndexResultMainBean;
import com.join.mgps.helper.MGFightUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.mg_fight_layout)
public class g6 extends com.join.mgps.basefragment.a implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f57226d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    XListView2 f57228f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    com.join.mgps.rpc.e f57229g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.join.mgps.adapter.d0 f57230h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<DownloadTask> f57231i;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private LoadWarCenterBean f57241s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f57242t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f57244v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private List<FightMainTable> f57245w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @ViewById
    RelativeLayout f57246x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f57247y;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f57227e = getClass().getSimpleName();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Map<String, DownloadTask> f57232j = new ConcurrentHashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<FightMainTable> f57233k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f57234l = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f57235m = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f57236n = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f57237o = new ArrayList();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f57238p = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f57239q = new ArrayList();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f57240r = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f57243u = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f57248z = 0;

    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (g6.this.f57243u) {
                return;
            }
            g6.this.c0();
        }
    }

    private WarMatchAndLocalTable Z(WarMatchAndLocalTable warMatchAndLocalTable) {
        if (this.f57232j != null && warMatchAndLocalTable.getCrc_link_type_val() != null) {
            if (this.f57232j.containsKey(warMatchAndLocalTable.getCrc_link_type_val())) {
                DownloadTask downloadTask = this.f57232j.get(warMatchAndLocalTable.getCrc_link_type_val());
                downloadTask.setCdn_down_switch(warMatchAndLocalTable.getCdn_down_switch());
                downloadTask.setOther_down_switch(warMatchAndLocalTable.getOther_down_switch());
                downloadTask.setPay_game_amount(warMatchAndLocalTable.getPay_game_amount());
                ForeignCollection<DownloadUrlTable> tp_down_url = warMatchAndLocalTable.getTp_down_url();
                ArrayList arrayList = new ArrayList();
                Iterator<DownloadUrlTable> it2 = tp_down_url.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next().getDownUrlBean());
                }
                downloadTask.setTp_down_url(arrayList);
                this.f57232j.put(warMatchAndLocalTable.getCrc_link_type_val(), downloadTask);
            } else {
                this.f57232j.put(warMatchAndLocalTable.getCrc_link_type_val(), MGFightUtils.warDataToTask(warMatchAndLocalTable));
            }
        }
        return warMatchAndLocalTable;
    }

    private void receiveDelete(DownloadTask downloadTask) {
        if (this.f57232j == null || downloadTask.getCrc_link_type_val() == null || !this.f57232j.containsKey(downloadTask.getCrc_link_type_val())) {
            return;
        }
        this.f57232j.get(downloadTask.getCrc_link_type_val()).setStatus(0);
        this.f57232j.get(downloadTask.getCrc_link_type_val()).setSpeed("0");
        this.f57232j.get(downloadTask.getCrc_link_type_val()).setCurrentSize(0L);
        this.f57230h.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f57232j;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            map.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
            boolean z10 = false;
            for (DownloadTask downloadTask2 : this.f57231i) {
                if (downloadTask.getCrc_link_type_val().equals(downloadTask2.getCrc_link_type_val())) {
                    downloadTask2.setStatus(downloadTask.getStatus());
                    z10 = true;
                }
                if (z10) {
                    break;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f57230h.notifyDataSetChanged();
    }

    private void receiveStart(DownloadTask downloadTask) {
        try {
            if (this.f57232j != null && downloadTask.getCrc_link_type_val() != null) {
                if (this.f57232j.containsKey(downloadTask.getCrc_link_type_val())) {
                    this.f57232j.put(downloadTask.getCrc_link_type_val(), downloadTask);
                } else {
                    this.f57231i.add(downloadTask);
                    this.f57232j.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f57241s.setDownloadTasksMap(this.f57232j);
        this.f57230h.h(this.f57241s);
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f57232j;
        if (map == null || downloadTask == null) {
            return;
        }
        if (map != null && downloadTask.getCrc_link_type_val() != null && !this.f57232j.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f57231i.add(downloadTask);
            this.f57232j.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        if (this.f57232j.get(downloadTask.getCrc_link_type_val()) == null) {
            return;
        }
        if (this.f57232j.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f57232j.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        for (DownloadTask downloadTask2 : this.f57231i) {
            if (downloadTask.getCrc_link_type_val().equals(downloadTask2.getCrc_link_type_val())) {
                downloadTask2.setStatus(downloadTask.getStatus());
                downloadTask2.setVer(downloadTask.getVer());
                downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
                downloadTask2.setSource_ver(downloadTask.getSource_ver());
                downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
            }
        }
        this.f57230h.notifyDataSetChanged();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x016c  */
    private void updateProgressPartly() {
        DownloadTask downloadTask;
        String str;
        String str2;
        if (this.f57248z < 0 || this.f57247y >= this.f57228f.getCount()) {
            return;
        }
        for (int i10 = this.f57248z; i10 <= this.f57247y; i10++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("firstVisiblePosition=");
            sb2.append(this.f57248z);
            Map map = (Map) this.f57228f.getItemAtPosition(i10);
            if (map != null) {
                DownloadTask downloadTask2 = (DownloadTask) map.get("Left");
                DownloadTask downloadTask3 = (DownloadTask) map.get("Mid");
                DownloadTask downloadTask4 = (DownloadTask) map.get("Right");
                if (downloadTask2 == null || !(downloadTask2.getStatus() == 2 || downloadTask2.getStatus() == 12)) {
                    downloadTask = downloadTask4;
                    str = ";status=";
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("firstVisiblePosition=");
                    sb3.append(i10);
                    sb3.append(",name=");
                    sb3.append(downloadTask2.getShowName());
                    sb3.append(";status=");
                    sb3.append(downloadTask2.getStatus());
                    View childAt = this.f57228f.getChildAt(i10 - this.f57248z);
                    if (childAt.getTag() instanceof com.join.mgps.adapter.d0.n) {
                        com.join.mgps.adapter.d0.n nVar = (com.join.mgps.adapter.d0.n) childAt.getTag();
                        try {
                            DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask2.getCrc_link_type_val());
                            if (downloadTaskG == null) {
                                return;
                            }
                            str = ";status=";
                            long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                            try {
                                if (downloadTask2.getSize() == 0) {
                                    TextView textView = nVar.f61469s;
                                    StringBuilder sb4 = new StringBuilder();
                                    downloadTask = downloadTask4;
                                    try {
                                        sb4.append(UtilsMy.c(downloadTaskG.getCurrentSize()));
                                        sb4.append(net.lingala.zip4j.util.e.F0);
                                        sb4.append(UtilsMy.c(j10));
                                        textView.setText(sb4.toString());
                                    } catch (Exception e10) {
                                        e = e10;
                                        e.printStackTrace();
                                    }
                                } else {
                                    downloadTask = downloadTask4;
                                    nVar.f61469s.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                }
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append("progress=");
                                sb5.append((int) downloadTaskG.getProgress());
                                if (downloadTask2.getStatus() == 12) {
                                    nVar.f61475y.setProgress((int) downloadTaskG.getProgress());
                                } else {
                                    nVar.B.setProgress((int) downloadTaskG.getProgress());
                                }
                                if (downloadTask2.getStatus() == 2) {
                                    nVar.f61472v.setText(downloadTaskG.getSpeed() + "/S");
                                }
                            } catch (Exception e11) {
                                e = e11;
                                downloadTask = downloadTask4;
                            }
                        } catch (Exception e12) {
                            e = e12;
                            downloadTask = downloadTask4;
                            str = ";status=";
                        }
                        e.printStackTrace();
                    } else {
                        downloadTask = downloadTask4;
                        str = ";status=";
                    }
                }
                if (downloadTask3 == null || !(downloadTask3.getStatus() == 2 || downloadTask3.getStatus() == 12)) {
                    str2 = str;
                } else {
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("firstVisiblePosition=");
                    sb6.append(i10);
                    sb6.append(",name=");
                    sb6.append(downloadTask3.getShowName());
                    str2 = str;
                    sb6.append(str2);
                    sb6.append(downloadTask3.getStatus());
                    View childAt2 = this.f57228f.getChildAt(i10 - this.f57248z);
                    if (childAt2.getTag() instanceof com.join.mgps.adapter.d0.n) {
                        com.join.mgps.adapter.d0.n nVar2 = (com.join.mgps.adapter.d0.n) childAt2.getTag();
                        try {
                            DownloadTask downloadTaskG2 = com.join.android.app.common.servcie.j.f().g(downloadTask3.getCrc_link_type_val());
                            if (downloadTaskG2 == null) {
                                return;
                            }
                            long j11 = (long) (Double.parseDouble(downloadTaskG2.getShowSize()) * 1024.0d * 1024.0d);
                            if (downloadTask3.getSize() == 0) {
                                nVar2.f61470t.setText(UtilsMy.c(downloadTaskG2.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                            } else {
                                nVar2.f61470t.setText(UtilsMy.c(downloadTaskG2.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                            }
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append("progress=");
                            sb7.append((int) downloadTaskG2.getProgress());
                            if (downloadTask3.getStatus() == 12) {
                                nVar2.f61476z.setProgress((int) downloadTaskG2.getProgress());
                            } else {
                                nVar2.C.setProgress((int) downloadTaskG2.getProgress());
                            }
                            if (downloadTask3.getStatus() == 2) {
                                nVar2.f61473w.setText(downloadTaskG2.getSpeed() + "/S");
                            }
                        } catch (Exception e13) {
                            e13.printStackTrace();
                        }
                    }
                }
                if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                    StringBuilder sb8 = new StringBuilder();
                    sb8.append("firstVisiblePosition=");
                    sb8.append(i10);
                    sb8.append(",name=");
                    sb8.append(downloadTask.getShowName());
                    sb8.append(str2);
                    sb8.append(downloadTask.getStatus());
                    View childAt3 = this.f57228f.getChildAt(i10 - this.f57248z);
                    if (childAt3.getTag() instanceof com.join.mgps.adapter.d0.n) {
                        com.join.mgps.adapter.d0.n nVar3 = (com.join.mgps.adapter.d0.n) childAt3.getTag();
                        try {
                            DownloadTask downloadTaskG3 = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                            if (downloadTaskG3 == null) {
                                return;
                            }
                            long j12 = (long) (Double.parseDouble(downloadTaskG3.getShowSize()) * 1024.0d * 1024.0d);
                            if (downloadTask.getSize() == 0) {
                                nVar3.f61471u.setText(UtilsMy.c(downloadTaskG3.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j12));
                            } else {
                                nVar3.f61471u.setText(UtilsMy.c(downloadTaskG3.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j12));
                            }
                            StringBuilder sb9 = new StringBuilder();
                            sb9.append("progress=");
                            sb9.append((int) downloadTaskG3.getProgress());
                            if (downloadTask.getStatus() == 12) {
                                nVar3.A.setProgress((int) downloadTaskG3.getProgress());
                            } else {
                                nVar3.D.setProgress((int) downloadTaskG3.getProgress());
                            }
                            if (downloadTask.getStatus() == 2) {
                                nVar3.f61474x.setText(downloadTaskG3.getSpeed() + "/S");
                            }
                        } catch (Exception e14) {
                            e14.printStackTrace();
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    @Override // com.join.mgps.basefragment.a
    protected int P() {
        return R.layout.mg_fight_layout;
    }

    @Override // com.join.mgps.basefragment.a
    protected int Q() {
        return R.id.container;
    }

    @Override // com.join.mgps.basefragment.a
    protected int R() {
        return com.join.mgps.Util.i0.a(getActivity(), 48.0f);
    }

    public CommonRequestBean a0(int pn) {
        return RequestBeanUtil.getInstance(this.f57226d).loadWarIndexRequestBean(pn);
    }

    @AfterViews
    void afterViews() {
        this.f57229g = com.join.mgps.rpc.impl.d.O1();
        this.f57246x.setVisibility(8);
        this.f57226d = getActivity();
        com.join.mgps.Util.j0.a().d(this);
        com.papa.sim.statistic.t.l(this.f57226d).t2(AccountUtil_.getInstance_(getActivity()).getUid());
        com.papa.sim.statistic.t.l(this.f57226d).z2(AccountUtil_.getInstance_(getActivity()).getUid());
        List<DownloadTask> listD = q5.f.M().d();
        this.f57231i = listD;
        if (listD != null && listD.size() > 0) {
            for (DownloadTask downloadTask : this.f57231i) {
                this.f57232j.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        this.f57241s = new LoadWarCenterBean();
        com.join.mgps.adapter.d0 d0Var = new com.join.mgps.adapter.d0(this);
        this.f57230h = d0Var;
        this.f57228f.setAdapter((ListAdapter) d0Var);
        this.f57230h.h(this.f57241s);
        this.f57228f.setOnScrollListener(this);
        this.f57228f.setPullRefreshEnable(new a());
        loadData();
    }

    @Background
    void b0() {
        List<FightMainTable> list;
        this.f57244v = t6.p0.n().d();
        this.f57245w = t6.r.n().d();
        List<WarMatchAndLocalTable> list2 = this.f57244v;
        if ((list2 != null && list2.size() > 0) || ((list = this.f57245w) != null && list.size() > 0)) {
            List<FightMainTable> list3 = this.f57245w;
            if (list3 != null && list3.size() > 0) {
                this.f57233k.clear();
                this.f57233k.addAll(this.f57245w);
            }
            List<WarMatchAndLocalTable> list4 = this.f57244v;
            if (list4 != null && list4.size() > 0) {
                this.f57234l.clear();
                this.f57235m.clear();
                this.f57236n.clear();
                this.f57237o.clear();
                this.f57238p.clear();
                this.f57239q.clear();
                this.f57240r.clear();
                for (int i10 = 0; i10 < this.f57244v.size(); i10++) {
                    WarMatchAndLocalTable warMatchAndLocalTable = this.f57244v.get(i10);
                    switch (warMatchAndLocalTable.getWarType()) {
                        case 0:
                            this.f57234l.add(Z(warMatchAndLocalTable));
                            break;
                        case 1:
                            this.f57235m.add(Z(warMatchAndLocalTable));
                            break;
                        case 2:
                            this.f57236n.add(Z(warMatchAndLocalTable));
                            break;
                        case 3:
                            this.f57237o.add(Z(warMatchAndLocalTable));
                            break;
                        case 4:
                            this.f57238p.add(Z(warMatchAndLocalTable));
                            break;
                        case 5:
                            this.f57239q.add(Z(warMatchAndLocalTable));
                            break;
                        case 6:
                            this.f57240r.add(Z(warMatchAndLocalTable));
                            break;
                    }
                }
            }
            f0();
        }
        c0();
    }

    @Background
    void c0() {
        List<WarIndexDataBean> data;
        if (!com.join.android.app.common.utils.m.j(this.f57226d)) {
            e0();
            return;
        }
        this.f57243u = true;
        new ArrayList();
        try {
            WarIndexResultMainBean<List<WarIndexDataBean>> warIndexResultMainBeanE = this.f57229g.e(a0(1));
            if (warIndexResultMainBeanE == null || (data = warIndexResultMainBeanE.getMessages().getData()) == null || data.size() <= 0) {
                e0();
            } else {
                g0(data.get(0));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        } finally {
            e0();
            this.f57243u = false;
        }
        e0();
    }

    void d0(List<FightDataBean> fightDataBeanList, int warType) {
        if (fightDataBeanList == null || fightDataBeanList.size() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < fightDataBeanList.size(); i10++) {
            FightMainDataBean main = fightDataBeanList.get(i10).getMain();
            FightSubDataBean fightSubDataBean = fightDataBeanList.get(i10).getSub().get(0);
            if (warType == 0) {
                FightMainTable fightMainTable = new FightMainTable();
                fightMainTable.setTitle(main.getTitle());
                fightMainTable.setLabel(main.getLabel());
                fightMainTable.setPic_remote(main.getPic_remote());
                fightMainTable.setIco_remote(main.getIco_remote());
                fightMainTable.setTitle_type(main.getTitle_type());
                fightMainTable.setMargin(main.getMargin());
                fightMainTable.setSub_title(main.getSub_title());
                fightMainTable.setModel_type(main.getModel_type());
                fightMainTable.setCrc_link_type_val(fightSubDataBean.getCrc_link_type_val());
                fightMainTable.setLink_type(fightSubDataBean.getLink_type());
                fightMainTable.setJump_type(fightSubDataBean.getJump_type());
                fightMainTable.setTpl_type(fightSubDataBean.getTpl_type());
                fightMainTable.setLink_type_val(fightSubDataBean.getLink_type_val());
                fightMainTable.setDown_status(fightSubDataBean.getGame_info().getDown_status());
                fightMainTable.setPay_game_amount((fightSubDataBean.getGame_info() == null || fightSubDataBean.getGame_info().getPay_tag_info() == null) ? 0 : fightSubDataBean.getGame_info().getPay_tag_info().getPay_game_amount());
                t6.r.n().k(fightMainTable);
                if (fightMainTable.getLink_type() == 1) {
                    WarMatchAndLocalTable warMatchAndLocalTableWarDataToTable = MGFightUtils.warDataToTable(fightSubDataBean.getGame_info());
                    warMatchAndLocalTableWarDataToTable.setWarType(warType);
                    warMatchAndLocalTableWarDataToTable.setPic_remote(main.getPic_remote());
                    if (fightSubDataBean.getGame_info() != null && fightSubDataBean.getGame_info().getPay_tag_info() != null) {
                        warMatchAndLocalTableWarDataToTable.setPay_game_amount(fightSubDataBean.getGame_info().getPay_tag_info().getPay_game_amount());
                    }
                    t6.p0.n().k(warMatchAndLocalTableWarDataToTable);
                }
            } else {
                WarMatchAndLocalTable warMatchAndLocalTableWarDataToTable2 = MGFightUtils.warDataToTable(fightSubDataBean.getGame_info());
                warMatchAndLocalTableWarDataToTable2.setWarType(warType);
                warMatchAndLocalTableWarDataToTable2.setPic_remote(main.getPic_remote());
                warMatchAndLocalTableWarDataToTable2.setMain_title(main.getTitle());
                warMatchAndLocalTableWarDataToTable2.setMain_sub_title(main.getSub_title());
                if (fightSubDataBean.getGame_info() != null && fightSubDataBean.getGame_info().getPay_tag_info() != null) {
                    warMatchAndLocalTableWarDataToTable2.setPay_game_amount(fightSubDataBean.getGame_info().getPay_tag_info().getPay_game_amount());
                }
                t6.p0.n().k(warMatchAndLocalTableWarDataToTable2);
            }
        }
    }

    @UiThread
    void e0() {
        List<FightMainTable> list;
        try {
            List<WarMatchAndLocalTable> list2 = this.f57244v;
            if ((list2 == null || list2.size() <= 0) && ((list = this.f57245w) == null || list.size() <= 0)) {
                V();
            }
            com.join.mgps.Util.a3.b(this.f57226d).d(getString(R.string.net_connect_failed));
            this.f57228f.v();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void f0() {
        S();
        this.f57241s.setDownloadTasksMap(this.f57232j);
        this.f57241s.setFightMainTables(this.f57233k);
        this.f57241s.setWaradInfoDataBeans(this.f57234l);
        this.f57241s.setHotGameInfoDataBeans(this.f57235m);
        this.f57241s.setPkGameInfoDataBeans(this.f57236n);
        this.f57241s.setPkPassInfoDataBeans(this.f57237o);
        this.f57241s.setPkMatchingInfoDataBeans(this.f57238p);
        this.f57241s.setPkLocalInfoDataBeans(this.f57239q);
        this.f57241s.setPkRoomInfoDataBeans(this.f57240r);
        this.f57230h.h(this.f57241s);
        this.f57230h.notifyDataSetChanged();
        this.f57228f.v();
        this.f57228f.setNoMore();
    }

    @Background
    void g0(WarIndexDataBean warIndexDataBean) {
        List<FightMainTable> list;
        this.f57242t = System.currentTimeMillis();
        List<FightDataBean> warad = warIndexDataBean.getWarad();
        List<FightDataBean> hotgame = warIndexDataBean.getHotgame();
        List<FightDataBean> pkgame = warIndexDataBean.getPkgame();
        List<FightDataBean> pkpass = warIndexDataBean.getPkpass();
        List<FightDataBean> pkmatching = warIndexDataBean.getPkmatching();
        List<FightDataBean> pklocal = warIndexDataBean.getPklocal();
        List<FightDataBean> pkroom = warIndexDataBean.getPkroom();
        t6.p0.n().a();
        t6.r.n().a();
        d0(warad, 0);
        d0(hotgame, 1);
        d0(pkgame, 2);
        d0(pkpass, 3);
        d0(pkmatching, 4);
        d0(pklocal, 5);
        d0(pkroom, 6);
        this.f57244v = t6.p0.n().d();
        this.f57245w = t6.r.n().d();
        List<WarMatchAndLocalTable> list2 = this.f57244v;
        if ((list2 == null || list2.size() <= 0) && ((list = this.f57245w) == null || list.size() <= 0)) {
            e0();
            return;
        }
        List<FightMainTable> list3 = this.f57245w;
        if (list3 != null && list3.size() > 0) {
            this.f57233k.clear();
            this.f57233k.addAll(this.f57245w);
        }
        List<WarMatchAndLocalTable> list4 = this.f57244v;
        if (list4 != null && list4.size() > 0) {
            this.f57234l.clear();
            this.f57235m.clear();
            this.f57236n.clear();
            this.f57237o.clear();
            this.f57238p.clear();
            this.f57239q.clear();
            this.f57240r.clear();
            for (int i10 = 0; i10 < this.f57244v.size(); i10++) {
                WarMatchAndLocalTable warMatchAndLocalTable = this.f57244v.get(i10);
                switch (warMatchAndLocalTable.getWarType()) {
                    case 0:
                        this.f57234l.add(Z(warMatchAndLocalTable));
                        break;
                    case 1:
                        this.f57235m.add(Z(warMatchAndLocalTable));
                        break;
                    case 2:
                        this.f57236n.add(Z(warMatchAndLocalTable));
                        break;
                    case 3:
                        this.f57237o.add(Z(warMatchAndLocalTable));
                        break;
                    case 4:
                        this.f57238p.add(Z(warMatchAndLocalTable));
                        break;
                    case 5:
                        this.f57239q.add(Z(warMatchAndLocalTable));
                        break;
                    case 6:
                        this.f57240r.add(Z(warMatchAndLocalTable));
                        break;
                }
            }
        }
        f0();
    }

    @Override // com.join.mgps.basefragment.a
    protected void loadData() {
        b0();
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            updateUI(downloadTaskA, 1);
            return;
        }
        if (iC == 3) {
            updateUI(downloadTaskA, 2);
            return;
        }
        if (iC != 5) {
            if (iC == 6) {
                updateUI(downloadTaskA, 6);
                return;
            }
            if (iC == 7) {
                downloadTaskA.setStatus(7);
                updateUI(downloadTaskA, 3);
                return;
            }
            if (iC == 8) {
                updateUI(downloadTaskA, 4);
                return;
            }
            if (iC != 48) {
                switch (iC) {
                    case 10:
                        if (downloadTaskA != null) {
                            updateUI(downloadTaskA, 7);
                            break;
                        }
                        break;
                    case 12:
                        updateUI(downloadTaskA, 8);
                        break;
                    case 13:
                        updateUI(downloadTaskA, 9);
                        break;
                }
                return;
            }
        }
        updateUI(downloadTaskA, 5);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isHidden() || System.currentTimeMillis() - this.f57242t < 7200000) {
            return;
        }
        c0();
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f57247y = (visibleItemCount + firstVisibleItem) - 1;
        this.f57248z = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (from == 4) {
            Map<String, DownloadTask> map = this.f57232j;
            if (map == null || map.isEmpty()) {
                return;
            }
            updateProgressPartly();
        }
        if (downloadTask != null) {
            switch (from) {
                case 1:
                case 2:
                case 7:
                case 8:
                    receiveStart(downloadTask);
                    break;
                case 3:
                    receiveDelete(downloadTask);
                    break;
                case 5:
                    receiveSuccess(downloadTask);
                    break;
                case 6:
                    receiveError(downloadTask);
                    break;
            }
        }
    }
}
