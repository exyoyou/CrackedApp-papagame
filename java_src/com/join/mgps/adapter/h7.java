package com.join.mgps.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
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
import com.haima.hmcp.proto.GSSDK;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.CategoryDetailListActivity;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.SimulatorAreaDataBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h7 extends BaseAdapter {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f62264j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f62265k = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f62266l = 3;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f62267m = 4;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f62268n = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f62269o = 6;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f62270p = 7;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f62271q = 8;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f62272r = 9;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<f> f62274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f62275d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f62276e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f62277f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f62278g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f62279h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f62280i;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimulatorAreaDataBean.SubjectListBean.SubBean f62281b;

        a(final SimulatorAreaDataBean.SubjectListBean.SubBean val$finalSubBean) {
            this.f62281b = val$finalSubBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f62281b != null) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setCrc_link_type_val(this.f62281b.getCrc_link_type_val());
                intentDateBean.setLink_type(Integer.valueOf(this.f62281b.getLink_type()).intValue());
                intentDateBean.setLink_type_val(this.f62281b.getLink_type_val());
                intentDateBean.setJump_type(Integer.valueOf(this.f62281b.getJump_type()).intValue());
                intentDateBean.setTpl_type(this.f62281b.getTpl_type());
                IntentUtil.getInstance().intentActivity(h7.this.f62273b, intentDateBean);
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimulatorAreaDataBean.SubjectListBean.SubBean f62283b;

        b(final SimulatorAreaDataBean.SubjectListBean.SubBean val$finalSubBean2) {
            this.f62283b = val$finalSubBean2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f62283b != null) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setCrc_link_type_val(this.f62283b.getCrc_link_type_val());
                intentDateBean.setLink_type(Integer.valueOf(this.f62283b.getLink_type()).intValue());
                intentDateBean.setLink_type_val(this.f62283b.getLink_type_val());
                intentDateBean.setJump_type(Integer.valueOf(this.f62283b.getJump_type()).intValue());
                intentDateBean.setTpl_type(this.f62283b.getTpl_type());
                IntentUtil.getInstance().intentActivity(h7.this.f62273b, intentDateBean);
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimulatorAreaDataBean.GameTypeBean f62285b;

        c(final SimulatorAreaDataBean.GameTypeBean val$tempGame) {
            this.f62285b = val$tempGame;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Intent intent = new Intent(h7.this.f62273b, (Class<?>) CategoryDetailListActivity.class);
            intent.putExtra("typeId", 1);
            intent.putExtra("tagId", h7.this.f62279h);
            intent.putExtra("tagId2", Integer.parseInt(this.f62285b.getId()));
            intent.putExtra("tagName", this.f62285b.getTitle());
            h7.this.f62273b.startActivity(intent);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Intent intent = new Intent(h7.this.f62273b, (Class<?>) CategoryDetailListActivity.class);
            intent.putExtra("typeId", 1);
            intent.putExtra("tagId", h7.this.f62279h);
            intent.putExtra("tagName", h7.this.f62280i);
            h7.this.f62273b.startActivity(intent);
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Intent intent = new Intent(h7.this.f62273b, (Class<?>) CategoryDetailListActivity.class);
            intent.putExtra("typeId", 1);
            intent.putExtra("tagId", h7.this.f62279h);
            intent.putExtra("tagName", h7.this.f62280i);
            h7.this.f62273b.startActivity(intent);
        }
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f62289a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f62290b;

        public f(Object object, int itemType) {
            this.f62289a = object;
            this.f62290b = itemType;
        }
    }

    public class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f62291a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f62292b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f62293c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        DownloadNormalView f62294d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        RelativeLayout f62295e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        View f62296f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f62297g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        LinearLayout f62298h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        LinearLayout f62299i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f62300j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f62301k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ProgressBar f62302l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public ProgressBar f62303m;

        public g() {
        }
    }

    class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f62305a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f62306b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f62307c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f62308d;

        h() {
        }
    }

    class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f62310a;

        i() {
        }
    }

    class j {
        j() {
        }
    }

    public class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f62313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        RelativeLayout f62314b;

        public k() {
        }
    }

    class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f62316a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f62317b;

        l() {
        }
    }

    class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f62319a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RelativeLayout f62320b;

        m() {
        }
    }

    class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f62322a;

        n() {
        }
    }

    class o {
        o() {
        }
    }

    public h7(Context context, int typeId, String title) {
        this.f62273b = context;
        this.f62279h = typeId;
        this.f62280i = title;
        this.f62275d = ((Activity) context).getWindowManager().getDefaultDisplay().getWidth();
        int iA = com.join.mgps.Util.i0.a(context, 12.0f);
        this.f62277f = iA;
        int i10 = this.f62275d - (iA * 2);
        this.f62275d = i10;
        this.f62276e = (i10 * GSSDK.OneInputOPData.InputOP.OP_KEY_VK_PROCESSKEY_VALUE) / 664;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(CollectionBeanSub collectionBeanSub, View view) {
        IntentUtil.getInstance().goGameDetialActivity(this.f62273b, collectionBeanSub.getCrc_sign_id(), collectionBeanSub.getGame_info_tpl_type(), Integer.valueOf(collectionBeanSub.getSp_tpl_two_position()).intValue(), collectionBeanSub.get_from_type());
    }

    void e(String score, int down_count, String appSize, TipNew showTip, List<TipBean> tags, LinearLayout view, Context context) {
        TipBean tipBean;
        TipBean tipBean2;
        String str = com.join.mgps.Util.t2.h(appSize) ? "1" : appSize;
        view.removeAllViews();
        TipBean tipBean3 = null;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.appsize);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.appType);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.pingfen);
        textView.setText(com.join.mgps.Util.t2.c(down_count));
        textView2.setText(UtilsMy.Z2((long) (Double.parseDouble(str) * 1048576.0d)));
        if (showTip != null) {
            if (showTip.getModel() != null) {
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
                    if (tags != null) {
                        for (TipBean tipBean6 : tags) {
                            if (com.join.mgps.Util.t2.i(tipBean6.getId()) && !tipBean6.getId().equals(showTip.getModel().getId())) {
                                tipBean3 = tipBean6;
                                break;
                            }
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
            if (showTip.getDown_res() != null) {
                textView.setText(showTip.getDown_res().getName());
            }
        } else {
            textView3.setVisibility(8);
        }
        if (!com.join.mgps.Util.t2.i(score) || "0".equals(score)) {
            textView4.setVisibility(8);
        } else {
            textView4.setText(score + "分");
            textView4.setVisibility(0);
        }
        view.addView(viewInflate);
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public f getItem(int position) {
        return this.f62274c.get(position);
    }

    public List<f> g() {
        if (this.f62274c == null) {
            this.f62274c = new ArrayList();
        }
        return this.f62274c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62274c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return this.f62274c.get(position).f62290b;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:118:0x0541 A[Catch: Exception -> 0x064a, TRY_LEAVE, TryCatch #3 {Exception -> 0x064a, blocks: (B:64:0x02bd, B:77:0x02e0, B:79:0x0315, B:80:0x0320, B:81:0x032c, B:83:0x035a, B:84:0x0365, B:85:0x0371, B:86:0x038a, B:87:0x0395, B:88:0x03a1, B:90:0x0429, B:92:0x0439, B:93:0x0442, B:109:0x0486, B:110:0x04bf, B:111:0x04f8, B:116:0x052f, B:115:0x052c, B:117:0x0538, B:118:0x0541, B:126:0x05a2, B:127:0x05a7, B:129:0x05b4, B:131:0x05fb, B:130:0x05d8, B:132:0x0620, B:133:0x0628, B:134:0x062e, B:135:0x0636, B:112:0x0520, B:119:0x0546, B:121:0x054e, B:123:0x0595, B:122:0x0572), top: B:147:0x02bd, inners: #1, #5 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x054e A[Catch: Exception -> 0x05a1, TryCatch #5 {Exception -> 0x05a1, blocks: (B:119:0x0546, B:121:0x054e, B:123:0x0595, B:122:0x0572), top: B:148:0x0546, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x0572 A[Catch: Exception -> 0x05a1, TryCatch #5 {Exception -> 0x05a1, blocks: (B:119:0x0546, B:121:0x054e, B:123:0x0595, B:122:0x0572), top: B:148:0x0546, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x0620 A[Catch: Exception -> 0x064a, TryCatch #3 {Exception -> 0x064a, blocks: (B:64:0x02bd, B:77:0x02e0, B:79:0x0315, B:80:0x0320, B:81:0x032c, B:83:0x035a, B:84:0x0365, B:85:0x0371, B:86:0x038a, B:87:0x0395, B:88:0x03a1, B:90:0x0429, B:92:0x0439, B:93:0x0442, B:109:0x0486, B:110:0x04bf, B:111:0x04f8, B:116:0x052f, B:115:0x052c, B:117:0x0538, B:118:0x0541, B:126:0x05a2, B:127:0x05a7, B:129:0x05b4, B:131:0x05fb, B:130:0x05d8, B:132:0x0620, B:133:0x0628, B:134:0x062e, B:135:0x0636, B:112:0x0520, B:119:0x0546, B:121:0x054e, B:123:0x0595, B:122:0x0572), top: B:147:0x02bd, inners: #1, #5 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x0628 A[Catch: Exception -> 0x064a, TryCatch #3 {Exception -> 0x064a, blocks: (B:64:0x02bd, B:77:0x02e0, B:79:0x0315, B:80:0x0320, B:81:0x032c, B:83:0x035a, B:84:0x0365, B:85:0x0371, B:86:0x038a, B:87:0x0395, B:88:0x03a1, B:90:0x0429, B:92:0x0439, B:93:0x0442, B:109:0x0486, B:110:0x04bf, B:111:0x04f8, B:116:0x052f, B:115:0x052c, B:117:0x0538, B:118:0x0541, B:126:0x05a2, B:127:0x05a7, B:129:0x05b4, B:131:0x05fb, B:130:0x05d8, B:132:0x0620, B:133:0x0628, B:134:0x062e, B:135:0x0636, B:112:0x0520, B:119:0x0546, B:121:0x054e, B:123:0x0595, B:122:0x0572), top: B:147:0x02bd, inners: #1, #5 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x062e A[Catch: Exception -> 0x064a, TryCatch #3 {Exception -> 0x064a, blocks: (B:64:0x02bd, B:77:0x02e0, B:79:0x0315, B:80:0x0320, B:81:0x032c, B:83:0x035a, B:84:0x0365, B:85:0x0371, B:86:0x038a, B:87:0x0395, B:88:0x03a1, B:90:0x0429, B:92:0x0439, B:93:0x0442, B:109:0x0486, B:110:0x04bf, B:111:0x04f8, B:116:0x052f, B:115:0x052c, B:117:0x0538, B:118:0x0541, B:126:0x05a2, B:127:0x05a7, B:129:0x05b4, B:131:0x05fb, B:130:0x05d8, B:132:0x0620, B:133:0x0628, B:134:0x062e, B:135:0x0636, B:112:0x0520, B:119:0x0546, B:121:0x054e, B:123:0x0595, B:122:0x0572), top: B:147:0x02bd, inners: #1, #5 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:121:0x054e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:122:0x0572, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0147: MOVE (r10 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:35:0x0147 */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x022b: MOVE (r10 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:45:0x022b */
    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        View view2;
        View view3;
        View view4;
        View view5;
        g gVar;
        h hVar;
        l lVar;
        k kVar;
        n nVar;
        m mVar;
        g gVar2;
        View viewInflate;
        h hVar2;
        g gVar3;
        l lVar2;
        n nVar2;
        m mVar2;
        k kVar2;
        View view6;
        Object obj;
        g gVar4;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        View view7;
        m mVar3;
        g gVar5;
        i iVar;
        View view8;
        m mVar4;
        View view9;
        n nVar3;
        k kVar3;
        l lVar3;
        h hVar3;
        m mVar5;
        m mVar6;
        g gVar6;
        g gVar7;
        View view10;
        m mVar7;
        g gVar8;
        Object obj6;
        Object obj7;
        g gVar9;
        View view11;
        m mVar8;
        g gVar10;
        Object obj8;
        g gVar11;
        Object obj9;
        Object obj10;
        View view12;
        Object obj11;
        g gVar12;
        m mVar9;
        try {
            int itemViewType = getItemViewType(i10);
            if (view != null) {
                switch (itemViewType) {
                    case 1:
                        gVar6 = null;
                        mVar6 = (m) view.getTag();
                        g gVar13 = gVar6;
                        gVar7 = gVar13;
                        mVar9 = mVar6;
                        gVar12 = gVar6;
                        obj11 = gVar13;
                        view12 = view;
                        gVar11 = gVar7;
                        mVar8 = mVar9;
                        gVar10 = gVar12;
                        obj8 = obj11;
                        obj10 = gVar7;
                        view11 = view12;
                        gVar9 = gVar11;
                        mVar7 = mVar8;
                        gVar8 = gVar10;
                        obj6 = obj8;
                        obj7 = obj10;
                        obj9 = gVar11;
                        view10 = view11;
                        gVar5 = gVar9;
                        mVar5 = mVar7;
                        iVar = gVar8;
                        hVar3 = obj6;
                        lVar3 = obj7;
                        kVar3 = obj9;
                        nVar3 = gVar9;
                        view2 = view10;
                        break;
                    case 2:
                        view2 = view;
                        mVar5 = null;
                        iVar = 0;
                        hVar3 = 0;
                        lVar3 = 0;
                        kVar3 = 0;
                        nVar3 = 0;
                        gVar5 = (g) view.getTag();
                        break;
                    case 3:
                        view10 = view;
                        mVar7 = null;
                        gVar8 = null;
                        obj6 = null;
                        obj7 = null;
                        gVar9 = null;
                        obj9 = (k) view.getTag();
                        gVar5 = gVar9;
                        mVar5 = mVar7;
                        iVar = gVar8;
                        hVar3 = obj6;
                        lVar3 = obj7;
                        kVar3 = obj9;
                        nVar3 = gVar9;
                        view2 = view10;
                        break;
                    case 4:
                        view2 = view;
                        mVar5 = null;
                        iVar = 0;
                        hVar3 = 0;
                        lVar3 = 0;
                        kVar3 = 0;
                        gVar5 = null;
                        nVar3 = (n) view.getTag();
                        break;
                    case 5:
                        mVar5 = null;
                        hVar3 = 0;
                        lVar3 = 0;
                        kVar3 = 0;
                        nVar3 = 0;
                        gVar5 = null;
                        iVar = (i) view.getTag();
                        view2 = view;
                        break;
                    case 6:
                        mVar6 = null;
                        gVar6 = null;
                        g gVar14 = gVar6;
                        gVar7 = gVar14;
                        mVar9 = mVar6;
                        gVar12 = gVar6;
                        obj11 = gVar14;
                        view12 = view;
                        gVar11 = gVar7;
                        mVar8 = mVar9;
                        gVar10 = gVar12;
                        obj8 = obj11;
                        obj10 = gVar7;
                        view11 = view12;
                        gVar9 = gVar11;
                        mVar7 = mVar8;
                        gVar8 = gVar10;
                        obj6 = obj8;
                        obj7 = obj10;
                        obj9 = gVar11;
                        view10 = view11;
                        gVar5 = gVar9;
                        mVar5 = mVar7;
                        iVar = gVar8;
                        hVar3 = obj6;
                        lVar3 = obj7;
                        kVar3 = obj9;
                        nVar3 = gVar9;
                        view2 = view10;
                        break;
                    case 7:
                        view11 = view;
                        mVar8 = null;
                        gVar10 = null;
                        obj8 = null;
                        gVar11 = null;
                        obj10 = (l) view.getTag();
                        gVar9 = gVar11;
                        mVar7 = mVar8;
                        gVar8 = gVar10;
                        obj6 = obj8;
                        obj7 = obj10;
                        obj9 = gVar11;
                        view10 = view11;
                        gVar5 = gVar9;
                        mVar5 = mVar7;
                        iVar = gVar8;
                        hVar3 = obj6;
                        lVar3 = obj7;
                        kVar3 = obj9;
                        nVar3 = gVar9;
                        view2 = view10;
                        break;
                    case 8:
                        mVar6 = null;
                        gVar6 = null;
                        g gVar15 = gVar6;
                        gVar7 = gVar15;
                        mVar9 = mVar6;
                        gVar12 = gVar6;
                        obj11 = gVar15;
                        view12 = view;
                        gVar11 = gVar7;
                        mVar8 = mVar9;
                        gVar10 = gVar12;
                        obj8 = obj11;
                        obj10 = gVar7;
                        view11 = view12;
                        gVar9 = gVar11;
                        mVar7 = mVar8;
                        gVar8 = gVar10;
                        obj6 = obj8;
                        obj7 = obj10;
                        obj9 = gVar11;
                        view10 = view11;
                        gVar5 = gVar9;
                        mVar5 = mVar7;
                        iVar = gVar8;
                        hVar3 = obj6;
                        lVar3 = obj7;
                        kVar3 = obj9;
                        nVar3 = gVar9;
                        view2 = view10;
                        break;
                    case 9:
                        view12 = view;
                        mVar9 = null;
                        gVar12 = null;
                        gVar7 = null;
                        obj11 = (h) view.getTag();
                        gVar11 = gVar7;
                        mVar8 = mVar9;
                        gVar10 = gVar12;
                        obj8 = obj11;
                        obj10 = gVar7;
                        view11 = view12;
                        gVar9 = gVar11;
                        mVar7 = mVar8;
                        gVar8 = gVar10;
                        obj6 = obj8;
                        obj7 = obj10;
                        obj9 = gVar11;
                        view10 = view11;
                        gVar5 = gVar9;
                        mVar5 = mVar7;
                        iVar = gVar8;
                        hVar3 = obj6;
                        lVar3 = obj7;
                        kVar3 = obj9;
                        nVar3 = gVar9;
                        view2 = view10;
                        break;
                    default:
                        mVar6 = null;
                        gVar6 = null;
                        g gVar16 = gVar6;
                        gVar7 = gVar16;
                        mVar9 = mVar6;
                        gVar12 = gVar6;
                        obj11 = gVar16;
                        view12 = view;
                        gVar11 = gVar7;
                        mVar8 = mVar9;
                        gVar10 = gVar12;
                        obj8 = obj11;
                        obj10 = gVar7;
                        view11 = view12;
                        gVar9 = gVar11;
                        mVar7 = mVar8;
                        gVar8 = gVar10;
                        obj6 = obj8;
                        obj7 = obj10;
                        obj9 = gVar11;
                        view10 = view11;
                        gVar5 = gVar9;
                        mVar5 = mVar7;
                        iVar = gVar8;
                        hVar3 = obj6;
                        lVar3 = obj7;
                        kVar3 = obj9;
                        nVar3 = gVar9;
                        view2 = view10;
                        break;
                }
            } else {
                try {
                    try {
                        switch (itemViewType) {
                            case 1:
                                m mVar10 = new m();
                                View viewInflate2 = LayoutInflater.from(this.f62273b).inflate(R.layout.item_simulator_title_view, (ViewGroup) null);
                                mVar10.f62319a = (TextView) viewInflate2.findViewById(R.id.simulator_title_tv);
                                mVar10.f62320b = (RelativeLayout) viewInflate2.findViewById(R.id.simulator_right_rl);
                                viewInflate2.setTag(mVar10);
                                gVar = null;
                                mVar4 = mVar10;
                                view8 = viewInflate2;
                                g gVar17 = gVar;
                                g gVar18 = gVar17;
                                g gVar19 = gVar18;
                                g gVar20 = gVar19;
                                obj5 = gVar20;
                                mVar3 = mVar4;
                                view7 = view8;
                                obj = gVar;
                                gVar4 = gVar17;
                                obj2 = gVar18;
                                obj3 = gVar19;
                                obj4 = gVar20;
                                break;
                            case 2:
                                g gVar21 = new g();
                                View viewInflate3 = LayoutInflater.from(this.f62273b).inflate(R.layout.item_simulator_download_view, (ViewGroup) null);
                                gVar21.f62291a = (SimpleDraweeView) viewInflate3.findViewById(R.id.mgListviewItemIcon);
                                gVar21.f62292b = (ImageView) viewInflate3.findViewById(R.id.giftPackageSwich);
                                gVar21.f62293c = (TextView) viewInflate3.findViewById(R.id.mgListviewItemAppname);
                                gVar21.f62297g = (TextView) viewInflate3.findViewById(R.id.mgListviewItemDescribe);
                                gVar21.f62298h = (LinearLayout) viewInflate3.findViewById(R.id.linearLayout2);
                                gVar21.f62299i = (LinearLayout) viewInflate3.findViewById(R.id.tipsLayout);
                                gVar21.f62300j = (TextView) viewInflate3.findViewById(R.id.appSize);
                                gVar21.f62301k = (TextView) viewInflate3.findViewById(R.id.loding_info);
                                gVar21.f62302l = (ProgressBar) viewInflate3.findViewById(R.id.progressBar);
                                gVar21.f62303m = (ProgressBar) viewInflate3.findViewById(R.id.progressBarZip);
                                gVar21.f62294d = (DownloadNormalView) viewInflate3.findViewById(R.id.dv_view);
                                gVar21.f62295e = (RelativeLayout) viewInflate3.findViewById(R.id.relateLayoutApp);
                                gVar21.f62303m = (ProgressBar) viewInflate3.findViewById(R.id.progressBarZip);
                                gVar21.f62296f = viewInflate3.findViewById(R.id.line);
                                viewInflate3.setTag(gVar21);
                                hVar = null;
                                lVar = null;
                                kVar = null;
                                nVar = null;
                                mVar = null;
                                gVar2 = gVar21;
                                view6 = viewInflate3;
                                mVar3 = mVar;
                                view7 = view6;
                                obj = hVar;
                                gVar4 = gVar2;
                                obj2 = lVar;
                                obj3 = kVar;
                                obj4 = nVar;
                                obj5 = mVar;
                                break;
                            case 3:
                                viewInflate = LayoutInflater.from(this.f62273b).inflate(R.layout.layout_ranking_more, (ViewGroup) null);
                                k kVar4 = new k();
                                kVar4.f62313a = (TextView) viewInflate.findViewById(R.id.ranking_more);
                                kVar4.f62314b = (RelativeLayout) viewInflate.findViewById(R.id.moreItem);
                                viewInflate.setTag(kVar4);
                                hVar2 = null;
                                gVar3 = null;
                                lVar2 = null;
                                nVar2 = null;
                                mVar2 = null;
                                kVar2 = kVar4;
                                view6 = viewInflate;
                                hVar = hVar2;
                                gVar2 = gVar3;
                                lVar = lVar2;
                                kVar = kVar2;
                                nVar = nVar2;
                                mVar = mVar2;
                                mVar3 = mVar;
                                view7 = view6;
                                obj = hVar;
                                gVar4 = gVar2;
                                obj2 = lVar;
                                obj3 = kVar;
                                obj4 = nVar;
                                obj5 = mVar;
                                break;
                            case 4:
                                viewInflate = LayoutInflater.from(this.f62273b).inflate(R.layout.item_simulator_title_two_view, (ViewGroup) null);
                                n nVar4 = new n();
                                nVar4.f62322a = (TextView) viewInflate.findViewById(R.id.simulator_title_two_tv);
                                viewInflate.setTag(nVar4);
                                hVar2 = null;
                                gVar3 = null;
                                lVar2 = null;
                                kVar2 = null;
                                mVar2 = null;
                                nVar2 = nVar4;
                                view6 = viewInflate;
                                hVar = hVar2;
                                gVar2 = gVar3;
                                lVar = lVar2;
                                kVar = kVar2;
                                nVar = nVar2;
                                mVar = mVar2;
                                mVar3 = mVar;
                                view7 = view6;
                                obj = hVar;
                                gVar4 = gVar2;
                                obj2 = lVar;
                                obj3 = kVar;
                                obj4 = nVar;
                                obj5 = mVar;
                                break;
                            case 5:
                                View viewInflate4 = LayoutInflater.from(this.f62273b).inflate(R.layout.item_simulator_footer_view, (ViewGroup) null);
                                i iVar2 = new i();
                                iVar2.f62310a = (TextView) viewInflate4.findViewById(R.id.text);
                                viewInflate4.setTag(iVar2);
                                obj = null;
                                gVar4 = null;
                                obj2 = null;
                                obj3 = null;
                                obj4 = null;
                                obj5 = iVar2;
                                view7 = viewInflate4;
                                mVar3 = null;
                                break;
                            case 6:
                                j jVar = new j();
                                View viewInflate5 = LayoutInflater.from(this.f62273b).inflate(R.layout.item_simulator_spacing_view, (ViewGroup) null);
                                viewInflate5.setTag(jVar);
                                view9 = viewInflate5;
                                mVar4 = null;
                                gVar = null;
                                view8 = view9;
                                g gVar110 = gVar;
                                g gVar111 = gVar110;
                                g gVar112 = gVar111;
                                g gVar22 = gVar112;
                                obj5 = gVar22;
                                mVar3 = mVar4;
                                view7 = view8;
                                obj = gVar;
                                gVar4 = gVar110;
                                obj2 = gVar111;
                                obj3 = gVar112;
                                obj4 = gVar22;
                                break;
                            case 7:
                                l lVar4 = new l();
                                View viewInflate6 = LayoutInflater.from(this.f62273b).inflate(R.layout.item_simulator_subject_view, (ViewGroup) null);
                                lVar4.f62316a = (LinearLayout) viewInflate6.findViewById(R.id.simulator_subject_ll);
                                lVar4.f62317b = (SimpleDraweeView) viewInflate6.findViewById(R.id.simulator_subject_iv);
                                viewInflate6.setTag(lVar4);
                                hVar = null;
                                gVar2 = null;
                                kVar = null;
                                nVar = null;
                                mVar = null;
                                lVar = lVar4;
                                view6 = viewInflate6;
                                mVar3 = mVar;
                                view7 = view6;
                                obj = hVar;
                                gVar4 = gVar2;
                                obj2 = lVar;
                                obj3 = kVar;
                                obj4 = nVar;
                                obj5 = mVar;
                                break;
                            case 8:
                                o oVar = new o();
                                View viewInflate7 = LayoutInflater.from(this.f62273b).inflate(R.layout.item_simulator_white_spacing_view, (ViewGroup) null);
                                viewInflate7.setTag(oVar);
                                view9 = viewInflate7;
                                mVar4 = null;
                                gVar = null;
                                view8 = view9;
                                g gVar113 = gVar;
                                g gVar114 = gVar113;
                                g gVar115 = gVar114;
                                g gVar23 = gVar115;
                                obj5 = gVar23;
                                mVar3 = mVar4;
                                view7 = view8;
                                obj = gVar;
                                gVar4 = gVar113;
                                obj2 = gVar114;
                                obj3 = gVar115;
                                obj4 = gVar23;
                                break;
                            case 9:
                                h hVar4 = new h();
                                View viewInflate8 = LayoutInflater.from(this.f62273b).inflate(R.layout.item_simulator_encyclopedia_view, (ViewGroup) null);
                                hVar4.f62305a = (LinearLayout) viewInflate8.findViewById(R.id.simulator_encyclopedia_ll);
                                hVar4.f62306b = (SimpleDraweeView) viewInflate8.findViewById(R.id.simulator_encyclopedia_iv);
                                hVar4.f62307c = (TextView) viewInflate8.findViewById(R.id.simulator_encyclopedia_title_tv);
                                hVar4.f62308d = (TextView) viewInflate8.findViewById(R.id.simulator_encyclopedia_label_tv);
                                viewInflate8.setTag(hVar4);
                                gVar2 = null;
                                lVar = null;
                                kVar = null;
                                nVar = null;
                                mVar = null;
                                hVar = hVar4;
                                view6 = viewInflate8;
                                mVar3 = mVar;
                                view7 = view6;
                                obj = hVar;
                                gVar4 = gVar2;
                                obj2 = lVar;
                                obj3 = kVar;
                                obj4 = nVar;
                                obj5 = mVar;
                                break;
                            default:
                                view9 = view;
                                mVar4 = null;
                                gVar = null;
                                view8 = view9;
                                g gVar116 = gVar;
                                g gVar117 = gVar116;
                                g gVar118 = gVar117;
                                g gVar24 = gVar118;
                                obj5 = gVar24;
                                mVar3 = mVar4;
                                view7 = view8;
                                obj = gVar;
                                gVar4 = gVar116;
                                obj2 = gVar117;
                                obj3 = gVar118;
                                obj4 = gVar24;
                                break;
                        }
                        gVar5 = gVar4;
                        Object obj12 = obj5;
                        view2 = view7;
                        iVar = obj12;
                        mVar5 = mVar3;
                        hVar3 = obj;
                        lVar3 = obj2;
                        kVar3 = obj3;
                        nVar3 = obj4;
                    } catch (Exception e10) {
                        e = e10;
                        view2 = view5;
                        e.printStackTrace();
                        com.join.mgps.Util.g1.d("Exception", "Exception_tbl:" + e.getMessage());
                        view3 = view2;
                        return view3;
                    }
                } catch (Exception e11) {
                    e = e11;
                    view2 = view4;
                    e.printStackTrace();
                    com.join.mgps.Util.g1.d("Exception", "Exception_tbl:" + e.getMessage());
                    view3 = view2;
                    return view3;
                }
            }
            try {
                f fVar = this.f62274c.get(i10);
                if (itemViewType == 1) {
                    mVar5.f62319a.setText((String) fVar.f62289a);
                    mVar5.f62320b.setOnClickListener(new e());
                    view3 = view2;
                } else if (itemViewType == 2) {
                    final CollectionBeanSub collectionBeanSub = (CollectionBeanSub) fVar.f62289a;
                    DownloadTask downloadTask = collectionBeanSub.getDownloadTask();
                    long j10 = (long) (Double.parseDouble(collectionBeanSub.getSize()) * 1024.0d * 1024.0d);
                    com.join.android.app.common.utils.l.h(gVar5.f62291a, collectionBeanSub.getIco_remote().trim());
                    e(collectionBeanSub.getScore(), collectionBeanSub.getDown_count(), collectionBeanSub.getSize(), collectionBeanSub.getSp_tag_info(), collectionBeanSub.getTag_info(), gVar5.f62299i, this.f62273b);
                    UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id());
                    UtilsMy.z1(collectionBeanSub.getDownloadTask(), collectionBeanSub);
                    gVar5.f62294d.f(new m6.c(this.f62273b, collectionBeanSub));
                    gVar5.f62293c.setText(collectionBeanSub.getGame_name());
                    gVar5.f62297g.setText(collectionBeanSub.getInfo());
                    gVar5.f62295e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.g7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view13) {
                            this.f62214b.i(collectionBeanSub, view13);
                        }
                    });
                    if (collectionBeanSub.isH5Game()) {
                        gVar5.f62299i.setVisibility(8);
                        gVar5.f62292b.setVisibility(8);
                        view3 = view2;
                    } else if (downloadTask == null) {
                        j(gVar5, Boolean.TRUE, Boolean.FALSE);
                        view3 = view2;
                    } else {
                        com.join.mgps.Util.g1.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
                        int status = downloadTask.getStatus();
                        if (status == 0) {
                            view3 = view2;
                            j(gVar5, Boolean.TRUE, Boolean.FALSE);
                            view3 = view2;
                        } else if (status == 42) {
                            Boolean bool = Boolean.TRUE;
                            j(gVar5, bool, bool);
                            view3 = view2;
                        } else if (status == 48) {
                            j(gVar5, Boolean.TRUE, Boolean.FALSE);
                            view3 = view2;
                        } else if (status == 2) {
                            Boolean bool2 = Boolean.FALSE;
                            j(gVar5, bool2, bool2);
                            if (downloadTask.getSize() == 0) {
                                gVar5.f62300j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            } else {
                                gVar5.f62300j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            }
                            gVar5.f62302l.setProgress((int) downloadTask.getProgress());
                            String speed = downloadTask.getSpeed();
                            gVar5.f62301k.setText(speed + "/S");
                            view3 = view2;
                        } else if (status == 3) {
                            Boolean bool3 = Boolean.FALSE;
                            j(gVar5, bool3, bool3);
                            try {
                                if (downloadTask.getSize() == 0) {
                                    gVar5.f62300j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                } else {
                                    gVar5.f62300j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                }
                                gVar5.f62302l.setProgress((int) downloadTask.getProgress());
                                view3 = view2;
                            } catch (Exception e12) {
                                e12.printStackTrace();
                                view3 = view2;
                            }
                        } else if (status == 5) {
                            Boolean bool4 = Boolean.TRUE;
                            j(gVar5, bool4, bool4);
                            view3 = view2;
                        } else if (status == 6) {
                            Boolean bool5 = Boolean.FALSE;
                            j(gVar5, bool5, bool5);
                            if (downloadTask.getSize() == 0) {
                                gVar5.f62300j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            } else {
                                gVar5.f62300j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            }
                            gVar5.f62302l.setProgress((int) downloadTask.getProgress());
                            view3 = view2;
                        } else if (status != 7) {
                            switch (status) {
                                case 9:
                                    j(gVar5, Boolean.TRUE, Boolean.FALSE);
                                    view3 = view2;
                                    break;
                                case 10:
                                    Boolean bool6 = Boolean.FALSE;
                                    j(gVar5, bool6, bool6);
                                    gVar5.f62300j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                    try {
                                        gVar5.f62302l.setProgress((int) downloadTask.getProgress());
                                    } catch (Exception e13) {
                                        e13.printStackTrace();
                                    }
                                    gVar5.f62301k.setText("等待中");
                                    view3 = view2;
                                    break;
                                case 11:
                                    j(gVar5, Boolean.TRUE, Boolean.FALSE);
                                    view3 = view2;
                                    break;
                                case 12:
                                    j(gVar5, Boolean.FALSE, Boolean.TRUE);
                                    gVar5.f62300j.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                    gVar5.f62301k.setText("解压中..");
                                    gVar5.f62303m.setProgress((int) downloadTask.getProgress());
                                    view3 = view2;
                                    break;
                                case 13:
                                    j(gVar5, Boolean.FALSE, Boolean.TRUE);
                                    gVar5.f62300j.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                    gVar5.f62301k.setText("点击重新解压");
                                    gVar5.f62303m.setProgress((int) downloadTask.getProgress());
                                    view3 = view2;
                                    break;
                            }
                        } else {
                            view3 = view2;
                            j(gVar5, Boolean.TRUE, Boolean.FALSE);
                            view3 = view2;
                        }
                    }
                } else if (itemViewType == 3) {
                    kVar3.f62314b.setOnClickListener(new d());
                    view3 = view2;
                } else if (itemViewType == 4) {
                    nVar3.f62322a.setText((String) fVar.f62289a);
                    view3 = view2;
                } else if (itemViewType == 5) {
                    SimulatorAreaDataBean.GameTypeBean gameTypeBean = (SimulatorAreaDataBean.GameTypeBean) fVar.f62289a;
                    iVar.f62310a.setText(gameTypeBean.getTitle());
                    iVar.f62310a.setOnClickListener(new c(gameTypeBean));
                    view3 = view2;
                } else if (itemViewType == 7) {
                    SimulatorAreaDataBean.SubjectListBean subjectListBean = (SimulatorAreaDataBean.SubjectListBean) fVar.f62289a;
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f62275d, this.f62276e);
                    int i11 = this.f62277f;
                    layoutParams.setMargins(i11, 0, i11, 0);
                    lVar3.f62317b.setLayoutParams(layoutParams);
                    com.join.android.app.common.utils.l.h(lVar3.f62317b, subjectListBean.getMain().getPic_remote());
                    lVar3.f62316a.setOnClickListener(new b(subjectListBean.getSub().size() > 0 ? subjectListBean.getSub().get(0) : null));
                    view3 = view2;
                } else if (itemViewType != 9) {
                    view3 = view2;
                } else {
                    SimulatorAreaDataBean.SimulatorFbaEncyclopediasBean simulatorFbaEncyclopediasBean = (SimulatorAreaDataBean.SimulatorFbaEncyclopediasBean) fVar.f62289a;
                    hVar3.f62307c.setText(simulatorFbaEncyclopediasBean.getMain().getSub_title());
                    hVar3.f62308d.setText(simulatorFbaEncyclopediasBean.getMain().getLabel());
                    com.join.android.app.common.utils.l.h(hVar3.f62306b, simulatorFbaEncyclopediasBean.getMain().getPic_remote());
                    hVar3.f62305a.setOnClickListener(new a(simulatorFbaEncyclopediasBean.getSub().size() > 0 ? simulatorFbaEncyclopediasBean.getSub().get(0) : null));
                    view3 = view2;
                }
            } catch (Exception e14) {
                e = e14;
                e.printStackTrace();
                com.join.mgps.Util.g1.d("Exception", "Exception_tbl:" + e.getMessage());
                view3 = view2;
            }
        } catch (Exception e15) {
            e = e15;
            view2 = view;
        }
        return view3;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 10;
    }

    public boolean h() {
        if (this.f62274c == null) {
            this.f62274c = new ArrayList();
        }
        if (this.f62274c.size() <= 0) {
            return false;
        }
        List<f> list = this.f62274c;
        int i10 = list.get(list.size() - 1).f62290b;
        return i10 == 5 || i10 == 4;
    }

    void j(g holder, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            holder.f62298h.setVisibility(8);
            holder.f62302l.setVisibility(8);
            holder.f62303m.setVisibility(8);
            holder.f62299i.setVisibility(0);
            holder.f62297g.setVisibility(0);
            return;
        }
        holder.f62298h.setVisibility(0);
        if (isZip.booleanValue()) {
            holder.f62302l.setVisibility(8);
            holder.f62303m.setVisibility(0);
        } else {
            holder.f62303m.setVisibility(8);
            holder.f62302l.setVisibility(0);
        }
        holder.f62299i.setVisibility(8);
        holder.f62297g.setVisibility(8);
    }
}
