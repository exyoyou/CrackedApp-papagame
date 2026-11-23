package com.join.mgps.adapter;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.DownloadSettingActivity_;
import com.join.mgps.activity.HandShankNoActivity_;
import com.join.mgps.activity.HandShankOverActivity_;
import com.join.mgps.activity.HandShankYesActivity_;
import com.join.mgps.activity.MGSettingActivity_;
import com.join.mgps.activity.MYAccountDetialActivity_;
import com.join.mgps.activity.PAPayCenterActivity_;
import com.join.mgps.activity.VoucherCodesBoxActivity_;
import com.join.mgps.db.tables.HandShankTable;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class k3 extends BaseAdapter {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f62595c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private UserInfo f62596d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f62597e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f62594b = getClass().getSimpleName();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String[] f62598f = {"存号箱", "下载设置", "建议与反馈", "更多", "饭票中心"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int[] f62599g = {R.drawable.save_code_icon, R.drawable.settingicon_blue, R.drawable.suggest_icon, R.drawable.more_icon, R.drawable.save_code_icon};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f62600h = false;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.intent(k3.this.f62595c).start();
            com.papa.sim.statistic.pref.b.k(k3.this.f62595c).B(false);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goLogin(k3.this.f62595c);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BluetoothAdapter.getDefaultAdapter() == null) {
                k3.this.f62595c.startActivity(new Intent(k3.this.f62595c, (Class<?>) HandShankOverActivity_.class));
                return;
            }
            List<HandShankTable> listO = t6.x.p().o();
            if (listO == null || listO.size() == 0) {
                k3.this.f62595c.startActivity(new Intent(k3.this.f62595c, (Class<?>) HandShankNoActivity_.class));
            } else {
                k3.this.f62595c.startActivity(new Intent(k3.this.f62595c, (Class<?>) HandShankYesActivity_.class));
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f62604b;

        d(final int val$i) {
            this.f62604b = val$i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i10 = this.f62604b;
            if (i10 == 1) {
                if (IntentUtil.getInstance().goLogin(k3.this.f62595c)) {
                    return;
                }
                VoucherCodesBoxActivity_.intent(k3.this.f62595c).a(k3.this.f62596d.getUid()).b(0).start();
            } else {
                if (i10 == 3) {
                    DownloadSettingActivity_.intent(k3.this.f62595c).start();
                    return;
                }
                if (i10 == 4) {
                    IntentDateBean intentDateBean = new IntentDateBean();
                    intentDateBean.setLink_type(4);
                    intentDateBean.setLink_type_val("http://bbs.5fun.com/forum.php?mod=viewthread&tid=56");
                    IntentUtil.getInstance().intentActivity(k3.this.f62595c, intentDateBean);
                    return;
                }
                if (i10 == 5) {
                    MGSettingActivity_.intent(k3.this.f62595c).start();
                } else if (i10 != 6) {
                    return;
                }
                PAPayCenterActivity_.intent(k3.this.f62595c).start();
            }
        }
    }

    class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        RelativeLayout f62606a;

        e() {
        }
    }

    class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        RelativeLayout f62608a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f62609b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ImageView f62610c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f62611d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f62612e;

        f() {
        }
    }

    class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f62614a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        LinearLayout f62615b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        SimpleDraweeView f62616c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f62617d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ImageView f62618e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f62619f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f62620g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f62621h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        TextView f62622i;

        g() {
        }
    }

    public k3(Context _context) {
        this.f62595c = _context;
    }

    public UserInfo c() {
        return this.f62596d;
    }

    public void d(UserInfo accountData) {
        this.f62596d = accountData;
        notifyDataSetChanged();
    }

    public void e(boolean showGBA) {
        this.f62600h = showGBA;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62598f.length + 2;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        if (position == 0) {
            return 0;
        }
        return position == 2 ? 1 : 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        f fVar;
        f fVar2;
        View view2;
        int itemViewType = getItemViewType(i10);
        e eVar = null;
        g gVar = null;
        eVar = null;
        eVar = null;
        eVar = null;
        if (view == null) {
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    e eVar2 = new e();
                    View viewInflate = LayoutInflater.from(this.f62595c).inflate(R.layout.manage_handshank_item, (ViewGroup) null);
                    eVar2.f62606a = (RelativeLayout) viewInflate.findViewById(R.id.itemLayout);
                    viewInflate.setTag(eVar2);
                    eVar = eVar2;
                    view = viewInflate;
                } else if (itemViewType == 2) {
                    f fVar3 = new f();
                    View viewInflate2 = LayoutInflater.from(this.f62595c).inflate(R.layout.manage_content_item, (ViewGroup) null);
                    fVar3.f62608a = (RelativeLayout) viewInflate2.findViewById(R.id.itemLayout);
                    fVar3.f62609b = (ImageView) viewInflate2.findViewById(R.id.itemImage);
                    fVar3.f62610c = (ImageView) viewInflate2.findViewById(R.id.arrowImage);
                    fVar3.f62611d = (TextView) viewInflate2.findViewById(R.id.itemTitle);
                    fVar3.f62612e = (TextView) viewInflate2.findViewById(R.id.itemCount);
                    viewInflate2.setTag(fVar3);
                    gVar = null;
                    view2 = viewInflate2;
                    fVar2 = fVar3;
                }
                fVar = eVar;
            } else {
                g gVar2 = new g();
                View viewInflate3 = LayoutInflater.from(this.f62595c).inflate(R.layout.manage_top_item, (ViewGroup) null);
                gVar2.f62614a = (LinearLayout) viewInflate3.findViewById(R.id.myAccountUnSuccess);
                gVar2.f62615b = (LinearLayout) viewInflate3.findViewById(R.id.myAccountSuccess);
                gVar2.f62616c = (SimpleDraweeView) viewInflate3.findViewById(R.id.userIcon);
                gVar2.f62617d = (ImageView) viewInflate3.findViewById(R.id.setUser);
                gVar2.f62618e = (ImageView) viewInflate3.findViewById(R.id.genderText);
                gVar2.f62619f = (TextView) viewInflate3.findViewById(R.id.accountName);
                gVar2.f62621h = (TextView) viewInflate3.findViewById(R.id.papabiNumber);
                gVar2.f62622i = (TextView) viewInflate3.findViewById(R.id.papaGonglue);
                gVar2.f62620g = (TextView) viewInflate3.findViewById(R.id.levelTv);
                viewInflate3.setTag(gVar2);
                fVar2 = null;
                view2 = viewInflate3;
                gVar = gVar2;
            }
            view = view2;
            fVar = fVar2;
        } else if (itemViewType == 0) {
            gVar = (g) view.getTag();
            fVar = 0;
        } else if (itemViewType == 1) {
            fVar = 0;
            eVar = (e) view.getTag();
            gVar = null;
        } else if (itemViewType != 2) {
            fVar = eVar;
        } else {
            fVar = (f) view.getTag();
            gVar = null;
        }
        if (itemViewType != 0) {
            if (itemViewType == 1) {
                eVar.f62606a.setOnClickListener(new c());
            } else if (itemViewType == 2) {
                if (i10 == 1) {
                    fVar.f62609b.setImageResource(this.f62599g[0]);
                    fVar.f62611d.setText(this.f62598f[0]);
                } else {
                    int i11 = i10 - 2;
                    fVar.f62609b.setImageResource(this.f62599g[i11]);
                    fVar.f62611d.setText(this.f62598f[i11]);
                }
                fVar.f62608a.setOnClickListener(new d(i10));
            }
        } else if (this.f62596d != null) {
            gVar.f62615b.setVisibility(0);
            gVar.f62614a.setVisibility(8);
            if (com.papa.sim.statistic.pref.b.k(this.f62595c).g()) {
                gVar.f62617d.setVisibility(0);
            } else {
                gVar.f62617d.setVisibility(8);
            }
            UtilsMy.J3(this.f62595c, this.f62596d.getAvatarSrc(), gVar.f62616c);
            com.join.mgps.Util.w.h(this.f62596d.getLevel(), gVar.f62620g);
            gVar.f62620g.setText("LV." + this.f62596d.getLevel());
            gVar.f62619f.setText(this.f62596d.getNickname());
            gVar.f62621h.setText(this.f62596d.getPapaMoney() + "铜板");
            int gender = this.f62596d.getGender();
            if (gender == 1) {
                gVar.f62618e.setImageResource(R.drawable.account_center_man);
            } else if (gender == 2) {
                gVar.f62618e.setImageResource(R.drawable.account_center_giler);
            }
            gVar.f62615b.setOnClickListener(new a());
        } else {
            gVar.f62615b.setVisibility(8);
            gVar.f62614a.setVisibility(0);
            gVar.f62614a.setOnClickListener(new b());
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }
}
