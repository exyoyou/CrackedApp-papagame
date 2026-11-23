package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.MyRadioGroup;
import com.join.mgps.customview.SlidingTabLayout;
import com.join.mgps.db.tables.CategoryRecordTable;
import com.join.mgps.dto.CategoryBean;
import com.join.mgps.dto.CategorySimpleBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Where;
import com.papa91.arc.CContext;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.my_game_layout)
public class MGMainClassifyFragment extends Fragment implements com.join.mgps.pref.b {
    public static final String J = "MGMainClassifyFragment";

    @ViewById
    TextView A;

    @ViewById
    LinearLayout B;

    @ViewById
    ToggleButton C;
    com.join.mgps.rpc.e D;

    @Pref
    PrefDef_ F;
    private com.join.mgps.pref.f G;
    String I;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f54548c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.join.mgps.activity.k f54549d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.join.mgps.activity.k f54550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.join.mgps.activity.k f54551f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.join.mgps.customview.e0 f54552g;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ViewById
    LinearLayout f54565t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @ViewById
    LinearLayout f54566u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @ViewById
    LinearLayout f54567v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @ViewById
    MViewpagerV4 f54568w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @ViewById
    SlidingTabLayout f54569x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @ViewById
    ToggleButton f54570y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @ViewById
    TextView f54571z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<Fragment> f54553h = new ArrayList<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<String> f54554i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<CategorySimpleBean> f54555j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private PopupWindow f54556k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private PopupWindow f54557l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f54558m = "";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f54559n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f54560o = -9211021;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f54561p = -756480;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f54562q = -1644167168;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final String[] f54563r = {LocalGameActivity.ALL};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final String[] f54564s = {""};
    private int E = 14;
    int[] H = new int[2];

    enum GameType {
        PLAT_ALL("", LocalGameActivity.ALL, "筛选", R.drawable.plat_all),
        FEATURED_ONLINE("10001", "精选网游", "网游", R.drawable.online_game),
        LARGE_SINGLE("10002", "大型单机", "单机", R.drawable.stand_alone_game),
        FC("35", "FC小霸王", CContext.SCENE_FC, R.drawable.f35448fc),
        FBA("31", "街机游戏", "街机", R.drawable.jg),
        GBA("33", "GBA游戏", CContext.SCENE_GBA, R.drawable.gba),
        PSP("34", "PSP游戏", CContext.SCENE_PSP, R.drawable.psp),
        PS("53", "PS游戏", "PS", R.drawable.ps),
        SFC("43", "SFC游戏", "SFC", R.drawable.sfc),
        MD("51", "MD游戏", "MD", R.drawable.md),
        WSC("54", "WSC游戏", "WSC", R.drawable.wsc),
        NDS("32", "NDS游戏", "NDS", R.drawable.nds),
        GBC("56", "GBC游戏", "GBC", R.drawable.gbc),
        N64("57", "N64游戏", "N64", R.drawable.n64),
        ONS("58", "ONS游戏", "ONS", R.drawable.ons),
        DC("60", "dc游戏", "DC", R.drawable.dc_icon),
        PS2("167", "PS2游戏", "PS2", R.drawable.ps2_icon),
        N3DS("168", "3DS游戏", "3DS", R.drawable.n3ds_icon);


        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f54572id;
        private int resId;
        private String title;
        private String titleAbbr;

        GameType(String id2, String title, String titleAbbr, int resId) {
            this.f54572id = id2;
            this.title = title;
            this.titleAbbr = titleAbbr;
            this.resId = resId;
        }

        public String id() {
            return this.f54572id;
        }

        public int resId() {
            return this.resId;
        }

        public String title() {
            return this.title;
        }

        public String titleAbbr() {
            return this.titleAbbr;
        }
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGMainClassifyFragment.this.f54556k == null || !MGMainClassifyFragment.this.f54556k.isShowing()) {
                return;
            }
            MGMainClassifyFragment.this.f54556k.dismiss();
        }
    }

    class b implements CompoundButton.OnCheckedChangeListener {
        b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean b10) {
            if (b10) {
                MGMainClassifyFragment.this.h0();
            }
        }
    }

    class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean b10) {
            if (b10) {
                MGMainClassifyFragment.this.i0();
            }
        }
    }

    class d implements CompoundButton.OnCheckedChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RadioButton f54576a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54577b;

        d(final RadioButton val$radioButton, final String val$id) {
            this.f54576a = val$radioButton;
            this.f54577b = val$id;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean b10) {
            if (!b10) {
                this.f54576a.setTextColor(-12829636);
                return;
            }
            MGMainClassifyFragment.this.f54563r[0] = this.f54576a.getText().toString().trim();
            MGMainClassifyFragment.this.f54564s[0] = this.f54577b;
            this.f54576a.setTextColor(-756480);
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGMainClassifyFragment.this.f54557l == null || !MGMainClassifyFragment.this.f54557l.isShowing()) {
                return;
            }
            MGMainClassifyFragment.this.f54557l.dismiss();
        }
    }

    class f implements PopupWindow.OnDismissListener {
        f() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            MGMainClassifyFragment.this.f54571z.setVisibility(8);
            MGMainClassifyFragment.this.C.setVisibility(0);
            MGMainClassifyFragment.this.B.setVisibility(0);
            MGMainClassifyFragment.this.f54570y.setVisibility(0);
            MGMainClassifyFragment.this.A.setVisibility(8);
            MGMainClassifyFragment.this.F.isReloadClassify().g(Boolean.FALSE);
            MGMainClassifyFragment.this.G.callbackDownloadCenterVisible(null);
            MGMainClassifyFragment.this.C.setChecked(false);
            MGMainClassifyFragment mGMainClassifyFragment = MGMainClassifyFragment.this;
            if (mGMainClassifyFragment.I.equals(mGMainClassifyFragment.f54563r[0])) {
                return;
            }
            MGMainClassifyFragment mGMainClassifyFragment2 = MGMainClassifyFragment.this;
            mGMainClassifyFragment2.b0(mGMainClassifyFragment2.f54563r[0]);
            MGMainClassifyFragment.this.f54549d.g0(MGMainClassifyFragment.this.f54564s[0]);
            MGMainClassifyFragment.this.d0();
            MGMainClassifyFragment.this.a0();
        }
    }

    class g implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Button f54581b;

        g(final Button val$button) {
            this.f54581b = val$button;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    this.f54581b.setTextColor(MGMainClassifyFragment.this.f54560o);
                    return false;
                }
                if (action != 2) {
                    return false;
                }
                this.f54581b.setTextColor(MGMainClassifyFragment.this.f54561p);
                return false;
            }
            this.f54581b.setTextColor(MGMainClassifyFragment.this.f54561p);
            MGMainClassifyFragment.this.f54556k.dismiss();
            MGMainClassifyFragment.this.f54570y.setText("分类");
            MGMainClassifyFragment.this.f54570y.setTextOn("分类");
            MGMainClassifyFragment.this.f54570y.setTextOff("分类");
            MGMainClassifyFragment.this.f54549d.f0("");
            MGMainClassifyFragment.this.c0("");
            MGMainClassifyFragment.this.Z("");
            return false;
        }
    }

    class h implements CompoundButton.OnCheckedChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RadioButton f54583a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CategorySimpleBean f54584b;

        h(final RadioButton val$radioButtonVerticalFirst, final CategorySimpleBean val$categorySimpleBeanFirst) {
            this.f54583a = val$radioButtonVerticalFirst;
            this.f54584b = val$categorySimpleBeanFirst;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean b10) {
            if (!b10) {
                this.f54583a.setTextColor(MGMainClassifyFragment.this.f54560o);
                return;
            }
            this.f54583a.setTextColor(MGMainClassifyFragment.this.f54561p);
            if (MGMainClassifyFragment.this.f54556k == null || !MGMainClassifyFragment.this.f54556k.isShowing()) {
                return;
            }
            MGMainClassifyFragment.this.f54556k.dismiss();
            MGMainClassifyFragment.this.f54570y.setText(this.f54584b.getTitle());
            MGMainClassifyFragment.this.f54570y.setTextOff(this.f54584b.getTitle());
            MGMainClassifyFragment.this.f54570y.setTextOn(this.f54584b.getTitle());
            MGMainClassifyFragment.this.f54549d.f0(this.f54584b.getId());
            MGMainClassifyFragment.this.c0(this.f54584b.getId());
            MGMainClassifyFragment.this.Z(this.f54584b.getId());
        }
    }

    class i implements CompoundButton.OnCheckedChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RadioButton f54586a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CategorySimpleBean f54587b;

        i(final RadioButton val$radioButtonVerticalSecond, final CategorySimpleBean val$categorySimpleBeanSecond) {
            this.f54586a = val$radioButtonVerticalSecond;
            this.f54587b = val$categorySimpleBeanSecond;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean b10) {
            if (!b10) {
                this.f54586a.setTextColor(MGMainClassifyFragment.this.f54560o);
                return;
            }
            this.f54586a.setTextColor(MGMainClassifyFragment.this.f54561p);
            if (MGMainClassifyFragment.this.f54556k == null || !MGMainClassifyFragment.this.f54556k.isShowing()) {
                return;
            }
            MGMainClassifyFragment.this.f54556k.dismiss();
            MGMainClassifyFragment.this.f54570y.setText(this.f54587b.getTitle());
            MGMainClassifyFragment.this.f54570y.setTextOff(this.f54587b.getTitle());
            MGMainClassifyFragment.this.f54570y.setTextOn(this.f54587b.getTitle());
            MGMainClassifyFragment.this.f54549d.f0(this.f54587b.getId());
            MGMainClassifyFragment.this.c0(this.f54587b.getId());
            MGMainClassifyFragment.this.Z(this.f54587b.getId());
        }
    }

    class j implements CompoundButton.OnCheckedChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RadioButton f54589a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CategorySimpleBean f54590b;

        j(final RadioButton val$radioButtonVerticalThree, final CategorySimpleBean val$categorySimpleBeanThree) {
            this.f54589a = val$radioButtonVerticalThree;
            this.f54590b = val$categorySimpleBeanThree;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean b10) {
            if (!b10) {
                this.f54589a.setTextColor(MGMainClassifyFragment.this.f54560o);
                return;
            }
            this.f54589a.setTextColor(MGMainClassifyFragment.this.f54561p);
            if (MGMainClassifyFragment.this.f54556k == null || !MGMainClassifyFragment.this.f54556k.isShowing()) {
                return;
            }
            MGMainClassifyFragment.this.f54556k.dismiss();
            MGMainClassifyFragment.this.f54570y.setText(this.f54590b.getTitle());
            MGMainClassifyFragment.this.f54570y.setTextOff(this.f54590b.getTitle());
            MGMainClassifyFragment.this.f54570y.setTextOn(this.f54590b.getTitle());
            MGMainClassifyFragment.this.f54549d.f0(this.f54590b.getId());
            MGMainClassifyFragment.this.c0(this.f54590b.getId());
            MGMainClassifyFragment.this.Z(this.f54590b.getId());
        }
    }

    class k implements PopupWindow.OnDismissListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private LinearLayout f54592b;

        public k(LinearLayout layout) {
            this.f54592b = layout;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            this.f54592b.setVisibility(8);
            MGMainClassifyFragment.this.f54570y.setChecked(false);
        }
    }

    private void M() {
        this.F.isReloadClassify().g(Boolean.FALSE);
        this.G.callbackDownloadCenterVisible(null);
        if (this.F.isFirstClickClassify().d().booleanValue() && !isHidden()) {
            this.G.callbackClassifyTipsVisible(null);
        }
        try {
            this.f54554i.add("最热");
            this.f54554i.add("飙升");
            this.f54554i.add("新锐");
            for (int i10 = 0; i10 < this.f54554i.size(); i10++) {
                if (i10 == 0) {
                    com.join.mgps.activity.k kVarX = com.join.mgps.activity.k.X("1", this.f54558m);
                    this.f54549d = kVarX;
                    this.f54553h.add(kVarX);
                } else if (i10 == 1) {
                    com.join.mgps.activity.k kVarX2 = com.join.mgps.activity.k.X("2", this.f54558m);
                    this.f54550e = kVarX2;
                    this.f54553h.add(kVarX2);
                } else if (i10 == 2) {
                    com.join.mgps.activity.k kVarX3 = com.join.mgps.activity.k.X("3", this.f54558m);
                    this.f54551f = kVarX3;
                    this.f54553h.add(kVarX3);
                }
            }
            if (this.f54568w == null) {
                this.f54568w = (MViewpagerV4) LayoutInflater.from(this.f54548c).inflate(R.layout.my_game_layout, (ViewGroup) null, false).findViewById(R.id.mViewpagerV4);
            }
            this.f54568w.setIntercept(false);
            com.join.mgps.customview.e0 e0Var = new com.join.mgps.customview.e0(getChildFragmentManager(), this.f54553h, this.f54554i);
            this.f54552g = e0Var;
            e0Var.d(this.f54553h, this.f54554i);
            this.f54552g.notifyDataSetChanged();
            this.f54568w.setAdapter(this.f54552g);
            this.f54568w.setOffscreenPageLimit(3);
            this.f54569x.setCustomTabView(R.layout.classsify_tab_indicator, android.R.id.text1);
            int i11 = this.f54559n;
            if (i11 >= 540) {
                this.f54569x.setMarginWidth(i11 / 20);
            } else {
                this.f54569x.setMarginWidth(10);
            }
            this.f54569x.setSelectedIndicatorColors(-882134);
            this.f54569x.setDistributeEvenly(true);
            this.f54569x.setViewPager(this.f54568w);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private List<CategorySimpleBean> T(CategoryBean categoryBean) {
        if (categoryBean.getMessages().getData() == null || categoryBean.getMessages().getData().size() <= 0) {
            return null;
        }
        return categoryBean.getMessages().getData().get(0).getGame_type();
    }

    public static MGMainClassifyFragment X(int RomType) {
        h7 h7Var = new h7();
        Bundle bundle = new Bundle();
        bundle.putInt(J, RomType);
        h7Var.setArguments(bundle);
        return h7Var;
    }

    @Click
    void U() {
        this.f54571z.setVisibility(8);
        this.C.setVisibility(0);
        PopupWindow popupWindow = this.f54557l;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.f54557l.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void V() {
        if (!com.join.android.app.common.utils.m.j(this.f54548c)) {
            g0();
            return;
        }
        try {
            List<CategorySimpleBean> listT = T(this.D.n1(W()));
            if (listT != null) {
                e0(listT);
            } else {
                g0();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            g0();
        }
    }

    public CommonRequestBean W() {
        return RequestBeanUtil.getInstance(this.f54548c).getCategoryRequestBean();
    }

    @Click
    void Y() {
        com.papa.sim.statistic.t.l(this.f54548c).y2(Where.classify, AccountUtil_.getInstance_(getActivity()).getUid());
        SearchHintActivity_.intent(this.f54548c).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void Z(String gameType) {
        this.f54551f.f0(gameType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void a0() {
        this.f54551f.g0(this.f54564s[0]);
    }

    @AfterViews
    void afterViews() {
        this.D = com.join.mgps.rpc.impl.d.O1();
        this.f54548c = getActivity();
        GameType gameType = null;
        this.G.callbackDownloadCenterVisible(null);
        this.f54555j = new ArrayList();
        this.f54559n = ((WindowManager) this.f54548c.getSystemService("window")).getDefaultDisplay().getWidth();
        Bundle arguments = getArguments();
        int i10 = arguments != null ? arguments.getInt(J) : 0;
        this.E = 14;
        if (i10 == 0) {
            this.f54558m = "";
            b0("筛选");
        } else if (i10 == 61) {
            gameType = GameType.PS2;
        } else if (i10 != 62) {
            switch (i10) {
                case 10:
                    gameType = GameType.FBA;
                    break;
                case 11:
                    gameType = GameType.FC;
                    break;
                case 12:
                    gameType = GameType.GBA;
                    break;
                case 13:
                    gameType = GameType.SFC;
                    break;
                case 14:
                    gameType = GameType.PSP;
                    break;
                case 15:
                    gameType = GameType.FEATURED_ONLINE;
                    break;
                case 16:
                    gameType = GameType.MD;
                    break;
                case 17:
                    gameType = GameType.PS;
                    break;
                case 18:
                    gameType = GameType.LARGE_SINGLE;
                    break;
                case 19:
                    gameType = GameType.WSC;
                    break;
                case 20:
                    gameType = GameType.NDS;
                    break;
                case 21:
                    gameType = GameType.GBC;
                    break;
                case 22:
                    gameType = GameType.N64;
                    break;
                case 23:
                    gameType = GameType.ONS;
                    break;
                case 24:
                    gameType = GameType.DC;
                    break;
            }
        } else {
            gameType = GameType.N3DS;
        }
        if (gameType != null) {
            String strId = gameType.id();
            String strTitleAbbr = gameType.titleAbbr();
            this.f54558m = strId;
            b0(strTitleAbbr);
        }
        f0();
        V();
        this.f54570y.setChecked(false);
        this.f54570y.setOnCheckedChangeListener(new b());
        this.C.setChecked(false);
        this.C.setOnCheckedChangeListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0(String title) {
        GameType[] gameTypeArrValues = GameType.values();
        for (int i10 = 0; i10 < gameTypeArrValues.length; i10++) {
            if (title.equals(gameTypeArrValues[i10].title())) {
                title = gameTypeArrValues[i10].titleAbbr();
                break;
            }
        }
        this.C.setText(title);
        this.C.setTextOn(title);
        this.C.setTextOff(title);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void c0(String gameType) {
        this.f54550e.f0(gameType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void d0() {
        this.f54550e.g0(this.f54564s[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e0(List<CategorySimpleBean> categorySimpleBeanList) {
        this.f54566u.setVisibility(8);
        this.f54567v.setVisibility(8);
        this.f54565t.setVisibility(0);
        this.f54555j.clear();
        this.f54555j.addAll(categorySimpleBeanList);
        t6.f.n().a();
        for (int i10 = 0; i10 < categorySimpleBeanList.size(); i10++) {
            CategoryRecordTable categoryRecordTable = new CategoryRecordTable();
            CategorySimpleBean categorySimpleBean = categorySimpleBeanList.get(i10);
            categoryRecordTable.setId(categorySimpleBean.getId());
            categoryRecordTable.setTitle(categorySimpleBean.getTitle());
            categoryRecordTable.setIco_remote(categorySimpleBean.getIco_remote());
            categoryRecordTable.setShow_index(categorySimpleBean.getShow_index());
            categoryRecordTable.setGame_num(categorySimpleBean.getGame_num());
            t6.f.n().k(categoryRecordTable);
        }
        M();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        this.f54566u.setVisibility(0);
        this.f54567v.setVisibility(8);
        this.f54565t.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g0() {
        List<CategoryRecordTable> listD = t6.f.n().d();
        this.f54555j.clear();
        if (listD != null) {
            for (int i10 = 0; i10 < listD.size(); i10++) {
                CategoryRecordTable categoryRecordTable = listD.get(i10);
                CategorySimpleBean categorySimpleBean = new CategorySimpleBean();
                categorySimpleBean.setShow_index(categoryRecordTable.getShow_index());
                categorySimpleBean.setId(categoryRecordTable.getId());
                categorySimpleBean.setGame_num(categoryRecordTable.getGame_num());
                categorySimpleBean.setIco_remote(categoryRecordTable.getIco_remote());
                categorySimpleBean.setTitle(categoryRecordTable.getTitle());
                this.f54555j.add(categorySimpleBean);
            }
        }
        List<CategorySimpleBean> list = this.f54555j;
        if (list == null || list.size() <= 0) {
            this.f54566u.setVisibility(8);
            this.f54567v.setVisibility(0);
            this.f54565t.setVisibility(8);
        } else {
            this.f54566u.setVisibility(8);
            this.f54567v.setVisibility(8);
            this.f54565t.setVisibility(0);
            M();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v0, types: [android.view.View, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r8v4, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout, com.join.mgps.customview.MyRadioGroup] */
    @UiThread
    public void h0() {
        boolean z10;
        ?? linearLayout = new LinearLayout(this.f54548c);
        int i10 = -1;
        linearLayout.setLayoutParams(new RadioGroup.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        ?? linearLayout2 = new LinearLayout(this.f54548c);
        linearLayout2.setOrientation(1);
        linearLayout2.setBackgroundColor(-1);
        int i11 = -2;
        RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(-1, -2);
        LinearLayout linearLayout3 = new LinearLayout(this.f54548c);
        linearLayout3.setLayoutParams(new RadioGroup.LayoutParams(-1, -1));
        linearLayout3.setBackgroundColor(this.f54562q);
        linearLayout3.setOrientation(1);
        linearLayout.addView(linearLayout2);
        linearLayout.addView(linearLayout3);
        Button button = new Button(this.f54548c);
        button.setText(LocalGameActivity.ALL);
        button.setTextSize(this.E);
        button.setTextColor(this.f54560o);
        int i12 = this.f54559n;
        if (i12 > 960) {
            layoutParams.setMargins(i12 / 15, i12 / 25, i12 / 15, i12 / 25);
        } else {
            layoutParams.setMargins(i12 / 30, i12 / 25, i12 / 30, i12 / 20);
        }
        button.setGravity(17);
        button.setLayoutParams(layoutParams);
        button.setOnTouchListener(new g(button));
        linearLayout2.addView(button);
        int i13 = 0;
        if (this.f54570y.getText().toString().equals("分类")) {
            button.setBackgroundResource(R.drawable.classify_all_pressed);
            button.setTextColor(this.f54561p);
            z10 = true;
        } else {
            button.setBackgroundResource(R.drawable.classify_all_normal);
            button.setTextColor(this.f54560o);
            z10 = false;
        }
        ?? myRadioGroup = new MyRadioGroup(this.f54548c);
        myRadioGroup.setOrientation(1);
        RadioGroup.LayoutParams layoutParams2 = new RadioGroup.LayoutParams(-1, -2);
        myRadioGroup.setLayoutParams(layoutParams2);
        layoutParams2.setMargins(0, 0, 0, this.f54559n / 20);
        int i14 = this.f54559n;
        if (i14 > 960) {
            myRadioGroup.setPadding(i14 / 15, 0, i14 / 15, 0);
        } else {
            myRadioGroup.setPadding(i14 / 30, 0, i14 / 30, 0);
        }
        myRadioGroup.setGravity(17);
        RadioGroup.LayoutParams layoutParams3 = new RadioGroup.LayoutParams(-1, -2, 1.0f);
        if (this.f54559n >= 960) {
            layoutParams3.setMargins(0, 0, 28, 0);
        }
        RadioGroup.LayoutParams layoutParams4 = new RadioGroup.LayoutParams(-1, -2, 1.0f);
        if (this.f54559n >= 960) {
            layoutParams4.setMargins(14, 0, 14, 0);
        }
        RadioGroup.LayoutParams layoutParams5 = new RadioGroup.LayoutParams(-1, -2, 1.0f);
        if (this.f54559n >= 960) {
            layoutParams5.setMargins(28, 0, 0, 0);
        }
        int i15 = 0;
        ?? r10 = linearLayout;
        while (i15 < (this.f54555j.size() + 2) / 3) {
            LinearLayout linearLayout4 = new LinearLayout(this.f54548c);
            linearLayout4.setLayoutParams(new RadioGroup.LayoutParams(i10, i11));
            linearLayout4.setOrientation(i13);
            RadioButton radioButton = new RadioButton(this.f54548c);
            int i16 = i15 * 3;
            if (i16 < this.f54555j.size()) {
                CategorySimpleBean categorySimpleBean = this.f54555j.get(i16);
                radioButton.setButtonDrawable(new ColorDrawable(i13));
                radioButton.setGravity(17);
                radioButton.setTextColor(this.f54560o);
                radioButton.setBackgroundResource(R.drawable.classify_bg_selector);
                if (!z10) {
                    if (categorySimpleBean.getTitle().equals(this.f54570y.getText())) {
                        radioButton.setChecked(true);
                        radioButton.setTextColor(this.f54561p);
                    } else {
                        radioButton.setChecked(false);
                        radioButton.setTextColor(this.f54560o);
                    }
                }
                radioButton.setText(categorySimpleBean.getTitle());
                radioButton.setTextSize(this.E);
                radioButton.setOnCheckedChangeListener(new h(radioButton, categorySimpleBean));
            }
            RadioButton radioButton2 = new RadioButton(this.f54548c);
            radioButton2.setGravity(17);
            radioButton2.setTextColor(this.f54560o);
            radioButton2.setButtonDrawable(new ColorDrawable(0));
            radioButton2.setBackgroundResource(R.drawable.classify_bg_selector);
            radioButton2.setTextSize(this.E);
            int i17 = i16 + 1;
            LinearLayout linearLayout5 = linearLayout3;
            ?? r17 = r10;
            if (i17 < this.f54555j.size()) {
                radioButton2.setVisibility(0);
                CategorySimpleBean categorySimpleBean2 = this.f54555j.get(i17);
                if (!z10) {
                    if (categorySimpleBean2.getTitle().equals(this.f54570y.getText())) {
                        radioButton2.setChecked(true);
                        radioButton2.setTextColor(this.f54561p);
                    } else {
                        radioButton2.setChecked(false);
                        radioButton2.setTextColor(this.f54560o);
                    }
                }
                radioButton2.setOnCheckedChangeListener(new i(radioButton2, categorySimpleBean2));
                radioButton2.setText(categorySimpleBean2.getTitle());
            } else {
                radioButton2.setVisibility(4);
                radioButton2.setText("");
            }
            RadioButton radioButton3 = new RadioButton(this.f54548c);
            radioButton3.setGravity(17);
            radioButton3.setTextColor(this.f54560o);
            radioButton3.setButtonDrawable(new ColorDrawable(0));
            radioButton3.setBackgroundResource(R.drawable.classify_bg_selector);
            radioButton3.setTextSize(this.E);
            int i18 = i16 + 2;
            if (i18 < this.f54555j.size()) {
                radioButton3.setVisibility(0);
                CategorySimpleBean categorySimpleBean3 = this.f54555j.get(i18);
                if (!z10) {
                    if (categorySimpleBean3.getTitle().equals(this.f54570y.getText())) {
                        radioButton3.setChecked(true);
                        radioButton3.setTextColor(this.f54561p);
                    } else {
                        radioButton3.setChecked(false);
                        radioButton3.setTextColor(this.f54560o);
                    }
                }
                radioButton3.setOnCheckedChangeListener(new j(radioButton3, categorySimpleBean3));
                radioButton3.setText(categorySimpleBean3.getTitle());
            } else {
                radioButton3.setText("");
                radioButton3.setVisibility(4);
            }
            linearLayout4.addView(radioButton, layoutParams3);
            linearLayout4.addView(radioButton2, layoutParams4);
            linearLayout4.addView(radioButton3, layoutParams5);
            linearLayout4.setPadding(0, 0, 0, this.f54559n / 40);
            myRadioGroup.addView(linearLayout4);
            i15++;
            linearLayout3 = linearLayout5;
            r10 = r17;
            i10 = -1;
            i11 = -2;
            i13 = 0;
        }
        ?? r18 = r10;
        LinearLayout linearLayout6 = linearLayout3;
        if (this.f54555j.size() > 0) {
            linearLayout2.addView(myRadioGroup);
        }
        PopupWindow popupWindow = new PopupWindow((View) r18, this.f54559n, -1);
        this.f54556k = popupWindow;
        popupWindow.setFocusable(true);
        this.f54556k.setOutsideTouchable(true);
        this.f54556k.setBackgroundDrawable(new BitmapDrawable());
        this.C.getLocationOnScreen(new int[2]);
        r18.setVisibility(0);
        this.f54556k.showAsDropDown(this.C);
        linearLayout6.setOnClickListener(new a());
        this.f54556k.setOnDismissListener(new k(r18));
    }

    void i0() {
        this.C.setVisibility(8);
        this.B.setVisibility(8);
        this.f54570y.setVisibility(8);
        this.f54571z.setVisibility(0);
        this.A.setVisibility(0);
        this.G.callbackDownloadCenterVisible(null);
        this.I = this.C.getText().toString();
        GameType[] gameTypeArrValues = GameType.values();
        for (int i10 = 0; i10 < gameTypeArrValues.length; i10++) {
            if (this.I.equals(gameTypeArrValues[i10].titleAbbr())) {
                this.I = gameTypeArrValues[i10].title();
                break;
            }
        }
        RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(-1, -1);
        ScrollView scrollView = new ScrollView(this.f54548c);
        scrollView.setLayoutParams(layoutParams);
        scrollView.setBackgroundColor(-1);
        RadioGroup radioGroup = new RadioGroup(this.f54548c);
        radioGroup.setOrientation(1);
        radioGroup.setLayoutParams(new RadioGroup.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams));
        int i11 = 0;
        for (int i12 = 0; i12 < gameTypeArrValues.length; i12++) {
            String strId = gameTypeArrValues[i12].id();
            String strTitle = gameTypeArrValues[i12].title();
            int iResId = gameTypeArrValues[i12].resId();
            RadioButton radioButton = new RadioButton(this.f54548c);
            radioButton.setLayoutParams(new RadioGroup.LayoutParams((ViewGroup.MarginLayoutParams) new RadioGroup.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.exclusive_tag_height))));
            radioButton.setText("    " + strTitle);
            radioButton.setTag(strId);
            if (this.I.equals(strTitle)) {
                radioButton.setTextColor(-756480);
                i11 = i12;
            } else {
                radioButton.setTextColor(-12829636);
            }
            radioButton.setTextColor(-12829636);
            if (this.f54559n == 480) {
                radioButton.setTextSize(14.0f);
            } else {
                radioButton.setTextSize(16.0f);
            }
            int i13 = this.f54559n;
            radioButton.setPadding(i13 / 20, i13 / 35, i13 / 16, i13 / 35);
            radioButton.setButtonDrawable(new ColorDrawable(17170445));
            Drawable drawable = getResources().getDrawable(iResId);
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            Drawable drawable2 = getResources().getDrawable(R.drawable.classify_choice_selector);
            drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
            radioButton.setCompoundDrawables(drawable, null, drawable2, null);
            radioButton.setCompoundDrawablePadding(10);
            radioButton.setGravity(19);
            radioButton.setOnCheckedChangeListener(new d(radioButton, strId));
            radioButton.setOnClickListener(new e());
            radioGroup.addView(radioButton);
            RadioGroup.LayoutParams layoutParams2 = new RadioGroup.LayoutParams(-1, 1);
            View view = new View(this.f54548c);
            view.setBackgroundColor(-1184275);
            view.setLayoutParams(layoutParams2);
            radioGroup.addView(view);
        }
        ((RadioButton) radioGroup.getChildAt(i11 * 2)).setChecked(true);
        scrollView.addView(radioGroup);
        PopupWindow popupWindow = new PopupWindow(scrollView, ((WindowManager) this.f54548c.getSystemService("window")).getDefaultDisplay().getWidth(), -1);
        this.f54557l = popupWindow;
        popupWindow.setFocusable(true);
        this.f54557l.setOutsideTouchable(false);
        this.f54557l.setBackgroundDrawable(new BitmapDrawable());
        this.C.getLocationOnScreen(this.H);
        scrollView.setVisibility(0);
        this.f54557l.showAsDropDown(this.C);
        this.f54557l.setOnDismissListener(new f());
    }

    @Override // com.join.mgps.pref.b
    public void m(Bundle arg) {
        if (arg != null) {
            String string = arg.getString("GameType");
            String string2 = arg.getString("RomType");
            if (string == null || string2 == null) {
                return;
            }
            this.f54570y.setText("分类");
            this.f54570y.setTextOn("分类");
            this.f54570y.setTextOff("分类");
            b0("筛选");
            this.f54549d.h0(string, string2);
            this.f54550e.h0(string, string2);
            this.f54551f.h0(string, string2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.G = (MGMainActivity) getActivity();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        try {
            if (!this.F.isFirstClickClassify().d().booleanValue() || this.F.isReloadClassify().d().booleanValue() || this.f54554i.size() <= 0 || isHidden()) {
                return;
            }
            this.G.callbackClassifyTipsVisible(null);
        } catch (Exception unused) {
        }
    }

    @Click
    void relodingimag() {
        f0();
        V();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f54548c);
    }
}
