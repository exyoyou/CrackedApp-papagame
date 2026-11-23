package com.join.mgps.fragment;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.activity.ClassifyGameActivity_;
import com.join.mgps.customview.CellClassifyItem;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.ClassifyBean;
import com.join.mgps.dto.ClassifyGameTagBean;
import com.join.mgps.dto.ClassifyGameTypeBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa91.arc.CContext;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_classify)
public class i extends com.join.mgps.basefragment.a implements View.OnClickListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    FlowLayout f69795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f69796e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    HashMap<Integer, View> f69797f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    com.join.mgps.rpc.e f69798g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    List<ClassifyGameTagBean> f69799h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Context f69800i;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69801b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f69802c;

        a(final int val$id, final String val$name) {
            this.f69801b = val$id;
            this.f69802c = val$name;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClassifyGameActivity_.intent(i.this.f69800i).a(0).b(this.f69801b).c(this.f69802c).start();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69804b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f69805c;

        b(final int val$id, final String val$name) {
            this.f69804b = val$id;
            this.f69805c = val$name;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClassifyGameActivity_.intent(i.this.f69800i).a(0).b(this.f69804b).c(this.f69805c).start();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ClassifyGameTypeBean f69807b;

        c(final ClassifyGameTypeBean val$mBean) {
            this.f69807b = val$mBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClassifyGameActivity_.intent(i.this.f69800i).b(0).a(this.f69807b.getId()).c(this.f69807b.getTitle()).start();
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private void Z() {
        this.f69799h = new ArrayList();
        new ClassifyGameTagBean();
        int[] iArr = {ConstantIntEnum.FEATURED_ONLINE.value(), ConstantIntEnum.LARGE_SINGLE.value(), ConstantIntEnum.FBA.value(), ConstantIntEnum.FC.value(), ConstantIntEnum.GBA.value(), ConstantIntEnum.PSP.value(), ConstantIntEnum.PS.value(), ConstantIntEnum.NDS.value(), ConstantIntEnum.MD.value(), ConstantIntEnum.ONS.value(), ConstantIntEnum.SFC.value(), ConstantIntEnum.GBC.value(), ConstantIntEnum.N64.value(), ConstantIntEnum.WSC.value(), ConstantIntEnum.DC.value(), ConstantIntEnum.PS2.value(), ConstantIntEnum.H5.value()};
        int[] iArr2 = {R.drawable.onlin_icon, R.drawable.single_icon, R.drawable.fba_icon, R.drawable.fc_icon, R.drawable.gba_icon, R.drawable.psp_icon, R.drawable.ps_icon, R.drawable.nd_icon, R.drawable.md_icon, R.drawable.on_icon, R.drawable.sfc_icon, R.drawable.gbc_icon, R.drawable.n64_icon, R.drawable.wsc_icon, R.drawable.dc_icon, R.drawable.ps2_icon, R.drawable.ps2_icon};
        String[] strArr = {"网游", "单机", "街机", "FC小霸王", CContext.SCENE_GBA, CContext.SCENE_PSP, "PS", "NDS", "MD", "ONS", "SFC", "GBC", "N64", "WSC", "DC", "PS2", "H5"};
        String[] strArr2 = {"潮流网络游戏", "优秀大型单机，汉化破解一网打尽", "经典街机房游戏，代表游戏有拳皇、合金弹头、恐龙快打、三国战纪等", "任天堂在1983年发售的游戏机，代表游戏有超级玛丽，魂斗罗等", "任天堂于2001年发售的第二代掌机，代表游戏有口袋妖怪，火焰纹章等", "索尼经典掌机", "索尼电视主机", "任天堂DS游戏", "世嘉MD主机", "GAL模拟器", "任天堂SNES主机", "任天堂第二代掌机", "任天堂经典主机", "经典掌机神奇天鹅", "任天堂经典主机", "任天堂经典主机", "页游"};
        this.f69797f = new HashMap<>();
        int iA = com.join.mgps.Util.i0.a(this.f69800i, 1.0f);
        for (int i10 = 0; i10 < 17; i10++) {
            CellClassifyItem cellClassifyItem = new CellClassifyItem(this.f69800i);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            if (i10 != 0) {
                layoutParams.setMargins(0, iA, 0, 0);
            }
            cellClassifyItem.setLayoutParams(layoutParams);
            int i11 = iArr[i10];
            int i12 = iArr2[i10];
            String str = strArr[i10];
            String str2 = strArr2[i10];
            cellClassifyItem.setOnClickListener(new a(i11, str));
            cellClassifyItem.setmId(i11);
            cellClassifyItem.setmName(str);
            cellClassifyItem.setmDesc(str2);
            cellClassifyItem.setmIconRes(i12);
            this.f69796e.addView(cellClassifyItem);
            this.f69797f.put(Integer.valueOf(i11), cellClassifyItem);
        }
    }

    private void b0(List<ClassifyGameTagBean> game_tag_type) {
        LinearLayout linearLayout = this.f69796e;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
        }
        if (this.f69800i == null || !isAdded()) {
            return;
        }
        int iA = com.join.mgps.Util.i0.a(this.f69800i, 1.0f);
        for (int i10 = 0; i10 < game_tag_type.size(); i10++) {
            CellClassifyItem cellClassifyItem = new CellClassifyItem(this.f69800i);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            if (i10 != 0) {
                layoutParams.setMargins(0, iA, 0, 0);
            }
            cellClassifyItem.setLayoutParams(layoutParams);
            ClassifyGameTagBean classifyGameTagBean = game_tag_type.get(i10);
            int id2 = classifyGameTagBean.getId();
            String ico_remote = classifyGameTagBean.getIco_remote();
            String name = classifyGameTagBean.getName();
            String describe = classifyGameTagBean.getDescribe();
            cellClassifyItem.setOnClickListener(new b(id2, name));
            cellClassifyItem.setmId(id2);
            cellClassifyItem.setmName(name);
            cellClassifyItem.setmDesc(describe);
            cellClassifyItem.setmIconSrc(ico_remote);
            cellClassifyItem.setCountTip(classifyGameTagBean.getGame_count());
            this.f69796e.addView(cellClassifyItem);
        }
    }

    @Override // com.join.mgps.basefragment.a
    protected int P() {
        return R.layout.fragment_classify;
    }

    @Override // com.join.mgps.basefragment.a
    protected int Q() {
        return R.id.fragment_classify;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @UiThread
    void a0(final ClassifyBean bean) {
        if (this.f69795d != null) {
            if (bean.getGame_type() == null || bean.getGame_type().size() <= 0) {
                this.f69795d.setVisibility(8);
            } else {
                this.f69795d.setVisibility(0);
                List<ClassifyGameTypeBean> game_type = bean.getGame_type();
                int iA = com.join.mgps.Util.i0.a(this.f69800i, 1.0f);
                for (int i10 = 0; i10 < game_type.size(); i10++) {
                    CellClassifyItem cellClassifyItem = new CellClassifyItem(this.f69800i);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    if (i10 != 0) {
                        layoutParams.setMargins(0, iA, 0, 0);
                    }
                    cellClassifyItem.setLayoutParams(layoutParams);
                    ClassifyGameTypeBean classifyGameTypeBean = game_type.get(i10);
                    cellClassifyItem.setOnClickListener(new c(classifyGameTypeBean));
                    cellClassifyItem.setmId(classifyGameTypeBean.getId());
                    cellClassifyItem.setmName(classifyGameTypeBean.getTitle());
                    cellClassifyItem.setmDesc(classifyGameTypeBean.getDescribe());
                    cellClassifyItem.setmIconSrc(classifyGameTypeBean.getIco_remote());
                    cellClassifyItem.setCountTip(classifyGameTypeBean.getGame_count());
                    if (com.join.mgps.Util.t2.h(classifyGameTypeBean.getDescribe())) {
                        cellClassifyItem.setDescVisibility(8);
                    } else {
                        cellClassifyItem.setDescVisibility(0);
                    }
                    this.f69795d.addView(cellClassifyItem);
                }
            }
        }
        if (bean.getGame_tag_type() != null && bean.getGame_tag_type().size() > 0) {
            b0(bean.getGame_tag_type());
        }
        S();
    }

    @AfterViews
    void afterViews() {
        this.f69798g = com.join.mgps.rpc.impl.d.O1();
        this.f69800i = getContext();
        Z();
        loadData();
    }

    @Override // com.join.mgps.basefragment.a
    @Background
    protected void loadData() {
        ClassifyBean data;
        if (!com.join.android.app.common.utils.m.j(this.f69800i.getApplicationContext())) {
            V();
            return;
        }
        try {
            ResultMainBean<ClassifyBean> resultMainBeanL = this.f69798g.L(RequestBeanUtil.getInstance(this.f69800i).getGameSortRequestBean(com.join.android.app.common.utils.q.n(this.f69800i.getApplicationContext()).A(), ""));
            if (resultMainBeanL == null || resultMainBeanL.getFlag() != 1 || resultMainBeanL.getMessages() == null || (data = resultMainBeanL.getMessages().getData()) == null) {
                V();
            } else {
                a0(data);
            }
        } catch (Exception e10) {
            V();
            e10.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        try {
            if (v10 instanceof TextView) {
                IntentUtil.getInstance().intentActivity(this.f69800i, ((AppBeanMain) v10.getTag()).getIntentDataBean());
            } else if (v10 instanceof RelativeLayout) {
                ClassifyGameTagBean classifyGameTagBean = (ClassifyGameTagBean) v10.getTag();
                ClassifyGameActivity_.intent(this.f69800i).a(0).b(classifyGameTagBean.getId()).c(classifyGameTagBean.getName()).start();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
