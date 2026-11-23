package com.join.mgps.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class l6 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f62698c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f62701f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f62702g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<PAPAHomeBeanV7.HomeBeanDTO> f62699d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f62700e = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f62703h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f62704i = null;

    public interface a {
        void a(int position, PAPAHomeBeanV7.HomeBeanDTO item);
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f62705a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f62706b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f62707c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public SimpleDraweeView f62708d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public LinearLayout f62709e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f62710f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f62711g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ProgressBar f62712h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ProgressBar f62713i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public FrameLayout f62714j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ProgressBar f62715k;

        public b() {
        }
    }

    public l6(Context context, String type) {
        this.f62701f = "0";
        this.f62697b = context;
        this.f62698c = LayoutInflater.from(context);
        this.f62701f = type;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, b bVar, int i10, View view) {
        homeBeanDTO.setRequesting(homeBeanDTO.getGameBean() == null && homeBeanDTO.getDownloadTask() == null);
        bVar.f62715k.setVisibility(homeBeanDTO.isRequesting() ? 0 : 4);
        bVar.f62707c.setVisibility(homeBeanDTO.isRequesting() ? 4 : 0);
        a aVar = this.f62704i;
        if (aVar != null) {
            aVar.a(i10, homeBeanDTO);
        }
    }

    private void g(TextView tvGameTags, LinearLayout llInfo, ProgressBar progressBar, ProgressBar progressBarZip, boolean isNormal, boolean isZip) {
        if (isNormal) {
            tvGameTags.setVisibility(0);
            llInfo.setVisibility(8);
            progressBar.setVisibility(8);
            progressBarZip.setVisibility(8);
            return;
        }
        llInfo.setVisibility(0);
        tvGameTags.setVisibility(8);
        if (isZip) {
            progressBarZip.setVisibility(0);
            progressBar.setVisibility(8);
        } else {
            progressBar.setVisibility(0);
            progressBarZip.setVisibility(8);
        }
    }

    public List<PAPAHomeBeanV7.HomeBeanDTO> b() {
        return this.f62699d;
    }

    public void d() {
        this.f62703h = true;
    }

    public void e(a listener) {
        this.f62704i = listener;
    }

    public void f(int uiType) {
        this.f62700e = uiType;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62699d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        if (this.f62699d.size() != 0 && i10 < this.f62699d.size()) {
            return this.f62699d.get(i10);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:27:0x016a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0170  */
    /* JADX WARN: Code duplicated, block: B:31:0x0185 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x0186  */
    /* JADX WARN: Code duplicated, block: B:46:0x020e  */
    /* JADX WARN: Code duplicated, block: B:52:0x022a  */
    /* JADX WARN: Code duplicated, block: B:54:0x0230  */
    /* JADX WARN: Code duplicated, block: B:56:0x0234  */
    /* JADX WARN: Code duplicated, block: B:58:0x0239  */
    /* JADX WARN: Code duplicated, block: B:59:0x023b  */
    /* JADX WARN: Code duplicated, block: B:61:0x023e  */
    /* JADX WARN: Code duplicated, block: B:63:0x0241  */
    /* JADX WARN: Code duplicated, block: B:65:0x0244  */
    /* JADX WARN: Code duplicated, block: B:67:0x0248 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x024a  */
    /* JADX WARN: Code duplicated, block: B:70:0x024f  */
    /* JADX WARN: Code duplicated, block: B:71:0x0297  */
    /* JADX WARN: Code duplicated, block: B:72:0x02df  */
    /* JADX WARN: Code duplicated, block: B:73:0x02f7  */
    /* JADX WARN: Code duplicated, block: B:79:0x0346  */
    /* JADX WARN: Code duplicated, block: B:80:0x035c  */
    /* JADX WARN: Code duplicated, block: B:81:0x0372  */
    /* JADX WARN: Code duplicated, block: B:84:0x0392 A[Catch: Exception -> 0x03e4, TryCatch #1 {Exception -> 0x03e4, blocks: (B:82:0x0388, B:84:0x0392, B:86:0x03d9, B:85:0x03b6), top: B:102:0x0388 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x03b6 A[Catch: Exception -> 0x03e4, TryCatch #1 {Exception -> 0x03e4, blocks: (B:82:0x0388, B:84:0x0392, B:86:0x03d9, B:85:0x03b6), top: B:102:0x0388 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:93:0x0412  */
    /* JADX WARN: Code duplicated, block: B:94:0x0436  */
    /* JADX WARN: Code duplicated, block: B:96:0x047e  */
    /* JADX WARN: Code duplicated, block: B:97:0x0495  */
    /* JADX WARN: Code duplicated, block: B:98:0x049b  */
    /* JADX WARN: Instruction removed from duplicated block: B:70:0x024f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:71:0x0297, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:73:0x02f7, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:84:0x0392, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:85:0x03b6, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:93:0x0412, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:94:0x0436, please report this as an issue */
    @Override // android.widget.Adapter
    public View getView(final int i10, View convertView, ViewGroup viewGroup) {
        b bVar;
        View view;
        int status;
        if (convertView == null) {
            View viewInflate = this.f62698c.inflate(R.layout.ranking_listview_item_v2, (ViewGroup) null);
            bVar = new b();
            bVar.f62705a = (TextView) viewInflate.findViewById(R.id.tvGameName);
            bVar.f62706b = (TextView) viewInflate.findViewById(R.id.tvTags);
            bVar.f62707c = (TextView) viewInflate.findViewById(R.id.tvBtn);
            bVar.f62708d = (SimpleDraweeView) viewInflate.findViewById(R.id.ivGamePic);
            bVar.f62709e = (LinearLayout) viewInflate.findViewById(R.id.llInfo);
            bVar.f62710f = (TextView) viewInflate.findViewById(R.id.appSize);
            bVar.f62711g = (TextView) viewInflate.findViewById(R.id.loding_info);
            bVar.f62712h = (ProgressBar) viewInflate.findViewById(R.id.progressBarZip);
            bVar.f62713i = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
            bVar.f62714j = (FrameLayout) viewInflate.findViewById(R.id.flBtn);
            bVar.f62715k = (ProgressBar) viewInflate.findViewById(R.id.loading_progress);
            viewInflate.setTag(bVar);
            view = viewInflate;
        } else {
            bVar = (b) convertView.getTag();
            view = convertView;
        }
        final b bVar2 = bVar;
        final PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = this.f62699d.get(i10);
        com.join.android.app.common.utils.l.i(bVar2.f62708d, homeBeanDTO.getBig_pic(), com.facebook.drawee.drawable.s.c.f27292i);
        if (homeBeanDTO.getG_info() != null) {
            bVar2.f62705a.setText(homeBeanDTO.getG_info().getName());
            if (!TextUtils.isEmpty(homeBeanDTO.getG_info().getTag_name())) {
                StringBuilder sb2 = new StringBuilder();
                String[] strArrSplit = homeBeanDTO.getG_info().getTag_name().split(",");
                for (int i11 = 0; i11 < strArrSplit.length; i11++) {
                    sb2.append(strArrSplit[i11]);
                    sb2.append(" | ");
                    if (i11 >= 1) {
                        break;
                    }
                }
                bVar2.f62706b.setText(sb2.substring(0, sb2.length() - 3));
            }
            bVar2.f62707c.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.k6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f62629b.c(homeBeanDTO, bVar2, i10, view2);
                }
            });
        }
        bVar2.f62707c.setVisibility(0);
        bVar2.f62707c.setText("获取");
        bVar2.f62715k.setVisibility(4);
        DownloadTask downloadTask = homeBeanDTO.getDownloadTask();
        CollectionBeanSub gameBean = homeBeanDTO.getGameBean();
        long size = downloadTask != null ? downloadTask.getSize() : 0L;
        if (gameBean != null) {
            if ((ConstantIntEnum.H5.value() + "").equals(gameBean.getPlugin_num())) {
                bVar2.f62707c.setText("开始");
                bVar2.f62705a.setVisibility(8);
            } else if (downloadTask == null) {
                g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
                if (gameBean == null) {
                    return view;
                }
                if (!UtilsMy.p0(gameBean.getTag_info()) && com.join.android.app.common.utils.g.t0(this.f62697b).e(this.f62697b, gameBean.getPackageName()) && UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) == 0) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f62697b).n(this.f62697b, gameBean.getPackageName());
                    if (!com.join.mgps.Util.t2.i(gameBean.getVer()) || aVarN.d() >= Integer.parseInt(gameBean.getVer())) {
                        bVar2.f62707c.setText("启动");
                    } else {
                        bVar2.f62707c.setText("更新");
                    }
                } else {
                    UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                    UtilsMy.w3(bVar2.f62707c, bVar2.f62714j, gameBean);
                }
            } else {
                status = downloadTask.getStatus();
                if (gameBean != null && UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status == 0) {
                    bVar2.f62707c.setText("获取");
                    UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                    UtilsMy.w3(bVar2.f62707c, bVar2.f62714j, gameBean);
                    g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
                } else if (status != 27) {
                    bVar2.f62707c.setText("暂停中");
                } else if (status != 48) {
                    bVar2.f62707c.setText("安装中");
                    g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
                } else if (status != 2) {
                    UtilsMy.U4(downloadTask);
                    bVar2.f62707c.setText("暂停");
                    g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, false, false);
                    if (downloadTask.getSize() == 0) {
                        bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                    } else {
                        bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                    }
                    bVar2.f62713i.setProgress((int) downloadTask.getProgress());
                    String speed = downloadTask.getSpeed();
                    bVar2.f62711g.setText(speed + "/S");
                } else if (status == 3) {
                    bVar2.f62707c.setText("继续");
                    g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, false, false);
                    try {
                        if (downloadTask.getSize() == 0) {
                            bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                        } else {
                            bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                        }
                        bVar2.f62713i.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    bVar2.f62711g.setText("暂停中");
                } else if (status == 5) {
                    bVar2.f62707c.setText("启动");
                    g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, true);
                } else if (status != 6) {
                    bVar2.f62707c.setText("继续");
                    g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, false, false);
                    if (downloadTask.getSize() == 0) {
                        bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                    } else {
                        bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                    }
                    bVar2.f62713i.setProgress((int) downloadTask.getProgress());
                    bVar2.f62711g.setText("暂停中");
                } else if (status == 7) {
                    bVar2.f62707c.setText("获取");
                    UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                    UtilsMy.w3(bVar2.f62707c, bVar2.f62714j, gameBean);
                    g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
                } else if (status != 42) {
                    bVar2.f62707c.setText("启动");
                    g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, true);
                } else if (status != 43) {
                    switch (status) {
                        case 9:
                            bVar2.f62707c.setText("更新");
                            g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
                            break;
                        case 10:
                            bVar2.f62707c.setText("等待");
                            g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, false, false);
                            bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                            try {
                                bVar2.f62713i.setProgress((int) downloadTask.getProgress());
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                            bVar2.f62711g.setText("等待");
                            break;
                        case 11:
                            bVar2.f62707c.setText("安装");
                            g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
                            break;
                        case 12:
                            g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, false, true);
                            bVar2.f62710f.setText(UtilsMy.i(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                            bVar2.f62711g.setText("解压中..");
                            bVar2.f62712h.setProgress((int) downloadTask.getProgress());
                            bVar2.f62707c.setText("解压中");
                            break;
                        case 13:
                            g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, false, true);
                            bVar2.f62710f.setText(UtilsMy.i(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                            bVar2.f62711g.setText("点击重新解压");
                            bVar2.f62712h.setProgress((int) downloadTask.getProgress());
                            bVar2.f62707c.setText("解压");
                            break;
                    }
                } else {
                    bVar2.f62707c.setText("获取");
                    UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                    UtilsMy.w3(bVar2.f62707c, bVar2.f62714j, gameBean);
                    g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
                }
            }
        } else if (downloadTask == null) {
            g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
            if (gameBean == null) {
                return view;
            }
            if (!UtilsMy.p0(gameBean.getTag_info())) {
                UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.w3(bVar2.f62707c, bVar2.f62714j, gameBean);
            } else {
                UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.w3(bVar2.f62707c, bVar2.f62714j, gameBean);
            }
        } else {
            status = downloadTask.getStatus();
            if (gameBean != null) {
                status = 43;
            }
            if (status == 0) {
                bVar2.f62707c.setText("获取");
                UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.w3(bVar2.f62707c, bVar2.f62714j, gameBean);
                g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
            } else if (status != 27) {
                bVar2.f62707c.setText("暂停中");
            } else if (status != 48) {
                bVar2.f62707c.setText("安装中");
                g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
            } else if (status != 2) {
                UtilsMy.U4(downloadTask);
                bVar2.f62707c.setText("暂停");
                g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, false, false);
                if (downloadTask.getSize() == 0) {
                    bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                } else {
                    bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                }
                bVar2.f62713i.setProgress((int) downloadTask.getProgress());
                String speed2 = downloadTask.getSpeed();
                bVar2.f62711g.setText(speed2 + "/S");
            } else if (status == 3) {
                bVar2.f62707c.setText("继续");
                g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, false, false);
                if (downloadTask.getSize() == 0) {
                    bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                } else {
                    bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                }
                bVar2.f62713i.setProgress((int) downloadTask.getProgress());
                bVar2.f62711g.setText("暂停中");
            } else if (status == 5) {
                bVar2.f62707c.setText("启动");
                g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, true);
            } else if (status != 6) {
                bVar2.f62707c.setText("继续");
                g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, false, false);
                if (downloadTask.getSize() == 0) {
                    bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                } else {
                    bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                }
                bVar2.f62713i.setProgress((int) downloadTask.getProgress());
                bVar2.f62711g.setText("暂停中");
            } else if (status == 7) {
                bVar2.f62707c.setText("获取");
                UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.w3(bVar2.f62707c, bVar2.f62714j, gameBean);
                g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
            } else if (status != 42) {
                bVar2.f62707c.setText("启动");
                g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, true);
            } else if (status != 43) {
                switch (status) {
                    case 9:
                        bVar2.f62707c.setText("更新");
                        g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
                        break;
                    case 10:
                        bVar2.f62707c.setText("等待");
                        g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, false, false);
                        bVar2.f62710f.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                        bVar2.f62713i.setProgress((int) downloadTask.getProgress());
                        bVar2.f62711g.setText("等待");
                        break;
                    case 11:
                        bVar2.f62707c.setText("安装");
                        g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
                        break;
                    case 12:
                        g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, false, true);
                        bVar2.f62710f.setText(UtilsMy.i(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                        bVar2.f62711g.setText("解压中..");
                        bVar2.f62712h.setProgress((int) downloadTask.getProgress());
                        bVar2.f62707c.setText("解压中");
                        break;
                    case 13:
                        g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, false, true);
                        bVar2.f62710f.setText(UtilsMy.i(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                        bVar2.f62711g.setText("点击重新解压");
                        bVar2.f62712h.setProgress((int) downloadTask.getProgress());
                        bVar2.f62707c.setText("解压");
                        break;
                }
            } else {
                bVar2.f62707c.setText("获取");
                UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.w3(bVar2.f62707c, bVar2.f62714j, gameBean);
                g(bVar2.f62706b, bVar2.f62709e, bVar2.f62713i, bVar2.f62712h, true, false);
            }
        }
        return view;
    }
}
