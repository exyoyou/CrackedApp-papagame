package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.ImagePagerActivity;
import com.join.mgps.activity.SearchListActivity1;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.SearchIntegratedFavoriteBean;
import com.join.mgps.dto.SearchIntegratedPostBean;
import com.join.mgps.dto.SearchResultAdinfo;
import com.papa.sim.statistic.Where;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b7 extends BaseAdapter {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f61264c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f61265d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SearchResultAdinfo f61266e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<n> f61263b = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private g f61267f = null;

    class a implements AdapterView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f61268a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f61269b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f61270c;

        a(final Context val$context, final List val$strings, final CollectionBeanSub val$modleFourBean) {
            this.f61268a = val$context;
            this.f61269b = val$strings;
            this.f61270c = val$modleFourBean;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> parent, View view, int position, long id2) {
            try {
                Intent intent = new Intent(this.f61268a, (Class<?>) ImagePagerActivity.class);
                String[] strArr = new String[this.f61269b.size()];
                for (int i10 = 0; i10 < this.f61269b.size(); i10++) {
                    strArr[i10] = (String) this.f61269b.get(i10);
                }
                if (com.join.mgps.Util.t2.i(this.f61270c.getVedio_url()) && position == 0) {
                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                    videoInfo.H(this.f61270c.getVedio_url());
                    videoInfo.C(strArr[0]);
                    FullScreenActivity_.intent(this.f61268a).a(videoInfo).start();
                } else {
                    intent.putExtra("image_urls", strArr);
                    intent.putExtra("image_index", position);
                    this.f61268a.startActivity(intent);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f61272b;

        b(final CollectionBeanSub val$searchDataBean) {
            this.f61272b = val$searchDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f61272b.getCrc_sign_id() != null) {
                IntentUtil.getInstance().goGameDetialActivity(view.getContext(), this.f61272b.getCrc_sign_id(), this.f61272b.getGame_info_tpl_type(), this.f61272b.getSp_tpl_two_position(), this.f61272b.get_from_type(), this.f61272b.getReMarks(), Where.search.name(), b7.this.z(), "");
                if (b7.this.f61267f != null) {
                    b7.this.f61267f.c(this.f61272b.getCrc_sign_id());
                    b7.this.f61267f.e(this.f61272b.getCrc_sign_id());
                }
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f61274b;

        c(final int val$item) {
            this.f61274b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ((SearchListActivity1) b7.this.f61264c).setTab(this.f61274b);
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchIntegratedFavoriteBean.FavoriteBean f61276b;

        d(final SearchIntegratedFavoriteBean.FavoriteBean val$item) {
            this.f61276b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (b7.this.f61267f != null) {
                b7.this.f61267f.g(v10.getContext(), this.f61276b.getId() + "", this.f61276b.getUid(), "0", "0");
            }
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchIntegratedPostBean.TopArea f61278b;

        e(final SearchIntegratedPostBean.TopArea val$item) {
            this.f61278b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumBean forumBean = new ForumBean();
            forumBean.setFid(this.f61278b.getFid());
            com.join.mgps.Util.r0.r0(v10.getContext(), forumBean);
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f61280b;

        f(final String val$pid) {
            this.f61280b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (b7.this.f61267f != null) {
                b7.this.f61267f.b(this.f61280b);
            }
        }
    }

    public interface g {
        void b(String pid);

        void c(String gameId);

        void d(String crc_link_type_val);

        void e(String crc_sign_id);

        void g(Context context, String s10, String uid, String s11, String s12);
    }

    class h extends t {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ImageView f61282b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f61283c;

        h() {
            super();
        }
    }

    class i extends t {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f61285b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f61286c;

        i() {
            super();
        }
    }

    class j extends t {
        j() {
            super();
        }
    }

    class k extends ClickableSpan implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View.OnClickListener f61289b;

        public k(View.OnClickListener mListener) {
            this.f61289b = mListener;
        }

        @Override // android.text.style.ClickableSpan, android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f61289b.onClick(v10);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            ds.setColor(Color.parseColor("#FF4A4A4A"));
            ds.setUnderlineText(false);
        }
    }

    class l extends t {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f61291b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f61292c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f61293d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f61294e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f61295f;

        l() {
            super();
        }
    }

    class m extends t {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f61297b;

        m() {
            super();
        }
    }

    public static class n {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f61299d = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f61300e = 2;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f61301f = 3;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final int f61302g = 4;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final int f61303h = 5;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int f61304i = 6;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final int f61305j = 7;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final int f61306k = 8;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final int f61307l = 9;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final int f61308m = 10;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static final int f61309n = 11;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final int f61310o = 12;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final int f61311p = 12;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f61312a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f61313b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f61314c;

        public n(int type, Object obj) {
            this.f61312a = type;
            this.f61313b = obj;
        }

        public n a(boolean showDivider) {
            this.f61314c = showDivider;
            return this;
        }
    }

    class o extends t {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f61315b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f61316c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f61317d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f61318e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f61319f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f61320g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public View f61321h;

        o() {
            super();
        }
    }

    class p extends t {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f61323b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f61324c;

        p() {
            super();
        }
    }

    class q extends t {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Button f61326b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f61327c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f61328d;

        q() {
            super();
        }
    }

    class r extends t {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f61330b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f61331c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f61332d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f61333e;

        r() {
            super();
        }
    }

    public class s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f61335a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f61336b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f61337c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61338d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        DownloadNormalView f61339e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        LinearLayout f61340f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f61341g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        LinearLayout f61342h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f61343i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f61344j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ProgressBar f61345k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ProgressBar f61346l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        RelativeLayout f61347m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        View f61348n;

        public s() {
        }
    }

    class t {
        t() {
        }
    }

    class u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f61351a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f61352b;

        public u(View itemView) {
            this.f61351a = (TextView) itemView.findViewById(R.id.tips);
            this.f61352b = (TextView) itemView.findViewById(R.id.titleText);
        }
    }

    class v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        HListView f61354a;

        public v(View itemView) {
            this.f61354a = (HListView) itemView.findViewById(R.id.screenListView);
        }
    }

    public b7(Context mContext) {
        this.f61264c = mContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(int i10, View view) {
        ((SearchListActivity1) this.f61264c).setTab(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(int i10, View view) {
        ((SearchListActivity1) this.f61264c).setTab(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(String str, View view) {
        D(view.getContext(), str);
    }

    private View h(int position, View convertView, ViewGroup parent) {
        h hVar;
        if (convertView != null) {
            hVar = (h) convertView.getTag();
        } else {
            h hVar2 = new h();
            View viewInflate = LayoutInflater.from(this.f61264c).inflate(R.layout.mg_forum_search_item_all_no_more, parent, false);
            hVar2.f61282b = (ImageView) viewInflate.findViewById(R.id.icon);
            hVar2.f61283c = (TextView) viewInflate.findViewById(R.id.name);
            viewInflate.setTag(hVar2);
            hVar = hVar2;
            convertView = viewInflate;
        }
        int iIntValue = ((Integer) getItem(position)).intValue();
        if (iIntValue == 1) {
            hVar.f61282b.setImageResource(R.drawable.img_bg_game);
            hVar.f61283c.setText("未搜索到相应游戏\n已为您推荐其它游戏");
        } else if (iIntValue == 2) {
            hVar.f61282b.setImageResource(R.drawable.img_bg_dell);
            hVar.f61283c.setText("未搜索到相应游戏单\n已为您推荐热门游戏单");
        } else if (iIntValue == 3) {
            hVar.f61282b.setImageResource(R.drawable.img_bg_talk);
            hVar.f61283c.setText("未搜索到相应社区\n已为您推荐其他热门社区");
        }
        return convertView;
    }

    private View i(int position, View convertView, ViewGroup parent) {
        i iVar;
        if (convertView != null) {
            iVar = (i) convertView.getTag();
        } else {
            iVar = new i();
            convertView = LayoutInflater.from(this.f61264c).inflate(R.layout.mg_forum_search_item_all_section_title, (ViewGroup) null);
            iVar.f61285b = (TextView) convertView.findViewById(R.id.title);
            convertView.setTag(iVar);
        }
        final int iIntValue = ((Integer) getItem(position)).intValue();
        if (iIntValue == 1) {
            iVar.f61285b.setText("游戏");
        } else if (iIntValue == 2) {
            iVar.f61285b.setText("游戏单");
        } else if (iIntValue == 3) {
            iVar.f61285b.setText("帖子");
        }
        iVar.f61285b.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.z6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f64043b.A(iIntValue, view);
            }
        });
        iVar.f61286c.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.a7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f61237b.B(iIntValue, view);
            }
        });
        return convertView;
    }

    private View j(int position, View convertView, ViewGroup parent) {
        if (convertView != null) {
        } else {
            j jVar = new j();
            View viewInflate = LayoutInflater.from(this.f61264c).inflate(R.layout.mg_forum_search_item_all_view_more, parent, false);
            viewInflate.setTag(jVar);
            convertView = viewInflate;
        }
        convertView.setOnClickListener(new c(((Integer) getItem(position)).intValue()));
        return convertView;
    }

    private View k(int position, View convertView, ViewGroup parent) {
        l lVar;
        if (convertView != null) {
            lVar = (l) convertView.getTag();
        } else {
            lVar = new l();
            convertView = LayoutInflater.from(this.f61264c).inflate(R.layout.mg_forum_search_item_favorite_game_list, (ViewGroup) null);
            lVar.f61291b = (SimpleDraweeView) convertView.findViewById(R.id.icon);
            lVar.f61292c = (TextView) convertView.findViewById(R.id.name);
            lVar.f61293d = (TextView) convertView.findViewById(R.id.desc);
            lVar.f61294e = (TextView) convertView.findViewById(R.id.count);
            lVar.f61295f = convertView.findViewById(R.id.divider);
            convertView.setTag(lVar);
        }
        SearchIntegratedFavoriteBean.FavoriteBean favoriteBean = (SearchIntegratedFavoriteBean.FavoriteBean) getItem(position);
        com.join.android.app.common.utils.l.h(lVar.f61291b, favoriteBean.getPic());
        lVar.f61292c.setText(favoriteBean.getTitle());
        lVar.f61293d.setText(favoriteBean.getAuth_name());
        lVar.f61294e.setText(favoriteBean.getGame_count() + "款");
        if (favoriteBean.isShowDivider()) {
            lVar.f61295f.setVisibility(0);
        } else {
            lVar.f61295f.setVisibility(8);
        }
        convertView.setOnClickListener(new d(favoriteBean));
        return convertView;
    }

    private View l(int position, View convertView, ViewGroup parent) {
        m mVar;
        if (convertView != null) {
            mVar = (m) convertView.getTag();
        } else {
            mVar = new m();
            convertView = LayoutInflater.from(this.f61264c).inflate(R.layout.mg_forum_search_item_favorite_top_area, (ViewGroup) null);
            mVar.f61297b = (TextView) convertView.findViewById(R.id.title);
            convertView.setTag(mVar);
        }
        try {
            String str = (String) getItem(position);
            SpannableString spannableString = new SpannableString(String.format("包含%s的游戏单", str));
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FFF47500")), 2, str.length() + 2, 18);
            mVar.f61297b.setText(spannableString);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View m(int position, View convertView, ViewGroup parent) {
        return y(position, convertView, parent);
    }

    private View n(int position, View convertView, ViewGroup parent) {
        return x(position, convertView, parent);
    }

    private View o(int position, View convertView, ViewGroup parent) {
        return w(position, convertView, parent);
    }

    private View s(int position, View convertView, ViewGroup parent) {
        o oVar;
        if (convertView != null) {
            oVar = (o) convertView.getTag();
        } else {
            oVar = new o();
            convertView = LayoutInflater.from(this.f61264c).inflate(R.layout.mg_forum_search_list_item_post_footer, (ViewGroup) null);
            oVar.f61316c = (TextView) convertView.findViewById(R.id.forum_post_view);
            oVar.f61317d = (TextView) convertView.findViewById(R.id.forum_post_commit);
            oVar.f61318e = (TextView) convertView.findViewById(R.id.forum_post_praise);
            oVar.f61319f = convertView.findViewById(R.id.viewParent);
            oVar.f61320g = convertView.findViewById(R.id.commentParent);
            oVar.f61321h = convertView.findViewById(R.id.forum_post_praise_parent);
            convertView.setTag(oVar);
        }
        try {
            ForumBean.ForumSearchQueryBean forumSearchQueryBean = (ForumBean.ForumSearchQueryBean) getItem(position);
            if (forumSearchQueryBean == null) {
                return convertView;
            }
            com.join.mgps.Util.r0.D1(oVar.f61316c, forumSearchQueryBean.getView(), "0");
            com.join.mgps.Util.r0.D1(oVar.f61317d, forumSearchQueryBean.getComment(), "0");
            com.join.mgps.Util.r0.D1(oVar.f61318e, forumSearchQueryBean.getPraise(), "0");
            J(convertView, forumSearchQueryBean.getPid());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View t(int position, View convertView, ViewGroup parent) {
        p pVar;
        int dimensionPixelOffset;
        if (convertView != null) {
            pVar = (p) convertView.getTag();
        } else {
            pVar = new p();
            convertView = LayoutInflater.from(this.f61264c).inflate(R.layout.mg_forum_search_item_post_message, (ViewGroup) null);
            pVar.f61323b = (TextView) convertView.findViewById(R.id.forum_post_message);
            pVar.f61324c = convertView.findViewById(R.id.messageParent);
            convertView.setTag(pVar);
        }
        try {
            ForumBean.ForumSearchQueryBean forumSearchQueryBean = (ForumBean.ForumSearchQueryBean) getItem(position);
            if (forumSearchQueryBean == null) {
                return convertView;
            }
            String message = forumSearchQueryBean.getMessage();
            String strG = com.join.mgps.Util.t2.g(forumSearchQueryBean.getKeyword());
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(message);
            int color = this.f61264c.getResources().getColor(R.color.search_high_light);
            int iIndexOf = message.indexOf(strG);
            int length = strG.length() + iIndexOf;
            try {
                if (length <= message.length() && iIndexOf >= 0) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(color), iIndexOf, length, 33);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            final String pid = forumSearchQueryBean.getPid();
            convertView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.y6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f63987b.C(pid, view);
                }
            });
            pVar.f61323b.setText(spannableStringBuilder);
            try {
                if (forumSearchQueryBean.isShowDivider()) {
                    pVar.f61323b.setTextColor(Color.parseColor("#3b3b3b"));
                    pVar.f61323b.setTypeface(Typeface.DEFAULT, 1);
                    dimensionPixelOffset = pVar.f61323b.getResources().getDimensionPixelOffset(R.dimen.wdp36);
                } else {
                    pVar.f61323b.setTextColor(Color.parseColor("#FF4A4A4A"));
                    pVar.f61323b.setTypeface(Typeface.DEFAULT, 0);
                    dimensionPixelOffset = 0;
                }
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) pVar.f61323b.getLayoutParams();
                layoutParams.topMargin = dimensionPixelOffset;
                pVar.f61323b.setLayoutParams(layoutParams);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            convertView.requestLayout();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        return convertView;
    }

    private View u(int position, View convertView, ViewGroup parent) {
        q qVar;
        if (convertView != null) {
            qVar = (q) convertView.getTag();
        } else {
            qVar = new q();
            convertView = LayoutInflater.from(this.f61264c).inflate(R.layout.mg_forum_search_item_post_subject, (ViewGroup) null);
            qVar.f61326b = (Button) convertView.findViewById(R.id.forum_post_best);
            qVar.f61327c = (TextView) convertView.findViewById(R.id.forum_post_subject);
            View viewFindViewById = convertView.findViewById(R.id.subject_parent);
            qVar.f61328d = viewFindViewById;
            viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), com.join.android.app.component.optimizetext.a.a(10.0f), qVar.f61328d.getPaddingRight(), qVar.f61328d.getPaddingBottom());
            convertView.setTag(qVar);
        }
        try {
            ForumBean.ForumSearchQueryBean forumSearchQueryBean = (ForumBean.ForumSearchQueryBean) getItem(position);
            if (forumSearchQueryBean == null) {
                return convertView;
            }
            String subject = forumSearchQueryBean.getSubject();
            String strG = com.join.mgps.Util.t2.g(forumSearchQueryBean.getKeyword());
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(subject);
            int color = this.f61264c.getResources().getColor(R.color.search_high_light);
            int iIndexOf = subject.indexOf(strG);
            int length = strG.length() + iIndexOf;
            try {
                if (length <= subject.length() && iIndexOf >= 0) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(color), iIndexOf, length, 33);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            qVar.f61327c.setText(spannableStringBuilder);
            J(convertView, forumSearchQueryBean.getPid());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return convertView;
    }

    private View v(int position, View convertView, ViewGroup parent) {
        r rVar;
        if (convertView != null) {
            rVar = (r) convertView.getTag();
        } else {
            rVar = new r();
            convertView = LayoutInflater.from(this.f61264c).inflate(R.layout.mg_forum_search_item_post_top_area, (ViewGroup) null);
            rVar.f61330b = (SimpleDraweeView) convertView.findViewById(R.id.icon);
            rVar.f61331c = (TextView) convertView.findViewById(R.id.name);
            rVar.f61332d = (TextView) convertView.findViewById(R.id.desc);
            rVar.f61333e = (TextView) convertView.findViewById(R.id.count);
            convertView.setTag(rVar);
        }
        SearchIntegratedPostBean.TopArea topArea = (SearchIntegratedPostBean.TopArea) getItem(position);
        com.join.android.app.common.utils.l.h(rVar.f61330b, topArea.getIcon_src());
        rVar.f61331c.setText(topArea.getName());
        rVar.f61332d.setText(topArea.getDescription());
        rVar.f61333e.setText("今日更新:" + topArea.getToday_posts());
        convertView.setOnClickListener(new e(topArea));
        return convertView;
    }

    public void D(Context context, String pid) {
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        forumPostsBean.setPid(Integer.parseInt(pid));
        com.join.mgps.Util.r0.v0(context, forumPostsBean);
    }

    public void E(g l10) {
        this.f61267f = l10;
    }

    public void F(SearchResultAdinfo adinfo) {
        this.f61266e = adinfo;
    }

    void G(View view, int tbPadding) {
        if (view == null) {
            return;
        }
        view.setPadding(view.getPaddingLeft(), tbPadding, view.getPaddingRight(), tbPadding);
    }

    public void H(List<n> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f61263b == null) {
            this.f61263b = new ArrayList();
        }
        this.f61263b.clear();
        this.f61263b.addAll(itemBeans);
    }

    public void I(List<n> models) {
        this.f61263b = models;
    }

    public void J(View v10, final String pid) {
        v10.setOnClickListener(new f(pid));
    }

    public void K(String mKeyword) {
        this.f61265d = mKeyword;
    }

    void L(s holder, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            holder.f61342h.setVisibility(8);
            holder.f61345k.setVisibility(8);
            holder.f61346l.setVisibility(8);
            holder.f61340f.setVisibility(0);
            holder.f61341g.setVisibility(0);
            return;
        }
        holder.f61342h.setVisibility(0);
        if (isZip.booleanValue()) {
            holder.f61345k.setVisibility(8);
            holder.f61346l.setVisibility(0);
        } else {
            holder.f61346l.setVisibility(8);
            holder.f61345k.setVisibility(0);
        }
        holder.f61340f.setVisibility(8);
        holder.f61341g.setVisibility(8);
    }

    void f(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        ExtBean extBean = new ExtBean();
        extBean.setFrom("103");
        extBean.setLocation(z());
        downloadTask.setExt(JsonMapper.toJsonString(extBean));
    }

    public SearchResultAdinfo g() {
        return this.f61266e;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f61263b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        if (position < this.f61263b.size()) {
            return this.f61263b.get(position).f61313b;
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return position < this.f61263b.size() ? this.f61263b.get(position).f61312a : super.getItemViewType(position);
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == 3) {
            return s(position, convertView, parent);
        }
        if (itemViewType == 2) {
            return t(position, convertView, parent);
        }
        if (itemViewType == 1) {
            return u(position, convertView, parent);
        }
        if (itemViewType == 4) {
            return v(position, convertView, parent);
        }
        if (itemViewType == 5) {
            return l(position, convertView, parent);
        }
        if (itemViewType == 6) {
            return k(position, convertView, parent);
        }
        if (itemViewType == 7) {
            return o(position, convertView, parent);
        }
        if (itemViewType == 8) {
            return n(position, convertView, parent);
        }
        if (itemViewType == 9) {
            return m(position, convertView, parent);
        }
        if (itemViewType == 10) {
            return i(position, convertView, parent);
        }
        if (itemViewType == 11) {
            return h(position, convertView, parent);
        }
        return itemViewType == 12 ? j(position, convertView, parent) : convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return super.getViewTypeCount() + 12;
    }

    public List<n> p() {
        return this.f61263b;
    }

    public n q(int position) {
        if (position < this.f61263b.size()) {
            return this.f61263b.get(position);
        }
        return null;
    }

    public List<n> r() {
        return this.f61263b;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:60:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:67:0x0356  */
    public View w(final int i10, View convertView, ViewGroup viewGroup) {
        s sVar;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.f61264c).inflate(R.layout.app_listview_item1, (ViewGroup) null);
            sVar = new s();
            sVar.f61335a = (SimpleDraweeView) convertView.findViewById(R.id.mgListviewItemIcon);
            sVar.f61336b = (ImageView) convertView.findViewById(R.id.giftPackageSwich);
            sVar.f61337c = (TextView) convertView.findViewById(R.id.mgListviewItemAppname);
            sVar.f61338d = (TextView) convertView.findViewById(R.id.adText);
            sVar.f61347m = (RelativeLayout) convertView.findViewById(R.id.relateLayoutApp);
            sVar.f61339e = (DownloadNormalView) convertView.findViewById(R.id.dv_view);
            sVar.f61340f = (LinearLayout) convertView.findViewById(R.id.tipsLayout);
            sVar.f61341g = (TextView) convertView.findViewById(R.id.mgListviewItemDescribe);
            sVar.f61338d = (TextView) convertView.findViewById(R.id.adText);
            sVar.f61342h = (LinearLayout) convertView.findViewById(R.id.linearLayout2);
            sVar.f61343i = (TextView) convertView.findViewById(R.id.appSize);
            sVar.f61344j = (TextView) convertView.findViewById(R.id.loding_info);
            sVar.f61345k = (ProgressBar) convertView.findViewById(R.id.progressBar);
            sVar.f61346l = (ProgressBar) convertView.findViewById(R.id.progressBarZip);
            sVar.f61348n = convertView.findViewById(R.id.line);
            convertView.setTag(sVar);
        } else {
            sVar = (s) convertView.getTag();
        }
        CollectionBeanSub collectionBeanSub = (CollectionBeanSub) getItem(i10);
        DownloadTask downloadTask = collectionBeanSub.getDownloadTask();
        Context context = this.f61264c;
        n nVarQ = q(i10);
        if (nVarQ == null || !nVarQ.f61314c) {
            sVar.f61348n.setVisibility(8);
        } else {
            sVar.f61348n.setVisibility(0);
            RelativeLayout.LayoutParams layoutParams = sVar.f61348n.getLayoutParams() != null ? (RelativeLayout.LayoutParams) sVar.f61348n.getLayoutParams() : new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 1.0f, context.getResources().getDisplayMetrics()));
            layoutParams.leftMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp34);
            layoutParams.rightMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp34);
            sVar.f61348n.setLayoutParams(layoutParams);
        }
        sVar.f61337c.setText(collectionBeanSub.getGame_name());
        sVar.f61337c.setTypeface(Typeface.DEFAULT, 0);
        sVar.f61341g.setText(collectionBeanSub.getInfo());
        sVar.f61347m.setOnClickListener(new b(collectionBeanSub));
        if (com.join.mgps.Util.t2.i(collectionBeanSub.getIco_remote())) {
            com.join.android.app.common.utils.l.h(sVar.f61335a, collectionBeanSub.getIco_remote().trim());
        }
        if (collectionBeanSub.getGift_package_switch() == 1) {
            sVar.f61336b.setVisibility(0);
        } else {
            sVar.f61336b.setVisibility(8);
        }
        sVar.f61339e.f(new m6.c(context, collectionBeanSub));
        long j10 = (long) (Double.parseDouble(collectionBeanSub.getSize()) * 1024.0d * 1024.0d);
        if (collectionBeanSub.isAd()) {
            UtilsMy.N(collectionBeanSub.getScore(), collectionBeanSub.getDown_count(), collectionBeanSub.getSize(), collectionBeanSub.getSp_tag_info(), sVar.f61340f, context);
        } else {
            UtilsMy.K(collectionBeanSub.getScore(), collectionBeanSub.getDown_count(), collectionBeanSub.getSize(), collectionBeanSub.getSp_tag_info(), collectionBeanSub.getTag_info(), sVar.f61340f, context);
        }
        if (collectionBeanSub.isH5Game()) {
            sVar.f61340f.setVisibility(8);
            sVar.f61336b.setVisibility(8);
        } else if (downloadTask == null) {
            L(sVar, Boolean.TRUE, Boolean.FALSE);
        } else {
            int status = downloadTask.getStatus();
            if (UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status == 0 || status == 48) {
                L(sVar, Boolean.TRUE, Boolean.FALSE);
            } else if (status == 2) {
                UtilsMy.U4(downloadTask);
                Boolean bool = Boolean.FALSE;
                L(sVar, bool, bool);
                sVar.f61343i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                sVar.f61344j.setText(downloadTask.getSpeed() + "/S");
                sVar.f61345k.setProgress((int) downloadTask.getProgress());
            } else if (status == 3) {
                Boolean bool2 = Boolean.FALSE;
                L(sVar, bool2, bool2);
                try {
                    sVar.f61343i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    sVar.f61345k.setProgress((int) downloadTask.getProgress());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                sVar.f61344j.setText("暂停中");
            } else if (status == 5) {
                L(sVar, Boolean.TRUE, Boolean.FALSE);
            } else if (status == 6) {
                Boolean bool3 = Boolean.FALSE;
                L(sVar, bool3, bool3);
                sVar.f61343i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                sVar.f61345k.setProgress((int) downloadTask.getProgress());
                sVar.f61344j.setText("暂停中");
            } else if (status != 7 && status != 42 && status != 43) {
                switch (status) {
                    case 9:
                    case 11:
                        L(sVar, Boolean.TRUE, Boolean.FALSE);
                        break;
                    case 10:
                        Boolean bool4 = Boolean.FALSE;
                        L(sVar, bool4, bool4);
                        try {
                            sVar.f61343i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            sVar.f61345k.setProgress((int) downloadTask.getProgress());
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                        sVar.f61344j.setText("等待中");
                        break;
                    case 12:
                        L(sVar, Boolean.FALSE, Boolean.TRUE);
                        sVar.f61343i.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        sVar.f61344j.setText("解压中..");
                        sVar.f61346l.setProgress((int) downloadTask.getProgress());
                        break;
                    case 13:
                        L(sVar, Boolean.FALSE, Boolean.TRUE);
                        sVar.f61343i.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        sVar.f61344j.setText("点击重新解压");
                        sVar.f61346l.setProgress((int) downloadTask.getProgress());
                        break;
                }
            } else {
                L(sVar, Boolean.TRUE, Boolean.FALSE);
            }
        }
        return convertView;
    }

    public View x(final int i10, View convertView, ViewGroup viewGroup) {
        v vVar;
        boolean z10;
        Context context = this.f61264c;
        if (convertView == null) {
            convertView = LayoutInflater.from(context).inflate(R.layout.gamedetail_item_viewpage1, (ViewGroup) null);
            vVar = new v(convertView);
            convertView.setTag(vVar);
        } else {
            vVar = (v) convertView.getTag();
        }
        CollectionBeanSub collectionBeanSub = (CollectionBeanSub) getItem(i10);
        ArrayList arrayList = new ArrayList();
        if (arrayList.size() == 0) {
            if (com.join.mgps.Util.t2.i(collectionBeanSub.getVedio_cover_pic()) && com.join.mgps.Util.t2.i(collectionBeanSub.getVedio_url())) {
                arrayList.add(collectionBeanSub.getVedio_cover_pic());
                z10 = true;
            } else {
                z10 = false;
            }
            List<DetialShowImageBean> pic_info = collectionBeanSub.getPic_info();
            if (pic_info != null) {
                for (int i11 = 0; i11 < pic_info.size(); i11++) {
                    arrayList.add(pic_info.get(i11).getRemote().getPath());
                }
            }
            if (arrayList.size() == 0) {
                vVar.f61354a.setVisibility(8);
            } else {
                vVar.f61354a.setVisibility(0);
                int pic_position = collectionBeanSub.getPic_position();
                vVar.f61354a.setAdapter((ListAdapter) new i1(context, pic_position, arrayList, z10));
                if (pic_position == 1) {
                    vVar.f61354a.setDividerWidth(context.getResources().getDimensionPixelSize(R.dimen.wdp10));
                    vVar.f61354a.postInvalidate();
                } else {
                    vVar.f61354a.setDividerWidth(context.getResources().getDimensionPixelSize(R.dimen.wdp20));
                    vVar.f61354a.postInvalidate();
                }
                vVar.f61354a.setOnItemClickListener(new a(context, arrayList, collectionBeanSub));
            }
        }
        return convertView;
    }

    public View y(final int i10, View convertView, ViewGroup viewGroup) {
        u uVar;
        String str;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.f61264c).inflate(R.layout.search_ad_title_view, (ViewGroup) null, false);
            uVar = new u(convertView);
            convertView.setTag(uVar);
        } else {
            uVar = (u) convertView.getTag();
        }
        if (this.f61266e != null) {
            convertView.setVisibility(0);
            uVar.f61351a.setText(this.f61266e.getLabel());
            int length = this.f61266e.getLabel() == null ? 0 : this.f61266e.getLabel().length();
            if (length == 2) {
                str = "\u3000\u3000 ";
            } else if (length == 3) {
                str = "\u3000\u3000\u3000";
            } else if (length == 4) {
                str = "\u3000\u3000\u3000\u3000";
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(" ");
                int i11 = ((length * 2) / 3) + 1;
                String string = "";
                for (int i12 = 0; i12 < i11; i12++) {
                    stringBuffer.append("\u3000");
                    string = stringBuffer.toString();
                }
                str = string;
            }
            uVar.f61352b.setText(str + this.f61266e.getTitle());
        } else {
            convertView.setVisibility(8);
        }
        return convertView;
    }

    public String z() {
        return this.f61265d;
    }
}
