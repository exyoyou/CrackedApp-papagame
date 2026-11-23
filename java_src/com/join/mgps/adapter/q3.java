package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class q3 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f63030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<l6.c> f63031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LayoutInflater f63032d;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f63033b;

        a(final CollectionBeanSub val$appBean) {
            this.f63033b = val$appBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(q3.this.f63030b, this.f63033b.getIntentDataBean());
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f63035b;

        b(final CollectionBeanSub val$appBean) {
            this.f63035b = val$appBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(q3.this.f63030b, this.f63035b.getIntentDataBean());
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f63037b;

        c(final CollectionBeanSub val$appBean) {
            this.f63037b = val$appBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(q3.this.f63030b, this.f63037b.getIntentDataBean());
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f63039b;

        d(final CollectionBeanSub val$appBean) {
            this.f63039b = val$appBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(q3.this.f63030b, this.f63039b.getIntentDataBean());
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        CollectionBeanSub f63041b;

        public e(CollectionBeanSub appBean) {
            this.f63041b = appBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f63041b.getDownloadTask();
            if (downloadTask == null) {
                if (UtilsMy.p0(this.f63041b.getTag_info())) {
                    if (this.f63041b.getMod_info() != null) {
                        boolean zE = com.join.android.app.common.utils.g.t0(q3.this.f63030b).e(q3.this.f63030b, this.f63041b.getPackage_name());
                        boolean zK = com.join.mgps.va.overmind.i.q().K(this.f63041b.getPackage_name());
                        if (zE || zK) {
                            com.join.android.app.common.utils.g.t0(q3.this.f63030b);
                            APKUtils.a0(q3.this.f63030b, this.f63041b.getMod_info(), this.f63041b.getExtBean());
                            return;
                        }
                    } else if (com.join.android.app.common.utils.g.t0(q3.this.f63030b).e(q3.this.f63030b, this.f63041b.getPackage_name())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(q3.this.f63030b).n(q3.this.f63030b, this.f63041b.getPackage_name());
                        if (!com.join.mgps.Util.t2.i(this.f63041b.getVer()) || aVarN.d() >= Integer.parseInt(this.f63041b.getVer())) {
                            com.join.android.app.common.utils.g.t0(q3.this.f63030b);
                            APKUtils.f0(q3.this.f63030b, this.f63041b.getPackage_name());
                            return;
                        }
                    }
                }
                UtilsMy.b1(q3.this.f63030b, this.f63041b);
                return;
            }
            if ((ConstantIntEnum.H5.value() + "").equals(this.f63041b.getPlugin_num())) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f63041b.getDown_url_remote());
                UtilsMy.j3(downloadTask, q3.this.f63030b);
                IntentUtil.getInstance().intentActivity(q3.this.f63030b, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            CollectionBeanSub collectionBeanSub = this.f63041b;
            if (collectionBeanSub != null && UtilsMy.x0(collectionBeanSub.getPay_tag_info(), this.f63041b.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.l(q3.this.f63030b, downloadTask);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.k4(q3.this.f63030b, downloadTask);
                            return;
                        }
                        if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (com.join.android.app.common.utils.m.j(q3.this.f63030b)) {
                                        UtilsMy.O4(q3.this.f63030b, downloadTask);
                                        return;
                                    } else {
                                        com.join.mgps.Util.a3.b(q3.this.f63030b).d("无网络连接");
                                        return;
                                    }
                                }
                                if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.m.j(q3.this.f63030b)) {
                                                com.join.mgps.Util.a3.b(q3.this.f63030b).d("无网络连接");
                                            } else {
                                                UtilsMy.X2(q3.this.f63030b, downloadTask);
                                            }
                                            break;
                                        case 11:
                                            UtilsMy.w4(downloadTask, q3.this.f63030b);
                                            break;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(downloadTask, q3.this.f63030b);
                    return;
                }
                com.php25.PDownload.d.i(downloadTask);
                return;
            }
            CollectionBeanSub collectionBeanSub2 = this.f63041b;
            if (collectionBeanSub2 != null) {
                if (UtilsMy.z0(collectionBeanSub2.getPay_tag_info(), this.f63041b.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(q3.this.f63030b, downloadTask.getCrc_link_type_val());
                    return;
                }
                UtilsMy.z1(downloadTask, this.f63041b);
                if (UtilsMy.o1(q3.this.f63030b, downloadTask)) {
                    return;
                }
                if (this.f63041b.getDown_status() == 5) {
                    UtilsMy.l1(q3.this.f63030b, downloadTask);
                } else {
                    UtilsMy.U0(q3.this.f63030b, downloadTask, this.f63041b.getTp_down_url(), this.f63041b.getOther_down_switch(), this.f63041b.getCdn_down_switch());
                }
            }
        }
    }

    class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private LinearLayout f63043a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private LinearLayout f63044b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private LinearLayout f63045c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private LinearLayout f63046d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f63047e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f63048f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f63049g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f63050h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private SimpleDraweeView f63051i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private SimpleDraweeView f63052j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private SimpleDraweeView f63053k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private SimpleDraweeView f63054l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private TextView f63055m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private TextView f63056n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private TextView f63057o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private TextView f63058p;

        f() {
        }
    }

    class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f63060a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private TextView f63061b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private LinearLayout f63062c;

        g() {
        }
    }

    public q3(Context context, List<l6.c> mustPlay) {
        this.f63030b = context;
        this.f63031c = mustPlay;
        this.f63032d = LayoutInflater.from(context);
    }

    private void b(CollectionBeanSub item, TextView mgListviewItemInstall) {
        DownloadTask downloadTask = item.getDownloadTask();
        if (downloadTask == null) {
            if ((ConstantIntEnum.H5.value() + "").equals(item.getPlugin_num())) {
                mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
                mgListviewItemInstall.setText("开始");
                mgListviewItemInstall.setTextColor(this.f63030b.getResources().getColor(R.color.app_blue_color));
                return;
            }
            if (!UtilsMy.p0(item.getTag_info())) {
                mgListviewItemInstall.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.x0(item.getPay_tag_info(), item.getCrc_sign_id());
                UtilsMy.t3(mgListviewItemInstall, item);
                return;
            }
            boolean zE = com.join.android.app.common.utils.g.t0(this.f63030b).e(this.f63030b, item.getPackage_name());
            if (UtilsMy.x0(item.getPay_tag_info(), item.getCrc_sign_id()) > 0) {
                zE = false;
            }
            if (!zE) {
                mgListviewItemInstall.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.x0(item.getPay_tag_info(), item.getCrc_sign_id());
                UtilsMy.t3(mgListviewItemInstall, item);
                return;
            }
            APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f63030b).n(this.f63030b, item.getPackage_name());
            if (!com.join.mgps.Util.t2.i(item.getVer()) || aVarN.d() >= Integer.parseInt(item.getVer())) {
                mgListviewItemInstall.setBackgroundResource(R.drawable.recom_maincolor_butn);
                mgListviewItemInstall.setText(this.f63030b.getResources().getString(R.string.download_status_finished));
                mgListviewItemInstall.setTextColor(-688602);
                return;
            } else {
                mgListviewItemInstall.setBackgroundResource(R.drawable.recom_green_butn);
                mgListviewItemInstall.setText("更新");
                mgListviewItemInstall.setTextColor(-9263087);
                return;
            }
        }
        com.join.mgps.Util.g1.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
        int status = downloadTask.getStatus();
        if (UtilsMy.x0(item.getPay_tag_info(), item.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 27) {
                mgListviewItemInstall.setText("暂停中");
                return;
            }
            if (status == 48) {
                mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
                mgListviewItemInstall.setText("安装中");
                mgListviewItemInstall.setTextColor(-12941854);
                return;
            }
            if (status == 2) {
                UtilsMy.U4(downloadTask);
                mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
                mgListviewItemInstall.setText("暂停");
                mgListviewItemInstall.setTextColor(-12941854);
                return;
            }
            if (status != 3) {
                if (status != 5) {
                    if (status != 6) {
                        if (status != 7) {
                            if (status != 42) {
                                if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_green_butn);
                                            mgListviewItemInstall.setText("更新");
                                            mgListviewItemInstall.setTextColor(-9263087);
                                            break;
                                        case 10:
                                            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
                                            mgListviewItemInstall.setText("等待");
                                            mgListviewItemInstall.setTextColor(-12941854);
                                            break;
                                        case 11:
                                            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_green_butn);
                                            mgListviewItemInstall.setText("安装");
                                            mgListviewItemInstall.setTextColor(-9263087);
                                            break;
                                        case 12:
                                            mgListviewItemInstall.setBackgroundResource(R.drawable.extract);
                                            mgListviewItemInstall.setText("解压中");
                                            mgListviewItemInstall.setTextColor(-4868683);
                                            break;
                                        case 13:
                                            mgListviewItemInstall.setBackgroundResource(R.drawable.reextract);
                                            mgListviewItemInstall.setText("解压");
                                            mgListviewItemInstall.setTextColor(-12941854);
                                            break;
                                    }
                                }
                            }
                        }
                    }
                }
                mgListviewItemInstall.setBackgroundResource(R.drawable.recom_maincolor_butn);
                mgListviewItemInstall.setText(this.f63030b.getResources().getString(R.string.download_status_finished));
                mgListviewItemInstall.setTextColor(-688602);
                return;
            }
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            mgListviewItemInstall.setText("继续");
            mgListviewItemInstall.setTextColor(-12941854);
            return;
        }
        mgListviewItemInstall.setBackgroundResource(R.drawable.recom_green_butn);
        UtilsMy.x0(item.getPay_tag_info(), item.getCrc_sign_id());
        UtilsMy.t3(mgListviewItemInstall, item);
    }

    public void c(List<l6.c> mustPlay) {
        this.f63031c = mustPlay;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f63031c.size() + 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return (position == this.f63031c.size() || this.f63031c.get(position).c()) ? 0 : 1;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0121  */
    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        f fVar;
        List<CollectionBeanSub> listA;
        int itemViewType = getItemViewType(position);
        g gVar = null;
        if (convertView == null) {
            if (itemViewType == 0) {
                g gVar2 = new g();
                View viewInflate = this.f63032d.inflate(R.layout.must_play_title_layout, parent, false);
                gVar2.f63060a = (TextView) viewInflate.findViewById(R.id.titleName);
                gVar2.f63061b = (TextView) viewInflate.findViewById(R.id.titleline);
                gVar2.f63062c = (LinearLayout) viewInflate.findViewById(R.id.section_follow);
                viewInflate.setTag(gVar2);
                gVar = gVar2;
                convertView = viewInflate;
                fVar = null;
            } else if (itemViewType != 1) {
                fVar = null;
            } else {
                f fVar2 = new f();
                View viewInflate2 = this.f63032d.inflate(R.layout.must_play_app_layout, parent, false);
                fVar2.f63043a = (LinearLayout) viewInflate2.findViewById(R.id.layout1);
                fVar2.f63044b = (LinearLayout) viewInflate2.findViewById(R.id.layout2);
                fVar2.f63045c = (LinearLayout) viewInflate2.findViewById(R.id.layout3);
                fVar2.f63046d = (LinearLayout) viewInflate2.findViewById(R.id.layout4);
                fVar2.f63047e = (TextView) viewInflate2.findViewById(R.id.appName1);
                fVar2.f63048f = (TextView) viewInflate2.findViewById(R.id.appName2);
                fVar2.f63049g = (TextView) viewInflate2.findViewById(R.id.appName3);
                fVar2.f63050h = (TextView) viewInflate2.findViewById(R.id.appName4);
                fVar2.f63051i = (SimpleDraweeView) viewInflate2.findViewById(R.id.appIcon1);
                fVar2.f63052j = (SimpleDraweeView) viewInflate2.findViewById(R.id.appIcon2);
                fVar2.f63053k = (SimpleDraweeView) viewInflate2.findViewById(R.id.appIcon3);
                fVar2.f63054l = (SimpleDraweeView) viewInflate2.findViewById(R.id.appIcon4);
                fVar2.f63055m = (TextView) viewInflate2.findViewById(R.id.appButn1);
                fVar2.f63056n = (TextView) viewInflate2.findViewById(R.id.appButn2);
                fVar2.f63057o = (TextView) viewInflate2.findViewById(R.id.appButn3);
                fVar2.f63058p = (TextView) viewInflate2.findViewById(R.id.appButn4);
                viewInflate2.setTag(fVar2);
                fVar = fVar2;
                convertView = viewInflate2;
            }
        } else if (itemViewType == 0) {
            gVar = (g) convertView.getTag();
            fVar = null;
        } else if (itemViewType != 1) {
            fVar = null;
        } else {
            fVar = (f) convertView.getTag();
        }
        if (position == 0 && itemViewType == 0) {
            gVar.f63061b.setVisibility(8);
            gVar.f63062c.setVisibility(0);
        } else {
            if (itemViewType == 0 && position == this.f63031c.size()) {
                gVar.f63061b.setVisibility(0);
                gVar.f63062c.setVisibility(8);
                return convertView;
            }
            if (itemViewType == 0) {
                gVar.f63061b.setVisibility(0);
                gVar.f63062c.setVisibility(0);
            }
        }
        l6.c cVar = this.f63031c.get(position);
        if (itemViewType == 0) {
            gVar.f63060a.setText(cVar.b());
        } else if (itemViewType == 1 && (listA = cVar.a()) != null) {
            fVar.f63043a.setVisibility(4);
            fVar.f63044b.setVisibility(4);
            fVar.f63045c.setVisibility(4);
            fVar.f63046d.setVisibility(4);
            for (int i10 = 0; i10 < listA.size(); i10++) {
                CollectionBeanSub collectionBeanSub = listA.get(i10);
                if (i10 == 0) {
                    fVar.f63043a.setVisibility(0);
                    com.join.android.app.common.utils.l.h(fVar.f63051i, collectionBeanSub.getIco_remote());
                    fVar.f63047e.setText(collectionBeanSub.getGame_name());
                    b(collectionBeanSub, fVar.f63055m);
                    fVar.f63055m.setOnClickListener(new e(collectionBeanSub));
                    fVar.f63051i.setOnClickListener(new a(collectionBeanSub));
                } else if (i10 == 1) {
                    fVar.f63044b.setVisibility(0);
                    com.join.android.app.common.utils.l.h(fVar.f63052j, collectionBeanSub.getIco_remote());
                    fVar.f63048f.setText(collectionBeanSub.getGame_name());
                    b(collectionBeanSub, fVar.f63056n);
                    fVar.f63056n.setOnClickListener(new e(collectionBeanSub));
                    fVar.f63052j.setOnClickListener(new b(collectionBeanSub));
                } else if (i10 == 2) {
                    fVar.f63045c.setVisibility(0);
                    com.join.android.app.common.utils.l.h(fVar.f63053k, collectionBeanSub.getIco_remote());
                    fVar.f63049g.setText(collectionBeanSub.getGame_name());
                    b(collectionBeanSub, fVar.f63057o);
                    fVar.f63057o.setOnClickListener(new e(collectionBeanSub));
                    fVar.f63053k.setOnClickListener(new c(collectionBeanSub));
                } else if (i10 == 3) {
                    fVar.f63046d.setVisibility(0);
                    com.join.android.app.common.utils.l.h(fVar.f63054l, collectionBeanSub.getIco_remote());
                    fVar.f63050h.setText(collectionBeanSub.getGame_name());
                    b(collectionBeanSub, fVar.f63058p);
                    fVar.f63058p.setOnClickListener(new e(collectionBeanSub));
                    fVar.f63054l.setOnClickListener(new d(collectionBeanSub));
                }
            }
        }
        return convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }
}
