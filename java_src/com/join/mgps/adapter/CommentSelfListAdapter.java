package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.GameAndProfileActivity_;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.FavoritesCenterData;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CommentSelfListAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f58704c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f58706e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f58703b = getClass().getSimpleName();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    j f58707f = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<k> f58705d = new ArrayList();

    public enum ViewType {
        FAVORITES_TITLE,
        FAVORITES_ITEM_TITLE,
        FAVORITES_F,
        COMMENT_LIST_ITEM_HEADER,
        COMMENT_LIST_ITEM_CONTENT,
        COMMENT_LIST_ITEM_FOOTER
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameAndProfileActivity_.intent(view.getContext()).a(0).b(CommentSelfListAdapter.this.f58706e).start();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameAndProfileActivity_.intent(view.getContext()).a(1).b(CommentSelfListAdapter.this.f58706e).start();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ g f58710b;

        c(final g val$h) {
            this.f58710b = val$h;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f58710b.f58725c.getText().toString().equals("查看更多")) {
                this.f58710b.f58724b.setMaxLines(Integer.MAX_VALUE);
                this.f58710b.f58725c.setText("收起");
            } else {
                this.f58710b.f58724b.setMaxLines(7);
                this.f58710b.f58725c.setText("查看更多");
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f58712b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f58713c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f58714d;

        d(final int val$cid, final String val$gid, final int val$praiseType) {
            this.f58712b = val$cid;
            this.f58713c = val$gid;
            this.f58714d = val$praiseType;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v10.startAnimation(AnimationUtils.loadAnimation(CommentSelfListAdapter.this.f58704c, R.anim.scale_reset));
            j jVar = CommentSelfListAdapter.this.f58707f;
            if (jVar != null) {
                jVar.b(this.f58712b, this.f58713c, this.f58714d);
            }
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f58716b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f58717c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f58718d;

        e(final int val$cid, final String val$gid, final int val$depiseType) {
            this.f58716b = val$cid;
            this.f58717c = val$gid;
            this.f58718d = val$depiseType;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v10.startAnimation(AnimationUtils.loadAnimation(CommentSelfListAdapter.this.f58704c, R.anim.scale_reset));
            j jVar = CommentSelfListAdapter.this.f58707f;
            if (jVar != null) {
                jVar.a(this.f58716b, this.f58717c, this.f58718d);
            }
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f58720b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f58721c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f58722d;

        f(final int val$commentId, final String val$gameId, final String val$commentScoreSwitch) {
            this.f58720b = val$commentId;
            this.f58721c = val$gameId;
            this.f58722d = val$commentScoreSwitch;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goCommentDetailActivity(v10.getContext(), this.f58720b + "", this.f58721c, this.f58722d);
        }
    }

    class g extends l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f58724b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f58725c;

        g() {
            super();
        }
    }

    class h extends l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f58727b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f58728c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f58729d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ImageView f58730e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ImageView f58731f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f58732g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public View f58733h;

        h() {
            super();
        }
    }

    class i extends l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f58735b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f58736c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f58737d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public MStarBar f58738e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f58739f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f58740g;

        i() {
            super();
        }
    }

    public interface j {
        void a(int cid, String gid, int depiseType);

        void b(int cid, String gid, int praiseType);

        void c(int commentId, String gameId, String commentScoreSwitch);
    }

    public static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f58742a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f58743b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f58744a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f58745b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f58746c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f58747d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f58748e;

            public a(int commentId, String gameId, String content, int is_old, int comment_score_switch) {
                this.f58744a = commentId;
                this.f58745b = gameId;
                this.f58746c = content;
                this.f58747d = is_old;
                this.f58748e = comment_score_switch;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f58749a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f58750b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f58751c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f58752d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f58753e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f58754f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f58755g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f58756h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f58757i;

            public b(int commentId, String gameId, int likeCount, int unlikeCount, int viewCount, int is_praise, int is_despise, int is_old, int comment_score_switch) {
                this.f58749a = commentId;
                this.f58750b = gameId;
                this.f58751c = likeCount;
                this.f58752d = unlikeCount;
                this.f58753e = viewCount;
                this.f58754f = is_praise;
                this.f58755g = is_despise;
                this.f58756h = is_old;
                this.f58757i = comment_score_switch;
            }
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f58758a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f58759b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f58760c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f58761d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f58762e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f58763f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public long f58764g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public double f58765h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f58766i;

            public c(boolean hideDivider, int commentId, String gameId, String gameIco, String gameName, int comment_score_switch, long addTime, double mark, int is_old) {
                this.f58758a = hideDivider;
                this.f58759b = commentId;
                this.f58760c = gameId;
                this.f58761d = gameIco;
                this.f58762e = gameName;
                this.f58763f = comment_score_switch;
                this.f58764g = addTime;
                this.f58765h = mark;
                this.f58766i = is_old;
            }
        }

        public k() {
        }

        public Object a() {
            return this.f58743b;
        }

        public ViewType b() {
            return this.f58742a;
        }

        public void c(Object obj) {
            this.f58743b = obj;
        }

        public void d(ViewType viewType) {
            this.f58742a = viewType;
        }

        public k(ViewType viewType, Object obj) {
            this.f58742a = viewType;
            this.f58743b = obj;
        }
    }

    class l {
        l() {
        }
    }

    class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        HListView f58768a;

        public m(View itemView) {
            this.f58768a = (HListView) itemView.findViewById(R.id.favoriteList);
        }
    }

    class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ImageView f58770a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f58771b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f58772c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f58773d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ImageView f58774e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f58775f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        LinearLayout f58776g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        VipView f58777h;

        public n(View itemView) {
            this.f58770a = (ImageView) itemView.findViewById(R.id.titleImg);
            this.f58771b = (SimpleDraweeView) itemView.findViewById(R.id.userIcon);
            this.f58772c = (TextView) itemView.findViewById(R.id.userName);
            this.f58775f = (TextView) itemView.findViewById(R.id.tipName);
            this.f58776g = (LinearLayout) itemView.findViewById(R.id.tipsLayout);
            this.f58773d = (ImageView) itemView.findViewById(R.id.vip);
            this.f58777h = (VipView) itemView.findViewById(R.id.svip);
            this.f58774e = (ImageView) itemView.findViewById(R.id.sexImg);
        }
    }

    class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f58779a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f58780b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f58781c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f58782d;

        public o(View itemView) {
            this.f58779a = (TextView) itemView.findViewById(R.id.titleText);
            this.f58782d = itemView.findViewById(R.id.line_h);
            this.f58780b = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f58781c = itemView.findViewById(R.id.layoutTop);
        }
    }

    public CommentSelfListAdapter(Context mContext) {
        this.f58704c = mContext;
    }

    private View e(int position, View convertView, ViewGroup parent) {
        g gVar;
        if (convertView != null) {
            gVar = (g) convertView.getTag();
        } else {
            gVar = new g();
            convertView = LayoutInflater.from(this.f58704c).inflate(R.layout.comment_list_item_content, (ViewGroup) null);
            gVar.f58724b = (TextView) convertView.findViewById(R.id.content);
            gVar.f58725c = (TextView) convertView.findViewById(R.id.more);
            convertView.setTag(gVar);
        }
        try {
            k.a aVar = (k.a) getItem(position);
            if (aVar == null) {
                return convertView;
            }
            gVar.f58724b.setText(aVar.f58746c);
            if (gVar.f58724b.getLineCount() > 7) {
                gVar.f58725c.setVisibility(0);
                gVar.f58725c.setOnClickListener(new c(gVar));
            } else {
                gVar.f58725c.setVisibility(8);
            }
            String str = "0";
            if (aVar.f58747d != 1 && aVar.f58748e == 1) {
                str = "1";
            }
            p(convertView, aVar.f58744a, aVar.f58745b, str);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View f(int position, View convertView, ViewGroup parent) {
        h hVar;
        if (convertView != null) {
            hVar = (h) convertView.getTag();
        } else {
            hVar = new h();
            convertView = LayoutInflater.from(this.f58704c).inflate(R.layout.comment_list_item_footer, (ViewGroup) null);
            hVar.f58727b = (TextView) convertView.findViewById(R.id.likeCount);
            hVar.f58728c = (TextView) convertView.findViewById(R.id.unlikeCount);
            hVar.f58729d = (TextView) convertView.findViewById(R.id.viewCount);
            hVar.f58730e = (ImageView) convertView.findViewById(R.id.like);
            hVar.f58731f = (ImageView) convertView.findViewById(R.id.unlike);
            hVar.f58732g = convertView.findViewById(R.id.llLike);
            hVar.f58733h = convertView.findViewById(R.id.llUnlike);
            convertView.setTag(hVar);
        }
        try {
            k.b bVar = (k.b) getItem(position);
            if (bVar == null) {
                return convertView;
            }
            hVar.f58727b.setText(com.join.mgps.Util.r0.R(bVar.f58751c));
            hVar.f58728c.setText(com.join.mgps.Util.r0.R(bVar.f58752d));
            hVar.f58729d.setText(com.join.mgps.Util.r0.R(bVar.f58753e));
            String str = "0";
            if (bVar.f58756h != 1 && bVar.f58757i == 1) {
                str = "1";
            }
            p(convertView, bVar.f58749a, bVar.f58750b, str);
            if (bVar.f58754f == 1) {
                hVar.f58730e.setImageResource(R.drawable.uped_ic);
            } else {
                hVar.f58730e.setImageResource(R.drawable.up_ic);
            }
            if (bVar.f58755g == 1) {
                hVar.f58731f.setImageResource(R.drawable.downed_ic);
            } else {
                hVar.f58731f.setImageResource(R.drawable.down_ic);
            }
            int i10 = bVar.f58749a;
            String str2 = bVar.f58750b;
            hVar.f58732g.setOnClickListener(new d(i10, str2, bVar.f58754f == 1 ? 2 : 1));
            hVar.f58733h.setOnClickListener(new e(i10, str2, bVar.f58755g == 1 ? 2 : 1));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View g(int position, View convertView, ViewGroup parent) {
        i iVar;
        if (convertView != null) {
            iVar = (i) convertView.getTag();
        } else {
            iVar = new i();
            convertView = LayoutInflater.from(this.f58704c).inflate(R.layout.comment_list_item_header, (ViewGroup) null);
            iVar.f58735b = (SimpleDraweeView) convertView.findViewById(R.id.usericon);
            iVar.f58736c = (TextView) convertView.findViewById(R.id.addTime);
            iVar.f58739f = convertView.findViewById(R.id.divider);
            iVar.f58737d = (TextView) convertView.findViewById(R.id.username);
            iVar.f58738e = (MStarBar) convertView.findViewById(R.id.comment_head_mstarBar);
            iVar.f58740g = convertView.findViewById(R.id.commentAllRootLl);
            convertView.setTag(iVar);
        }
        try {
            k.c cVar = (k.c) getItem(position);
            if (cVar == null) {
                return convertView;
            }
            if (cVar.f58758a) {
                iVar.f58739f.setVisibility(8);
            } else {
                iVar.f58739f.setVisibility(0);
            }
            String str = "0";
            if (cVar.f58766i == 1 || cVar.f58763f != 1) {
                iVar.f58738e.setVisibility(4);
            } else {
                iVar.f58738e.setVisibility(0);
                str = "1";
            }
            iVar.f58738e.setStarCount((int) cVar.f58765h);
            iVar.f58738e.setStarMark(cVar.f58765h);
            iVar.f58738e.setEnabled(false);
            com.join.android.app.common.utils.l.h(iVar.f58735b, cVar.f58761d);
            iVar.f58737d.setText(cVar.f58762e);
            iVar.f58736c.setText(com.join.android.app.common.utils.i.a(cVar.f58764g * 1000));
            p(iVar.f58740g, cVar.f58759b, cVar.f58760c, str);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View h(int position, View view, ViewGroup parent) {
        m mVar;
        if (view == null) {
            view = LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_favortis_layout, (ViewGroup) null);
            mVar = new m(view);
            view.setTag(mVar);
        } else {
            mVar = (m) view.getTag();
        }
        mVar.f58768a.setAdapter((ListAdapter) new x(this.f58704c, (List) getItem(position), 2));
        return view;
    }

    private View j(int position, View view, ViewGroup parent) {
        o oVar;
        if (view == null) {
            view = LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_title, (ViewGroup) null);
            oVar = new o(view);
            view.setTag(oVar);
        } else {
            oVar = (o) view.getTag();
        }
        int iIntValue = ((Integer) getItem(position)).intValue();
        String str = "创建的游戏单";
        if (iIntValue == 1) {
            oVar.f58780b.setVisibility(8);
        } else if (iIntValue == 2) {
            oVar.f58780b.setVisibility(0);
            oVar.f58780b.setOnClickListener(new a());
        } else {
            str = "订阅的游戏单";
            if (iIntValue == 3) {
                oVar.f58780b.setVisibility(8);
            } else if (iIntValue == 4) {
                oVar.f58780b.setVisibility(0);
                oVar.f58780b.setOnClickListener(new b());
            } else {
                oVar.f58780b.setVisibility(8);
                str = "点评的游戏";
            }
        }
        oVar.f58779a.setText(str);
        oVar.f58782d.setVisibility(8);
        return view;
    }

    private View l(int position, View view, ViewGroup parent) {
        n nVar;
        if (view == null) {
            view = LayoutInflater.from(parent.getContext()).inflate(R.layout.favoriose_title_layout, (ViewGroup) null);
            nVar = new n(view);
            view.setTag(nVar);
        } else {
            nVar = (n) view.getTag();
        }
        FavoritesCenterData.MemberInfoBean memberInfoBean = (FavoritesCenterData.MemberInfoBean) getItem(position);
        com.join.android.app.common.utils.l.h(nVar.f58771b, memberInfoBean.getPortrait());
        nVar.f58772c.setText(memberInfoBean.getNick_name());
        if (com.join.mgps.Util.t2.i(memberInfoBean.getRank())) {
            nVar.f58775f.setText(memberInfoBean.getRank());
            nVar.f58775f.setVisibility(0);
        } else {
            nVar.f58775f.setVisibility(8);
        }
        if ("1".equals(memberInfoBean.getSex())) {
            nVar.f58774e.setImageResource(R.drawable.favorite_sex_men);
        } else {
            nVar.f58774e.setImageResource(R.drawable.favorite_sex_wumen);
        }
        int vip = memberInfoBean.getVip();
        int svip = memberInfoBean.getSvip();
        if (vip > 0) {
            nVar.f58773d.setVisibility(0);
        } else {
            nVar.f58773d.setVisibility(8);
        }
        if (svip > 0) {
            nVar.f58777h.setVipData(0, svip);
        }
        String tag_info = memberInfoBean.getTag_info();
        if (com.join.mgps.Util.t2.i(tag_info)) {
            String[] strArrSplit = tag_info.split(",");
            nVar.f58776g.removeAllViews();
            for (String str : strArrSplit) {
                View viewInflate = LayoutInflater.from(this.f58704c).inflate(R.layout.favoritecenter_item_tipitem, (ViewGroup) null);
                nVar.f58776g.addView(viewInflate);
                ((TextView) viewInflate.findViewById(R.id.tipText)).setText(str);
            }
        }
        return view;
    }

    public void c(k items) {
        if (items == null) {
            return;
        }
        if (this.f58705d == null) {
            this.f58705d = new ArrayList();
        }
        this.f58705d.add(items);
    }

    public void d(List<k> items) {
        if (items == null) {
            return;
        }
        if (this.f58705d == null) {
            this.f58705d = new ArrayList();
        }
        this.f58705d.addAll(items);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<k> list = this.f58705d;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<k> list = this.f58705d;
        if (list != null) {
            return list.get(position).a();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        List<k> list = this.f58705d;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.COMMENT_LIST_ITEM_HEADER.ordinal()) {
            return g(position, convertView, parent);
        }
        if (itemViewType == ViewType.COMMENT_LIST_ITEM_CONTENT.ordinal()) {
            return e(position, convertView, parent);
        }
        if (itemViewType == ViewType.COMMENT_LIST_ITEM_FOOTER.ordinal()) {
            return f(position, convertView, parent);
        }
        if (itemViewType == ViewType.FAVORITES_ITEM_TITLE.ordinal()) {
            return j(position, convertView, parent);
        }
        if (itemViewType == ViewType.FAVORITES_TITLE.ordinal()) {
            return l(position, convertView, parent);
        }
        return itemViewType == ViewType.FAVORITES_F.ordinal() ? h(position, convertView, parent) : convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public List<k> i() {
        return this.f58705d;
    }

    public List<k> k() {
        return this.f58705d;
    }

    public void m(List<k> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f58705d == null) {
            itemBeans = new ArrayList<>();
        }
        this.f58705d.clear();
        this.f58705d.addAll(itemBeans);
    }

    public void n(List<k> items) {
        if (items == null) {
            return;
        }
        if (this.f58705d == null) {
            this.f58705d = new ArrayList();
        }
        this.f58705d.clear();
        this.f58705d.addAll(items);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public void o(j l10) {
        this.f58707f = l10;
    }

    void p(View view, final int commentId, final String gameId, final String commentScoreSwitch) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new f(commentId, gameId, commentScoreSwitch));
    }

    public CommentSelfListAdapter(Context mContext, int uid) {
        this.f58704c = mContext;
        this.f58706e = uid;
    }
}
