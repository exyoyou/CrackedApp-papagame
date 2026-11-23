package com.join.mgps.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.game_build)
public class l3 extends Fragment implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    LinearLayout f70069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    XListView2 f70070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f70071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f70072f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    Button f70073g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    ImageView f70074h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    Context f70075i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    f f70076j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f70078l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f70079m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    UserInfo f70080n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    com.join.mgps.rpc.b f70081o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    com.join.mgps.rpc.i f70082p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    List<GameFromPopoWinBean.DataBean> f70083q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    List<e> f70084r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    List<CollectionBeanSub> f70086t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    List<DownloadTask> f70087u;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f70077k = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    boolean f70085s = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Map<String, DownloadTask> f70088v = new ConcurrentHashMap();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f70089w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    List<CollectionBeanSub> f70090x = new ArrayList();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f70091y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f70092z = 0;

    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            l3 l3Var = l3.this;
            l3Var.f70077k = 1;
            l3Var.P();
            l3.this.V();
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            l3.this.P();
            l3.this.V();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        CollectionBeanSub f70095b;

        public c(CollectionBeanSub collectionBean) {
            this.f70095b = collectionBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f70095b.getDownloadTask();
            if (downloadTask == null) {
                if (UtilsMy.p0(this.f70095b.getTag_info())) {
                    if (this.f70095b.getMod_info() != null) {
                        boolean zE = com.join.android.app.common.utils.g.t0(l3.this.f70075i).e(l3.this.f70075i, this.f70095b.getPackage_name());
                        boolean zK = com.join.mgps.va.overmind.i.q().K(this.f70095b.getPackage_name());
                        if (zE || zK) {
                            com.join.android.app.common.utils.g.t0(l3.this.f70075i);
                            APKUtils.a0(l3.this.f70075i, this.f70095b.getMod_info(), this.f70095b.getExtBean());
                            return;
                        }
                    } else if (com.join.android.app.common.utils.g.t0(l3.this.f70075i).e(l3.this.f70075i, this.f70095b.getPackage_name())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(l3.this.f70075i).n(l3.this.f70075i, this.f70095b.getPackage_name());
                        if (!com.join.mgps.Util.t2.i(this.f70095b.getVer()) || aVarN.d() >= Integer.parseInt(this.f70095b.getVer())) {
                            com.join.android.app.common.utils.g.t0(l3.this.f70075i);
                            APKUtils.f0(l3.this.f70075i, this.f70095b.getPackage_name());
                            return;
                        }
                    }
                }
                UtilsMy.b1(l3.this.f70075i, this.f70095b);
                return;
            }
            if (this.f70095b.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f70095b.getDown_url_remote());
                UtilsMy.j3(downloadTask, l3.this.f70075i);
                IntentUtil.getInstance().intentActivity(l3.this.f70075i, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.x0(this.f70095b.getPay_tag_info(), this.f70095b.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.l(l3.this.f70075i, downloadTask);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.k4(l3.this.f70075i, downloadTask);
                            return;
                        }
                        if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (com.join.android.app.common.utils.m.j(l3.this.f70075i)) {
                                        UtilsMy.O4(l3.this.f70075i, downloadTask);
                                        return;
                                    } else {
                                        com.join.mgps.Util.a3.b(l3.this.f70075i).d("无网络连接");
                                        return;
                                    }
                                }
                                if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.m.j(l3.this.f70075i)) {
                                                com.join.mgps.Util.a3.b(l3.this.f70075i).d("无网络连接");
                                            } else {
                                                UtilsMy.X2(l3.this.f70075i, downloadTask);
                                            }
                                            break;
                                        case 11:
                                            UtilsMy.w4(downloadTask, l3.this.f70075i);
                                            break;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(downloadTask, l3.this.f70075i);
                    return;
                }
                com.php25.PDownload.d.i(downloadTask);
                return;
            }
            if (UtilsMy.z0(this.f70095b.getPay_tag_info(), this.f70095b.getCrc_sign_id()) > 0) {
                UtilsMy.z4(l3.this.f70075i, downloadTask.getCrc_link_type_val());
            } else if (this.f70095b.getDown_status() == 5) {
                UtilsMy.l1(l3.this.f70075i, downloadTask);
            } else {
                UtilsMy.U0(l3.this.f70075i, downloadTask, this.f70095b.getTp_down_url(), this.f70095b.getOther_down_switch(), this.f70095b.getCdn_down_switch());
            }
        }
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SimpleDraweeView f70097a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ImageView f70098b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f70099c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RelativeLayout f70100d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f70101e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f70102f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public LinearLayout f70103g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public LinearLayout f70104h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f70105i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f70106j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ProgressBar f70107k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ProgressBar f70108l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public View f70109m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public View f70110n;

        d() {
        }
    }

    class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f70112a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f70113b;

        public e(Object o10, int type) {
            this.f70113b = o10;
            this.f70112a = type;
        }
    }

    class f extends BaseAdapter {

        class a implements View.OnLongClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameFromPopoWinBean.DataBean f70116b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f70117c;

            /* JADX INFO: renamed from: com.join.mgps.fragment.l3$f$a$a, reason: collision with other inner class name */
            class ViewOnClickListenerC0728a implements View.OnClickListener {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ Dialog f70119b;

                ViewOnClickListenerC0728a(final Dialog val$dialog) {
                    this.f70119b = val$dialog;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    this.f70119b.dismiss();
                }
            }

            class b implements View.OnClickListener {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ Dialog f70121b;

                b(final Dialog val$dialog) {
                    this.f70121b = val$dialog;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    l3 l3Var = l3.this;
                    if (l3Var.f70089w == l3Var.f70080n.getUid() || l3.this.f70089w == 0) {
                        a aVar = a.this;
                        l3.this.U(aVar.f70116b.getId());
                        a aVar2 = a.this;
                        l3.this.T(aVar2.f70117c);
                        this.f70121b.dismiss();
                    }
                }
            }

            a(final GameFromPopoWinBean.DataBean val$data1, final int val$position) {
                this.f70116b = val$data1;
                this.f70117c = val$position;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(l3.this.f70075i, R.style.MyDialog);
                tVar.setContentView(R.layout.delete_center_dialog);
                Button button = (Button) tVar.findViewById(R.id.dialog_button_ok);
                TextView textView = (TextView) tVar.findViewById(R.id.tip_title);
                TextView textView2 = (TextView) tVar.findViewById(R.id.dialog_content);
                textView.setText("删除游戏单");
                textView2.setText("你确定要删除该游戏单？");
                button.setText("删除");
                ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new ViewOnClickListenerC0728a(tVar));
                button.setOnClickListener(new b(tVar));
                tVar.show();
                return true;
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameFromPopoWinBean.DataBean f70123b;

            b(final GameFromPopoWinBean.DataBean val$data1) {
                this.f70123b = val$data1;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(l3.this.getActivity(), (Class<?>) GameDetailActivity_.class);
                intent.putExtra("fromid", this.f70123b.getId());
                intent.putExtra("_from", 11104);
                intent.putExtra("groupuid", this.f70123b.getUid());
                intent.putExtra("gameid", "0");
                intent.putExtra("company_id", "0");
                l3.this.startActivity(intent);
            }
        }

        f() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return l3.this.f70084r.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            List<e> list = l3.this.f70084r;
            if (list == null) {
                return null;
            }
            return list.get(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int position) {
            return l3.this.f70084r.get(position).f70112a;
        }

        /* JADX WARN: Code duplicated, block: B:72:0x048d  */
        /* JADX WARN: Code duplicated, block: B:73:0x04c6  */
        /* JADX WARN: Code duplicated, block: B:76:0x04f5 A[Catch: Exception -> 0x0547, TryCatch #1 {Exception -> 0x0547, blocks: (B:74:0x04ed, B:76:0x04f5, B:78:0x053c, B:77:0x0519), top: B:102:0x04ed }] */
        /* JADX WARN: Code duplicated, block: B:77:0x0519 A[Catch: Exception -> 0x0547, TryCatch #1 {Exception -> 0x0547, blocks: (B:74:0x04ed, B:76:0x04f5, B:78:0x053c, B:77:0x0519), top: B:102:0x04ed }] */
        /* JADX WARN: Code duplicated, block: B:89:0x05f6  */
        /* JADX WARN: Instruction removed from duplicated block: B:76:0x04f5, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:77:0x0519, please report this as an issue */
        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            g gVar;
            View viewInflate;
            d dVar;
            View viewInflate2;
            h hVar;
            View viewInflate3;
            int itemViewType = getItemViewType(i10);
            if (itemViewType == 1) {
                if (view == null) {
                    viewInflate = LayoutInflater.from(l3.this.f70075i).inflate(R.layout.game_build_item, (ViewGroup) null);
                    gVar = l3.this.new g();
                    gVar.f70125a = (SimpleDraweeView) viewInflate.findViewById(R.id.smv_icon);
                    gVar.f70127c = (TextView) viewInflate.findViewById(R.id.tv_size);
                    gVar.f70126b = (TextView) viewInflate.findViewById(R.id.tv_title);
                    gVar.f70128d = (RelativeLayout) viewInflate.findViewById(R.id.rl_content);
                    viewInflate.setTag(gVar);
                } else {
                    gVar = (g) view.getTag();
                    viewInflate = view;
                }
                GameFromPopoWinBean.DataBean dataBean = (GameFromPopoWinBean.DataBean) l3.this.f70084r.get(i10).f70113b;
                gVar.f70128d.setOnLongClickListener(new a(dataBean, i10));
                if (dataBean.getGame_list().size() != 0) {
                    gVar.f70125a.setImageURI(dataBean.getGame_list().get(0).getGame_ico());
                } else {
                    gVar.f70125a.setImageResource(R.drawable.main_normal_icon);
                }
                gVar.f70126b.setText(dataBean.getTitle());
                gVar.f70127c.setText(dataBean.getGame_count() + "款");
                gVar.f70128d.setOnClickListener(new b(dataBean));
                return viewInflate;
            }
            if (itemViewType != 2) {
                if (itemViewType != 3) {
                    return view;
                }
                if (view == null) {
                    viewInflate3 = LayoutInflater.from(l3.this.f70075i).inflate(R.layout.gameformtxt, (ViewGroup) null);
                    hVar = l3.this.new h();
                    hVar.f70130a = (TextView) viewInflate3.findViewById(R.id.tv_title);
                    viewInflate3.setTag(hVar);
                } else {
                    hVar = (h) view.getTag();
                    viewInflate3 = view;
                }
                hVar.f70130a.setText((String) l3.this.f70084r.get(i10).f70113b);
                return viewInflate3;
            }
            if (view == null) {
                viewInflate2 = LayoutInflater.from(l3.this.f70075i).inflate(R.layout.app_listview_item, (ViewGroup) null);
                dVar = l3.this.new d();
                dVar.f70097a = (SimpleDraweeView) viewInflate2.findViewById(R.id.mgListviewItemIcon);
                dVar.f70098b = (ImageView) viewInflate2.findViewById(R.id.giftPackageSwich);
                dVar.f70099c = (TextView) viewInflate2.findViewById(R.id.mgListviewItemAppname);
                dVar.f70100d = (RelativeLayout) viewInflate2.findViewById(R.id.rLayoutRight);
                dVar.f70101e = (TextView) viewInflate2.findViewById(R.id.mgListviewItemInstall);
                dVar.f70102f = (TextView) viewInflate2.findViewById(R.id.mgListviewItemDescribe);
                dVar.f70103g = (LinearLayout) viewInflate2.findViewById(R.id.linearLayout2);
                dVar.f70104h = (LinearLayout) viewInflate2.findViewById(R.id.tipsLayout);
                dVar.f70105i = (TextView) viewInflate2.findViewById(R.id.appSize);
                dVar.f70106j = (TextView) viewInflate2.findViewById(R.id.loding_info);
                dVar.f70107k = (ProgressBar) viewInflate2.findViewById(R.id.progressBar);
                dVar.f70108l = (ProgressBar) viewInflate2.findViewById(R.id.progressBarZip);
                dVar.f70109m = viewInflate2.findViewById(R.id.line);
                dVar.f70110n = viewInflate2.findViewById(R.id.relateLayoutApp);
                viewInflate2.setTag(dVar);
            } else {
                dVar = (d) view.getTag();
                viewInflate2 = view;
            }
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) l3.this.f70084r.get(i10).f70113b;
            DownloadTask downloadTask = collectionBeanSub.getDownloadTask();
            collectionBeanSub.setDownloadTask(downloadTask);
            dVar.f70110n.setBackgroundResource(R.drawable.white_bg);
            if (collectionBeanSub.getGift_package_switch() == 1) {
                dVar.f70098b.setVisibility(0);
            } else {
                dVar.f70098b.setVisibility(8);
            }
            dVar.f70099c.setText(collectionBeanSub.getGame_name());
            dVar.f70102f.setText(collectionBeanSub.getInfo());
            long j10 = (long) (Double.parseDouble(collectionBeanSub.getSize()) * 1024.0d * 1024.0d);
            String ico_remote = collectionBeanSub.getIco_remote();
            if (TextUtils.isEmpty(ico_remote)) {
                ico_remote = "";
            }
            com.join.android.app.common.utils.l.h(dVar.f70097a, ico_remote.trim());
            collectionBeanSub.getTag_info();
            UtilsMy.K(collectionBeanSub.getScore(), collectionBeanSub.getDown_count(), collectionBeanSub.getSize(), collectionBeanSub.getSp_tag_info(), collectionBeanSub.getTag_info(), dVar.f70104h, l3.this.f70075i);
            UtilsMy.A3(collectionBeanSub.getSp_tag_info(), viewInflate2, downloadTask);
            if (collectionBeanSub.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                dVar.f70101e.setBackgroundResource(R.drawable.recom_blue_butn);
                dVar.f70101e.setText("开始");
                dVar.f70101e.setTextColor(l3.this.f70075i.getResources().getColor(R.color.app_blue_color));
                dVar.f70104h.setVisibility(8);
                dVar.f70098b.setVisibility(8);
            } else if (downloadTask == null) {
                l3.this.b0(dVar, Boolean.TRUE, Boolean.FALSE);
                if (UtilsMy.p0(collectionBeanSub.getTag_info())) {
                    boolean zE = com.join.android.app.common.utils.g.t0(l3.this.f70075i).e(l3.this.f70075i, collectionBeanSub.getPackage_name());
                    if (UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id()) > 0) {
                        zE = false;
                    }
                    if (zE) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(l3.this.f70075i).n(l3.this.f70075i, collectionBeanSub.getPackage_name());
                        if (!com.join.mgps.Util.t2.i(collectionBeanSub.getVer()) || aVarN.d() >= Integer.parseInt(collectionBeanSub.getVer())) {
                            dVar.f70101e.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            dVar.f70101e.setText(l3.this.f70075i.getResources().getString(R.string.download_status_finished));
                            dVar.f70101e.setTextColor(-688602);
                        } else {
                            dVar.f70101e.setBackgroundResource(R.drawable.recom_green_butn);
                            dVar.f70101e.setText("更新");
                            dVar.f70101e.setTextColor(-9263087);
                        }
                    } else {
                        dVar.f70101e.setBackgroundResource(R.drawable.recom_green_butn);
                        UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id());
                        UtilsMy.p3(dVar.f70101e, dVar.f70100d, collectionBeanSub);
                    }
                } else {
                    dVar.f70101e.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id());
                    UtilsMy.p3(dVar.f70101e, dVar.f70100d, collectionBeanSub);
                }
            } else {
                com.join.mgps.Util.g1.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
                int status = downloadTask.getStatus();
                if (UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status == 0) {
                    dVar.f70101e.setBackgroundResource(R.drawable.recom_blue_butn);
                    UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id());
                    UtilsMy.p3(dVar.f70101e, dVar.f70100d, collectionBeanSub);
                    dVar.f70101e.setTextColor(l3.this.f70075i.getResources().getColor(R.color.app_blue_color));
                    l3.this.b0(dVar, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 27) {
                    dVar.f70101e.setText("暂停中");
                } else if (status == 2) {
                    UtilsMy.U4(downloadTask);
                    dVar.f70101e.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar.f70101e.setText("暂停");
                    dVar.f70101e.setTextColor(l3.this.f70075i.getResources().getColor(R.color.app_blue_color));
                    l3 l3Var = l3.this;
                    Boolean bool = Boolean.FALSE;
                    l3Var.b0(dVar, bool, bool);
                    if (downloadTask.getSize() == 0) {
                        dVar.f70105i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        dVar.f70105i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    dVar.f70107k.setProgress((int) downloadTask.getProgress());
                    String speed = downloadTask.getSpeed();
                    dVar.f70106j.setText(speed + "/S");
                } else if (status == 3) {
                    dVar.f70101e.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar.f70101e.setText("继续");
                    dVar.f70101e.setTextColor(l3.this.f70075i.getResources().getColor(R.color.app_blue_color));
                    l3 l3Var2 = l3.this;
                    Boolean bool2 = Boolean.FALSE;
                    l3Var2.b0(dVar, bool2, bool2);
                    try {
                        if (downloadTask.getSize() == 0) {
                            dVar.f70105i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        } else {
                            dVar.f70105i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        }
                        dVar.f70107k.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    dVar.f70106j.setText("暂停中");
                } else if (status == 5) {
                    dVar.f70101e.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    dVar.f70101e.setText(l3.this.f70075i.getResources().getString(R.string.download_status_finished));
                    dVar.f70101e.setTextColor(l3.this.f70075i.getResources().getColor(R.color.app_main_color));
                    l3 l3Var3 = l3.this;
                    Boolean bool3 = Boolean.TRUE;
                    l3Var3.b0(dVar, bool3, bool3);
                } else if (status == 6) {
                    dVar.f70101e.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar.f70101e.setText("继续");
                    dVar.f70101e.setTextColor(l3.this.f70075i.getResources().getColor(R.color.app_blue_color));
                    l3 l3Var4 = l3.this;
                    Boolean bool4 = Boolean.FALSE;
                    l3Var4.b0(dVar, bool4, bool4);
                    if (downloadTask.getSize() == 0) {
                        dVar.f70105i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        dVar.f70105i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    dVar.f70107k.setProgress((int) downloadTask.getProgress());
                    dVar.f70106j.setText("暂停中");
                } else if (status == 7) {
                    dVar.f70101e.setBackgroundResource(R.drawable.recom_blue_butn);
                    UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id());
                    UtilsMy.p3(dVar.f70101e, dVar.f70100d, collectionBeanSub);
                    dVar.f70101e.setTextColor(l3.this.f70075i.getResources().getColor(R.color.app_blue_color));
                    l3.this.b0(dVar, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 42) {
                    dVar.f70101e.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    dVar.f70101e.setText(l3.this.f70075i.getResources().getString(R.string.download_status_finished));
                    dVar.f70101e.setTextColor(l3.this.f70075i.getResources().getColor(R.color.app_main_color));
                    l3 l3Var5 = l3.this;
                    Boolean bool5 = Boolean.TRUE;
                    l3Var5.b0(dVar, bool5, bool5);
                } else if (status != 43) {
                    switch (status) {
                        case 9:
                            dVar.f70101e.setBackgroundResource(R.drawable.recom_green_butn);
                            dVar.f70101e.setText("更新");
                            dVar.f70101e.setTextColor(l3.this.f70075i.getResources().getColor(R.color.app_green_color));
                            l3.this.b0(dVar, Boolean.TRUE, Boolean.FALSE);
                            break;
                        case 10:
                            dVar.f70101e.setBackgroundResource(R.drawable.recom_blue_butn);
                            dVar.f70101e.setText("等待");
                            dVar.f70101e.setTextColor(l3.this.f70075i.getResources().getColor(R.color.app_blue_color));
                            l3 l3Var6 = l3.this;
                            Boolean bool6 = Boolean.FALSE;
                            l3Var6.b0(dVar, bool6, bool6);
                            dVar.f70105i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            try {
                                dVar.f70107k.setProgress((int) downloadTask.getProgress());
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                            dVar.f70106j.setText("等待中");
                            break;
                        case 11:
                            dVar.f70101e.setBackgroundResource(R.drawable.recom_green_butn);
                            dVar.f70101e.setText("安装");
                            dVar.f70101e.setTextColor(l3.this.f70075i.getResources().getColor(R.color.app_green_color));
                            l3.this.b0(dVar, Boolean.TRUE, Boolean.FALSE);
                            break;
                        case 12:
                            l3.this.b0(dVar, Boolean.FALSE, Boolean.TRUE);
                            dVar.f70105i.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            dVar.f70106j.setText("解压中..");
                            dVar.f70108l.setProgress((int) downloadTask.getProgress());
                            dVar.f70101e.setBackgroundResource(R.drawable.extract);
                            dVar.f70101e.setText("解压中");
                            dVar.f70101e.setTextColor(-4868683);
                            break;
                        case 13:
                            l3.this.b0(dVar, Boolean.FALSE, Boolean.TRUE);
                            dVar.f70105i.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            dVar.f70106j.setText("点击重新解压");
                            dVar.f70108l.setProgress((int) downloadTask.getProgress());
                            dVar.f70101e.setBackgroundResource(R.drawable.reextract);
                            dVar.f70101e.setText("解压");
                            dVar.f70101e.setTextColor(l3.this.f70075i.getResources().getColor(R.color.app_grey_color));
                            break;
                    }
                } else {
                    dVar.f70101e.setBackgroundResource(R.drawable.recom_blue_butn);
                    UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id());
                    UtilsMy.p3(dVar.f70101e, dVar.f70100d, collectionBeanSub);
                    dVar.f70101e.setTextColor(l3.this.f70075i.getResources().getColor(R.color.app_blue_color));
                    l3.this.b0(dVar, Boolean.TRUE, Boolean.FALSE);
                }
            }
            dVar.f70100d.setClickable(true);
            dVar.f70100d.setOnClickListener(l3.this.new c(collectionBeanSub));
            return viewInflate2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }
    }

    class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f70125a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f70126b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f70127c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        RelativeLayout f70128d;

        g() {
        }
    }

    class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f70130a;

        h() {
        }
    }

    private void Y(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSub collectionBeanSub : this.f70090x) {
                if (collectionBeanSub.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSub.getMod_info();
                    DownloadTask downloadTask2 = this.f70088v.get(mod_info.getMain_game_id());
                    boolean z10 = true;
                    boolean z11 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f70088v.get(mod_info.getMod_game_id());
                    if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                        z10 = false;
                    }
                    if (z10 && z11) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (z10) {
                        if (collectionBeanSub.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getMod_info().getMod_game_id())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (!z11) {
                        DownloadTask downloadTaskG = collectionBeanSub.getMod_info() != null ? q5.f.M().G(collectionBeanSub.getMod_info().getMod_game_id()) : null;
                        if (downloadTaskG == null) {
                            downloadTaskG = q5.f.M().G(collectionBeanSub.getCrc_sign_id());
                        }
                        if (downloadTaskG != null && downloadTask.getCrc_link_type_val().equals(downloadTaskG.getCrc_link_type_val())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                        collectionBeanSub.setDownloadTask(downloadTask);
                        return;
                    }
                } else if (collectionBeanSub.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                    collectionBeanSub.setDownloadTask(downloadTask);
                    return;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void Z(List<CollectionBeanSub> SearchDataBeanList) {
        List<DownloadTask> list;
        if (SearchDataBeanList == null || SearchDataBeanList.size() == 0 || (list = this.f70087u) == null || list.size() == 0) {
            return;
        }
        for (CollectionBeanSub collectionBeanSub : SearchDataBeanList) {
            for (DownloadTask downloadTask : this.f70087u) {
                if (collectionBeanSub.getMod_info() == null) {
                    if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                        collectionBeanSub.setDownloadTask(downloadTask);
                        break;
                    }
                } else {
                    ModInfoBean mod_info = collectionBeanSub.getMod_info();
                    DownloadTask downloadTask2 = this.f70088v.get(mod_info.getMain_game_id());
                    boolean z10 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f70088v.get(mod_info.getMod_game_id());
                    boolean z11 = downloadTask3 != null && downloadTask3.getStatus() == 5;
                    if (z11 && z10) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                        }
                    } else if (z11) {
                        if (collectionBeanSub.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getMod_info().getMod_game_id())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                        }
                    } else if (!z10) {
                        DownloadTask downloadTaskG = collectionBeanSub.getMod_info() != null ? q5.f.M().G(collectionBeanSub.getMod_info().getMod_game_id()) : null;
                        if (downloadTaskG == null) {
                            downloadTaskG = q5.f.M().G(collectionBeanSub.getCrc_sign_id());
                        }
                        if (downloadTaskG != null && downloadTask.getCrc_link_type_val().equals(downloadTaskG.getCrc_link_type_val())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                        }
                    } else if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                        collectionBeanSub.setDownloadTask(downloadTask);
                    }
                }
            }
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f70087u.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f70088v.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSub collectionBeanSub : this.f70090x) {
                    if (collectionBeanSub.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.f70088v.get(collectionBeanSub.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.f70088v.get(collectionBeanSub.getGame_id());
                        if (downloadTask2 == null && downloadTask3 == null) {
                            collectionBeanSub.setDownloadTask(null);
                        } else if (downloadTask2 != null) {
                            collectionBeanSub.setDownloadTask(downloadTask2);
                        } else if (downloadTask3 != null) {
                            collectionBeanSub.setDownloadTask(downloadTask3);
                        } else if (collectionBeanSub.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                            collectionBeanSub.setDownloadTask(null);
                        }
                    } else if (collectionBeanSub.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        collectionBeanSub.setDownloadTask(null);
                    }
                }
                break;
            }
        }
        this.f70076j.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f70088v;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            this.f70076j.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.X4(this.f70087u);
        if (!this.f70088v.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70087u.add(downloadTask);
            this.f70088v.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        Y(downloadTask);
        this.f70076j.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f70088v;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70087u.add(downloadTask);
            this.f70088v.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        Y(downloadTask);
        DownloadTask downloadTask2 = this.f70088v.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f70076j.notifyDataSetChanged();
    }

    private void updateProgressPartly() {
        CollectionBeanSub collectionBeanSub;
        DownloadTask downloadTask;
        if (this.f70092z < 0 || this.f70091y >= this.f70084r.size()) {
            return;
        }
        for (int i10 = this.f70092z; i10 <= this.f70091y; i10++) {
            if (this.f70084r.get(i10).f70112a == 2 && (collectionBeanSub = (CollectionBeanSub) this.f70084r.get(i10).f70113b) != null && (downloadTask = collectionBeanSub.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f70070d.getChildAt(i10 - this.f70092z);
                if (childAt.getTag() instanceof d) {
                    d dVar = (d) childAt.getTag();
                    try {
                        DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                        if (downloadTaskG == null) {
                            return;
                        }
                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            dVar.f70105i.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        } else {
                            dVar.f70105i.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        }
                        if (downloadTask.getStatus() == 12) {
                            dVar.f70108l.setProgress((int) downloadTaskG.getProgress());
                        } else {
                            dVar.f70107k.setProgress((int) downloadTaskG.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            dVar.f70106j.setText(downloadTaskG.getSpeed() + "/S");
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @AfterViews
    void M() {
        this.f70075i = getActivity();
        this.f70084r = new ArrayList();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f70089w = arguments.getInt("uid", 0);
        }
        this.f70081o = com.join.mgps.rpc.impl.a.c0();
        this.f70082p = com.join.mgps.rpc.impl.g.A0();
        this.f70083q = new ArrayList();
        com.join.mgps.Util.j0.a().d(this);
        this.f70070d.setOnScrollListener(this);
        this.f70070d.setPreLoadCount(1);
        this.f70086t = new ArrayList();
        this.f70080n = AccountUtil_.getInstance_(this.f70075i).getAccountData();
        List<DownloadTask> listD = q5.f.M().d();
        this.f70087u = listD;
        if (listD != null && listD.size() > 0) {
            for (DownloadTask downloadTask : this.f70087u) {
                this.f70088v.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        f fVar = new f();
        this.f70076j = fVar;
        this.f70070d.setAdapter((ListAdapter) fVar);
        this.f70078l = "";
        RequestBeanUtil.getInstance(this.f70075i);
        this.f70079m = RequestBeanUtil.getVersionAndVersionName();
        V();
        this.f70070d.setPullRefreshEnable(new a());
        this.f70070d.setPullLoadEnable(new b());
    }

    @UiThread
    void N(List<GameFromPopoWinBean.DataBean> data) {
        for (int i10 = 0; i10 < data.size(); i10++) {
            this.f70084r.add(new e(data.get(i10), 1));
        }
        if (data.size() < 10) {
            X();
        }
        f fVar = this.f70076j;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    @UiThread
    void O(List<CollectionBeanSub> collectionBeanSubs) {
        if (this.f70084r != null) {
            for (CollectionBeanSub collectionBeanSub : collectionBeanSubs) {
                this.f70084r.add(new e(collectionBeanSub, 2));
                this.f70090x.add(collectionBeanSub);
            }
            f fVar = this.f70076j;
            if (fVar != null) {
                fVar.notifyDataSetChanged();
            }
            Z(this.f70090x);
        }
    }

    @UiThread
    void P() {
        try {
            LinearLayout linearLayout = this.f70069c;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            XListView2 xListView2 = this.f70070d;
            if (xListView2 != null) {
                xListView2.l();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    public void Q() {
        this.f70077k = 1;
        P();
        V();
    }

    @UiThread
    void R() {
        f fVar = this.f70076j;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    @UiThread
    void S() {
        if (this.f70084r.size() > 0) {
            this.f70084r.clear();
            f fVar = this.f70076j;
            if (fVar != null) {
                fVar.notifyDataSetChanged();
            }
        }
    }

    void T(int i10) {
        this.f70084r.remove(i10);
        this.f70076j.notifyDataSetChanged();
    }

    @Background
    void U(String groupid) {
        try {
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(this.f70080n.getUid()));
            linkedMultiValueMap.add(Constants.TOKEN, this.f70080n.getToken());
            linkedMultiValueMap.add("group_id", groupid);
            linkedMultiValueMap.add("device_id", this.f70078l);
            linkedMultiValueMap.add("version", this.f70079m);
            GameFromBooleanBean gameFromBooleanBeanY = this.f70081o.Y(linkedMultiValueMap);
            if (gameFromBooleanBeanY.getError() == 0) {
                if (gameFromBooleanBeanY.getData().isState()) {
                    showToast("删除成功");
                } else {
                    showToast("删除失败");
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void V() {
        try {
            if (!com.join.android.app.common.utils.m.j(this.f70075i)) {
                if (!this.f70085s) {
                    showLodingFailed();
                }
                if (this.f70077k == 2) {
                    showLodingFailed();
                    return;
                } else {
                    X();
                    return;
                }
            }
            if (this.f70077k == 1) {
                showLoding();
            }
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            int uid = this.f70089w;
            if (uid == 0) {
                uid = this.f70080n.getUid();
            }
            linkedMultiValueMap.add("uid", Integer.valueOf(uid));
            int i10 = this.f70077k;
            this.f70077k = i10 + 1;
            linkedMultiValueMap.add("page", Integer.valueOf(i10));
            linkedMultiValueMap.add("type", 1);
            linkedMultiValueMap.add("device_id", this.f70078l);
            linkedMultiValueMap.add("version", this.f70079m);
            GameFromPopoWinBean gameFromPopoWinBeanQ = this.f70081o.q(linkedMultiValueMap);
            if (gameFromPopoWinBeanQ != null && gameFromPopoWinBeanQ.getError() == 0 && gameFromPopoWinBeanQ.getData() != null && gameFromPopoWinBeanQ.getData().size() != 0) {
                a0();
                W();
                if (this.f70077k == 2) {
                    S();
                }
                N(gameFromPopoWinBeanQ.getData());
                return;
            }
            W();
            if (this.f70077k != 2) {
                X();
            } else {
                if (this.f70085s) {
                    return;
                }
                showNoData();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void W() {
        LinearLayout linearLayout = this.f70071e;
        if (linearLayout == null || this.f70072f == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f70072f.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void X() {
        XListView2 xListView2 = this.f70070d;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.f70070d.v();
                this.f70070d.setNoMore();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @UiThread
    void a0() {
        XListView2 xListView2 = this.f70070d;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.f70070d.v();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void b0(d holder, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            holder.f70103g.setVisibility(8);
            holder.f70107k.setVisibility(8);
            holder.f70108l.setVisibility(8);
            holder.f70104h.setVisibility(0);
            return;
        }
        holder.f70103g.setVisibility(0);
        if (isZip.booleanValue()) {
            holder.f70107k.setVisibility(8);
            holder.f70108l.setVisibility(0);
        } else {
            holder.f70108l.setVisibility(8);
            holder.f70107k.setVisibility(0);
        }
        holder.f70104h.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
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
                Map<String, DownloadTask> map = this.f70088v;
                if (map != null && !map.isEmpty()) {
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

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f70091y = (visibleItemCount + firstVisibleItem) - 1;
        this.f70092z = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int scrollState) {
    }

    @Click
    void relodingimag() {
        this.f70077k = 1;
        XListView2 xListView2 = this.f70070d;
        if (xListView2 != null) {
            xListView2.setVisibility(0);
        }
        P();
        V();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f70075i);
    }

    @UiThread
    void showLoding() {
        try {
            LinearLayout linearLayout = this.f70071e;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f70072f;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f70072f;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f70071e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView2 xListView2 = this.f70070d;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
    }

    @UiThread
    void showNoData() {
        LinearLayout linearLayout = this.f70069c;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        XListView2 xListView2 = this.f70070d;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
    }

    @UiThread
    void showToast(String str) {
        Toast.makeText(this.f70075i, str, 0).show();
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
