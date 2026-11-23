package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.GameOLFirstBean;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class j2 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LayoutInflater f62461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f62462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<l6.a<GameOLFirstBean>> f62463d = new ArrayList(0);

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameOLHeadAdBean f62464b;

        a(final GameOLHeadAdBean val$recomDatabean) {
            this.f62464b = val$recomDatabean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(j2.this.f62462c, this.f62464b.getSub().get(0).getIntentDataBean());
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        GameOLFirstBean f62467b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        l6.a<GameOLFirstBean> f62468c;

        public c(l6.a<GameOLFirstBean> collectionBeanSub) {
            this.f62468c = collectionBeanSub;
            this.f62467b = collectionBeanSub.c();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTaskA = this.f62468c.a();
            if (downloadTaskA == null) {
                if (UtilsMy.p0(this.f62467b.getTag_info())) {
                    if (this.f62467b.getMod_info() != null) {
                        boolean zE = com.join.android.app.common.utils.g.t0(j2.this.f62462c).e(j2.this.f62462c, this.f62467b.getPackage_name());
                        boolean zK = com.join.mgps.va.overmind.i.q().K(this.f62467b.getPackage_name());
                        if (zE || zK) {
                            com.join.android.app.common.utils.g.t0(j2.this.f62462c);
                            APKUtils.a0(j2.this.f62462c, this.f62467b.getMod_info(), this.f62467b.getExtBean());
                            return;
                        }
                    } else if (com.join.android.app.common.utils.g.t0(j2.this.f62462c).e(j2.this.f62462c, this.f62467b.getPackage_name())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(j2.this.f62462c).n(j2.this.f62462c, this.f62467b.getPackage_name());
                        if (!com.join.mgps.Util.t2.i(this.f62467b.getVer()) || aVarN.d() >= Integer.parseInt(this.f62467b.getVer())) {
                            com.join.android.app.common.utils.g.t0(j2.this.f62462c);
                            APKUtils.f0(j2.this.f62462c, this.f62467b.getPackage_name());
                            return;
                        }
                    }
                }
                UtilsMy.b1(j2.this.f62462c, this.f62467b);
                return;
            }
            if (this.f62467b.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f62467b.getDown_url_remote());
                UtilsMy.j3(downloadTaskA, j2.this.f62462c);
                IntentUtil.getInstance().intentActivity(j2.this.f62462c, intentDateBean);
                return;
            }
            int status = downloadTaskA != null ? downloadTaskA.getStatus() : 0;
            GameOLFirstBean gameOLFirstBean = this.f62467b;
            if (gameOLFirstBean != null && UtilsMy.x0(gameOLFirstBean.getPay_tag_info(), this.f62467b.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.l(j2.this.f62462c, downloadTaskA);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.k4(j2.this.f62462c, downloadTaskA);
                            return;
                        }
                        if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (com.join.android.app.common.utils.m.j(j2.this.f62462c)) {
                                        UtilsMy.O4(j2.this.f62462c, downloadTaskA);
                                        return;
                                    } else {
                                        com.join.mgps.Util.a3.b(j2.this.f62462c).d("无网络连接");
                                        return;
                                    }
                                }
                                if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.m.j(j2.this.f62462c)) {
                                                com.join.mgps.Util.a3.b(j2.this.f62462c).d("无网络连接");
                                            } else {
                                                UtilsMy.X2(j2.this.f62462c, downloadTaskA);
                                            }
                                            break;
                                        case 11:
                                            UtilsMy.w4(downloadTaskA, j2.this.f62462c);
                                            break;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(downloadTaskA, j2.this.f62462c);
                    return;
                }
                com.php25.PDownload.d.i(downloadTaskA);
                return;
            }
            GameOLFirstBean gameOLFirstBean2 = this.f62467b;
            if (gameOLFirstBean2 != null) {
                if (UtilsMy.z0(gameOLFirstBean2.getPay_tag_info(), this.f62467b.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(j2.this.f62462c, downloadTaskA.getCrc_link_type_val());
                    return;
                }
                UtilsMy.z1(downloadTaskA, this.f62467b);
                if (UtilsMy.o1(j2.this.f62462c, downloadTaskA)) {
                    return;
                }
                if (this.f62467b.getDown_status() == 5) {
                    UtilsMy.l1(j2.this.f62462c, downloadTaskA);
                } else {
                    UtilsMy.U0(j2.this.f62462c, downloadTaskA, this.f62467b.getTp_down_url(), this.f62467b.getOther_down_switch(), this.f62467b.getCdn_down_switch());
                }
            }
        }
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f62470a;

        d() {
        }
    }

    public class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f62472a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ImageView f62473b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f62474c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ProgressBar f62475d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ProgressBar f62476e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f62477f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f62478g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private RelativeLayout f62479h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f62480i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private LinearLayout f62481j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f62482k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public TextView f62483l;

        public e() {
        }
    }

    class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f62485a;

        f() {
        }
    }

    public j2(Context context) {
        this.f62461b = LayoutInflater.from(context);
        this.f62462c = context;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public l6.a<GameOLFirstBean> getItem(int position) {
        return this.f62463d.get(position);
    }

    public List<l6.a<GameOLFirstBean>> c() {
        return this.f62463d;
    }

    void d(e viewHolderListItem, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            viewHolderListItem.f62481j.setVisibility(8);
            viewHolderListItem.f62476e.setVisibility(8);
            viewHolderListItem.f62475d.setVisibility(8);
            viewHolderListItem.f62477f.setVisibility(0);
            viewHolderListItem.f62478g.setVisibility(0);
            return;
        }
        viewHolderListItem.f62481j.setVisibility(0);
        if (isZip.booleanValue()) {
            viewHolderListItem.f62476e.setVisibility(8);
            viewHolderListItem.f62475d.setVisibility(0);
        } else {
            viewHolderListItem.f62475d.setVisibility(8);
            viewHolderListItem.f62476e.setVisibility(0);
        }
        viewHolderListItem.f62477f.setVisibility(8);
        viewHolderListItem.f62478g.setVisibility(8);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62463d.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return this.f62463d.get(position).d();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x060d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:82:0x0497  */
    /* JADX WARN: Code duplicated, block: B:83:0x04c6  */
    /* JADX WARN: Code duplicated, block: B:86:0x04ed A[Catch: Exception -> 0x053f, TryCatch #0 {Exception -> 0x053f, blocks: (B:84:0x04e5, B:86:0x04ed, B:88:0x0534, B:87:0x0511), top: B:105:0x04e5 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0511 A[Catch: Exception -> 0x053f, TryCatch #0 {Exception -> 0x053f, blocks: (B:84:0x04e5, B:86:0x04ed, B:88:0x0534, B:87:0x0511), top: B:105:0x04e5 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:86:0x04ed, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:87:0x0511, please report this as an issue */
    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        d dVar;
        View viewInflate;
        f fVar;
        e eVar;
        e eVar2;
        int itemViewType = getItemViewType(position);
        d dVar2 = null;
        if (convertView == null) {
            if (itemViewType == 0) {
                dVar = new d();
                viewInflate = this.f62461b.inflate(R.layout.gameol_top_ad_layout, (ViewGroup) null);
                dVar.f62470a = (SimpleDraweeView) viewInflate.findViewById(R.id.adImage);
                viewInflate.setTag(dVar);
                eVar2 = null;
                dVar2 = dVar;
                fVar = null;
            } else if (itemViewType == 1) {
                fVar = new f();
                viewInflate = this.f62461b.inflate(R.layout.gameol_top_title_layout, (ViewGroup) null);
                fVar.f62485a = (TextView) viewInflate.findViewById(R.id.titleText);
                viewInflate.setTag(fVar);
                eVar2 = null;
            } else if (itemViewType != 2) {
                viewInflate = convertView;
                fVar = null;
                eVar2 = null;
            } else {
                eVar = new e();
                viewInflate = this.f62461b.inflate(R.layout.gameol_first_listview_item, (ViewGroup) null);
                eVar.f62472a = (SimpleDraweeView) viewInflate.findViewById(R.id.mgListviewItemIcon);
                eVar.f62473b = (ImageView) viewInflate.findViewById(R.id.giftPackageSwich);
                eVar.f62474c = (TextView) viewInflate.findViewById(R.id.mgListviewItemAppname);
                eVar.f62475d = (ProgressBar) viewInflate.findViewById(R.id.progressBarZip);
                eVar.f62476e = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
                eVar.f62477f = (TextView) viewInflate.findViewById(R.id.privilege);
                eVar.f62478g = (TextView) viewInflate.findViewById(R.id.mgListviewItemDescribe);
                eVar.f62479h = (RelativeLayout) viewInflate.findViewById(R.id.rLayoutRight);
                eVar.f62480i = (TextView) viewInflate.findViewById(R.id.mgListviewItemInstall);
                eVar.f62481j = (LinearLayout) viewInflate.findViewById(R.id.linearLayout2);
                eVar.f62482k = (TextView) viewInflate.findViewById(R.id.appSize);
                eVar.f62483l = (TextView) viewInflate.findViewById(R.id.loding_info);
                viewInflate.setTag(eVar);
                eVar2 = eVar;
                fVar = null;
            }
        } else if (itemViewType == 0) {
            dVar = (d) convertView.getTag();
            viewInflate = convertView;
            eVar2 = null;
            dVar2 = dVar;
            fVar = null;
        } else if (itemViewType == 1) {
            fVar = (f) convertView.getTag();
            viewInflate = convertView;
            eVar2 = null;
        } else if (itemViewType != 2) {
            viewInflate = convertView;
            fVar = null;
            eVar2 = null;
        } else {
            eVar = (e) convertView.getTag();
            viewInflate = convertView;
            eVar2 = eVar;
            fVar = null;
        }
        if (itemViewType == 0) {
            GameOLHeadAdBean gameOLHeadAdBeanB = this.f62463d.get(position).b();
            com.join.android.app.common.utils.l.d(dVar2.f62470a, R.drawable.banner_normal_icon, gameOLHeadAdBeanB.getMain().getPic_remote());
            dVar2.f62470a.setOnClickListener(new a(gameOLHeadAdBeanB));
        } else if (itemViewType == 1) {
            fVar.f62485a.setText(this.f62463d.get(position).e());
        } else if (itemViewType == 2) {
            l6.a<GameOLFirstBean> aVar = this.f62463d.get(position);
            GameOLFirstBean gameOLFirstBeanC = aVar.c();
            com.join.android.app.common.utils.l.d(eVar2.f62472a, R.drawable.banner_normal_icon, gameOLFirstBeanC.getIco_remote());
            if (gameOLFirstBeanC.getGift_package_switch() == 1) {
                eVar2.f62473b.setVisibility(0);
            } else {
                eVar2.f62473b.setVisibility(8);
            }
            eVar2.f62474c.setText(gameOLFirstBeanC.getGame_name());
            eVar2.f62478g.setText(gameOLFirstBeanC.getInfo());
            eVar2.f62477f.setText("悟饭特权：" + gameOLFirstBeanC.getPapa_privilege());
            eVar2.f62479h.setOnClickListener(new b());
            long j10 = (long) (Double.parseDouble(gameOLFirstBeanC.getSize()) * 1024.0d * 1024.0d);
            DownloadTask downloadTaskA = aVar.a();
            eVar2.f62480i.setText("");
            UtilsMy.A3(gameOLFirstBeanC.getSp_tag_info(), viewInflate, downloadTaskA);
            if (gameOLFirstBeanC.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                eVar2.f62480i.setBackgroundResource(R.drawable.recom_blue_butn);
                eVar2.f62480i.setText("开始");
                eVar2.f62480i.setTextColor(this.f62462c.getResources().getColor(R.color.app_blue_color));
                eVar2.f62473b.setVisibility(8);
            } else if (downloadTaskA == null) {
                d(eVar2, Boolean.TRUE, Boolean.FALSE);
                if (UtilsMy.p0(gameOLFirstBeanC.getTag_info()) && com.join.android.app.common.utils.g.t0(this.f62462c).e(this.f62462c, gameOLFirstBeanC.getPackage_name()) && UtilsMy.x0(gameOLFirstBeanC.getPay_tag_info(), gameOLFirstBeanC.getCrc_sign_id()) == 0) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f62462c).n(this.f62462c, gameOLFirstBeanC.getPackage_name());
                    if (!com.join.mgps.Util.t2.i(gameOLFirstBeanC.getVer()) || aVarN.d() >= Integer.parseInt(gameOLFirstBeanC.getVer())) {
                        eVar2.f62480i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        eVar2.f62480i.setText(eVar2.f62480i.getResources().getString(R.string.download_status_finished));
                        eVar2.f62480i.setTextColor(-688602);
                    } else {
                        eVar2.f62480i.setBackgroundResource(R.drawable.recom_green_butn);
                        eVar2.f62480i.setText("更新");
                        eVar2.f62480i.setTextColor(-9263087);
                    }
                } else {
                    eVar2.f62480i.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.x0(gameOLFirstBeanC.getPay_tag_info(), gameOLFirstBeanC.getCrc_sign_id());
                    UtilsMy.p3(eVar2.f62480i, eVar2.f62479h, gameOLFirstBeanC);
                }
            } else {
                com.join.mgps.Util.g1.d("infoo", downloadTaskA.getStatus() + " dd " + downloadTaskA.getShowName());
                int status = downloadTaskA.getStatus();
                if (UtilsMy.x0(gameOLFirstBeanC.getPay_tag_info(), gameOLFirstBeanC.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status == 0) {
                    eVar2.f62480i.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.x0(gameOLFirstBeanC.getPay_tag_info(), gameOLFirstBeanC.getCrc_sign_id());
                    UtilsMy.p3(eVar2.f62480i, eVar2.f62479h, gameOLFirstBeanC);
                    d(eVar2, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 27) {
                    eVar2.f62480i.setText("暂停中");
                } else if (status == 48) {
                    eVar2.f62480i.setBackgroundResource(R.drawable.recom_blue_butn);
                    eVar2.f62480i.setText("安装中");
                    eVar2.f62480i.setTextColor(-9263087);
                    d(eVar2, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 2) {
                    UtilsMy.U4(downloadTaskA);
                    eVar2.f62480i.setBackgroundResource(R.drawable.recom_blue_butn);
                    eVar2.f62480i.setText("暂停");
                    eVar2.f62480i.setTextColor(-12941854);
                    Boolean bool = Boolean.FALSE;
                    d(eVar2, bool, bool);
                    if (downloadTaskA.getSize() == 0) {
                        eVar2.f62482k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        eVar2.f62482k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    eVar2.f62476e.setProgress((int) downloadTaskA.getProgress());
                    String speed = downloadTaskA.getSpeed();
                    eVar2.f62483l.setText(speed + "/S");
                } else if (status == 3) {
                    eVar2.f62480i.setBackgroundResource(R.drawable.recom_blue_butn);
                    eVar2.f62480i.setText("继续");
                    eVar2.f62480i.setTextColor(-12941854);
                    Boolean bool2 = Boolean.FALSE;
                    d(eVar2, bool2, bool2);
                    try {
                        if (downloadTaskA.getSize() == 0) {
                            eVar2.f62482k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        } else {
                            eVar2.f62482k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        }
                        eVar2.f62476e.setProgress((int) downloadTaskA.getProgress());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    eVar2.f62483l.setText("暂停中");
                } else if (status == 5) {
                    eVar2.f62480i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    eVar2.f62480i.setText(this.f62462c.getResources().getString(R.string.download_status_finished));
                    eVar2.f62480i.setTextColor(-688602);
                    Boolean bool3 = Boolean.TRUE;
                    d(eVar2, bool3, bool3);
                } else if (status == 6) {
                    eVar2.f62480i.setBackgroundResource(R.drawable.recom_blue_butn);
                    eVar2.f62480i.setText("继续");
                    eVar2.f62480i.setTextColor(-12941854);
                    Boolean bool4 = Boolean.FALSE;
                    d(eVar2, bool4, bool4);
                    if (downloadTaskA.getSize() == 0) {
                        eVar2.f62482k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        eVar2.f62482k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    eVar2.f62476e.setProgress((int) downloadTaskA.getProgress());
                    eVar2.f62483l.setText("暂停中");
                } else if (status == 7) {
                    eVar2.f62480i.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.x0(gameOLFirstBeanC.getPay_tag_info(), gameOLFirstBeanC.getCrc_sign_id());
                    UtilsMy.p3(eVar2.f62480i, eVar2.f62479h, gameOLFirstBeanC);
                    d(eVar2, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 42) {
                    eVar2.f62480i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    eVar2.f62480i.setText(this.f62462c.getResources().getString(R.string.download_status_finished));
                    eVar2.f62480i.setTextColor(-688602);
                    Boolean bool5 = Boolean.TRUE;
                    d(eVar2, bool5, bool5);
                } else if (status != 43) {
                    switch (status) {
                        case 9:
                            eVar2.f62480i.setBackgroundResource(R.drawable.recom_green_butn);
                            eVar2.f62480i.setText("更新");
                            eVar2.f62480i.setTextColor(-9263087);
                            d(eVar2, Boolean.TRUE, Boolean.FALSE);
                            break;
                        case 10:
                            eVar2.f62480i.setBackgroundResource(R.drawable.recom_blue_butn);
                            eVar2.f62480i.setText("等待");
                            eVar2.f62480i.setTextColor(-12941854);
                            Boolean bool6 = Boolean.FALSE;
                            d(eVar2, bool6, bool6);
                            eVar2.f62482k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            try {
                                eVar2.f62476e.setProgress((int) downloadTaskA.getProgress());
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                            eVar2.f62483l.setText("等待中");
                            break;
                        case 11:
                            eVar2.f62480i.setBackgroundResource(R.drawable.recom_green_butn);
                            eVar2.f62480i.setText("安装");
                            eVar2.f62480i.setTextColor(-9263087);
                            d(eVar2, Boolean.TRUE, Boolean.FALSE);
                            break;
                        case 12:
                            d(eVar2, Boolean.FALSE, Boolean.TRUE);
                            eVar2.f62482k.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            eVar2.f62483l.setText("解压中..");
                            eVar2.f62475d.setProgress((int) downloadTaskA.getProgress());
                            eVar2.f62480i.setBackgroundResource(R.drawable.extract);
                            eVar2.f62480i.setText("解压中");
                            eVar2.f62480i.setTextColor(-4868683);
                            break;
                        case 13:
                            d(eVar2, Boolean.FALSE, Boolean.TRUE);
                            eVar2.f62482k.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            eVar2.f62483l.setText("点击重新解压");
                            eVar2.f62475d.setProgress((int) downloadTaskA.getProgress());
                            eVar2.f62480i.setBackgroundResource(R.drawable.reextract);
                            eVar2.f62480i.setText("解压");
                            eVar2.f62480i.setTextColor(-12941854);
                            break;
                    }
                } else {
                    eVar2.f62480i.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.x0(gameOLFirstBeanC.getPay_tag_info(), gameOLFirstBeanC.getCrc_sign_id());
                    UtilsMy.p3(eVar2.f62480i, eVar2.f62479h, gameOLFirstBeanC);
                    d(eVar2, Boolean.TRUE, Boolean.FALSE);
                }
            }
            eVar2.f62479h.setOnClickListener(new c(aVar));
        }
        return viewInflate;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }
}
