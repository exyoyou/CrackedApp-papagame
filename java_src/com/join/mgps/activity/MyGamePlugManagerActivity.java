package com.join.mgps.activity;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_plug_manager)
public class MyGamePlugManagerActivity extends BaseActivity implements com.join.mgps.adapter.i4.e, AbsListView.OnScrollListener {
    com.join.mgps.adapter.i4 adapter;

    @ViewById
    TextView forum_title_center;

    @ViewById
    XListView2 listView;

    @Pref
    PrefDef_ prefDef_;

    @ViewById
    View root;
    List<DownloadTask> plugs = new ArrayList();
    private int lastVisibleIndex = 0;
    private int firstVisiblePosition = 0;

    class a implements com.join.mgps.customview.c0.a {
        a() {
        }

        @Override // com.join.mgps.customview.c0.a
        public void a(String id2) {
            MyGamePlugManagerActivity.this.deletePlug(id2);
        }

        @Override // com.join.mgps.customview.c0.a
        public void b(String id2) {
            MyGamePlugManagerActivity.this.reinstallPlug(id2);
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        loadData();
    }

    private void receiveError(DownloadTask downloadTask) {
        List<DownloadTask> list = this.plugs;
        if (list == null || downloadTask == null) {
            return;
        }
        try {
            for (DownloadTask downloadTask2 : list) {
                if (downloadTask2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    UtilsMy.U4(downloadTask2);
                    break;
                }
            }
            notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        UtilsMy.X4(this.plugs);
        for (int i10 = 0; i10 < this.plugs.size(); i10++) {
            if (this.plugs.get(i10).getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.plugs.set(i10, downloadTask);
                break;
            }
        }
        notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        if (this.plugs == null || downloadTask == null) {
            return;
        }
        for (int i10 = 0; i10 < this.plugs.size(); i10++) {
            DownloadTask downloadTask2 = this.plugs.get(i10);
            if (downloadTask2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.plugs.set(i10, downloadTask);
                UtilsMy.U4(downloadTask2);
                break;
            }
        }
        notifyDataSetChanged();
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        View childAt;
        if (this.firstVisiblePosition < 0 || this.lastVisibleIndex >= this.listView.getCount()) {
            return;
        }
        for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex; i10++) {
            if (this.listView.getAdapter().getItemViewType(i10) == 4 && this.listView.getItemAtPosition(i10) != null && (this.listView.getItemAtPosition(i10) instanceof DownloadTask) && (downloadTask = (DownloadTask) this.listView.getItemAtPosition(i10)) != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (childAt = this.listView.getChildAt(i10 - this.firstVisiblePosition)) != null && childAt.getTag() != null && (childAt.getTag() instanceof com.join.mgps.adapter.i4.j))) {
                com.join.mgps.adapter.i4.j jVar = (com.join.mgps.adapter.i4.j) childAt.getTag();
                try {
                    DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                    if (downloadTaskG == null) {
                        return;
                    }
                    String str = "";
                    if (!TextUtils.isEmpty(downloadTaskG.getShowSize())) {
                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                        str = downloadTask.getSize() == 0 ? UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10) : UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10);
                    }
                    if (downloadTask.getStatus() == 2) {
                        jVar.f62412c.setText(str + " · " + downloadTaskG.getSpeed() + "/S");
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    @AfterViews
    void afterViews() {
        com.join.mgps.Util.j0.a().d(this);
        this.forum_title_center.setVisibility(0);
        this.forum_title_center.setText("插件管理");
        com.join.mgps.Util.p2.r(this, Color.parseColor("#ffffff"), true);
        com.join.mgps.Util.g1.d("AppZipFailed2DialogAcitivity", "MyGamePlugManagerActivity");
        com.join.mgps.adapter.i4 i4Var = new com.join.mgps.adapter.i4(this);
        this.adapter = i4Var;
        i4Var.r0(this);
        this.listView.setAdapter((ListAdapter) this.adapter);
        this.listView.setOnScrollListener(this);
        loadData();
    }

    @Click
    void back_image() {
        finish();
    }

    public void del(DownloadTask downloadTask) {
        com.php25.PDownload.d.a(downloadTask);
        try {
            if (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name())) {
                UtilsMy.delete(new File(com.join.mgps.Util.z.f50178q, downloadTask.getPackageName()));
                UtilsMy.delete(new File(com.join.mgps.Util.z.f50179r, downloadTask.getPackageName()));
                UtilsMy.delete(new File(downloadTask.getGameZipPath()));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        com.php25.PDownload.d.a(downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void deletePlug(String id2) {
        if (TextUtils.isEmpty(id2)) {
            return;
        }
        try {
            EMUApkTable eMUApkTableN = t6.p.o().n(id2);
            if (eMUApkTableN == null) {
                return;
            }
            DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(id2));
            if (downloadTaskC0 != null) {
                if (downloadTaskC0.getDown_type() == 2) {
                    com.join.mgps.Util.o0.l(downloadTaskC0.getGameZipPath(), true);
                    del(downloadTaskC0);
                    if (com.join.android.app.common.utils.o.i(eMUApkTableN)) {
                        com.join.android.app.common.utils.o.delete(id2);
                    }
                    com.join.mgps.Util.o0.l(eMUApkTableN.getApkPath(), true);
                    eMUApkTableN.setApkPath("");
                    t6.p.o().m(eMUApkTableN);
                } else if (com.join.android.app.common.utils.g.t0(this).e(this, downloadTaskC0.getPackageName())) {
                    com.join.android.app.common.utils.g.t0(this).o0(this, downloadTaskC0.getPackageName());
                } else {
                    del(downloadTaskC0);
                }
            }
            notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void downloadPlug(String id2) {
        if (TextUtils.isEmpty(id2)) {
            return;
        }
        try {
            EMUApkTable eMUApkTableN = t6.p.o().n(id2);
            if (eMUApkTableN == null) {
                return;
            }
            UtilsMy.q1(eMUApkTableN, this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    protected void loadData() {
        int[] iArr = new int[16];
        iArr[0] = ConstantIntEnum.FBA.value();
        iArr[1] = ConstantIntEnum.FC.value();
        iArr[2] = ConstantIntEnum.GBA.value();
        iArr[3] = ConstantIntEnum.PSP.value();
        iArr[4] = ConstantIntEnum.NDS.value();
        iArr[5] = ConstantIntEnum.SFC.value();
        iArr[6] = ConstantIntEnum.MD.value();
        iArr[7] = ConstantIntEnum.PS.value();
        iArr[8] = ConstantIntEnum.WSC.value();
        iArr[9] = ConstantIntEnum.GBC.value();
        iArr[10] = ConstantIntEnum.N64.value();
        iArr[11] = ConstantIntEnum.ONS.value();
        iArr[12] = ConstantIntEnum.DC.value();
        iArr[13] = ConstantIntEnum.PS2.value();
        iArr[14] = ConstantIntEnum.N3DS.value();
        iArr[15] = (!com.join.mgps.va.overmind.i.f73262g.g() ? ConstantIntEnum.VA64 : ConstantIntEnum.VA32).value();
        this.plugs.clear();
        for (int i10 = 0; i10 < 16; i10++) {
            String str = iArr[i10] + "";
            DownloadTask downloadTaskG = q5.f.M().G(str);
            if (downloadTaskG != null) {
                this.plugs.add(downloadTaskG);
            } else {
                EMUApkTable eMUApkTableN = !TextUtils.isEmpty(str) ? t6.p.o().n(str) : null;
                if (eMUApkTableN != null) {
                    DownloadTask downloadTask = new DownloadTask();
                    downloadTask.setStatus(0);
                    downloadTask.setShowName(eMUApkTableN.getApk_name());
                    downloadTask.setShowSize(eMUApkTableN.getSize());
                    downloadTask.setPortraitURL(eMUApkTableN.getLogo());
                    downloadTask.setPlugin_num(iArr[i10] + "");
                    downloadTask.setCrc_link_type_val(iArr[i10] + "");
                    downloadTask.setDown_type(eMUApkTableN.getDown_type());
                    downloadTask.setFileType(Dtype.chajian.name());
                    this.plugs.add(downloadTask);
                }
            }
        }
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyDataSetChanged() {
        this.adapter.y().clear();
        ArrayList arrayList = new ArrayList();
        Iterator<DownloadTask> it2 = this.plugs.iterator();
        while (it2.hasNext()) {
            arrayList.add(new com.join.mgps.adapter.i4.f(4, it2.next()));
        }
        this.adapter.q0(arrayList);
        this.adapter.notifyDataSetChanged();
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onAddShortcutClick(DownloadTask downloadTask) {
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onClick(String gameId, DownloadTask task) {
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null || downloadTaskG.getStatus() == 0) {
            return;
        }
        com.join.mgps.customview.c0 c0Var = new com.join.mgps.customview.c0(this);
        c0Var.d(new a());
        c0Var.f(this.root, gameId, downloadTaskG.getDown_type() != 2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    void onDownloadSpeed(com.join.mgps.event.q event) {
        if (event == null || TextUtils.isEmpty(event.a())) {
            return;
        }
        notifyDataSetChanged();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        switch (downloadTaskEvent.c()) {
            case 2:
                updateUI(downloadTaskA, 1);
                break;
            case 3:
                updateUI(downloadTaskA, 2);
                break;
            case 5:
            case 11:
                updateUI(downloadTaskA, 5);
                break;
            case 6:
                updateUI(downloadTaskA, 6);
                break;
            case 7:
                updateUI(downloadTaskA, 3);
                break;
            case 8:
                List<DownloadTask> list = this.plugs;
                if (list != null && list.size() > 0) {
                    updateProgressPartly();
                    break;
                }
                break;
            case 10:
                updateUI(downloadTaskA, 7);
                break;
            case 12:
                updateUI(downloadTaskA, 8);
                break;
            case 13:
                updateUI(downloadTaskA, 9);
                break;
        }
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onLongClick(String gameId) {
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onMore(String gameId, DownloadTask downloadTask) {
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        UtilsMy.N4(this);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.lastVisibleIndex = (visibleItemCount + firstVisibleItem) - 1;
        this.firstVisiblePosition = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onSpeedUp(String gameId) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void reinstallPlug(String id2) {
        try {
            EMUApkTable eMUApkTableN = t6.p.o().n(id2);
            if (eMUApkTableN == null) {
                return;
            }
            DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(id2));
            if (downloadTaskC0 != null) {
                if (downloadTaskC0.getDown_type() != 2) {
                    del(downloadTaskC0);
                } else {
                    com.join.mgps.Util.o0.l(downloadTaskC0.getGameZipPath(), true);
                    del(downloadTaskC0);
                    if (com.join.android.app.common.utils.o.i(eMUApkTableN)) {
                        com.join.android.app.common.utils.o.delete(id2);
                    }
                    com.join.mgps.Util.o0.l(eMUApkTableN.getApkPath(), true);
                    eMUApkTableN.setApkPath("");
                    t6.p.o().m(eMUApkTableN);
                }
            }
            notifyDataSetChanged();
            downloadPlug(id2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            switch (from) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
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
