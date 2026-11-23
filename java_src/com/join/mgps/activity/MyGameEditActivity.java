package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.ModleBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.pref.PrefDef_;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_mygame_edit)
public class MyGameEditActivity extends BaseActivity {
    View adView;
    private Context context;
    private List<DownloadTask> delGameList;
    Dialog dialog;
    private DownloadTask downloadTask;

    @ViewById
    Button editGameNumber;
    List<DownloadTask> games;
    private boolean isLoadingTopAd;

    @ViewById
    ImageView isSelector;

    @ViewById
    ListView listView;
    private com.join.mgps.adapter.r4 mAdapter;
    private com.join.mgps.dialog.f1 mDialog;

    @ViewById
    LinearLayout noneLayout;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.e rpcClient;
    RecomDatabean topAd;
    boolean h5Selected = false;
    String h5Name = "在线玩H5";

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f55024b;

        a(final ImageView val$circle) {
            this.f55024b = val$circle;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ImageView imageView = this.f55024b;
            imageView.setSelected(!imageView.isSelected());
            MyGameEditActivity.this.h5Selected = this.f55024b.isSelected();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGameEditActivity.this.dialog.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGameEditActivity.this.prefDef.hideGameTopAd().g(Boolean.TRUE);
            MyGameEditActivity.this.notifyAdChanged(null);
            MyGameEditActivity.this.dialog.dismiss();
        }
    }

    public class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ImageView f55028a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f55029b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f55030c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f55031d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f55032e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f55033f;

        public d() {
        }
    }

    private void saveGameTopAd(RecomDatabean recomDatabean) {
        this.prefDef.gameTopAd().g(JsonMapper.toJsonString(recomDatabean));
    }

    private void setIsSelector() {
        if (this.mAdapter == null) {
            return;
        }
        ImageView imageView = this.isSelector;
        boolean z10 = imageView != null ? !imageView.isSelected() : false;
        HashMap<Integer, Boolean> map = this.mAdapter.f63108d;
        for (int i10 = 0; i10 < map.size(); i10++) {
            map.put(Integer.valueOf(i10), Boolean.valueOf(z10));
        }
        this.isSelector.setSelected(z10);
        this.mAdapter.notifyDataSetChanged();
        setDelTotal(map);
    }

    private void showNoData() {
        this.noneLayout.setVisibility(0);
        this.listView.setVisibility(8);
        this.editGameNumber.setVisibility(8);
    }

    void adViewDestroy() {
        View view = this.adView;
        if (view == null || !this.listView.removeHeaderView(view)) {
            return;
        }
        this.adView = null;
        this.topAd = null;
    }

    @AfterViews
    void afterViews() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        this.context = this;
        List<DownloadTask> listT = q5.f.M().T(null);
        this.games = listT;
        if (listT.size() == 0) {
            showNoData();
            return;
        }
        if (checkRefreshAd()) {
            getMyGameTopAd();
        }
        com.join.mgps.adapter.r4 r4Var = new com.join.mgps.adapter.r4(this, this.games);
        this.mAdapter = r4Var;
        this.listView.setAdapter((ListAdapter) r4Var);
        this.editGameNumber.setText(String.format(getString(R.string.papa_del_game), "0", ""));
        this.mDialog = new com.join.mgps.dialog.f1(this, R.style.MyprogressDialog);
        this.delGameList = new ArrayList();
    }

    boolean checkRefreshAd() {
        if (com.join.mgps.Util.t2.h(LocalGameActivity.ALL)) {
            return false;
        }
        return Arrays.asList("全部游戏", "网游").contains(LocalGameActivity.ALL);
    }

    void destroyDeleteDialog() {
        Dialog dialog = this.dialog;
        if (dialog != null) {
            if (dialog.isShowing()) {
                this.dialog.dismiss();
            }
            this.dialog = null;
        }
    }

    @Click
    void editAll() {
        setIsSelector();
    }

    @Click
    void editCancel() {
        finish();
    }

    @Click
    void editGameNumber() {
        showDialog();
        removeGame(0);
    }

    void getMyGameTopAd() {
        try {
            try {
                notifyAdChanged((RecomDatabean) JsonMapper.getInstance().fromJson(this.prefDef.gameTopAd().e(""), RecomDatabean.class));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.isLoadingTopAd = false;
        }
    }

    @UiThread
    void hideDialog() {
        com.join.mgps.dialog.f1 f1Var = this.mDialog;
        if (f1Var != null) {
            f1Var.dismiss();
        }
    }

    @Click
    void isSelector() {
        setIsSelector();
    }

    void notifyAdChanged(RecomDatabean recomDatabean) {
        try {
            this.topAd = recomDatabean;
            if (recomDatabean == null || recomDatabean.getMain() == null || this.topAd.getMain().getAd_switch() != 1 || this.prefDef.hideGameTopAd().d().booleanValue() || this.topAd == null) {
                return;
            }
            DownloadTask downloadTask = new DownloadTask();
            downloadTask.setExt1("h5");
            ModleBean main = this.topAd.getMain();
            downloadTask.setPortraitURL(main.getPic_remote());
            downloadTask.setShowName(main.getTitle());
            downloadTask.setDescribe(main.getLabel());
            downloadTask.setShowSize("0.1");
            this.games.add(0, downloadTask);
        } catch (Resources.NotFoundException e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void notifyDataSetChanged() {
        HashMap<Integer, Boolean> map = this.mAdapter.f63108d;
        Iterator<DownloadTask> it2 = this.delGameList.iterator();
        while (it2.hasNext()) {
            this.games.remove(it2.next());
        }
        this.delGameList.clear();
        map.clear();
        for (int i10 = 0; i10 < this.games.size(); i10++) {
            map.put(Integer.valueOf(i10), Boolean.FALSE);
        }
        this.editGameNumber.setText(String.format(getString(R.string.papa_del_game), "0", ""));
        this.editGameNumber.setSelected(false);
        this.editGameNumber.setClickable(false);
        this.mAdapter.notifyDataSetChanged();
        if (this.games.size() == 0) {
            showNoData();
        }
        this.isSelector.setSelected(false);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.dialog.f1 f1Var = this.mDialog;
        if (f1Var != null) {
            f1Var.dismiss();
        }
        super.onDestroy();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.downloadTask != null) {
            if (com.join.android.app.common.utils.g.t0(this.context).e(this.context, this.downloadTask.getPackageName())) {
                hideDialog();
                notifyDataSetChanged();
                return;
            }
            int iIndexOf = this.games.indexOf(this.downloadTask);
            this.delGameList.add(this.downloadTask);
            showDialog();
            if (iIndexOf < this.games.size() - 1) {
                removeGame(iIndexOf + 1);
            } else {
                hideDialog();
                notifyDataSetChanged();
            }
        }
    }

    @Background
    void removeGame(int index) {
        HashMap<Integer, Boolean> map = this.mAdapter.f63108d;
        boolean zE = false;
        while (index < this.games.size()) {
            if (map.get(Integer.valueOf(index)).booleanValue()) {
                this.downloadTask = this.games.get(index);
                zE = com.join.android.app.common.utils.g.t0(this.context).e(this.context, this.downloadTask.getPackageName());
                if (zE) {
                    com.join.android.app.common.utils.g.t0(this.context).o0(this.context, this.downloadTask.getPackageName());
                    break;
                }
                setDialogTextView(String.format(getString(R.string.papa_del_game_test), this.downloadTask.getShowName()));
                if (this.downloadTask.getExt1() == null || !this.downloadTask.getExt1().equals("h5")) {
                    com.php25.PDownload.d.a(this.downloadTask);
                    UtilsMy.U4(this.downloadTask);
                    this.delGameList.add(this.downloadTask);
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e10) {
                        e10.printStackTrace();
                    }
                } else {
                    this.prefDef.hideGameTopAd().g(Boolean.TRUE);
                    this.delGameList.add(this.downloadTask);
                }
            }
            index++;
        }
        if (!zE) {
            notifyDataSetChanged();
        }
        hideDialog();
    }

    public void setDelTotal(HashMap<Integer, Boolean> isSelector) {
        long j10 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.games.size(); i11++) {
            if (isSelector.get(Integer.valueOf(i11)).booleanValue()) {
                j10 += (long) (Double.parseDouble(this.games.get(i11).getShowSize()) * 1024.0d * 1024.0d);
                i10++;
            }
        }
        if (i10 == 0) {
            this.editGameNumber.setClickable(false);
            this.editGameNumber.setSelected(false);
            this.editGameNumber.setText(String.format(getString(R.string.papa_del_game), "0", ""));
        } else {
            this.editGameNumber.setClickable(true);
            this.editGameNumber.setSelected(true);
            this.editGameNumber.setText(String.format(getString(R.string.papa_del_game), i10 + "", "，" + UtilsMy.Z2(j10)));
        }
        if (i10 == this.games.size()) {
            this.isSelector.setSelected(true);
        } else {
            this.isSelector.setSelected(false);
        }
    }

    @UiThread
    void setDialogTextView(String text) {
        com.join.mgps.dialog.f1 f1Var = this.mDialog;
        if (f1Var != null) {
            f1Var.a(text);
        }
    }

    @Click
    void setNetwork() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(3);
        intentDateBean.setJump_type(2);
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    void setOnGoTopAd(View view, final ImageView circle) {
        view.setOnClickListener(new a(circle));
    }

    void showDeleteDialog() {
        if (this.dialog == null) {
            com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.context, R.style.MyDialog);
            this.dialog = tVar;
            tVar.setContentView(R.layout.delete_center_dialog);
            Button button = (Button) this.dialog.findViewById(R.id.dialog_button_ok);
            TextView textView = (TextView) this.dialog.findViewById(R.id.tip_title);
            TextView textView2 = (TextView) this.dialog.findViewById(R.id.dialog_content);
            textView.setText("删除游戏");
            textView2.setText("你确定要删除悟饭在线玩？");
            button.setText("删除");
            ((Button) this.dialog.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new b());
            button.setOnClickListener(new c());
        }
        Dialog dialog = this.dialog;
        if (dialog == null || dialog.isShowing()) {
            return;
        }
        this.dialog.show();
    }

    @UiThread
    void showDialog() {
        com.join.mgps.dialog.f1 f1Var = this.mDialog;
        if (f1Var == null || f1Var.isShowing()) {
            return;
        }
        this.mDialog.show();
    }
}
