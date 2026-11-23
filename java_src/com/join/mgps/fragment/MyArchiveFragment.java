package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.DocumentManageActivity;
import com.join.mgps.customview.ClouldItemView;
import com.join.mgps.dto.ArchiveColudArgs;
import com.join.mgps.dto.ArchiveDataBean;
import com.join.mgps.dto.ArchiveResponseMain;
import com.join.mgps.dto.ArchiveResponseMessage;
import com.join.mgps.dto.CLoudUploadMain;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.RecoverFileJson;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.item_archive)
public class MyArchiveFragment extends Fragment implements w6.c, com.join.android.app.common.http.g, w6.e {
    QuitReceive A;
    ShowProgressDialogReceive B;
    u C;
    com.join.mgps.dialog.x F;
    com.join.mgps.dialog.f1 G;
    ArchiveDataBean H;
    com.join.mgps.dialog.f1 J;
    Iterator<CloudListDataBean> P;
    List<CloudListDataBean> Q;
    String X;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    RelativeLayout f68739c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    ImageView f68740d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    TextView f68741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    Button f68742f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    Button f68743g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    RecyclerView f68744h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f68745i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    LinearLayout f68746j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    TextView f68747k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    RelativeLayout f68748l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    TextView f68749m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    LinearLayout f68750n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Pref
    PrefDef_ f68751o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    List<RomArchived> f68752p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    List<CloudListDataBean> f68753q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    List<CloudListDataBean> f68754r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private UserInfo f68755s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    com.join.mgps.rpc.d f68756t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    String f68757u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f68758v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    LocalBroadcastManager f68759w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    IntentFilter f68760x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    IntentFilter f68761y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    JoinReceive f68762z;
    boolean D = false;
    boolean E = false;
    boolean I = false;
    private boolean K = true;
    boolean L = false;
    boolean M = true;
    int N = 0;
    boolean O = false;
    int R = 0;
    long S = 0;
    long T = 0;
    long U = 0;
    long V = 0;
    int W = 0;

    class JoinReceive extends BroadcastReceiver {
        JoinReceive() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                MyArchiveFragment myArchiveFragment = MyArchiveFragment.this;
                myArchiveFragment.D = true;
                myArchiveFragment.f68739c.setVisibility(0);
                MyArchiveFragment.this.C.notifyDataSetChanged();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class QuitReceive extends BroadcastReceiver {
        QuitReceive() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                MyArchiveFragment myArchiveFragment = MyArchiveFragment.this;
                myArchiveFragment.D = false;
                myArchiveFragment.f68739c.setVisibility(8);
                if (MyArchiveFragment.this.f68753q != null) {
                    for (int i10 = 0; i10 < MyArchiveFragment.this.f68753q.size(); i10++) {
                        MyArchiveFragment.this.f68753q.get(i10).setIsCheck(0);
                    }
                }
                MyArchiveFragment.this.f68740d.setBackgroundResource(R.drawable.batch_nor);
                MyArchiveFragment.this.f68741e.setText("已选择0个存档");
                MyArchiveFragment.this.C.notifyDataSetChanged();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class ShowProgressDialogReceive extends BroadcastReceiver {
        ShowProgressDialogReceive() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            com.join.mgps.dialog.x xVar;
            MyArchiveFragment myArchiveFragment = MyArchiveFragment.this;
            if (!myArchiveFragment.O || (xVar = myArchiveFragment.F) == null) {
                return;
            }
            xVar.show();
        }
    }

    class a implements com.join.mgps.dialog.w.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f68766a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f68767b;

        a(final CloudListDataBean val$dataBean, final boolean val$isMarcket) {
            this.f68766a = val$dataBean;
            this.f68767b = val$isMarcket;
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
            MyArchiveFragment.this.Z(this.f68766a, this.f68767b);
            if (!MyArchiveFragment.this.K) {
                MyArchiveFragment.this.f68751o.DownloadRecoderNotice().g(Boolean.FALSE);
            }
            dialog.dismiss();
        }
    }

    class b implements v {
        b() {
        }

        @Override // com.join.mgps.fragment.MyArchiveFragment.v
        public void a(boolean hasSuccess, CloudListDataBean dataBean) {
            MyArchiveFragment.this.x0(dataBean);
        }
    }

    class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            if (isChecked) {
                MyArchiveFragment.this.M = false;
            } else {
                MyArchiveFragment.this.M = true;
            }
        }
    }

    class d implements com.join.mgps.dialog.w.e {
        d() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
            dialog.dismiss();
        }
    }

    class e implements com.join.mgps.dialog.w.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f68772a;

        e(final CloudListDataBean val$dataBean) {
            this.f68772a = val$dataBean;
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
            MyArchiveFragment.this.E0(this.f68772a);
            MyArchiveFragment myArchiveFragment = MyArchiveFragment.this;
            if (!myArchiveFragment.M) {
                myArchiveFragment.f68751o.uploadRecoderNotice().g(Boolean.FALSE);
            }
            dialog.dismiss();
        }
    }

    class f implements v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ v f68774a;

        f(final v val$recoderCheckInterface) {
            this.f68774a = val$recoderCheckInterface;
        }

        @Override // com.join.mgps.fragment.MyArchiveFragment.v
        public void a(boolean hasSuccess, CloudListDataBean dataBean) {
            if (!hasSuccess) {
                this.f68774a.a(hasSuccess, dataBean);
            } else if (hasSuccess) {
                MyArchiveFragment.this.N++;
            }
        }
    }

    class g implements com.join.mgps.dialog.a0.c {
        g() {
        }

        @Override // com.join.mgps.dialog.a0.c
        public void a(com.join.mgps.dialog.a0 dialog) {
            dialog.dismiss();
        }
    }

    class h implements com.join.mgps.dialog.a0.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f68777a;

        h(final CloudListDataBean val$dataBean) {
            this.f68777a = val$dataBean;
        }

        @Override // com.join.mgps.dialog.a0.c
        public void a(com.join.mgps.dialog.a0 dialog) {
            if (com.join.mgps.Util.t2.h(dialog.a())) {
                MyArchiveFragment.this.showMessage("描述信息不能为空");
                return;
            }
            MyArchiveFragment.this.F.f("存档分享中");
            MyArchiveFragment.this.F.e("取消分享");
            MyArchiveFragment myArchiveFragment = MyArchiveFragment.this;
            if (myArchiveFragment.O) {
                com.join.mgps.Util.a3.b(myArchiveFragment.getContext()).d("已有上传进行中");
                com.join.mgps.dialog.x xVar = MyArchiveFragment.this.F;
                if (xVar != null) {
                    xVar.show();
                    return;
                }
                return;
            }
            myArchiveFragment.q0(this.f68777a, dialog.a());
            MyArchiveFragment myArchiveFragment2 = MyArchiveFragment.this;
            if (!myArchiveFragment2.M) {
                myArchiveFragment2.f68751o.uploadRecoderNotice().g(Boolean.FALSE);
            }
            dialog.dismiss();
        }
    }

    class i implements v {
        i() {
        }

        @Override // com.join.mgps.fragment.MyArchiveFragment.v
        public void a(boolean hasSuccess, CloudListDataBean dataBean) {
            MyArchiveFragment.this.w0(dataBean);
        }
    }

    class j implements w6.e {
        j() {
        }

        @Override // w6.e
        public void D(CloudListDataBean dataBean) {
            MyArchiveFragment myArchiveFragment = MyArchiveFragment.this;
            myArchiveFragment.O = false;
            myArchiveFragment.s0(false);
        }

        @Override // w6.e
        public void J(CloudListDataBean dataBean) {
            MyArchiveFragment myArchiveFragment = MyArchiveFragment.this;
            myArchiveFragment.O = false;
            myArchiveFragment.s0(false);
            MyArchiveFragment myArchiveFragment2 = MyArchiveFragment.this;
            if (myArchiveFragment2.I) {
                return;
            }
            myArchiveFragment2.showMessage("备份失败");
        }
    }

    class k implements com.join.mgps.dialog.x.c {
        k() {
        }

        @Override // com.join.mgps.dialog.x.c
        public void a(com.join.mgps.dialog.x dialog) {
            dialog.dismiss();
        }
    }

    class l implements com.join.android.app.common.http.g {
        l() {
        }

        @Override // com.join.android.app.common.http.g
        public void onRequestProgress(long bytesWritten, long contentLength, boolean b10, String url) {
        }

        @Override // com.join.android.app.common.http.g
        public void onUploadFailed(String msg) {
        }
    }

    class m implements com.join.mgps.dialog.x.c {
        m() {
        }

        @Override // com.join.mgps.dialog.x.c
        public void a(com.join.mgps.dialog.x dialog) {
            if (MyArchiveFragment.this.P != null) {
                while (MyArchiveFragment.this.P.hasNext()) {
                    MyArchiveFragment.this.P.next();
                    MyArchiveFragment.this.P.remove();
                }
            }
            MyArchiveFragment myArchiveFragment = MyArchiveFragment.this;
            myArchiveFragment.O = false;
            myArchiveFragment.I = true;
            dialog.dismiss();
        }
    }

    class n implements View.OnClickListener {

        class a implements CompoundButton.OnCheckedChangeListener {
            a() {
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (isChecked) {
                    MyArchiveFragment.this.K = false;
                } else {
                    MyArchiveFragment.this.K = true;
                }
            }
        }

        class b implements com.join.mgps.dialog.w.e {
            b() {
            }

            @Override // com.join.mgps.dialog.w.e
            public void a(com.join.mgps.dialog.w dialog) {
                dialog.dismiss();
            }
        }

        class c implements com.join.mgps.dialog.w.e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f68787a;

            c(final List val$listDataBeans) {
                this.f68787a = val$listDataBeans;
            }

            @Override // com.join.mgps.dialog.w.e
            public void a(com.join.mgps.dialog.w dialog) {
                MyArchiveFragment.this.a0(this.f68787a);
                if (!MyArchiveFragment.this.K) {
                    MyArchiveFragment.this.f68751o.DownloadRecoderNotice().g(Boolean.FALSE);
                }
                dialog.dismiss();
            }
        }

        class d implements v {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f68789a;

            d(final List val$listDataBeans) {
                this.f68789a = val$listDataBeans;
            }

            @Override // com.join.mgps.fragment.MyArchiveFragment.v
            public void a(boolean hasSuccess, CloudListDataBean dataBean) {
                MyArchiveFragment.this.J.dismiss();
                if (hasSuccess) {
                    MyArchiveFragment.this.k0(this.f68789a);
                } else {
                    com.join.mgps.Util.a3.b(MyArchiveFragment.this.getContext()).d("备份失败");
                }
            }
        }

        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (MyArchiveFragment.this.g0()) {
                if (AccountUtil_.getInstance_(MyArchiveFragment.this.getContext()).isTourist()) {
                    IntentUtil.getInstance().goMyAccountLoginActivity(MyArchiveFragment.this.getContext());
                    return;
                }
                if (MyArchiveFragment.this.f68758v != 1) {
                    ArrayList arrayList = new ArrayList();
                    for (CloudListDataBean cloudListDataBean : MyArchiveFragment.this.f68753q) {
                        if (cloudListDataBean.getIsCheck() == 1 && cloudListDataBean.getStatus() != 5) {
                            arrayList.add(cloudListDataBean);
                        }
                    }
                    if (arrayList.size() == 0) {
                        MyArchiveFragment.this.showMessage("请选择存档");
                        return;
                    } else {
                        MyArchiveFragment.this.J.b();
                        MyArchiveFragment.this.p0(arrayList, true, new d(arrayList));
                        return;
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                for (CloudListDataBean cloudListDataBean2 : MyArchiveFragment.this.f68753q) {
                    if (cloudListDataBean2.getIsCheck() == 1 && cloudListDataBean2.getStatus() == 6) {
                        arrayList2.add(cloudListDataBean2);
                    }
                }
                if (arrayList2.size() == 0) {
                    MyArchiveFragment.this.showMessage("请选择存档");
                } else if (MyArchiveFragment.this.f68751o.DownloadRecoderNotice().d().booleanValue()) {
                    new com.join.mgps.dialog.w(MyArchiveFragment.this.getActivity(), R.style.HKDialogLoading).g("下载须知").d("下载后，将以备份存档为准，覆盖本地同名存档").f("确定").b("取消").e(new c(arrayList2)).a(new b()).c(new a()).show();
                } else {
                    MyArchiveFragment.this.a0(arrayList2);
                }
            }
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(MApplication.S);
            com.join.mgps.Util.r0.w0(MyArchiveFragment.this.getActivity(), forumPostsBean, null);
        }
    }

    class p implements CompoundButton.OnCheckedChangeListener {
        p() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            if (isChecked) {
                MyArchiveFragment.this.K = false;
            } else {
                MyArchiveFragment.this.K = true;
            }
        }
    }

    class q implements com.join.mgps.dialog.w.e {
        q() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
            dialog.dismiss();
        }
    }

    class r implements com.join.mgps.dialog.w.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f68794a;

        r(final List val$listDataBeans) {
            this.f68794a = val$listDataBeans;
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
            MyArchiveFragment.this.F0(this.f68794a);
            if (!MyArchiveFragment.this.K) {
                MyArchiveFragment.this.f68751o.DownloadRecoderNotice().g(Boolean.FALSE);
            }
            dialog.dismiss();
        }
    }

    class s implements CompoundButton.OnCheckedChangeListener {
        s() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            if (isChecked) {
                MyArchiveFragment.this.K = false;
            } else {
                MyArchiveFragment.this.K = true;
            }
        }
    }

    class t implements com.join.mgps.dialog.w.e {
        t() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w dialog) {
            dialog.dismiss();
        }
    }

    public class u extends RecyclerView.Adapter<b> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Context f68798e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f68799f = false;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f68801b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ b f68802c;

            a(final int val$position, final b val$holder) {
                this.f68801b = val$position;
                this.f68802c = val$holder;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                int i10 = 0;
                if (MyArchiveFragment.this.f68753q.get(this.f68801b).getIsCheck() != 0) {
                    this.f68802c.f68805e.setVisibility(8);
                    this.f68802c.f68804d.setVisibility(0);
                    MyArchiveFragment.this.f68753q.get(this.f68801b).setIsCheck(0);
                    int i11 = 0;
                    while (i10 < MyArchiveFragment.this.f68753q.size()) {
                        if (MyArchiveFragment.this.f68753q.get(i10).getIsCheck() == 1) {
                            i11++;
                        }
                        i10++;
                    }
                    MyArchiveFragment.this.f68741e.setText("已选择" + i11 + "个存档");
                    if (MyArchiveFragment.this.f68753q.size() != i11) {
                        MyArchiveFragment.this.f68740d.setBackgroundResource(R.drawable.batch_nor);
                    }
                    MyArchiveFragment.this.C.notifyDataSetChanged();
                    return;
                }
                MyArchiveFragment myArchiveFragment = MyArchiveFragment.this;
                if (myArchiveFragment.f68758v == 2) {
                    if (myArchiveFragment.f68753q.get(this.f68801b).getStatus() != 5) {
                        this.f68802c.f68804d.setVisibility(8);
                        this.f68802c.f68805e.setVisibility(0);
                        MyArchiveFragment.this.f68753q.get(this.f68801b).setIsCheck(1);
                        int i12 = 0;
                        for (int i13 = 0; i13 < MyArchiveFragment.this.f68753q.size(); i13++) {
                            if (MyArchiveFragment.this.f68753q.get(i13).getIsCheck() == 1 && MyArchiveFragment.this.f68753q.get(i13).getStatus() != 5) {
                                i12++;
                            }
                        }
                        int i14 = 0;
                        while (i10 < MyArchiveFragment.this.f68753q.size()) {
                            if (MyArchiveFragment.this.f68753q.get(i10).getStatus() == 5) {
                                i14++;
                            }
                            i10++;
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SSS-->");
                        sb2.append(i12);
                        sb2.append("ssss->");
                        sb2.append(i14);
                        MyArchiveFragment.this.f68741e.setText("已选择" + i12 + "个存档");
                        if (MyArchiveFragment.this.f68753q.size() - i14 == i12) {
                            MyArchiveFragment myArchiveFragment2 = MyArchiveFragment.this;
                            myArchiveFragment2.L = true;
                            myArchiveFragment2.f68740d.setBackgroundResource(R.drawable.batch_select);
                        }
                    } else {
                        MyArchiveFragment.this.t0("已备份");
                    }
                } else if (myArchiveFragment.f68753q.get(this.f68801b).getStatus() != 0) {
                    this.f68802c.f68804d.setVisibility(8);
                    this.f68802c.f68805e.setVisibility(0);
                    MyArchiveFragment.this.f68753q.get(this.f68801b).setIsCheck(1);
                    int i15 = 0;
                    for (int i16 = 0; i16 < MyArchiveFragment.this.f68753q.size(); i16++) {
                        if (MyArchiveFragment.this.f68753q.get(i16).getIsCheck() == 1 && MyArchiveFragment.this.f68753q.get(i16).getStatus() != 0) {
                            i15++;
                        }
                    }
                    int i17 = 0;
                    while (i10 < MyArchiveFragment.this.f68753q.size()) {
                        if (MyArchiveFragment.this.f68753q.get(i10).getStatus() == 0) {
                            i17++;
                        }
                        i10++;
                    }
                    MyArchiveFragment.this.f68741e.setText("已选择" + i15 + "个存档");
                    if (MyArchiveFragment.this.f68753q.size() - i17 == i15) {
                        MyArchiveFragment.this.f68740d.setBackgroundResource(R.drawable.batch_select);
                        MyArchiveFragment.this.L = true;
                    }
                } else {
                    MyArchiveFragment.this.t0("已下载");
                }
                MyArchiveFragment.this.C.notifyDataSetChanged();
            }
        }

        public class b extends RecyclerView.ViewHolder {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            ImageView f68804d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            ImageView f68805e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            ClouldItemView f68806f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            RelativeLayout f68807g;

            public b(View itemView) {
                super(itemView);
                this.f68804d = (ImageView) itemView.findViewById(R.id.iv_nor);
                this.f68805e = (ImageView) itemView.findViewById(R.id.iv_select);
                this.f68806f = (ClouldItemView) itemView.findViewById(R.id.coulditem);
                this.f68807g = (RelativeLayout) itemView.findViewById(R.id.rl_image);
            }
        }

        public u(Context context) {
            this.f68798e = context;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(final b holder, final int position) {
            if (position >= MyArchiveFragment.this.f68753q.size()) {
                return;
            }
            if (MyArchiveFragment.this.f68753q.get(position).getIsCheck() == 1) {
                holder.f68805e.setVisibility(0);
                holder.f68804d.setVisibility(8);
            } else {
                holder.f68805e.setVisibility(8);
                holder.f68804d.setVisibility(0);
            }
            holder.f68807g.setOnClickListener(new a(position, holder));
            MyArchiveFragment myArchiveFragment = MyArchiveFragment.this;
            if (myArchiveFragment.D) {
                int i10 = myArchiveFragment.f68758v;
                if (i10 == 2) {
                    if (myArchiveFragment.f68753q.get(position).getStatus() != 5) {
                        holder.f68807g.setVisibility(0);
                    } else {
                        holder.f68807g.setVisibility(0);
                        holder.f68804d.setVisibility(4);
                        holder.f68805e.setVisibility(4);
                    }
                } else if (i10 == 1) {
                    if (myArchiveFragment.f68753q.get(position).getStatus() != 0) {
                        holder.f68807g.setVisibility(0);
                    } else {
                        holder.f68807g.setVisibility(0);
                        holder.f68804d.setVisibility(4);
                        holder.f68805e.setVisibility(4);
                    }
                }
            } else {
                holder.f68807g.setVisibility(8);
            }
            holder.f68806f.setCloudItemListener(MyArchiveFragment.this);
            ClouldItemView clouldItemView = holder.f68806f;
            MyArchiveFragment myArchiveFragment2 = MyArchiveFragment.this;
            String str = myArchiveFragment2.f68757u;
            CloudListDataBean cloudListDataBean = myArchiveFragment2.f68753q.get(position);
            MyArchiveFragment myArchiveFragment3 = MyArchiveFragment.this;
            clouldItemView.setData(str, cloudListDataBean, myArchiveFragment3.f68758v, 9, myArchiveFragment3.D, false, myArchiveFragment3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b onCreateViewHolder(ViewGroup parent, int viewType) {
            return new b(LayoutInflater.from(this.f68798e).inflate(R.layout.item_rcy_archive, parent, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return MyArchiveFragment.this.f68753q.size();
        }
    }

    interface v {
        void a(boolean hasSuccess, CloudListDataBean dataBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0(CloudListDataBean dataBean) {
        List<CloudListDataBean> list = this.Q;
        if (list != null) {
            list.clear();
        }
        this.F.f("存档备份中");
        this.F.e("取消备份");
        s0(true);
        this.O = true;
        this.I = false;
        G0(dataBean, new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F0(List<CloudListDataBean> dataBeans) {
        List<CloudListDataBean> list = this.Q;
        if (list != null) {
            list.clear();
        }
        this.Q = dataBeans;
        this.P = dataBeans.iterator();
        this.R = 0;
        this.I = false;
        this.F.f("存档备份中");
        this.F.e("取消备份");
        this.O = true;
        s0(true);
        if (this.P.hasNext()) {
            G0(this.P.next(), this);
            this.R++;
        } else {
            this.O = false;
            s0(false);
        }
    }

    private void I0(CloudListDataBean dataBean, InputStream inputStream, byte[] bytehead, File fileOld, v recoderCheckInterface) {
        File file = new File(dataBean.getArchiveFilePath() + com.join.mgps.Util.v0.f50057a);
        try {
            if (file.exists()) {
                UtilsMy.delete(file);
            }
            try {
                file.createNewFile();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                try {
                    RecoverFileJson recoverFileJson = new RecoverFileJson();
                    recoverFileJson.setGameID(this.f68757u);
                    recoverFileJson.setUserID(AccountUtil_.getInstance_(getContext()).getUid());
                    String json = JsonMapper.getInstance().toJson(recoverFileJson);
                    byte[] bArrV0 = v0(json);
                    byte[] bArrR0 = r0((short) (json.length() + 1));
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(json.length() + 3);
                    byteBufferAllocate.put(bArrR0);
                    byteBufferAllocate.put(bArrV0);
                    byteBufferAllocate.put((byte) 0);
                    byte[] bArrV1 = v0(com.join.mgps.Util.i1.a(byteBufferAllocate.array()));
                    ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(json.length() + 39 + 3);
                    byteBufferAllocate2.put(v0("WFSTE"));
                    byteBufferAllocate2.put((byte) 0);
                    byteBufferAllocate2.put(bArrV1);
                    byteBufferAllocate2.put((byte) 0);
                    byteBufferAllocate2.put(byteBufferAllocate.array());
                    fileOutputStream.write(byteBufferAllocate2.array());
                    new String(byteBufferAllocate2.array());
                    if (bytehead != null) {
                        fileOutputStream.write(bytehead);
                    }
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i10 = inputStream.read(bArr);
                        if (i10 == -1) {
                            fileOutputStream.close();
                            inputStream.close();
                            UtilsMy.delete(fileOld);
                            file.renameTo(fileOld);
                            recoderCheckInterface.a(true, dataBean);
                            try {
                                fileOutputStream.close();
                                inputStream.close();
                                return;
                            } catch (IOException e11) {
                                e = e11;
                                e.printStackTrace();
                            }
                        }
                        fileOutputStream.write(bArr, 0, i10);
                    }
                } catch (IOException e12) {
                    showMessage("写入信息异常");
                    e12.printStackTrace();
                    try {
                        fileOutputStream.close();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } catch (IOException e13) {
                        e = e13;
                        e.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (IOException e14) {
                    e14.printStackTrace();
                }
                throw th;
            }
        } catch (FileNotFoundException e15) {
            e15.printStackTrace();
            showMessage("文件没找到异常");
        }
    }

    private void X(String filePath) {
        try {
            File file = new File(filePath.replace(com.join.mgps.Util.z.f50164c, Environment.getExternalStorageDirectory().getAbsolutePath()));
            if (file.exists()) {
                com.join.mgps.Util.h1.e("delfile" + UtilsMy.delete(file) + " " + filePath);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(CloudListDataBean dataBean, boolean isMarcket) {
        if (isMarcket) {
            dataBean.setArchiveFilePath(com.join.mgps.Util.z.f50170i + File.separator + dataBean.getArchiveFileName());
        } else {
            dataBean.setArchiveFilePath(com.join.mgps.Util.z.f50169h + File.separator + dataBean.getArchiveFileName());
        }
        Intent intent = new Intent(p5.a.f96198h0);
        intent.putExtra("downCloud", dataBean);
        getActivity().sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(List<CloudListDataBean> dataBean) {
        Intent intent = new Intent("com.cloud.downCloud.all");
        intent.putExtra("downClouds", (Serializable) dataBean);
        getActivity().sendBroadcast(intent);
    }

    private ArchiveColudArgs b0() {
        if (this.f68755s == null) {
            com.join.mgps.Util.a3.b(getActivity()).d("请先登录");
            return null;
        }
        return RequestBeanUtil.getInstance(getActivity()).getArchiveColud(this.f68755s.getUid() + "", this.f68755s.getToken(), this.f68757u);
    }

    private String e0(String recoverFilename) {
        String strSubstring = recoverFilename.substring(recoverFilename.lastIndexOf(com.join.mgps.Util.o0.f49827a) + 1, recoverFilename.length());
        if ("0".equals(strSubstring)) {
            return "快速存档";
        }
        if ("99".equals(strSubstring)) {
            return "自动保存的存档";
        }
        return "存档" + strSubstring;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g0() {
        if (AccountUtil_.getInstance_(getContext()).isTourist()) {
            IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
            return false;
        }
        if (AccountUtil_.getInstance_(getContext()).getAccountData().getUid() != 0) {
            return true;
        }
        IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
        return false;
    }

    private void l0(CloudListDataBean dataBean, int status) {
        com.join.mgps.event.i iVar = new com.join.mgps.event.i();
        dataBean.setStatus(status);
        iVar.f(dataBean);
        iVar.j(status);
        org.greenrobot.eventbus.c.f().q(iVar);
    }

    private void m0(int type) {
        try {
            ArchiveColudArgs archiveColudArgsB0 = b0();
            if (archiveColudArgsB0 == null) {
                return;
            }
            if (!AccountUtil_.getInstance_(getActivity()).getToken().equals("") && this.f68755s.getUid() != 0 && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                ArchiveDataBean archiveDataBeanG = this.f68756t.g(archiveColudArgsB0.getArgs());
                this.H = archiveDataBeanG;
                if (type != 1) {
                    this.f68754r = archiveDataBeanG.getData_info().getCloudList();
                    A0(this.f68752p);
                    return;
                }
                if (archiveDataBeanG.getCode() == -1 && this.H.getMsg().equals("701")) {
                    AccountUtil_.getInstance_(getActivity()).accountLoginOut(getActivity());
                    y0();
                }
                ArchiveDataBean archiveDataBean = this.H;
                if (archiveDataBean == null) {
                    i0();
                    return;
                }
                List<CloudListDataBean> cloudList = archiveDataBean.getData_info().getCloudList();
                DownloadTask downloadTaskG = q5.f.M().G(this.f68757u);
                if (downloadTaskG != null) {
                    List<RomArchived> listN = com.join.mgps.Util.o3.n(downloadTaskG.getPlugin_num(), downloadTaskG.getGameZipPath());
                    this.f68752p = listN;
                    if (listN != null) {
                        for (CloudListDataBean cloudListDataBean : cloudList) {
                            cloudListDataBean.setStatus(6);
                            for (RomArchived romArchived : this.f68752p) {
                                if (cloudListDataBean.getArchiveFileName().equals(romArchived.getFileName()) && cloudListDataBean.getFileMd5().equals(romArchived.getMd5())) {
                                    cloudListDataBean.setStatus(0);
                                    cloudListDataBean.setArchiveFilePath(romArchived.getArchivedPath());
                                }
                            }
                        }
                    }
                }
                updateUi(cloudList);
                return;
            }
            i0();
        } catch (Exception e10) {
            e10.printStackTrace();
            if (type == 2) {
                d0();
            }
        }
    }

    private void n0() {
        DownloadTask downloadTaskG = q5.f.M().G(this.f68757u);
        if (downloadTaskG == null) {
            i0();
            return;
        }
        List<RomArchived> listN = com.join.mgps.Util.o3.n(downloadTaskG.getPlugin_num(), downloadTaskG.getGameZipPath());
        boolean z10 = false;
        if (downloadTaskG.getPlugin_num().equals("31")) {
            Iterator<RomArchived> it2 = listN.iterator();
            boolean z11 = false;
            boolean z12 = false;
            while (it2.hasNext()) {
                if (it2.next().getFileName().contains("_v2")) {
                    z11 = true;
                } else {
                    z12 = true;
                }
            }
            Iterator<RomArchived> it3 = listN.iterator();
            while (it3.hasNext()) {
                RomArchived next = it3.next();
                if (!z12 || z11) {
                    if (z12 && z11) {
                        if (com.join.mgps.Util.w1.a(downloadTaskG.getPackageName())) {
                            if (next.getFileName().contains("_v2")) {
                                it3.remove();
                            }
                        } else if (!next.getFileName().contains("_v2")) {
                            it3.remove();
                        }
                    }
                } else if (!com.join.mgps.Util.w1.a(downloadTaskG.getPackageName())) {
                    it3.remove();
                }
            }
        }
        if (downloadTaskG.getPlugin_num().equals("31")) {
            Iterator<RomArchived> it4 = listN.iterator();
            boolean z13 = false;
            while (it4.hasNext()) {
                if (it4.next().getFileName().contains("_v2")) {
                    z10 = true;
                } else {
                    z13 = true;
                }
            }
            Iterator<RomArchived> it5 = listN.iterator();
            while (it5.hasNext()) {
                RomArchived next2 = it5.next();
                if (!z13 || z10) {
                    if (z13 && z10) {
                        if (com.join.mgps.Util.w1.a(downloadTaskG.getPackageName())) {
                            if (next2.getFileName().contains("_v2")) {
                                it5.remove();
                            }
                        } else if (!next2.getFileName().contains("_v2")) {
                            it5.remove();
                        }
                    }
                } else if (!com.join.mgps.Util.w1.a(downloadTaskG.getPackageName())) {
                    it5.remove();
                }
            }
        }
        A0(listN);
    }

    public static byte[] r0(short s10) {
        byte[] bArr = new byte[2];
        int i10 = 0;
        int i11 = s10;
        while (i10 < 2) {
            bArr[i10] = new Integer(i11 & 255).byteValue();
            i10++;
            i11 >>= 8;
        }
        return bArr;
    }

    @UiThread
    void A0(List<RomArchived> recordRoms) {
        ArrayList arrayList = null;
        if (recordRoms != null) {
            try {
                if (recordRoms.size() != 0) {
                    this.f68752p = recordRoms;
                    ArrayList arrayList2 = new ArrayList();
                    for (int i10 = 0; i10 < recordRoms.size(); i10++) {
                        try {
                            if (!com.join.mgps.Util.t2.h(recordRoms.get(i10).getArchivedImagePath())) {
                                CloudListDataBean cloudListDataBean = new CloudListDataBean();
                                cloudListDataBean.setAddTime(recordRoms.get(i10).getArchivedTime());
                                cloudListDataBean.setArchiveFilePath(recordRoms.get(i10).getArchivedPath());
                                cloudListDataBean.setArchiveCover("file://" + recordRoms.get(i10).getArchivedImagePath());
                                cloudListDataBean.setArchiveCoverFilePath(recordRoms.get(i10).getArchivedImagePath());
                                cloudListDataBean.setArchiveFileName(recordRoms.get(i10).getFileName());
                                cloudListDataBean.setArchiveName(e0(recordRoms.get(i10).getArchivedPath()));
                                cloudListDataBean.setFileSize(recordRoms.get(i10).getSize());
                                cloudListDataBean.setFileMd5(recordRoms.get(i10).getMd5());
                                cloudListDataBean.setStatus(0);
                                List<CloudListDataBean> list = this.f68754r;
                                if (list != null) {
                                    for (CloudListDataBean cloudListDataBean2 : list) {
                                        if (cloudListDataBean2.getArchiveFileName().equals(new File(recordRoms.get(i10).getArchivedPath()).getName()) && cloudListDataBean2.getFileMd5().equals(recordRoms.get(i10).getMd5())) {
                                            cloudListDataBean.setStatus(5);
                                            break;
                                        }
                                    }
                                }
                                List<CloudListDataBean> list2 = this.f68753q;
                                if (list2 != null) {
                                    for (CloudListDataBean cloudListDataBean3 : list2) {
                                        if (cloudListDataBean3.getArchiveFileName().equals(new File(recordRoms.get(i10).getArchivedPath()).getName()) && cloudListDataBean3.getStatus() == 7) {
                                            cloudListDataBean.setStatus(cloudListDataBean3.getStatus());
                                        }
                                    }
                                }
                                arrayList2.add(cloudListDataBean);
                            }
                        } catch (Exception e10) {
                            e = e10;
                            arrayList = arrayList2;
                            e.printStackTrace();
                            arrayList2 = arrayList;
                        }
                    }
                    updateUi(arrayList2);
                    return;
                }
            } catch (Exception e11) {
                e = e11;
            }
        }
        z0(recordRoms);
    }

    @Override // w6.c
    public void B(final CloudListDataBean dataBean, final boolean isMarcket) {
        if (g0()) {
            if (this.f68751o.DownloadRecoderNotice().d().booleanValue()) {
                new com.join.mgps.dialog.w(getActivity(), R.style.HKDialogLoading).g("下载须知").d("下载后，将以备份存档为准，覆盖本地同名存档").f("确定").b("取消").e(new a(dataBean, isMarcket)).a(new t()).c(new s()).show();
            } else {
                Z(dataBean, isMarcket);
            }
        }
    }

    @UiThread
    void B0(String downSize) {
        try {
            List<CloudListDataBean> list = this.Q;
            if (list == null || list.size() <= 1) {
                this.F.c(downSize, UtilsMy.e(this.U) + "/S", this.W);
            } else {
                this.F.c(this.R + net.lingala.zip4j.util.e.F0 + this.Q.size(), UtilsMy.e(this.U) + "/S", this.W);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread(delay = 500)
    void C0() {
        if (this.C != null) {
            try {
                if (this.f68753q.size() == 0) {
                    i0();
                }
                if (this.E) {
                    return;
                }
                this.C.notifyDataSetChanged();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // w6.e
    public void D(CloudListDataBean dataBean) {
        H0(dataBean);
    }

    @UiThread
    void D0() {
        if (this.C != null) {
            try {
                if (this.f68753q.size() == 0) {
                    i0();
                }
                if (this.E) {
                    return;
                }
                this.C.notifyDataSetChanged();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // w6.c
    public void G(CloudListDataBean dataBean, int commentType) {
    }

    @Background
    void G0(CloudListDataBean dataBean, w6.e listerner) {
        try {
            if (dataBean.getArchiveCoverFilePath() == null) {
                return;
            }
            l0(dataBean, 7);
            String[] strArr = {dataBean.getArchiveFilePath(), dataBean.getArchiveCoverFilePath()};
            UserInfo accountData = AccountUtil_.getInstance_(getActivity()).getAccountData();
            String strJ = com.join.android.app.common.http.h.b().j(strArr, accountData.getUid() + "", accountData.getToken(), this.f68757u, dataBean.getArchiveName(), dataBean.getArchiveFileName(), dataBean.getFileMd5(), this);
            if (com.join.mgps.Util.t2.i(strJ)) {
                CLoudUploadMain cLoudUploadMain = (CLoudUploadMain) JsonMapper.getInstance().fromJson(strJ, CLoudUploadMain.class);
                if (cLoudUploadMain.getCode() == 600) {
                    if (this.I) {
                        listerner.J(dataBean);
                        return;
                    } else {
                        l0(dataBean, 5);
                        listerner.D(dataBean);
                        return;
                    }
                }
                if ("701".equals(cLoudUploadMain.getMsg())) {
                    y0();
                    showMessage("你的登陆已失效，请重新登陆。");
                } else {
                    showMessage(cLoudUploadMain.getMsg());
                }
                listerner.J(dataBean);
                l0(dataBean, 4);
            } else {
                listerner.J(dataBean);
                l0(dataBean, 4);
            }
            listerner.J(dataBean);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void H0(CloudListDataBean dataBean) {
        try {
            Iterator<CloudListDataBean> it2 = this.P;
            if (it2 != null && it2.hasNext()) {
                G0(this.P.next(), this);
                this.R++;
                return;
            }
            this.O = false;
            this.f68740d.setBackgroundResource(R.drawable.batch_nor);
            int i10 = 0;
            for (int i11 = 0; i11 < this.f68753q.size(); i11++) {
                if (this.f68753q.get(i11).getIsCheck() == 1 && this.f68753q.get(i11).getStatus() != 5) {
                    i10++;
                }
            }
            this.f68741e.setText("已选择" + i10 + "个存档");
            dataBean.setStatus(5);
            s0(false);
            this.f68759w.sendBroadcast(new Intent("com.join.mgps.activity.quitManage"));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // w6.e
    public void J(CloudListDataBean dataBean) {
        if (!this.P.hasNext()) {
            s0(false);
        } else {
            G0(this.P.next(), this);
            this.R++;
        }
    }

    @UiThread
    void M() {
        if (!MApplication.Q) {
            RelativeLayout relativeLayout = this.f68748l;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
                return;
            }
            return;
        }
        RelativeLayout relativeLayout2 = this.f68748l;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(0);
            this.f68749m.setText(MApplication.R);
            this.f68750n.setOnClickListener(new o());
        }
    }

    public byte[] U(byte[] data1, byte[] data2) {
        byte[] bArr = new byte[data1.length + data2.length];
        System.arraycopy(data1, 0, bArr, 0, data1.length);
        System.arraycopy(data2, 0, bArr, data1.length, data2.length);
        return bArr;
    }

    @Click
    void V() {
        this.f68759w.sendBroadcast(new Intent("com.join.mgps.activity.quitManage"));
    }

    public short W(byte[] b10) {
        return (short) (((short) (((short) (b10[1] & 255)) << 8)) | ((short) (b10[0] & 255)));
    }

    @Background
    void Y(CloudListDataBean dataBean) {
        if (g0()) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
                HashMap map = new HashMap();
                map.put("gameId", this.f68757u);
                map.put("uid", accountData.getUid() + "");
                map.put(Constants.TOKEN, accountData.getToken());
                map.put("archiveName", dataBean.getArchiveName());
                ArchiveResponseMain<ArchiveResponseMessage> archiveResponseMainC = this.f68756t.c(map);
                if (archiveResponseMainC != null && archiveResponseMainC.getCode() == 600) {
                    Iterator<CloudListDataBean> it2 = this.f68753q.iterator();
                    while (it2.hasNext()) {
                        if (it2.next().getArchiveFileName().equals(dataBean.getArchiveFileName())) {
                            it2.remove();
                            D0();
                            return;
                        }
                    }
                    return;
                }
                if (archiveResponseMainC != null) {
                    if (!"701".equals(archiveResponseMainC.getMsg())) {
                        showMessage(archiveResponseMainC.getMsg());
                    } else {
                        y0();
                        showMessage("你的登陆已失效，请重新登陆。");
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @AfterViews
    void afterViews() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        com.join.mgps.Util.j0.a().d(this);
        this.J = com.join.mgps.Util.h0.h0(getContext()).x(getContext());
        this.f68744h.setLayoutManager(linearLayoutManager);
        this.f68756t = com.join.mgps.rpc.impl.c.k();
        this.f68759w = LocalBroadcastManager.getInstance(getActivity());
        this.f68755s = AccountUtil_.getInstance_(getActivity()).getAccountData();
        this.f68757u = getArguments().getString("gameid");
        this.f68758v = getArguments().getInt("type");
        this.f68760x = new IntentFilter();
        this.f68761y = new IntentFilter();
        this.f68760x.addAction("com.join.mgps.activity.joinManage");
        this.f68761y.addAction("com.join.mgps.activity.quitManage");
        this.f68762z = new JoinReceive();
        this.A = new QuitReceive();
        this.f68759w.registerReceiver(this.f68762z, this.f68760x);
        this.f68759w.registerReceiver(this.A, this.f68761y);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.wufun.cloud.showUploadDialog");
        ShowProgressDialogReceive showProgressDialogReceive = new ShowProgressDialogReceive();
        this.B = showProgressDialogReceive;
        this.f68759w.registerReceiver(showProgressDialogReceive, intentFilter);
        this.f68753q = new ArrayList();
        this.f68754r = new ArrayList();
        u uVar = new u(getActivity());
        this.C = uVar;
        this.f68744h.setAdapter(uVar);
        this.F = new com.join.mgps.dialog.x(getActivity(), R.style.HKDialogLoading).f("存档备份中").e("取消备份").b("后台运行").d(new m()).a(new k());
        this.G = com.join.mgps.Util.h0.h0(getContext()).x(getContext());
        this.f68742f.setOnClickListener(new n());
        M();
    }

    @Background
    public void c0(int type) {
        if (type == 2) {
            try {
                d0();
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (com.join.android.app.common.utils.m.j(getActivity())) {
            m0(type);
        }
    }

    @Background
    public void d0() {
        try {
            n0();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void f0() {
        M();
    }

    @UiThread
    void h0() {
        RecyclerView recyclerView = this.f68744h;
        if (recyclerView == null || this.f68745i == null) {
            return;
        }
        try {
            recyclerView.setVisibility(0);
            this.f68745i.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void i0() {
        RecyclerView recyclerView = this.f68744h;
        if (recyclerView == null || this.f68745i == null) {
            return;
        }
        try {
            recyclerView.setVisibility(8);
            this.f68745i.setVisibility(0);
            if (this.f68758v == 1) {
                this.f68747k.setText("请先从本地备份存档");
            } else {
                this.f68747k.setText("请先启动游戏保存存档");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // w6.c
    public String j() {
        return this.f68751o.cloudVipLink().d();
    }

    @Click
    void j0() {
        int i10 = 0;
        if (this.L) {
            this.L = false;
            if (this.f68758v == 2) {
                for (int i11 = 0; i11 < this.f68753q.size(); i11++) {
                    if (this.f68753q.get(i11).getStatus() != 5) {
                        this.f68753q.get(i11).setIsCheck(0);
                    }
                }
                this.f68740d.setBackgroundResource(R.drawable.batch_nor);
                this.f68741e.setText("已选择0个存档");
            } else {
                for (int i12 = 0; i12 < this.f68753q.size(); i12++) {
                    if (this.f68753q.get(i12).getStatus() != 0) {
                        this.f68753q.get(i12).setIsCheck(0);
                    }
                }
                this.f68740d.setBackgroundResource(R.drawable.batch_nor);
                this.f68741e.setText("已选择0个存档");
            }
        } else {
            this.L = true;
            if (this.f68758v == 2) {
                int i13 = 0;
                for (int i14 = 0; i14 < this.f68753q.size(); i14++) {
                    if (this.f68753q.get(i14).getStatus() != 5) {
                        this.f68753q.get(i14).setIsCheck(1);
                        i13++;
                    }
                }
                int i15 = 0;
                while (i10 < this.f68753q.size()) {
                    if (this.f68753q.get(i10).getStatus() == 5) {
                        i15++;
                    }
                    i10++;
                }
                if (i13 == this.f68753q.size() - i15 && i13 != 0 && this.f68753q.size() - i15 != 0) {
                    this.f68740d.setBackgroundResource(R.drawable.batch_select);
                }
                this.f68741e.setText("已选择" + i13 + "个存档");
            } else {
                int i16 = 0;
                for (int i17 = 0; i17 < this.f68753q.size(); i17++) {
                    if (this.f68753q.get(i17).getStatus() != 0) {
                        this.f68753q.get(i17).setIsCheck(1);
                        i16++;
                    }
                }
                int i18 = 0;
                while (i10 < this.f68753q.size()) {
                    if (this.f68753q.get(i10).getStatus() == 0) {
                        i18++;
                    }
                    i10++;
                }
                if (i16 == this.f68753q.size() - i18 && i16 != 0 && this.f68753q.size() - i18 != 0) {
                    this.f68740d.setBackgroundResource(R.drawable.batch_select);
                }
                this.f68741e.setText("已选择" + i16 + "个存档");
            }
        }
        this.C.notifyDataSetChanged();
    }

    @Override // w6.c
    public void k(CloudListDataBean dataBean, int type) {
        if (type == 1) {
            Y(dataBean);
            return;
        }
        if (type == 2) {
            Iterator<CloudListDataBean> it2 = this.f68753q.iterator();
            while (it2.hasNext()) {
                CloudListDataBean next = it2.next();
                if (next.getArchiveFileName().equals(dataBean.getArchiveFileName())) {
                    it2.remove();
                    String archiveFilePath = next.getArchiveFilePath();
                    if (archiveFilePath.contains("file://")) {
                        archiveFilePath = archiveFilePath.replace("file://", "");
                    }
                    File file = new File(archiveFilePath);
                    UtilsMy.delete(file);
                    X(archiveFilePath);
                    DownloadTask downloadTaskG = q5.f.M().G(this.f68757u);
                    if (downloadTaskG != null) {
                        String str = getActivity().getFilesDir().toString() + "/emus/" + UtilsMy.d2(Integer.parseInt(downloadTaskG.getRomType())) + net.lingala.zip4j.util.e.F0 + new File(UtilsMy.M4(downloadTaskG.getGameZipPath())).getName() + net.lingala.zip4j.util.e.F0;
                        UtilsMy.delete(new File(str + file.getName()));
                        String strReplace = next.getArchiveCoverFilePath().replace("file://", "");
                        File file2 = new File(strReplace);
                        UtilsMy.delete(file2);
                        UtilsMy.delete(new File(str + file2.getName()));
                        X(strReplace);
                    }
                    Iterator<RomArchived> it3 = this.f68752p.iterator();
                    if (it3.hasNext() && it3.next().getFileName().equals(next.getArchiveFileName())) {
                        it3.remove();
                    }
                    C0();
                    return;
                }
            }
        }
    }

    @UiThread
    void k0(final List<CloudListDataBean> listDataBeans) {
        if (this.f68751o.DownloadRecoderNotice().d().booleanValue()) {
            new com.join.mgps.dialog.w(getActivity(), R.style.HKDialogLoading).g("备份须知").d("上传后，将以本地存档为准，覆盖云端同名存档。").f("确定").b("取消").e(new r(listDataBeans)).a(new q()).c(new p()).show();
        } else {
            F0(listDataBeans);
        }
    }

    void o0(CloudListDataBean dataBean, boolean isBAckup, v recoderCheckInterface) {
        try {
            File file = new File(dataBean.getArchiveFilePath());
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[6];
                try {
                    fileInputStream.read(bArr);
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(6);
                    byteBufferAllocate.put((byte) 87);
                    byteBufferAllocate.put((byte) 70);
                    byteBufferAllocate.put(com.sigmob.sdk.archives.tar.e.Q);
                    byteBufferAllocate.put((byte) 84);
                    byteBufferAllocate.put((byte) 69);
                    byteBufferAllocate.put((byte) 0);
                    if (Arrays.equals(byteBufferAllocate.array(), bArr)) {
                        byte[] bArr2 = new byte[33];
                        fileInputStream.read(bArr2);
                        String str = new String(bArr2);
                        byte[] bArr3 = new byte[2];
                        fileInputStream.read(bArr3);
                        int iW = W(bArr3);
                        byte[] bArr4 = new byte[iW];
                        fileInputStream.read(bArr4);
                        String str2 = new String(bArr4);
                        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(2 + iW);
                        byteBufferAllocate2.put(bArr3);
                        byteBufferAllocate2.put(bArr4);
                        if (com.join.mgps.Util.i1.a(byteBufferAllocate2.array()).equals(str.substring(0, 32))) {
                            RecoverFileJson recoverFileJson = (RecoverFileJson) JsonMapper.getInstance().fromJson(str2, RecoverFileJson.class);
                            if (recoverFileJson.getUserID().equals("0")) {
                                I0(dataBean, fileInputStream, null, file, recoderCheckInterface);
                            } else if (recoverFileJson.getUserID().equals(AccountUtil_.getInstance_(getContext()).getUid()) || isBAckup) {
                                recoderCheckInterface.a(true, dataBean);
                            } else {
                                showMessage("请勿分享他人原创存档");
                            }
                        } else {
                            showMessage("存档不合法");
                        }
                    } else {
                        I0(dataBean, fileInputStream, bArr, file, recoderCheckInterface);
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                    showMessage("写入信息异常");
                }
            } catch (FileNotFoundException e11) {
                showMessage("文件没找到");
                e11.printStackTrace();
            }
        } catch (Exception e12) {
            e12.printStackTrace();
            showMessage("写入信息异常2");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.E = true;
        com.join.mgps.dialog.x xVar = this.F;
        if (xVar != null) {
            xVar.dismiss();
        }
        this.f68759w.unregisterReceiver(this.f68762z);
        this.f68759w.unregisterReceiver(this.B);
        this.f68759w.unregisterReceiver(this.f68762z);
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.i cloudEvent) {
        for (int i10 = 0; i10 < this.f68753q.size(); i10++) {
            CloudListDataBean cloudListDataBean = this.f68753q.get(i10);
            if (cloudEvent.a().getArchiveFileName().equals(cloudListDataBean.getArchiveFileName())) {
                if (cloudEvent.e() == 3 && cloudListDataBean.getStatus() == cloudEvent.e()) {
                    return;
                }
                cloudListDataBean.setStatus(cloudEvent.e());
                cloudListDataBean.setArchiveFilePath(cloudEvent.a().getArchiveFilePath());
                this.C.notifyItemChanged(i10);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (!hidden) {
            c0(this.f68758v);
        }
        M();
    }

    @Override // com.join.android.app.common.http.g
    public void onRequestProgress(long bytesWritten, long contentLength, boolean b10, String filename) {
        if (this.I) {
            for (CloudListDataBean cloudListDataBean : this.f68753q) {
                if (cloudListDataBean.getArchiveFileName().equals(filename)) {
                    l0(cloudListDataBean, 4);
                }
            }
            return;
        }
        this.X = UtilsMy.f(bytesWritten) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(contentLength) + "K";
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = jCurrentTimeMillis - this.V;
        if (j10 > 1000) {
            this.U = ((bytesWritten - this.T) * 1000) / j10;
            this.V = jCurrentTimeMillis;
            this.T = bytesWritten;
        }
        this.S = System.currentTimeMillis();
        com.join.mgps.dialog.x xVar = this.F;
        if (xVar != null && xVar.isShowing()) {
            this.W = (int) ((bytesWritten * 100) / contentLength);
            B0(this.X);
        }
        if (b10) {
            this.T = 0L;
            this.S = 0L;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f68755s = AccountUtil_.getInstance_(getActivity()).getAccountData();
        int i10 = this.f68758v;
        if (i10 == 1) {
            c0(i10);
            this.f68742f.setText("下载");
        } else {
            this.f68742f.setText("备份");
            c0(this.f68758v);
        }
    }

    @Override // com.join.android.app.common.http.g
    public void onUploadFailed(String msg) {
    }

    @Background
    void p0(List<CloudListDataBean> dataBeans, boolean isBackup, final v recoderCheckInterface) {
        if (dataBeans == null) {
            return;
        }
        if (dataBeans.size() == 1) {
            try {
                o0(dataBeans.get(0), isBackup, recoderCheckInterface);
                return;
            } catch (Exception unused) {
                recoderCheckInterface.a(false, null);
                return;
            }
        }
        this.N = 0;
        for (int i10 = 0; i10 < dataBeans.size(); i10++) {
            o0(dataBeans.get(i10), isBackup, new f(recoderCheckInterface));
        }
        if (this.N == dataBeans.size()) {
            recoderCheckInterface.a(true, null);
        }
    }

    @Background
    void q0(CloudListDataBean dataBean, String message) {
        String[] strArr;
        try {
            u0(true);
            if (this.f68758v == 1) {
                strArr = new String[]{"", ""};
            } else if (dataBean.getArchiveCoverFilePath() == null) {
                return;
            } else {
                strArr = new String[]{dataBean.getArchiveFilePath(), dataBean.getArchiveCoverFilePath()};
            }
            String[] strArr2 = strArr;
            l lVar = new l();
            UserInfo accountData = AccountUtil_.getInstance_(getActivity()).getAccountData();
            String strD = com.join.android.app.common.http.h.b().d(strArr2, accountData.getUid() + "", accountData.getToken(), this.f68757u, dataBean.getArchiveName(), dataBean.getArchiveFileName(), lVar, message, this.f68758v);
            if (com.join.mgps.Util.t2.i(strD)) {
                CLoudUploadMain cLoudUploadMain = (CLoudUploadMain) JsonMapper.getInstance().fromJson(strD, CLoudUploadMain.class);
                if (cLoudUploadMain.getCode() == 600) {
                    u0(false);
                    showMessage(cLoudUploadMain.getData_info().getMsg());
                    return;
                } else if ("701".equals(cLoudUploadMain.getMsg())) {
                    y0();
                    showMessage("你的登陆已失效，请重新登陆。");
                } else {
                    showMessage(cLoudUploadMain.getMsg());
                }
            } else {
                showMessage("分享失败");
            }
            u0(false);
        } catch (Exception e10) {
            e10.printStackTrace();
            showMessage("分享失败");
            u0(false);
        }
    }

    @UiThread
    void s0(boolean show) {
        try {
            if (show) {
                this.F.show();
            } else {
                this.F.dismiss();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showMessage(String msg) {
        com.join.mgps.Util.a3.b(getContext()).d(msg);
    }

    @Override // w6.c
    public void t(final CloudListDataBean dataBean) {
        UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
        if (accountData == null || accountData.getUid() == 0 || AccountUtil_.getInstance_(getContext()).isTourist()) {
            IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(dataBean);
        if (this.f68758v == 1) {
            w0(dataBean);
        } else {
            p0(arrayList, false, new i());
        }
    }

    @UiThread
    void t0(String txt) {
        com.join.mgps.Util.a3.b(getActivity()).d(txt);
    }

    @UiThread
    void u0(boolean show) {
        try {
            if (show) {
                this.G.show();
            } else {
                this.G.dismiss();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void updateUi(List<CloudListDataBean> datas) {
        if (this.C != null) {
            try {
                this.f68753q.clear();
                if (datas != null) {
                    this.f68753q.addAll(datas);
                }
                if (this.f68753q.size() == 0) {
                    i0();
                } else {
                    h0();
                }
                if (this.E) {
                    return;
                }
                this.C.notifyDataSetChanged();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public byte[] v0(String str) {
        if (str == null) {
            return null;
        }
        return str.getBytes();
    }

    @Override // w6.c
    public void w(final CloudListDataBean dataBean) {
        if (g0()) {
            if (!this.O) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(dataBean);
                p0(arrayList, true, new b());
            } else {
                com.join.mgps.Util.a3.b(getContext()).d("已有备份进行中");
                com.join.mgps.dialog.x xVar = this.F;
                if (xVar != null) {
                    xVar.show();
                }
            }
        }
    }

    @UiThread
    void w0(final CloudListDataBean dataBean) {
        if (g0()) {
            if (q5.f.M().G(this.f68757u).getPlugin_num().equals("31") && !dataBean.getArchiveFileName().contains("_v2")) {
                com.join.mgps.Util.a3.b(getContext()).d("此版本存档不能分享");
                return;
            }
            if (this.f68755s.getPapaMoney() < this.f68751o.getArchiveCoinPref().d().intValue()) {
                com.join.mgps.Util.a3.b(getContext()).d("铜板余额不足");
                return;
            }
            com.join.mgps.dialog.a0 a0VarB = new com.join.mgps.dialog.a0(getActivity(), R.style.HKDialogLoading).d("发布需要先扣除您" + this.f68751o.getArchiveCoinPref().d() + "铜板保证金，他人下载所支付铜板将完全归你所有。").g("确定").c("取消").f(new h(dataBean)).b(new g());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f68751o.getArchiveCoinPref().d());
            sb2.append("铜板");
            a0VarB.e(sb2.toString()).show();
        }
    }

    @Override // w6.c
    public void x(CloudListDataBean dataBean) {
        DocumentManageActivity documentManageActivity = (DocumentManageActivity) getActivity();
        if (documentManageActivity.isFromEMU()) {
            documentManageActivity.finish();
        }
    }

    @UiThread
    void x0(final CloudListDataBean dataBean) {
        if (this.f68751o.uploadRecoderNotice().d().booleanValue()) {
            new com.join.mgps.dialog.w(getActivity(), R.style.HKDialogLoading).g("备份须知").d("上传后，将以本地存档为准，覆盖云端同名存档。").f("确定").b("取消").e(new e(dataBean)).a(new d()).c(new c()).h(false).show();
        } else {
            E0(dataBean);
        }
    }

    @UiThread
    void y0() {
        AccountUtil_.getInstance_(getContext()).accountLoginOut(getContext());
        IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
    }

    @UiThread
    void z0(List<RomArchived> recordRoms) {
        if (this.f68745i == null || this.f68747k == null || this.f68744h == null) {
            return;
        }
        if (recordRoms != null) {
            try {
                if (recordRoms.size() != 0) {
                    this.f68745i.setVisibility(8);
                    this.f68744h.setVisibility(0);
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        this.f68745i.setVisibility(0);
        if (this.f68758v == 2) {
            this.f68747k.setText("请先启动游戏保存存档");
        } else {
            this.f68747k.setText("请先从本地备份存档");
        }
        this.f68744h.setVisibility(8);
    }
}
