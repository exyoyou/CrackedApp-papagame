package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class v extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f63236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f63237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<CollectionBeanSub> f63238d = new ArrayList(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.danikula.videocache.i f63239e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.join.android.app.component.video.c f63240f;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f63241a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f63242b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        FrameLayout f63243c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f63244d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ImageView f63245e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63246f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        DownloadNormalView f63247g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f63248h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f63249i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        LinearLayout f63250j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        LinearLayout f63251k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public TextView f63252l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public TextView f63253m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public ProgressBar f63254n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public ProgressBar f63255o;

        public a() {
        }
    }

    public v(Context context, com.join.android.app.component.video.c helper) {
        this.f63236b = context;
        this.f63240f = helper;
        this.f63237c = LayoutInflater.from(context);
        this.f63239e = d(context);
    }

    void a(String score, int down_count, String appSize, TipNew showTip, List<TipBean> tags, LinearLayout view, Context context) {
        TipBean tipBean;
        TipBean tipBean2;
        if (com.join.mgps.Util.t2.h(appSize)) {
            appSize = "1";
        }
        view.removeAllViews();
        TipBean tipBean3 = null;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.six_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.appsize);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.appType);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.tongban);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.pingfen);
        textView.setText(com.join.mgps.Util.t2.c(down_count));
        textView2.setText(UtilsMy.Z2((long) (Double.parseDouble(appSize) * 1048576.0d)));
        if (showTip == null) {
            textView3.setVisibility(8);
            textView4.setVisibility(8);
        } else if (showTip.getModel() != null) {
            TipBean model = showTip.getModel();
            if ("7".equals(model.getId()) || "23".equals(model.getId())) {
                String name = "安卓";
                if (tags != null) {
                    ArrayList arrayList = new ArrayList();
                    for (TipBean tipBean4 : tags) {
                        if (tipBean4.getId() != null && !tipBean4.getId().equals("") && !tipBean4.getId().equals("44") && !tipBean4.getId().equals("45") && !tipBean4.getId().equals("47") && !tipBean4.getId().equals("48")) {
                            if (arrayList.size() >= 2) {
                                break;
                            } else {
                                arrayList.add(tipBean4);
                            }
                        }
                    }
                    if (arrayList.size() > 1) {
                        TipBean tipBean5 = (TipBean) arrayList.get(0);
                        name = tipBean5 != null ? tipBean5.getName() : "安卓";
                        if (arrayList.size() > 1 && (tipBean2 = (TipBean) arrayList.get(1)) != null) {
                            name = name + "·" + tipBean2.getName();
                        }
                    } else if (arrayList.size() > 0 && (tipBean = (TipBean) arrayList.get(0)) != null) {
                        name = "安卓·" + tipBean.getName();
                    }
                }
                textView3.setText(name);
            } else {
                for (TipBean tipBean6 : tags) {
                    if (com.join.mgps.Util.t2.i(tipBean6.getId()) && !tipBean6.getId().equals(showTip.getModel().getId())) {
                        tipBean3 = tipBean6;
                        break;
                    }
                }
                if (tipBean3 != null) {
                    textView3.setText(showTip.getModel().getName() + "·" + tipBean3.getName());
                } else {
                    textView3.setText(showTip.getModel().getName());
                }
            }
        } else {
            textView3.setVisibility(8);
        }
        if (!com.join.mgps.Util.t2.i(score) || "0".equals(score)) {
            textView5.setVisibility(8);
        } else {
            textView5.setText(score + "分");
            textView5.setVisibility(0);
        }
        view.addView(viewInflate);
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public CollectionBeanSub getItem(int i10) {
        return this.f63238d.get(i10);
    }

    public List<CollectionBeanSub> c() {
        return this.f63238d;
    }

    public com.danikula.videocache.i d(Context context) {
        return MApplication.q(context);
    }

    void e(a holder, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            holder.f63250j.setVisibility(8);
            holder.f63254n.setVisibility(8);
            holder.f63255o.setVisibility(8);
            holder.f63251k.setVisibility(0);
            return;
        }
        holder.f63250j.setVisibility(0);
        if (isZip.booleanValue()) {
            holder.f63254n.setVisibility(8);
            holder.f63255o.setVisibility(0);
        } else {
            holder.f63255o.setVisibility(8);
            holder.f63254n.setVisibility(0);
        }
        holder.f63251k.setVisibility(8);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f63238d.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:54:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:57:0x02cd A[Catch: Exception -> 0x031f, TryCatch #0 {Exception -> 0x031f, blocks: (B:55:0x02c5, B:57:0x02cd, B:59:0x0314, B:58:0x02f1), top: B:72:0x02c5 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x02f1 A[Catch: Exception -> 0x031f, TryCatch #0 {Exception -> 0x031f, blocks: (B:55:0x02c5, B:57:0x02cd, B:59:0x0314, B:58:0x02f1), top: B:72:0x02c5 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:70:0x03ae  */
    /* JADX WARN: Instruction removed from duplicated block: B:57:0x02cd, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:58:0x02f1, please report this as an issue */
    @Override // android.widget.Adapter
    public View getView(final int i10, View convertView, ViewGroup viewGroup) {
        a aVar;
        View view;
        if (convertView == null) {
            View viewInflate = this.f63237c.inflate(R.layout.video_listview_item, (ViewGroup) null);
            aVar = new a();
            aVar.f63241a = viewInflate.findViewById(R.id.line_top);
            aVar.f63242b = (SimpleDraweeView) viewInflate.findViewById(R.id.bannerView);
            aVar.f63243c = (FrameLayout) viewInflate.findViewById(R.id.videoContner);
            aVar.f63244d = (SimpleDraweeView) viewInflate.findViewById(R.id.mgListviewItemIcon);
            aVar.f63245e = (ImageView) viewInflate.findViewById(R.id.giftPackageSwich);
            aVar.f63246f = (TextView) viewInflate.findViewById(R.id.mgListviewItemAppname);
            aVar.f63247g = (DownloadNormalView) viewInflate.findViewById(R.id.dv_view);
            aVar.f63249i = (TextView) viewInflate.findViewById(R.id.mgListviewItemDescribe);
            aVar.f63250j = (LinearLayout) viewInflate.findViewById(R.id.linearLayout2);
            aVar.f63251k = (LinearLayout) viewInflate.findViewById(R.id.tipsLayout);
            aVar.f63252l = (TextView) viewInflate.findViewById(R.id.appSize);
            aVar.f63253m = (TextView) viewInflate.findViewById(R.id.loding_info);
            aVar.f63254n = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
            aVar.f63255o = (ProgressBar) viewInflate.findViewById(R.id.progressBarZip);
            aVar.f63248h = viewInflate.findViewById(R.id.line);
            viewInflate.setTag(aVar);
            view = viewInflate;
        } else {
            aVar = (a) convertView.getTag();
            view = convertView;
        }
        a aVar2 = aVar;
        if (i10 == 0) {
            aVar2.f63241a.setVisibility(8);
        } else {
            aVar2.f63241a.setVisibility(0);
        }
        CollectionBeanSub collectionBeanSub = this.f63238d.get(i10);
        if (com.join.mgps.Util.t2.i(collectionBeanSub.getGame_info_top_video_url())) {
            if (aVar2.f63243c != null) {
                com.join.android.app.common.utils.l.h(aVar2.f63242b, collectionBeanSub.getGame_info_top_pic());
                String game_info_top_video_url = collectionBeanSub.getGame_info_top_video_url();
                int i11 = i10 + 1;
                aVar2.f63242b.setTag(Integer.valueOf(i11));
                if (com.join.mgps.Util.t2.i(game_info_top_video_url)) {
                    this.f63240f.d(i11, new com.join.android.app.component.video.c.l(i11, game_info_top_video_url, collectionBeanSub.getGame_info_top_pic()), new boolean[0]);
                }
            }
            com.join.android.app.common.utils.l.d(aVar2.f63242b, R.drawable.banner_normal_icon, collectionBeanSub.getGame_info_top_pic());
        }
        DownloadTask downloadTask = collectionBeanSub.getDownloadTask();
        if (collectionBeanSub.getGift_package_switch() == 1) {
            aVar2.f63245e.setVisibility(0);
        } else {
            aVar2.f63245e.setVisibility(8);
        }
        aVar2.f63246f.setText(collectionBeanSub.getGame_name());
        aVar2.f63249i.setText(collectionBeanSub.getInfo());
        long j10 = (long) (Double.parseDouble(collectionBeanSub.getSize()) * 1024.0d * 1024.0d);
        com.join.android.app.common.utils.l.h(aVar2.f63244d, collectionBeanSub.getIco_remote().trim());
        collectionBeanSub.getTag_info();
        a(collectionBeanSub.getScore(), collectionBeanSub.getDown_count(), collectionBeanSub.getSize(), collectionBeanSub.getSp_tag_info(), collectionBeanSub.getTag_info(), aVar2.f63251k, this.f63236b);
        aVar2.f63247g.f(new m6.c(this.f63236b, collectionBeanSub));
        if (collectionBeanSub.isH5Game()) {
            aVar2.f63251k.setVisibility(8);
            aVar2.f63245e.setVisibility(8);
        } else if (downloadTask == null) {
            e(aVar2, Boolean.TRUE, Boolean.FALSE);
        } else {
            com.join.mgps.Util.g1.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
            int status = downloadTask.getStatus();
            if (UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status == 0) {
                UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id());
                e(aVar2, Boolean.TRUE, Boolean.FALSE);
            } else if (status == 42) {
                Boolean bool = Boolean.TRUE;
                e(aVar2, bool, bool);
            } else if (status == 2) {
                UtilsMy.U4(downloadTask);
                Boolean bool2 = Boolean.FALSE;
                e(aVar2, bool2, bool2);
                if (downloadTask.getSize() == 0) {
                    aVar2.f63252l.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    aVar2.f63252l.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                aVar2.f63254n.setProgress((int) downloadTask.getProgress());
                String speed = downloadTask.getSpeed();
                aVar2.f63253m.setText(speed + "/S");
            } else if (status == 3) {
                Boolean bool3 = Boolean.FALSE;
                e(aVar2, bool3, bool3);
                try {
                    if (downloadTask.getSize() == 0) {
                        aVar2.f63252l.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        aVar2.f63252l.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    aVar2.f63254n.setProgress((int) downloadTask.getProgress());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                aVar2.f63253m.setText("暂停中");
            } else if (status == 5) {
                Boolean bool4 = Boolean.TRUE;
                e(aVar2, bool4, bool4);
            } else if (status == 6) {
                Boolean bool5 = Boolean.FALSE;
                e(aVar2, bool5, bool5);
                if (downloadTask.getSize() == 0) {
                    aVar2.f63252l.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    aVar2.f63252l.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                aVar2.f63254n.setProgress((int) downloadTask.getProgress());
                aVar2.f63253m.setText("暂停中");
            } else if (status != 7) {
                switch (status) {
                    case 9:
                    case 11:
                        e(aVar2, Boolean.TRUE, Boolean.FALSE);
                        break;
                    case 10:
                        Boolean bool6 = Boolean.FALSE;
                        e(aVar2, bool6, bool6);
                        aVar2.f63252l.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        try {
                            aVar2.f63254n.setProgress((int) downloadTask.getProgress());
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                        aVar2.f63253m.setText("等待中");
                        break;
                    case 12:
                        e(aVar2, Boolean.FALSE, Boolean.TRUE);
                        aVar2.f63252l.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        aVar2.f63253m.setText("解压中..");
                        aVar2.f63255o.setProgress((int) downloadTask.getProgress());
                        break;
                    case 13:
                        e(aVar2, Boolean.FALSE, Boolean.TRUE);
                        aVar2.f63252l.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        aVar2.f63253m.setText("点击重新解压");
                        aVar2.f63255o.setProgress((int) downloadTask.getProgress());
                        break;
                }
            } else {
                UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id());
                e(aVar2, Boolean.TRUE, Boolean.FALSE);
            }
        }
        return view;
    }
}
