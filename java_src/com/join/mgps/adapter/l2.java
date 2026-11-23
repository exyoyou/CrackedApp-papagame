package com.join.mgps.adapter;

import android.content.Context;
import android.text.Html;
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
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.GameOLNoOpenTestBean;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class l2 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LayoutInflater f62658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f62659c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<l6.a<GameOLNoOpenTestBean>> f62660d = new ArrayList(0);

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameOLHeadAdBean f62661b;

        a(final GameOLHeadAdBean val$recomDatabean) {
            this.f62661b = val$recomDatabean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(l2.this.f62659c, this.f62661b.getSub().get(0).getIntentDataBean());
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        GameOLNoOpenTestBean f62663b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        l6.a<GameOLNoOpenTestBean> f62664c;

        public b(l6.a<GameOLNoOpenTestBean> collectionBeanSub) {
            this.f62664c = collectionBeanSub;
            this.f62663b = collectionBeanSub.c();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTaskA = this.f62664c.a();
            if (downloadTaskA == null) {
                if (UtilsMy.p0(this.f62663b.getTag_info())) {
                    if (this.f62663b.getMod_info() != null) {
                        boolean zE = com.join.android.app.common.utils.g.t0(l2.this.f62659c).e(l2.this.f62659c, this.f62663b.getPackage_name());
                        boolean zK = com.join.mgps.va.overmind.i.q().K(this.f62663b.getPackage_name());
                        if (zE || zK) {
                            com.join.android.app.common.utils.g.t0(l2.this.f62659c);
                            APKUtils.a0(l2.this.f62659c, this.f62663b.getMod_info(), this.f62663b.getExtBean());
                            return;
                        }
                    } else if (com.join.android.app.common.utils.g.t0(l2.this.f62659c).e(l2.this.f62659c, this.f62663b.getPackage_name())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(l2.this.f62659c).n(l2.this.f62659c, this.f62663b.getPackage_name());
                        if (!com.join.mgps.Util.t2.i(this.f62663b.getVer()) || aVarN.d() >= Integer.parseInt(this.f62663b.getVer())) {
                            com.join.android.app.common.utils.g.t0(l2.this.f62659c);
                            APKUtils.f0(l2.this.f62659c, this.f62663b.getPackage_name());
                            return;
                        }
                    }
                }
                UtilsMy.b1(l2.this.f62659c, this.f62663b);
                return;
            }
            if (this.f62663b.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f62663b.getDown_url_remote());
                UtilsMy.j3(downloadTaskA, l2.this.f62659c);
                IntentUtil.getInstance().intentActivity(l2.this.f62659c, intentDateBean);
                return;
            }
            int status = downloadTaskA != null ? downloadTaskA.getStatus() : 0;
            GameOLNoOpenTestBean gameOLNoOpenTestBean = this.f62663b;
            if (gameOLNoOpenTestBean != null && UtilsMy.x0(gameOLNoOpenTestBean.getPay_tag_info(), this.f62663b.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.l(l2.this.f62659c, downloadTaskA);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.k4(l2.this.f62659c, downloadTaskA);
                            return;
                        }
                        if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (com.join.android.app.common.utils.m.j(l2.this.f62659c)) {
                                        UtilsMy.O4(l2.this.f62659c, downloadTaskA);
                                        return;
                                    } else {
                                        com.join.mgps.Util.a3.b(l2.this.f62659c).d("无网络连接");
                                        return;
                                    }
                                }
                                if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.m.j(l2.this.f62659c)) {
                                                com.join.mgps.Util.a3.b(l2.this.f62659c).d("无网络连接");
                                            } else {
                                                UtilsMy.X2(l2.this.f62659c, downloadTaskA);
                                            }
                                            break;
                                        case 11:
                                            UtilsMy.w4(downloadTaskA, l2.this.f62659c);
                                            break;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(downloadTaskA, l2.this.f62659c);
                    return;
                }
                com.php25.PDownload.d.i(downloadTaskA);
                return;
            }
            GameOLNoOpenTestBean gameOLNoOpenTestBean2 = this.f62663b;
            if (gameOLNoOpenTestBean2 != null) {
                if (UtilsMy.z0(gameOLNoOpenTestBean2.getPay_tag_info(), this.f62663b.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(l2.this.f62659c, downloadTaskA.getCrc_link_type_val());
                    return;
                }
                UtilsMy.z1(downloadTaskA, this.f62663b);
                if (UtilsMy.o1(l2.this.f62659c, downloadTaskA)) {
                    return;
                }
                if (this.f62663b.getDown_status() == 5) {
                    UtilsMy.l1(l2.this.f62659c, downloadTaskA);
                } else {
                    UtilsMy.U0(l2.this.f62659c, downloadTaskA, this.f62663b.getTp_down_url(), this.f62663b.getOther_down_switch(), this.f62663b.getCdn_down_switch());
                }
            }
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f62666a;

        c() {
        }
    }

    public class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f62668a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ImageView f62669b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f62670c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ProgressBar f62671d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ProgressBar f62672e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f62673f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f62674g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private RelativeLayout f62675h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f62676i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private LinearLayout f62677j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f62678k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public TextView f62679l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private TextView f62680m;

        public d() {
        }
    }

    class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f62682a;

        e() {
        }
    }

    public l2(Context context) {
        this.f62658b = LayoutInflater.from(context);
        this.f62659c = context;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public l6.a<GameOLNoOpenTestBean> getItem(int position) {
        return this.f62660d.get(position);
    }

    public List<l6.a<GameOLNoOpenTestBean>> c() {
        return this.f62660d;
    }

    void d(d viewHolderListItem, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            viewHolderListItem.f62677j.setVisibility(8);
            viewHolderListItem.f62672e.setVisibility(8);
            viewHolderListItem.f62671d.setVisibility(8);
            viewHolderListItem.f62673f.setVisibility(0);
            viewHolderListItem.f62674g.setVisibility(0);
            viewHolderListItem.f62680m.setVisibility(0);
            return;
        }
        viewHolderListItem.f62677j.setVisibility(0);
        if (isZip.booleanValue()) {
            viewHolderListItem.f62672e.setVisibility(8);
            viewHolderListItem.f62671d.setVisibility(0);
        } else {
            viewHolderListItem.f62671d.setVisibility(8);
            viewHolderListItem.f62672e.setVisibility(0);
        }
        viewHolderListItem.f62673f.setVisibility(8);
        viewHolderListItem.f62674g.setVisibility(8);
        viewHolderListItem.f62680m.setVisibility(8);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62660d.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return this.f62660d.get(position).d();
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0664  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:84:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:85:0x0520  */
    /* JADX WARN: Code duplicated, block: B:88:0x0547 A[Catch: Exception -> 0x0599, TryCatch #0 {Exception -> 0x0599, blocks: (B:86:0x053f, B:88:0x0547, B:90:0x058e, B:89:0x056b), top: B:107:0x053f }] */
    /* JADX WARN: Code duplicated, block: B:89:0x056b A[Catch: Exception -> 0x0599, TryCatch #0 {Exception -> 0x0599, blocks: (B:86:0x053f, B:88:0x0547, B:90:0x058e, B:89:0x056b), top: B:107:0x053f }] */
    /* JADX WARN: Instruction removed from duplicated block: B:88:0x0547, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:89:0x056b, please report this as an issue */
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
                viewInflate = this.f62658b.inflate(R.layout.gameol_top_ad_layout, (ViewGroup) null);
                cVar.f62666a = (SimpleDraweeView) viewInflate.findViewById(R.id.adImage);
                viewInflate.setTag(cVar);
                dVar2 = null;
                cVar2 = cVar;
                eVar = null;
            } else if (itemViewType == 1) {
                eVar = new e();
                viewInflate = this.f62658b.inflate(R.layout.gameol_top_title_layout, (ViewGroup) null);
                eVar.f62682a = (TextView) viewInflate.findViewById(R.id.titleText);
                viewInflate.setTag(eVar);
                dVar2 = null;
            } else if (itemViewType != 2) {
                viewInflate = convertView;
                eVar = null;
                dVar2 = null;
            } else {
                dVar = new d();
                viewInflate = this.f62658b.inflate(R.layout.gameol_noopentest_listview_item, (ViewGroup) null);
                dVar.f62668a = (SimpleDraweeView) viewInflate.findViewById(R.id.mgListviewItemIcon);
                dVar.f62669b = (ImageView) viewInflate.findViewById(R.id.giftPackageSwich);
                dVar.f62670c = (TextView) viewInflate.findViewById(R.id.mgListviewItemAppname);
                dVar.f62671d = (ProgressBar) viewInflate.findViewById(R.id.progressBarZip);
                dVar.f62672e = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
                dVar.f62673f = (TextView) viewInflate.findViewById(R.id.privilege);
                dVar.f62674g = (TextView) viewInflate.findViewById(R.id.testTime);
                dVar.f62680m = (TextView) viewInflate.findViewById(R.id.statues);
                dVar.f62675h = (RelativeLayout) viewInflate.findViewById(R.id.rLayoutRight);
                dVar.f62676i = (TextView) viewInflate.findViewById(R.id.mgListviewItemInstall);
                dVar.f62677j = (LinearLayout) viewInflate.findViewById(R.id.linearLayout2);
                dVar.f62678k = (TextView) viewInflate.findViewById(R.id.appSize);
                dVar.f62679l = (TextView) viewInflate.findViewById(R.id.loding_info);
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
            GameOLHeadAdBean gameOLHeadAdBeanB = this.f62660d.get(position).b();
            com.join.android.app.common.utils.l.d(cVar2.f62666a, R.drawable.banner_normal_icon, gameOLHeadAdBeanB.getMain().getPic_remote());
            cVar2.f62666a.setOnClickListener(new a(gameOLHeadAdBeanB));
        } else if (itemViewType == 1) {
            eVar.f62682a.setText(this.f62660d.get(position).e());
        } else if (itemViewType == 2) {
            l6.a<GameOLNoOpenTestBean> aVar = this.f62660d.get(position);
            GameOLNoOpenTestBean gameOLNoOpenTestBeanC = aVar.c();
            UtilsMy.A3(gameOLNoOpenTestBeanC.getSp_tag_info(), viewInflate, aVar.a());
            com.join.android.app.common.utils.l.d(dVar2.f62668a, R.drawable.main_normal_icon, gameOLNoOpenTestBeanC.getIco_remote());
            if (gameOLNoOpenTestBeanC.getGift_package_switch() == 1) {
                dVar2.f62669b.setVisibility(0);
            } else {
                dVar2.f62669b.setVisibility(8);
            }
            dVar2.f62670c.setText(gameOLNoOpenTestBeanC.getGame_name());
            String game_open_time = gameOLNoOpenTestBeanC.getGame_open_time();
            if (com.join.mgps.Util.t2.i(game_open_time)) {
                long j10 = Long.parseLong(game_open_time + "000");
                dVar2.f62674g.setText("开测时间:" + com.join.mgps.Util.e0.v(j10));
            }
            dVar2.f62673f.setText(Html.fromHtml("悟饭特权:" + gameOLNoOpenTestBeanC.getPapa_privilege()), TextView.BufferType.SPANNABLE);
            dVar2.f62680m.setText(Html.fromHtml("游戏状态:" + gameOLNoOpenTestBeanC.getGame_status()), TextView.BufferType.SPANNABLE);
            long j11 = (long) (Double.parseDouble(gameOLNoOpenTestBeanC.getSize()) * 1024.0d * 1024.0d);
            DownloadTask downloadTaskA = aVar.a();
            dVar2.f62676i.setText("");
            if (gameOLNoOpenTestBeanC.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                dVar2.f62676i.setBackgroundResource(R.drawable.recom_blue_butn);
                dVar2.f62676i.setText("开始");
                dVar2.f62676i.setTextColor(this.f62659c.getResources().getColor(R.color.app_blue_color));
                dVar2.f62669b.setVisibility(8);
            } else if (downloadTaskA == null) {
                d(dVar2, Boolean.TRUE, Boolean.FALSE);
                if (UtilsMy.p0(gameOLNoOpenTestBeanC.getTag_info()) && com.join.android.app.common.utils.g.t0(this.f62659c).e(this.f62659c, gameOLNoOpenTestBeanC.getPackage_name()) && UtilsMy.x0(gameOLNoOpenTestBeanC.getPay_tag_info(), gameOLNoOpenTestBeanC.getCrc_sign_id()) == 0) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f62659c).n(this.f62659c, gameOLNoOpenTestBeanC.getPackage_name());
                    if (!com.join.mgps.Util.t2.i(gameOLNoOpenTestBeanC.getVer()) || aVarN.d() >= Integer.parseInt(gameOLNoOpenTestBeanC.getVer())) {
                        dVar2.f62676i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        dVar2.f62676i.setText(this.f62659c.getResources().getString(R.string.download_status_finished));
                        dVar2.f62676i.setTextColor(-688602);
                    } else {
                        dVar2.f62676i.setBackgroundResource(R.drawable.recom_green_butn);
                        dVar2.f62676i.setText("更新");
                        dVar2.f62676i.setTextColor(-9263087);
                    }
                } else {
                    dVar2.f62676i.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.x0(gameOLNoOpenTestBeanC.getPay_tag_info(), gameOLNoOpenTestBeanC.getCrc_sign_id());
                    UtilsMy.p3(dVar2.f62676i, dVar2.f62675h, gameOLNoOpenTestBeanC);
                }
            } else {
                com.join.mgps.Util.g1.d("infoo", downloadTaskA.getStatus() + " dd " + downloadTaskA.getShowName());
                int status = downloadTaskA.getStatus();
                if (UtilsMy.x0(gameOLNoOpenTestBeanC.getPay_tag_info(), gameOLNoOpenTestBeanC.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status == 0) {
                    dVar2.f62676i.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.x0(gameOLNoOpenTestBeanC.getPay_tag_info(), gameOLNoOpenTestBeanC.getCrc_sign_id());
                    UtilsMy.p3(dVar2.f62676i, dVar2.f62675h, gameOLNoOpenTestBeanC);
                    d(dVar2, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 27) {
                    dVar2.f62676i.setText("暂停中");
                } else if (status == 48) {
                    dVar2.f62676i.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar2.f62676i.setText("安装中");
                    dVar2.f62676i.setTextColor(-12941854);
                    d(dVar2, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 2) {
                    UtilsMy.U4(downloadTaskA);
                    dVar2.f62676i.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar2.f62676i.setText("暂停");
                    dVar2.f62676i.setTextColor(-12941854);
                    Boolean bool = Boolean.FALSE;
                    d(dVar2, bool, bool);
                    if (downloadTaskA.getSize() == 0) {
                        dVar2.f62678k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                    } else {
                        dVar2.f62678k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                    }
                    dVar2.f62672e.setProgress((int) downloadTaskA.getProgress());
                    String speed = downloadTaskA.getSpeed();
                    dVar2.f62679l.setText(speed + "/S");
                } else if (status == 3) {
                    dVar2.f62676i.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar2.f62676i.setText("继续");
                    dVar2.f62676i.setTextColor(-12941854);
                    Boolean bool2 = Boolean.FALSE;
                    d(dVar2, bool2, bool2);
                    try {
                        if (downloadTaskA.getSize() == 0) {
                            dVar2.f62678k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                        } else {
                            dVar2.f62678k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                        }
                        dVar2.f62672e.setProgress((int) downloadTaskA.getProgress());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    dVar2.f62679l.setText("暂停中");
                } else if (status == 5) {
                    dVar2.f62676i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    dVar2.f62676i.setText(this.f62659c.getResources().getString(R.string.download_status_finished));
                    dVar2.f62676i.setTextColor(-688602);
                    Boolean bool3 = Boolean.TRUE;
                    d(dVar2, bool3, bool3);
                } else if (status == 6) {
                    dVar2.f62676i.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar2.f62676i.setText("继续");
                    dVar2.f62676i.setTextColor(-12941854);
                    Boolean bool4 = Boolean.FALSE;
                    d(dVar2, bool4, bool4);
                    if (downloadTaskA.getSize() == 0) {
                        dVar2.f62678k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                    } else {
                        dVar2.f62678k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                    }
                    dVar2.f62672e.setProgress((int) downloadTaskA.getProgress());
                    dVar2.f62679l.setText("暂停中");
                } else if (status == 7) {
                    dVar2.f62676i.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.x0(gameOLNoOpenTestBeanC.getPay_tag_info(), gameOLNoOpenTestBeanC.getCrc_sign_id());
                    UtilsMy.p3(dVar2.f62676i, dVar2.f62675h, gameOLNoOpenTestBeanC);
                    d(dVar2, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 42) {
                    dVar2.f62676i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    dVar2.f62676i.setText(this.f62659c.getResources().getString(R.string.download_status_finished));
                    dVar2.f62676i.setTextColor(-688602);
                    Boolean bool5 = Boolean.TRUE;
                    d(dVar2, bool5, bool5);
                } else if (status != 43) {
                    switch (status) {
                        case 9:
                            dVar2.f62676i.setBackgroundResource(R.drawable.recom_green_butn);
                            dVar2.f62676i.setText("更新");
                            dVar2.f62676i.setTextColor(-9263087);
                            d(dVar2, Boolean.TRUE, Boolean.FALSE);
                            break;
                        case 10:
                            dVar2.f62676i.setBackgroundResource(R.drawable.recom_blue_butn);
                            dVar2.f62676i.setText("等待");
                            dVar2.f62676i.setTextColor(-12941854);
                            Boolean bool6 = Boolean.FALSE;
                            d(dVar2, bool6, bool6);
                            dVar2.f62678k.setText(UtilsMy.c(downloadTaskA.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                            try {
                                dVar2.f62672e.setProgress((int) downloadTaskA.getProgress());
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                            dVar2.f62679l.setText("等待中");
                            break;
                        case 11:
                            dVar2.f62676i.setBackgroundResource(R.drawable.recom_green_butn);
                            dVar2.f62676i.setText("安装");
                            dVar2.f62676i.setTextColor(-9263087);
                            d(dVar2, Boolean.TRUE, Boolean.FALSE);
                            break;
                        case 12:
                            d(dVar2, Boolean.FALSE, Boolean.TRUE);
                            dVar2.f62678k.setText(UtilsMy.c(j11) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                            dVar2.f62679l.setText("解压中..");
                            dVar2.f62671d.setProgress((int) downloadTaskA.getProgress());
                            dVar2.f62676i.setBackgroundResource(R.drawable.extract);
                            dVar2.f62676i.setText("解压中");
                            dVar2.f62676i.setTextColor(-4868683);
                            break;
                        case 13:
                            d(dVar2, Boolean.FALSE, Boolean.TRUE);
                            dVar2.f62678k.setText(UtilsMy.c(j11) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                            dVar2.f62679l.setText("点击重新解压");
                            dVar2.f62671d.setProgress((int) downloadTaskA.getProgress());
                            dVar2.f62676i.setBackgroundResource(R.drawable.reextract);
                            dVar2.f62676i.setText("解压");
                            dVar2.f62676i.setTextColor(-12941854);
                            break;
                    }
                } else {
                    dVar2.f62676i.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.x0(gameOLNoOpenTestBeanC.getPay_tag_info(), gameOLNoOpenTestBeanC.getCrc_sign_id());
                    UtilsMy.p3(dVar2.f62676i, dVar2.f62675h, gameOLNoOpenTestBeanC);
                    d(dVar2, Boolean.TRUE, Boolean.FALSE);
                }
            }
            dVar2.f62675h.setOnClickListener(new b(aVar));
        }
        return viewInflate;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }
}
