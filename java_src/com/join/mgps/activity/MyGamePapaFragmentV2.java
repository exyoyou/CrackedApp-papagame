package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.collection.SimpleArrayMap;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.bykv.vk.component.ttvideo.player.C;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.mygame.dialog.WufunGameDownFirstNotPermissDialog_;
import com.join.mgps.broadcast.NetBroadcastReceiver;
import com.join.mgps.customview.LoadingLayout;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_my_game)
public class MyGamePapaFragmentV2 extends com.join.mgps.basefragment.a {
    public static final String H = "网游";
    public static final String I = "单机";
    public static final String J = "对战";
    public static final String K = "全部游戏";
    private static final int L = -13421773;
    private static final int M = -6710887;
    long A;
    com.join.mgps.rpc.e B;

    @Pref
    PrefDef_ C;
    private f D;
    private NetBroadcastReceiver G;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f55073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    View f55074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    View f55075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f55076g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    TextView f55077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    View f55078i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    TextView f55079j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    TextView f55080k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    View f55081l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    View f55082m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    View f55083n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    View f55084o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    ViewPager2 f55085p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewById
    TabLayout f55086q;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private OnlineCouponConfigBean f55093x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Typeface f55095z;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    List<String> f55087r = new ArrayList();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    List<String> f55088s = new ArrayList();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private List<DownloadTask> f55089t = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f55090u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    com.join.mgps.pref.f f55091v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f55092w = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    ArrayList<String> f55094y = new ArrayList<String>() { // from class: com.join.mgps.activity.MyGamePapaFragmentV2.1
        {
            add("本机游戏");
            add("我的收藏");
        }
    };
    boolean E = false;
    int F = 0;

    class a implements TabLayout.d {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            TabLayout tabLayout = MyGamePapaFragmentV2.this.f55086q;
            tabLayout.R(tabLayout.D(1));
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(TabLayout.g tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabSelected(TabLayout.g tab) {
            if (tab == null || tab.g() == null) {
                return;
            }
            MyGamePapaFragmentV2.this.d0(tab.k());
            if (tab.k() == 2) {
                UserInfo accountData = AccountUtil_.getInstance_(MyGamePapaFragmentV2.this.f55073d).getAccountData();
                if (AccountUtil_.getInstance_(MyGamePapaFragmentV2.this.f55073d).isTourist() || accountData == null || TextUtils.isEmpty(accountData.getToken())) {
                    IntentUtil.getInstance().goLogin(MyGamePapaFragmentV2.this.f55073d);
                    MyGamePapaFragmentV2.this.f55086q.postDelayed(new Runnable() { // from class: com.join.mgps.activity.c8
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f56896b.b();
                        }
                    }, 500L);
                }
            }
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(TabLayout.g tab) {
        }
    }

    class b extends ViewPager2.OnPageChangeCallback {
        b() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int position) {
            z7 z7Var;
            super.onPageSelected(position);
            if ((com.join.mgps.Util.w0.j() && position == 2) || (!com.join.mgps.Util.w0.j() && position == 1)) {
                if (MyGamePapaFragmentV2.this.D != null && MyGamePapaFragmentV2.this.D.b(position) != null && (MyGamePapaFragmentV2.this.D.b(position) instanceof z7) && (z7Var = (z7) MyGamePapaFragmentV2.this.D.b(position)) != null) {
                    z7Var.X(true);
                }
                com.papa.sim.statistic.t.l(MyGamePapaFragmentV2.this.f55073d).R1(Event.clickFavoritesBtn, new Ext());
            }
            MyGamePapaFragmentV2.this.m0(position);
        }
    }

    class c implements com.google.android.material.tabs.d.b {
        c() {
        }

        @Override // com.google.android.material.tabs.d.b
        public void a(@NonNull TabLayout.g tab, int position) {
            View viewInflate = LayoutInflater.from(MyGamePapaFragmentV2.this.f55073d).inflate(R.layout.papa_game_fav_tab1, (ViewGroup) null);
            ((TextView) viewInflate.findViewById(R.id.name)).setText(MyGamePapaFragmentV2.this.f55094y.get(position));
            tab.v(viewInflate);
        }
    }

    class d implements com.join.mgps.customview.d0.a {
        d() {
        }

        @Override // com.join.mgps.customview.d0.a
        public void a() {
            MyGamePapaFragmentV2.this.i0();
        }

        @Override // com.join.mgps.customview.d0.a
        public void b() {
            IntentUtil.getInstance().goDownloadSettingActivity(MyGamePapaFragmentV2.this.getContext());
        }
    }

    class e implements NetBroadcastReceiver.a {
        e() {
        }

        @Override // com.join.mgps.broadcast.NetBroadcastReceiver.a
        public void a(int netMobile) {
        }
    }

    class f extends FragmentStateAdapter {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<String> f55103e;

        public f(Fragment fragment, List<String> datas) {
            super(fragment);
            this.f55103e = datas;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Fragment b(int position) {
            Fragment fragmentFindFragmentByTag = MyGamePapaFragmentV2.this.getChildFragmentManager().findFragmentByTag(com.xinzhu.overmind.server.os.f.TAG + getItemId(position));
            if (fragmentFindFragmentByTag != null) {
                return fragmentFindFragmentByTag;
            }
            return null;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public boolean containsItem(long itemId) {
            long j10 = itemId - 1000;
            return j10 >= 0 && j10 < ((long) getItemCount());
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NonNull
        public Fragment createFragment(int position) {
            d8 d8VarA = MyGamePapaLocalFragment_.J0().build();
            if (TextUtils.equals(this.f55103e.get(position), "本机游戏")) {
                return MyGamePapaLocalFragment_.J0().build();
            }
            if (TextUtils.equals(this.f55103e.get(position), "云玩")) {
                return MyGamePapaCloudFragment_.builder().build();
            }
            return TextUtils.equals(this.f55103e.get(position), "我的收藏") ? z7.e0().build() : d8VarA;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f55103e.size();
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int position) {
            return position + 1000;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0(int selectedPos) {
        TabLayout tabLayout = this.f55086q;
        if (tabLayout == null || this.f55073d == null) {
            return;
        }
        int tabCount = tabLayout.getTabCount();
        float dimension = this.f55073d.getResources().getDimension(R.dimen.wdp35);
        float dimension2 = this.f55073d.getResources().getDimension(R.dimen.wdp26);
        int i10 = 0;
        while (i10 < tabCount) {
            TabLayout.g gVarD = this.f55086q.D(i10);
            if (gVarD != null && gVarD.g() != null) {
                View viewG = gVarD.g();
                TextView textView = (TextView) viewG.findViewById(R.id.name);
                TextView textView2 = (TextView) viewG.findViewById(R.id.count);
                if (textView != null) {
                    if (textView2 != null) {
                        textView2.setVisibility(8);
                    }
                    if (i10 == selectedPos) {
                        textView.setTextColor(L);
                        textView.setTextSize(0, dimension);
                        Typeface typeface = this.f55095z;
                        if (typeface == null) {
                            typeface = Typeface.DEFAULT;
                        }
                        textView.setTypeface(typeface, 0);
                    } else {
                        textView.setTextColor(M);
                        textView.setTextSize(0, dimension2);
                        textView.setTypeface(Typeface.DEFAULT, 0);
                    }
                }
            }
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0() {
        this.f55091v.callbackHome(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g0() {
        TabLayout tabLayout = this.f55086q;
        if (tabLayout != null) {
            d0(tabLayout.getSelectedTabPosition());
        }
    }

    @Override // com.join.mgps.basefragment.a
    protected int P() {
        return R.layout.fragment_my_game;
    }

    @Override // com.join.mgps.basefragment.a
    protected int Q() {
        return R.id.fragment_my_game;
    }

    @Override // com.join.mgps.basefragment.a
    protected int R() {
        return com.join.mgps.Util.i0.a(getContext(), 48.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @AfterViews
    void afterViews() {
        h0();
        this.f55073d = getContext();
        com.join.mgps.Util.j0.a().d(this);
        if (Build.VERSION.SDK_INT > 28 && this.C.needShowPermissdialog().d().booleanValue() && !UtilsMy.n0(this.f55073d)) {
            ((WufunGameDownFirstNotPermissDialog_.IntentBuilder_) WufunGameDownFirstNotPermissDialog_.intent(this.f55073d).from(2).flags(C.ENCODING_PCM_MU_LAW)).start();
        }
        this.B = com.join.mgps.rpc.impl.d.O1();
        Context context = this.f55073d;
        if (context != null) {
            this.f55095z = ResourcesCompat.getFont(context, R.font.logosc_unbounded_sans);
        }
        if (this.f55081l == null) {
            this.f55081l = ((Activity) getContext()).getWindow().getDecorView().findViewById(R.id.root);
        }
        if (com.join.mgps.Util.w0.j()) {
            this.f55094y = new ArrayList<String>() { // from class: com.join.mgps.activity.MyGamePapaFragmentV2.2
                {
                    add("本机游戏");
                    add("云玩");
                    add("我的收藏");
                }
            };
        }
        if (getContext() instanceof MyGameManagerActivity) {
            this.f55082m.setVisibility(8);
            this.f55083n.setVisibility(0);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f55086q.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = (int) getResources().getDimension(R.dimen.wdp90);
            this.f55086q.setLayoutParams(layoutParams);
        }
        if (getActivity() instanceof MGMainActivity) {
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.f55084o.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).height = com.join.android.app.common.utils.q.v(getContext());
            this.f55084o.setLayoutParams(layoutParams2);
        } else {
            this.f55084o.setBackgroundColor(-1);
        }
        this.f64133c.setNoDataCallBackListener(new LoadingLayout.a() { // from class: com.join.mgps.activity.a8
            @Override // com.join.mgps.customview.LoadingLayout.a
            public final void noDataCallBack() {
                this.f56461b.f0();
            }
        });
        this.f55086q.h(new a());
        f fVar = new f(this, this.f55094y);
        this.D = fVar;
        this.f55085p.setAdapter(fVar);
        this.f55085p.registerOnPageChangeCallback(new b());
        new com.google.android.material.tabs.d(this.f55086q, this.f55085p, new c()).a();
        com.join.mgps.Util.w2.a(this.f55086q);
        this.f55086q.post(new Runnable() { // from class: com.join.mgps.activity.b8
            @Override // java.lang.Runnable
            public final void run() {
                this.f56871b.g0();
            }
        });
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.F = arguments.getInt("defaultTab", 0);
        }
        this.E = true;
        this.f55085p.setCurrentItem(this.F);
    }

    @Click
    void back() {
        if (getContext() instanceof Activity) {
            ((Activity) getContext()).finish();
        }
    }

    String e0(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return "";
        }
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
        StringBuilder sb2 = new StringBuilder();
        ConstantIntEnum constantIntEnum = ConstantIntEnum.FBA;
        sb2.append(constantIntEnum.value());
        sb2.append("");
        simpleArrayMap.put(sb2.toString(), constantIntEnum.nickName());
        StringBuilder sb3 = new StringBuilder();
        ConstantIntEnum constantIntEnum2 = ConstantIntEnum.FC;
        sb3.append(constantIntEnum2.value());
        sb3.append("");
        simpleArrayMap.put(sb3.toString(), constantIntEnum2.nickName());
        StringBuilder sb4 = new StringBuilder();
        ConstantIntEnum constantIntEnum3 = ConstantIntEnum.GBA;
        sb4.append(constantIntEnum3.value());
        sb4.append("");
        simpleArrayMap.put(sb4.toString(), constantIntEnum3.nickName());
        StringBuilder sb5 = new StringBuilder();
        ConstantIntEnum constantIntEnum4 = ConstantIntEnum.PSP;
        sb5.append(constantIntEnum4.value());
        sb5.append("");
        simpleArrayMap.put(sb5.toString(), constantIntEnum4.nickName());
        StringBuilder sb6 = new StringBuilder();
        ConstantIntEnum constantIntEnum5 = ConstantIntEnum.NDS;
        sb6.append(constantIntEnum5.value());
        sb6.append("");
        simpleArrayMap.put(sb6.toString(), constantIntEnum5.nickName());
        StringBuilder sb7 = new StringBuilder();
        ConstantIntEnum constantIntEnum6 = ConstantIntEnum.PS2;
        sb7.append(constantIntEnum6.value());
        sb7.append("");
        simpleArrayMap.put(sb7.toString(), constantIntEnum6.nickName());
        StringBuilder sb8 = new StringBuilder();
        ConstantIntEnum constantIntEnum7 = ConstantIntEnum.GBC;
        sb8.append(constantIntEnum7.value());
        sb8.append("");
        simpleArrayMap.put(sb8.toString(), constantIntEnum7.nickName());
        StringBuilder sb9 = new StringBuilder();
        ConstantIntEnum constantIntEnum8 = ConstantIntEnum.MD;
        sb9.append(constantIntEnum8.value());
        sb9.append("");
        simpleArrayMap.put(sb9.toString(), constantIntEnum8.nickName());
        simpleArrayMap.put(constantIntEnum8.value() + "", constantIntEnum8.nickName());
        StringBuilder sb10 = new StringBuilder();
        ConstantIntEnum constantIntEnum9 = ConstantIntEnum.PS;
        sb10.append(constantIntEnum9.value());
        sb10.append("");
        simpleArrayMap.put(sb10.toString(), constantIntEnum9.nickName());
        StringBuilder sb11 = new StringBuilder();
        ConstantIntEnum constantIntEnum10 = ConstantIntEnum.SFC;
        sb11.append(constantIntEnum10.value());
        sb11.append("");
        simpleArrayMap.put(sb11.toString(), constantIntEnum10.nickName());
        StringBuilder sb12 = new StringBuilder();
        ConstantIntEnum constantIntEnum11 = ConstantIntEnum.WSC;
        sb12.append(constantIntEnum11.value());
        sb12.append("");
        simpleArrayMap.put(sb12.toString(), constantIntEnum11.nickName());
        StringBuilder sb13 = new StringBuilder();
        ConstantIntEnum constantIntEnum12 = ConstantIntEnum.N64;
        sb13.append(constantIntEnum12.value());
        sb13.append("");
        simpleArrayMap.put(sb13.toString(), constantIntEnum12.nickName());
        StringBuilder sb14 = new StringBuilder();
        ConstantIntEnum constantIntEnum13 = ConstantIntEnum.ONS;
        sb14.append(constantIntEnum13.value());
        sb14.append("");
        simpleArrayMap.put(sb14.toString(), constantIntEnum13.nickName());
        StringBuilder sb15 = new StringBuilder();
        ConstantIntEnum constantIntEnum14 = ConstantIntEnum.DC;
        sb15.append(constantIntEnum14.value());
        sb15.append("");
        simpleArrayMap.put(sb15.toString(), constantIntEnum14.nickName());
        StringBuilder sb16 = new StringBuilder();
        ConstantIntEnum constantIntEnum15 = ConstantIntEnum.H5;
        sb16.append(constantIntEnum15.value());
        sb16.append("");
        simpleArrayMap.put(sb16.toString(), constantIntEnum15.nickName());
        String romType = downloadTask.getRomType();
        if (TextUtils.isEmpty(romType)) {
            downloadTask.setRomType(downloadTask.getPlugin_num());
        }
        return simpleArrayMap.containsKey(romType) ? (String) simpleArrayMap.get(romType) : "";
    }

    void h0() {
        NetBroadcastReceiver netBroadcastReceiver = new NetBroadcastReceiver();
        this.G = netBroadcastReceiver;
        netBroadcastReceiver.a(new e());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        getContext().registerReceiver(this.G, intentFilter);
    }

    void i0() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.A <= 300) {
            return;
        }
        this.A = jCurrentTimeMillis;
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.a0(0));
    }

    @Click
    void j0() {
        com.join.mgps.customview.d0 d0Var = new com.join.mgps.customview.d0(getContext());
        d0Var.d(new d());
        d0Var.e(this.f55081l);
    }

    public void k0(int position) {
        if (this.f55085p == null || position >= this.f55094y.size() || position < 0) {
            return;
        }
        this.E = true;
        this.f55085p.setCurrentItem(position);
    }

    void l0() {
        if (this.G != null) {
            getContext().unregisterReceiver(this.G);
        }
    }

    @Override // com.join.mgps.basefragment.a, com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    @Override // com.join.mgps.basefragment.a
    protected void loadData() {
    }

    void m0(int position) {
        List<DownloadTask> listQ = q5.f.M().Q();
        if (listQ == null || listQ.size() <= 0) {
            this.f55075f.setVisibility(8);
            return;
        }
        if (position == 0) {
            this.f55075f.setVisibility(0);
        }
        DownloadTask downloadTask = listQ.get(0);
        this.f55076g.setText(e0(downloadTask) + "插件正在下载中");
        this.f55077h.setText(downloadTask.getProgress() + "%");
    }

    public void notifyShortcutAdded(String gameId) {
        f fVar = this.D;
        if (fVar != null) {
            Fragment fragmentB = fVar.b(this.f55085p.getCurrentItem());
            if (fragmentB instanceof MyGamePapaLocalFragment_) {
                ((MyGamePapaLocalFragment_) fragmentB).notifyShortcutAdded(gameId);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (getActivity() instanceof MGMainActivity) {
            this.f55091v = (MGMainActivity) getActivity();
        }
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        org.greenrobot.eventbus.c.f().A(this);
        l0();
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        downloadTaskEvent.a();
        if (downloadTaskEvent.c() != 8) {
            return;
        }
        m0(this.f55085p.getCurrentItem());
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        ViewPager2 viewPager2 = this.f55085p;
        if (viewPager2 != null && !this.E) {
            viewPager2.setCurrentItem(0);
        }
        this.E = false;
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Click
    void plugs() {
        MyGamePlugManagerActivity_.intent(getContext()).start();
    }

    @Receiver(actions = {p5.a.I})
    void refreshGamePurchasedList() {
        loadData();
    }

    public void refreshNotOpenState() {
        f fVar = this.D;
        if (fVar != null) {
            Fragment fragmentB = fVar.b(this.f55085p.getCurrentItem());
            if (fragmentB instanceof MyGamePapaLocalFragment_) {
                ((MyGamePapaLocalFragment_) fragmentB).refreshNotOpenState();
            }
        }
    }

    @Click
    void search() {
        IntentUtil.getInstance().goSearchHintActivity(getContext());
    }

    @Click
    void setNetwork() {
        this.f55091v.callbackHome(null);
    }
}
