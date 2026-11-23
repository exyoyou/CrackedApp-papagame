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
public class m2 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LayoutInflater f62748b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f62749c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<l6.a<GameOLFirstBean>> f62750d = new ArrayList(0);

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameOLHeadAdBean f62751b;

        a(final GameOLHeadAdBean val$recomDatabean) {
            this.f62751b = val$recomDatabean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(m2.this.f62749c, this.f62751b.getSub().get(0).getIntentDataBean());
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        GameOLFirstBean f62753b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        l6.a<GameOLFirstBean> f62754c;

        public b(l6.a<GameOLFirstBean> collectionBeanSub) {
            this.f62754c = collectionBeanSub;
            this.f62753b = collectionBeanSub.c();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTaskA = this.f62754c.a();
            if (downloadTaskA == null) {
                if (UtilsMy.p0(this.f62753b.getTag_info())) {
                    if (this.f62753b.getMod_info() != null) {
                        boolean zE = com.join.android.app.common.utils.g.t0(m2.this.f62749c).e(m2.this.f62749c, this.f62753b.getPackage_name());
                        boolean zK = com.join.mgps.va.overmind.i.q().K(this.f62753b.getPackage_name());
                        if (zE || zK) {
                            com.join.android.app.common.utils.g.t0(m2.this.f62749c);
                            APKUtils.a0(m2.this.f62749c, this.f62753b.getMod_info(), this.f62753b.getExtBean());
                            return;
                        }
                    } else if (com.join.android.app.common.utils.g.t0(m2.this.f62749c).e(m2.this.f62749c, this.f62753b.getPackage_name())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(m2.this.f62749c).n(m2.this.f62749c, this.f62753b.getPackage_name());
                        if (!com.join.mgps.Util.t2.i(this.f62753b.getVer()) || aVarN.d() >= Integer.parseInt(this.f62753b.getVer())) {
                            com.join.android.app.common.utils.g.t0(m2.this.f62749c);
                            APKUtils.f0(m2.this.f62749c, this.f62753b.getPackage_name());
                            return;
                        }
                    }
                }
                UtilsMy.b1(m2.this.f62749c, this.f62753b);
                return;
            }
            if (this.f62753b.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f62753b.getDown_url_remote());
                UtilsMy.j3(downloadTaskA, m2.this.f62749c);
                IntentUtil.getInstance().intentActivity(m2.this.f62749c, intentDateBean);
                return;
            }
            int status = downloadTaskA != null ? downloadTaskA.getStatus() : 0;
            GameOLFirstBean gameOLFirstBean = this.f62753b;
            if (gameOLFirstBean != null && UtilsMy.x0(gameOLFirstBean.getPay_tag_info(), this.f62753b.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.l(m2.this.f62749c, downloadTaskA);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.k4(m2.this.f62749c, downloadTaskA);
                            return;
                        }
                        if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (com.join.android.app.common.utils.m.j(m2.this.f62749c)) {
                                        UtilsMy.O4(m2.this.f62749c, downloadTaskA);
                                        return;
                                    } else {
                                        com.join.mgps.Util.a3.b(m2.this.f62749c).d("无网络连接");
                                        return;
                                    }
                                }
                                if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.m.j(m2.this.f62749c)) {
                                                com.join.mgps.Util.a3.b(m2.this.f62749c).d("无网络连接");
                                            } else {
                                                UtilsMy.X2(m2.this.f62749c, downloadTaskA);
                                            }
                                            break;
                                        case 11:
                                            UtilsMy.w4(downloadTaskA, m2.this.f62749c);
                                            break;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(downloadTaskA, m2.this.f62749c);
                    return;
                }
                com.php25.PDownload.d.i(downloadTaskA);
                return;
            }
            GameOLFirstBean gameOLFirstBean2 = this.f62753b;
            if (gameOLFirstBean2 != null) {
                if (UtilsMy.z0(gameOLFirstBean2.getPay_tag_info(), this.f62753b.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(m2.this.f62749c, downloadTaskA.getCrc_link_type_val());
                    return;
                }
                UtilsMy.z1(downloadTaskA, this.f62753b);
                if (UtilsMy.o1(m2.this.f62749c, downloadTaskA)) {
                    return;
                }
                if (this.f62753b.getDown_status() == 5) {
                    UtilsMy.l1(m2.this.f62749c, downloadTaskA);
                } else {
                    UtilsMy.U0(m2.this.f62749c, downloadTaskA, this.f62753b.getTp_down_url(), this.f62753b.getOther_down_switch(), this.f62753b.getCdn_down_switch());
                }
            }
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f62756a;

        c() {
        }
    }

    public class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f62758a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ImageView f62759b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f62760c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ProgressBar f62761d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ProgressBar f62762e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f62763f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private RelativeLayout f62764g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f62765h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private LinearLayout f62766i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f62767j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f62768k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private LinearLayout f62769l;

        public d() {
        }
    }

    class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f62771a;

        e() {
        }
    }

    public m2(Context context) {
        this.f62748b = LayoutInflater.from(context);
        this.f62749c = context;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public l6.a<GameOLFirstBean> getItem(int position) {
        return this.f62750d.get(position);
    }

    public List<l6.a<GameOLFirstBean>> c() {
        return this.f62750d;
    }

    void d(d viewHolderListItem, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            viewHolderListItem.f62766i.setVisibility(8);
            viewHolderListItem.f62762e.setVisibility(8);
            viewHolderListItem.f62761d.setVisibility(8);
            viewHolderListItem.f62763f.setVisibility(0);
            return;
        }
        viewHolderListItem.f62766i.setVisibility(0);
        if (isZip.booleanValue()) {
            viewHolderListItem.f62762e.setVisibility(8);
            viewHolderListItem.f62761d.setVisibility(0);
        } else {
            viewHolderListItem.f62761d.setVisibility(8);
            viewHolderListItem.f62762e.setVisibility(0);
        }
        viewHolderListItem.f62763f.setVisibility(8);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62750d.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return this.f62750d.get(position).d();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:81:0x048e  */
    /* JADX WARN: Code duplicated, block: B:82:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:85:0x04e4 A[Catch: Exception -> 0x0536, TryCatch #1 {Exception -> 0x0536, blocks: (B:83:0x04dc, B:85:0x04e4, B:87:0x052b, B:86:0x0508), top: B:106:0x04dc }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0508 A[Catch: Exception -> 0x0536, TryCatch #1 {Exception -> 0x0536, blocks: (B:83:0x04dc, B:85:0x04e4, B:87:0x052b, B:86:0x0508), top: B:106:0x04dc }] */
    /* JADX WARN: Code duplicated, block: B:99:0x060e  */
    /* JADX WARN: Instruction removed from duplicated block: B:85:0x04e4, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:86:0x0508, please report this as an issue */
    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        c cVar;
        View viewInflate;
        e eVar;
        d dVar;
        d dVar2;
        int itemViewType = getItemViewType(position);
        c cVar2 = null;
        if (convertView == null) {
            if (itemViewType == 0) {
                cVar = new c();
                viewInflate = this.f62748b.inflate(R.layout.gameol_top_ad_layout, (ViewGroup) null);
                cVar.f62756a = (SimpleDraweeView) viewInflate.findViewById(R.id.adImage);
                viewInflate.setTag(cVar);
                dVar2 = null;
                cVar2 = cVar;
                eVar = null;
            } else if (itemViewType == 1) {
                eVar = new e();
                viewInflate = this.f62748b.inflate(R.layout.gameol_top_title_layout, (ViewGroup) null);
                eVar.f62771a = (TextView) viewInflate.findViewById(R.id.titleText);
                viewInflate.setTag(eVar);
                dVar2 = null;
            } else if (itemViewType != 2) {
                viewInflate = convertView;
                eVar = null;
                dVar2 = null;
            } else {
                dVar = new d();
                viewInflate = this.f62748b.inflate(R.layout.app_listview_item, (ViewGroup) null);
                dVar.f62758a = (SimpleDraweeView) viewInflate.findViewById(R.id.mgListviewItemIcon);
                dVar.f62759b = (ImageView) viewInflate.findViewById(R.id.giftPackageSwich);
                dVar.f62760c = (TextView) viewInflate.findViewById(R.id.mgListviewItemAppname);
                dVar.f62764g = (RelativeLayout) viewInflate.findViewById(R.id.rLayoutRight);
                dVar.f62765h = (TextView) viewInflate.findViewById(R.id.mgListviewItemInstall);
                dVar.f62763f = (TextView) viewInflate.findViewById(R.id.mgListviewItemDescribe);
                dVar.f62766i = (LinearLayout) viewInflate.findViewById(R.id.linearLayout2);
                dVar.f62769l = (LinearLayout) viewInflate.findViewById(R.id.tipsLayout);
                dVar.f62767j = (TextView) viewInflate.findViewById(R.id.appSize);
                dVar.f62768k = (TextView) viewInflate.findViewById(R.id.loding_info);
                dVar.f62762e = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
                dVar.f62761d = (ProgressBar) viewInflate.findViewById(R.id.progressBarZip);
                viewInflate.setTag(dVar);
                dVar2 = dVar;
                eVar = null;
            }
        } else if (itemViewType == 0) {
            cVar = (c) convertView.getTag();
            viewInflate = convertView;
            dVar2 = null;
            cVar2 = cVar;
            eVar = null;
        } else if (itemViewType == 1) {
            eVar = (e) convertView.getTag();
            viewInflate = convertView;
            dVar2 = null;
        } else if (itemViewType != 2) {
            viewInflate = convertView;
            eVar = null;
            dVar2 = null;
        } else {
            dVar = (d) convertView.getTag();
            viewInflate = convertView;
            dVar2 = dVar;
            eVar = null;
        }
        if (itemViewType == 0) {
            GameOLHeadAdBean gameOLHeadAdBeanB = this.f62750d.get(position).b();
            com.join.android.app.common.utils.l.d(cVar2.f62756a, R.drawable.banner_normal_icon, gameOLHeadAdBeanB.getMain().getPic_remote());
            cVar2.f62756a.setOnClickListener(new a(gameOLHeadAdBeanB));
        } else if (itemViewType == 1) {
            eVar.f62771a.setText(this.f62750d.get(position).e());
        } else if (itemViewType == 2) {
            l6.a<GameOLFirstBean> aVar = this.f62750d.get(position);
            GameOLFirstBean gameOLFirstBeanC = aVar.c();
            com.join.android.app.common.utils.l.d(dVar2.f62758a, R.drawable.main_normal_icon, gameOLFirstBeanC.getIco_remote());
            if (gameOLFirstBeanC.getGift_package_switch() == 1) {
                dVar2.f62759b.setVisibility(0);
            } else {
                dVar2.f62759b.setVisibility(8);
            }
            dVar2.f62760c.setText(gameOLFirstBeanC.getGame_name());
            dVar2.f62763f.setText(gameOLFirstBeanC.getInfo());
            long j10 = (long) (Double.parseDouble(gameOLFirstBeanC.getSize()) * 1024.0d * 1024.0d);
            UtilsMy.K(gameOLFirstBeanC.getScore(), gameOLFirstBeanC.getDown_count(), gameOLFirstBeanC.getSize(), gameOLFirstBeanC.getSp_tag_info(), gameOLFirstBeanC.getTag_info(), dVar2.f62769l, this.f62749c);
            UtilsMy.A3(gameOLFirstBeanC.getSp_tag_info(), viewInflate, aVar.a());
            DownloadTask downloadTaskA = aVar.a();
            dVar2.f62765h.setText("");
            if (gameOLFirstBeanC.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                dVar2.f62765h.setBackgroundResource(R.drawable.recom_blue_butn);
                dVar2.f62765h.setText("开始");
                dVar2.f62765h.setTextColor(this.f62749c.getResources().getColor(R.color.app_blue_color));
                dVar2.f62759b.setVisibility(8);
            } else if (downloadTaskA == null) {
                d(dVar2, Boolean.TRUE, Boolean.FALSE);
                if (UtilsMy.p0(gameOLFirstBeanC.getTag_info()) && com.join.android.app.common.utils.g.t0(this.f62749c).e(this.f62749c, gameOLFirstBeanC.getPackage_name()) && UtilsMy.x0(gameOLFirstBeanC.getPay_tag_info(), gameOLFirstBeanC.getCrc_sign_id()) == 0) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f62749c).n(this.f62749c, gameOLFirstBeanC.getPackage_name());
                    if (!com.join.mgps.Util.t2.i(gameOLFirstBeanC.getVer()) || aVarN.d() >= Integer.parseInt(gameOLFirstBeanC.getVer())) {
                        dVar2.f62765h.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        dVar2.f62765h.setText(this.f62749c.getResources().getString(R.string.download_status_finished));
                        dVar2.f62765h.setTextColor(-688602);
                    } else {
                        dVar2.f62765h.setBackgroundResource(R.drawable.recom_green_butn);
                        dVar2.f62765h.setText("更新");
                        dVar2.f62765h.setTextColor(-9263087);
                    }
                } else {
                    dVar2.f62765h.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.x0(gameOLFirstBeanC.getPay_tag_info(), gameOLFirstBeanC.getCrc_sign_id());
                    UtilsMy.p3(dVar2.f62765h, dVar2.f62764g, gameOLFirstBeanC);
                }
            } else {
                com.join.mgps.Util.g1.d("infoo", downloadTaskA.getStatus() + " dd " + downloadTaskA.getShowName());
                int status = downloadTaskA.getStatus();
                if (UtilsMy.x0(gameOLFirstBeanC.getPay_tag_info(), gameOLFirstBeanC.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status == 0) {
                    dVar2.f62765h.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.x0(gameOLFirstBeanC.getPay_tag_info(), gameOLFirstBeanC.getCrc_sign_id());
                    UtilsMy.p3(dVar2.f62765h, dVar2.f62764g, gameOLFirstBeanC);
                    d(dVar2, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 27) {
                    dVar2.f62765h.setText("暂停中");
                } else if (status == 48) {
                    dVar2.f62765h.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar2.f62765h.setText("安装中");
                    dVar2.f62765h.setTextColor(this.f62749c.getResources().getColor(R.color.app_blue_color));
                    d(dVar2, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 2) {
                    UtilsMy.U4(downloadTaskA);
                    dVar2.f62765h.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar2.f62765h.setText("暂停");
                    dVar2.f62765h.setTextColor(-12941854);
                    Boolean bool = Boolean.FALSE;
                    d(dVar2, bool, bool);
                    if (downloadTaskA.getSize() == 0) {
                        dVar2.f62767j.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        dVar2.f62767j.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    dVar2.f62762e.setProgress((int) downloadTaskA.getProgress());
                    String speed = downloadTaskA.getSpeed();
                    dVar2.f62768k.setText(speed + "/S");
                } else if (status == 3) {
                    dVar2.f62765h.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar2.f62765h.setText("继续");
                    dVar2.f62765h.setTextColor(-12941854);
                    Boolean bool2 = Boolean.FALSE;
                    d(dVar2, bool2, bool2);
                    try {
                        if (downloadTaskA.getSize() == 0) {
                            dVar2.f62767j.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        } else {
                            dVar2.f62767j.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        }
                        dVar2.f62762e.setProgress((int) downloadTaskA.getProgress());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    dVar2.f62768k.setText("暂停中");
                } else if (status == 5) {
                    dVar2.f62765h.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    dVar2.f62765h.setText(this.f62749c.getResources().getString(R.string.download_status_finished));
                    dVar2.f62765h.setTextColor(-688602);
                    Boolean bool3 = Boolean.TRUE;
                    d(dVar2, bool3, bool3);
                } else if (status == 6) {
                    dVar2.f62765h.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar2.f62765h.setText("继续");
                    dVar2.f62765h.setTextColor(-12941854);
                    Boolean bool4 = Boolean.FALSE;
                    d(dVar2, bool4, bool4);
                    if (downloadTaskA.getSize() == 0) {
                        dVar2.f62767j.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        dVar2.f62767j.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    dVar2.f62762e.setProgress((int) downloadTaskA.getProgress());
                    dVar2.f62768k.setText("暂停中");
                } else if (status == 7) {
                    dVar2.f62765h.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.x0(gameOLFirstBeanC.getPay_tag_info(), gameOLFirstBeanC.getCrc_sign_id());
                    UtilsMy.p3(dVar2.f62765h, dVar2.f62764g, gameOLFirstBeanC);
                    d(dVar2, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 42) {
                    dVar2.f62765h.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    dVar2.f62765h.setText(this.f62749c.getResources().getString(R.string.download_status_finished));
                    dVar2.f62765h.setTextColor(-688602);
                    Boolean bool5 = Boolean.TRUE;
                    d(dVar2, bool5, bool5);
                } else if (status != 43) {
                    switch (status) {
                        case 9:
                            dVar2.f62765h.setBackgroundResource(R.drawable.recom_green_butn);
                            dVar2.f62765h.setText("更新");
                            dVar2.f62765h.setTextColor(-9263087);
                            d(dVar2, Boolean.TRUE, Boolean.FALSE);
                            break;
                        case 10:
                            dVar2.f62765h.setBackgroundResource(R.drawable.recom_blue_butn);
                            dVar2.f62765h.setText("等待");
                            dVar2.f62765h.setTextColor(-12941854);
                            Boolean bool6 = Boolean.FALSE;
                            d(dVar2, bool6, bool6);
                            dVar2.f62767j.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            try {
                                dVar2.f62762e.setProgress((int) downloadTaskA.getProgress());
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                            dVar2.f62768k.setText("等待中");
                            break;
                        case 11:
                            dVar2.f62765h.setBackgroundResource(R.drawable.recom_green_butn);
                            dVar2.f62765h.setText("安装");
                            dVar2.f62765h.setTextColor(-9263087);
                            d(dVar2, Boolean.TRUE, Boolean.FALSE);
                            break;
                        case 12:
                            d(dVar2, Boolean.FALSE, Boolean.TRUE);
                            dVar2.f62767j.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            dVar2.f62768k.setText("解压中..");
                            dVar2.f62761d.setProgress((int) downloadTaskA.getProgress());
                            dVar2.f62765h.setBackgroundResource(R.drawable.extract);
                            dVar2.f62765h.setText("解压中");
                            dVar2.f62765h.setTextColor(-4868683);
                            break;
                        case 13:
                            d(dVar2, Boolean.FALSE, Boolean.TRUE);
                            dVar2.f62767j.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            dVar2.f62768k.setText("点击重新解压");
                            dVar2.f62761d.setProgress((int) downloadTaskA.getProgress());
                            dVar2.f62765h.setBackgroundResource(R.drawable.reextract);
                            dVar2.f62765h.setText("解压");
                            dVar2.f62765h.setTextColor(-12941854);
                            break;
                    }
                } else {
                    dVar2.f62765h.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.x0(gameOLFirstBeanC.getPay_tag_info(), gameOLFirstBeanC.getCrc_sign_id());
                    UtilsMy.p3(dVar2.f62765h, dVar2.f62764g, gameOLFirstBeanC);
                    d(dVar2, Boolean.TRUE, Boolean.FALSE);
                }
            }
            dVar2.f62764g.setOnClickListener(new b(aVar));
        }
        return viewInflate;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }
}
