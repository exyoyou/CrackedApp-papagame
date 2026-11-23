package com.join.mgps.activity;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c6 extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f56881j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f56882k = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    RecyclerView f56883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f56884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f56885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ImageView f56886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    b f56887f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    PrefDef_ f56888g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f56889h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    List<DownloadTask> f56890i;

    class a implements BaseQuickAdapter.h {
        a() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.h
        public void onItemChildClick(BaseQuickAdapter adapter, View view, int position) {
            DownloadTask item = c6.this.f56887f.getItem(position);
            if (view.getId() != R.id.btn_install || item == null) {
                return;
            }
            c6 c6Var = c6.this;
            if (c6Var.f56889h != 1) {
                c6Var.e(item);
                com.papa.sim.statistic.t.l(c6.this.f56884c).R1(Event.onclickGameInstall, new Ext().setGameId(item.getCrc_link_type_val()));
                c6.this.f56887f.remove(position);
                c6.this.f56887f.notifyItemRemoved(position);
                if (c6.this.f56887f.getItemCount() <= 0) {
                    c6.this.dismiss();
                    return;
                } else {
                    c6.this.g();
                    return;
                }
            }
            if (item.isSo()) {
                if (item.isMod()) {
                    com.papa.sim.statistic.t.l(c6.this.f56884c).R1(Event.onclickSoGameStart, new Ext().setGameId(item.getCrc_link_type_val()).setGameFlag(1));
                } else {
                    com.papa.sim.statistic.t.l(c6.this.f56884c).R1(Event.onclickSoGameStart, new Ext().setGameId(item.getCrc_link_type_val()));
                }
            } else if (item.isMod()) {
                com.papa.sim.statistic.t.l(c6.this.f56884c).R1(Event.onclickSinGameStart, new Ext().setGameId(item.getCrc_link_type_val()).setGameFlag(1));
            } else {
                com.papa.sim.statistic.t.l(c6.this.f56884c).R1(Event.onclickSinGameStart, new Ext().setGameId(item.getCrc_link_type_val()));
            }
            com.papa.sim.statistic.t.l(c6.this.f56884c).R1(Event.onclickGameStart, new Ext().setGameId(item.getCrc_link_type_val()));
            UtilsMy.k4(c6.this.f56884c, item);
            c6.this.dismiss();
        }
    }

    public class b extends BaseQuickAdapter<DownloadTask, com.join.mgps.base.b> {
        public b() {
            super(R.layout.install_app_list);
        }

        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(com.join.mgps.base.b helper, DownloadTask item) {
            LinearLayout linearLayout = (LinearLayout) helper.getView(R.id.tipsLayout);
            ImageView imageView = (ImageView) helper.getView(R.id.iv_star);
            TextView textView = (TextView) helper.getView(R.id.tv_score);
            Button button = (Button) helper.getView(R.id.btn_install);
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.appIcon), item.getPortraitURL());
            ((TextView) helper.getView(R.id.appName)).setText(item.getShowName());
            button.setBackgroundResource(R.drawable.recom_blue_butn);
            if (com.join.mgps.Util.t2.h(item.getScore()) || Float.valueOf(item.getScore()).floatValue() <= 0.0f) {
                textView.setVisibility(8);
                imageView.setVisibility(8);
            } else {
                textView.setVisibility(0);
                textView.setText(item.getScore());
                imageView.setVisibility(0);
            }
            c6 c6Var = c6.this;
            if (c6Var.f56889h == 1) {
                button.setText(c6Var.f56884c.getResources().getString(R.string.download_status_finished));
                button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                button.setTextColor(c6.this.f56884c.getResources().getColor(R.color.app_main_color));
            } else {
                button.setText(c6Var.f56884c.getResources().getString(R.string.install));
                button.setBackgroundResource(R.drawable.recom_green_butn);
                button.setTextColor(c6.this.f56884c.getResources().getColor(R.color.app_green_color));
            }
            UtilsMy.L(item.getTipBeans(), item.getSp_tag_info(), linearLayout, c6.this.f56884c);
            helper.addOnClickListener(R.id.btn_install);
        }
    }

    public c6(Context context2, int showType2, List<DownloadTask> datas) {
        super(context2, R.style.Dialog);
        this.f56884c = context2;
        this.f56889h = showType2;
        this.f56888g = new PrefDef_(getContext());
        this.f56890i = datas;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(DownloadTask downloadTask) {
        try {
            if (com.join.android.app.common.utils.o.I(this.f56884c, downloadTask, null)) {
                UtilsMy.i3(downloadTask, 5);
                return;
            }
            if (!APKUtils.K(downloadTask) && !APKUtils.P(downloadTask)) {
                com.join.android.app.common.utils.g.t0(this.f56884c).A(this.f56884c, downloadTask.getGameZipPath());
                return;
            }
            APKUtils.F(this.f56884c, downloadTask);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f56889h == 1) {
            this.f56885d.setText(this.f56884c.getResources().getString(R.string.str_not_open_tip_title));
        } else {
            this.f56885d.setText(this.f56884c.getResources().getString(R.string.str_not_install_tip_title));
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f56883b.getLayoutParams();
        List<DownloadTask> list = this.f56890i;
        if (list == null || list.size() <= 3) {
            ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams).height = (int) this.f56884c.getResources().getDimension(R.dimen.wdp420);
        }
        this.f56883b.setLayoutParams(layoutParams);
        this.f56883b.invalidate();
    }

    public void d() {
        if (this.f56887f == null) {
            b bVar = new b();
            this.f56887f = bVar;
            bVar.setOnItemChildClickListener(new a());
            this.f56883b.setAdapter(this.f56887f);
        }
        this.f56887f.setNewData(this.f56890i);
        g();
    }

    public void f() {
        Context context = this.f56884c;
        if (context instanceof MGMainActivity) {
            ((MGMainActivity) context).onActivityResult(10003, -1, new Intent());
        }
        dismiss();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.iv_close) {
            f();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.install_notinstall_app_dialog_activity);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
        this.f56883b = (RecyclerView) findViewById(R.id.appList);
        this.f56885d = (TextView) findViewById(R.id.describ);
        ImageView imageView = (ImageView) findViewById(R.id.iv_close);
        this.f56886e = imageView;
        imageView.setOnClickListener(this);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        if (this.f56889h == 1) {
            com.papa.sim.statistic.t.l(this.f56884c).R1(Event.gameStartShow, new Ext());
        } else {
            com.papa.sim.statistic.t.l(this.f56884c).R1(Event.gameInstallShow, new Ext());
        }
        d();
    }
}
