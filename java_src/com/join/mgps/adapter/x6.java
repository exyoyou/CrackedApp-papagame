package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.ImagePagerActivity;
import com.join.mgps.activity.SearchListActivity1;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.SearchIntegratedFavoriteBean;
import com.join.mgps.dto.SearchIntegratedPostBean;
import com.join.mgps.dto.WxProgram;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.Where;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class x6 extends com.join.mgps.base.a<h, com.join.mgps.base.b> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f63919h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f63920i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    com.join.android.app.component.video.h f63921j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private f f63922k;

    class a extends com.join.mgps.callbacks.w {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GInfoBean f63923b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommonGameInfoBean f63924c;

        a(final GInfoBean val$gInfoBean, final CommonGameInfoBean val$searchDataBean) {
            this.f63923b = val$gInfoBean;
            this.f63924c = val$searchDataBean;
        }

        @Override // com.join.mgps.callbacks.w, v7.h
        public void onClickBlank(String s10, Object... objects) {
            super.onClickBlank(s10, objects);
            IntentUtil.getInstance().goGameDetialActivity(x6.this.f63919h, this.f63923b.getId(), this.f63923b.getGame_info_tpl_type(), this.f63923b.getSp_tpl_two_position(), this.f63924c.get_from_type(), this.f63924c.getReMarks(), x6.this.e0(), x6.this.e0(), x6.this.d0(this.f63924c));
        }

        @Override // com.join.mgps.callbacks.w, com.join.mgps.callbacks.y
        public void onClickCover() {
            super.onClickCover();
            IntentUtil.getInstance().goGameDetialActivity(x6.this.f63919h, this.f63923b.getId(), this.f63923b.getGame_info_tpl_type(), this.f63923b.getSp_tpl_two_position(), this.f63924c.get_from_type(), this.f63924c.getReMarks(), x6.this.e0(), x6.this.e0(), x6.this.d0(this.f63924c));
        }
    }

    class b extends com.join.mgps.callbacks.w {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GInfoBean f63926b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommonGameInfoBean f63927c;

        b(final GInfoBean val$gInfoBean, final CommonGameInfoBean val$searchDataBean) {
            this.f63926b = val$gInfoBean;
            this.f63927c = val$searchDataBean;
        }

        @Override // com.join.mgps.callbacks.w, v7.h
        public void onClickBlank(String s10, Object... objects) {
            super.onClickBlank(s10, objects);
            IntentUtil.getInstance().goGameDetialActivity(x6.this.f63919h, this.f63926b.getId(), this.f63926b.getGame_info_tpl_type(), this.f63926b.getSp_tpl_two_position(), this.f63927c.get_from_type(), this.f63927c.getReMarks(), x6.this.e0(), x6.this.e0(), x6.this.d0(this.f63927c));
        }

        @Override // com.join.mgps.callbacks.w, com.join.mgps.callbacks.y
        public void onClickCover() {
            super.onClickCover();
            IntentUtil.getInstance().goGameDetialActivity(x6.this.f63919h, this.f63926b.getId(), this.f63926b.getGame_info_tpl_type(), this.f63926b.getSp_tpl_two_position(), this.f63927c.get_from_type(), this.f63927c.getReMarks(), x6.this.e0(), x6.this.e0(), x6.this.d0(this.f63927c));
        }
    }

    class c implements AdapterView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f63929a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommonGameInfoBean f63930b;

        c(final List val$strings, final CommonGameInfoBean val$modleFourBean) {
            this.f63929a = val$strings;
            this.f63930b = val$modleFourBean;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> parent, View view, int position, long id2) {
            try {
                Intent intent = new Intent(x6.this.f63919h, (Class<?>) ImagePagerActivity.class);
                String[] strArr = new String[this.f63929a.size()];
                for (int i10 = 0; i10 < this.f63929a.size(); i10++) {
                    strArr[i10] = (String) this.f63929a.get(i10);
                }
                if (com.join.mgps.Util.t2.i(this.f63930b.getV_url()) && position == 0) {
                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                    videoInfo.H(this.f63930b.getV_url());
                    videoInfo.C(strArr[0]);
                    FullScreenActivity_.intent(x6.this.f63919h).a(videoInfo).start();
                } else {
                    intent.putExtra("image_urls", strArr);
                    intent.putExtra("image_index", position);
                    x6.this.f63919h.startActivity(intent);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchIntegratedFavoriteBean.FavoriteBean f63932b;

        d(final SearchIntegratedFavoriteBean.FavoriteBean val$item) {
            this.f63932b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (x6.this.f63922k != null) {
                x6.this.f63922k.g(v10.getContext(), this.f63932b.getId() + "", this.f63932b.getUid(), "0", "0");
            }
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f63934b;

        e(final String val$pid) {
            this.f63934b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (x6.this.f63922k != null) {
                x6.this.f63922k.b(this.f63934b);
            }
        }
    }

    public interface f {
        void b(String pid);

        void c(String gameId);

        void d(String crc_link_type_val);

        void e(String crc_sign_id);

        void g(Context context, String s10, String uid, String s11, String s12);
    }

    class g extends ClickableSpan implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View.OnClickListener f63936b;

        public g(View.OnClickListener mListener) {
            this.f63936b = mListener;
        }

        @Override // android.text.style.ClickableSpan, android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f63936b.onClick(v10);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            ds.setColor(Color.parseColor("#FF4A4A4A"));
            ds.setUnderlineText(false);
        }
    }

    public static class h implements j6.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f63938e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f63939f = 2;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final int f63940g = 3;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final int f63941h = 4;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int f63942i = 5;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final int f63943j = 6;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final int f63944k = 7;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final int f63945l = 8;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final int f63946m = 9;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static final int f63947n = 10;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final int f63948o = 11;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final int f63949p = 12;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final int f63950q = 13;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final int f63951r = 14;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public static final int f63952s = 15;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public static final int f63953t = 16;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public static final int f63954u = 17;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63955b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f63956c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f63957d;

        public h(int type, Object obj) {
            this.f63955b = type;
            this.f63956c = obj;
        }

        public <O> O a() {
            return (O) this.f63956c;
        }

        public h b(boolean showDivider) {
            this.f63957d = showDivider;
            return this;
        }

        @Override // j6.b
        public int getItemType() {
            return this.f63955b;
        }
    }

    public x6(Context mContext, com.join.android.app.component.video.h videoHelper) {
        super(null);
        this.f63922k = null;
        this.f63919h = mContext;
        this.f63921j = videoHelper;
        r(1, R.layout.mg_forum_search_item_post_subject);
        r(2, R.layout.mg_forum_search_item_post_message);
        r(3, R.layout.mg_forum_search_list_item_post_footer);
        r(4, R.layout.mg_forum_search_item_post_top_area);
        r(5, R.layout.mg_forum_search_item_favorite_top_area);
        r(6, R.layout.mg_forum_search_item_favorite_game_list);
        r(7, R.layout.item_search_game_list);
        r(14, R.layout.item_search_game_list_ad);
        r(11, R.layout.item_search_mini_game_list);
        r(12, R.layout.item_search_mini_game_video_list);
        r(8, R.layout.gamedetail_item_viewpage1);
        r(9, R.layout.mg_forum_search_item_all_no_more);
        r(10, R.layout.mg_forum_search_item_all_view_more);
        r(13, R.layout.item_search_recommend_title);
        r(15, R.layout.item_search_mini_program);
        r(16, R.layout.item_search_mini_game_list);
        r(17, R.layout.item_search_mini_game_video_list);
    }

    private void K(com.join.mgps.base.b holder, h model) {
        int iIntValue = ((Integer) model.a()).intValue();
        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
        if (layoutParams != null && (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams)) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
        }
        if (iIntValue == 1) {
            holder.setImageResource(R.id.icon, R.drawable.img_bg_game);
            holder.setText(R.id.name, "未搜索到相应游戏\n已为您推荐其它游戏");
        } else if (iIntValue == 2) {
            holder.setImageResource(R.id.icon, R.drawable.img_bg_dell);
            holder.setText(R.id.name, "未搜索到相应游戏单\n已为您推荐热门游戏单");
        } else if (iIntValue == 3) {
            holder.setImageResource(R.id.icon, R.drawable.img_bg_talk);
            holder.setText(R.id.name, "未搜索到相应社区\n已为您推荐其他热门社区");
        }
    }

    private void L(com.join.mgps.base.b holder, h model) {
        final int iIntValue = ((Integer) model.a()).intValue();
        holder.getView(R.id.cl_root).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.p6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f63003b.f0(iIntValue, view);
            }
        });
    }

    private void M(com.join.mgps.base.b holder, h model) {
        SearchIntegratedFavoriteBean.FavoriteBean favoriteBean = (SearchIntegratedFavoriteBean.FavoriteBean) model.a();
        com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.icon), favoriteBean.getPic());
        holder.setText(R.id.name, favoriteBean.getTitle());
        holder.setText(R.id.desc, favoriteBean.getAuth_name());
        holder.setText(R.id.count, favoriteBean.getGame_count() + "款");
        holder.setVisible(R.id.divider, favoriteBean.isShowDivider());
        holder.getView(R.id.cl_root).setOnClickListener(new d(favoriteBean));
    }

    private void N(com.join.mgps.base.b holder, h model) {
        try {
            String str = (String) model.a();
            SpannableString spannableString = new SpannableString(String.format("包含%s的游戏单", str));
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FFF47500")), 2, str.length() + 2, 18);
            holder.setText(R.id.title, spannableString);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void O(com.join.mgps.base.b holder, h model) {
        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
        if (layoutParams == null || !(layoutParams instanceof StaggeredGridLayoutManager.LayoutParams)) {
            return;
        }
        ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
    }

    private void P(com.join.mgps.base.b holder, h model) {
        b0(holder, model);
    }

    private void Q(com.join.mgps.base.b holder, h model) {
        if (model == null) {
            return;
        }
        CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) model.a();
        J(commonGameInfoBean);
        O(holder, model);
        ImageView imageView = (ImageView) holder.getView(R.id.iv_mask);
        ImageView imageView2 = (ImageView) holder.getView(R.id.iv_mask_solid);
        if (imageView != null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setGradientType(0);
            if (com.join.mgps.Util.t2.i(commonGameInfoBean.getBg_color())) {
                gradientDrawable.setColors(new int[]{Color.parseColor("#00000000"), Color.parseColor(commonGameInfoBean.getBg_color())});
            } else {
                gradientDrawable.setColors(new int[]{Color.parseColor("#00000000"), Color.parseColor("#99000000")});
            }
            imageView.setImageDrawable(gradientDrawable);
            if (imageView2 != null) {
                imageView2.setImageDrawable(gradientDrawable);
            }
        }
        a0(holder, model);
    }

    private void R(com.join.mgps.base.b holder, h model) {
        MultiStandVideo multiStandVideo;
        if (model == null) {
            return;
        }
        final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) model.a();
        J(commonGameInfoBean);
        commonGameInfoBean.getDownloadTask();
        final GInfoBean g_info = commonGameInfoBean.getG_info();
        if (g_info != null) {
            holder.setText(R.id.mgListviewItemAppname, g_info.getName());
            ((TextView) holder.getView(R.id.mgListviewItemAppname)).setTypeface(Typeface.DEFAULT, 0);
            holder.getView(R.id.relateLayoutApp).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.t6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f63207b.g0(g_info, commonGameInfoBean, view);
                }
            });
            if (com.join.mgps.Util.t2.h(commonGameInfoBean.getV_url())) {
                if (com.join.mgps.Util.t2.i(commonGameInfoBean.getBig_pic())) {
                    com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.sdv_image), commonGameInfoBean.getBig_pic());
                } else {
                    List<String> pic_info = g_info.getPic_info();
                    if (com.join.mgps.Util.t2.h("") && pic_info != null && pic_info.size() > 0) {
                        com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.sdv_image), pic_info.get(0));
                    }
                }
            }
            holder.setGone(R.id.giftPackageSwich, g_info.getGift_package_switch() == 1);
            if (g_info.getScore().doubleValue() <= 0.0d || !g_info.showScore()) {
                holder.setGone(R.id.tv_score, false);
            } else {
                holder.setText(R.id.tv_score, String.valueOf(g_info.getScore()));
                holder.setGone(R.id.tv_score, true);
            }
            holder.setText(R.id.tv_label, UtilsMy.P1(g_info.getSp_tag_info(), g_info.getTag_info()));
        }
        ((DownloadNormalView) holder.getView(R.id.dv_view)).f(new m6.c(this.f63919h, commonGameInfoBean));
        if (com.join.mgps.Util.t2.i(commonGameInfoBean.getV_url()) && (multiStandVideo = (MultiStandVideo) holder.getView(R.id.wf_video)) != null) {
            multiStandVideo.l(commonGameInfoBean.getBig_pic());
            multiStandVideo.setPlayTag(this.f63921j.s());
            multiStandVideo.setPlayPosition(commonGameInfoBean.hashCode());
            multiStandVideo.setUpLazy(commonGameInfoBean.getV_url(), false, null, null, "");
            multiStandVideo.setRotateViewAuto(false);
            multiStandVideo.setLockLand(true);
            multiStandVideo.setReleaseWhenLossAudio(false);
            multiStandVideo.setShowFullAnimation(false);
            multiStandVideo.setIsTouchWiget(false);
            multiStandVideo.setNeedLockFull(false);
            multiStandVideo.setVideoAllCallBack(new a(g_info, commonGameInfoBean));
        }
        if (!com.join.mgps.Util.t2.i(commonGameInfoBean.getBg_color())) {
            holder.setBackgroundColor(R.id.ll_bottom_container, Color.parseColor("#994558"));
            return;
        }
        try {
            if (commonGameInfoBean.getBg_color().startsWith("#")) {
                holder.setBackgroundColor(R.id.ll_bottom_container, Color.parseColor(commonGameInfoBean.getBg_color()));
            } else {
                holder.setBackgroundColor(R.id.ll_bottom_container, Color.parseColor("#" + commonGameInfoBean.getBg_color()));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void S(com.join.mgps.base.b holder, h model) {
        Z(holder, model);
    }

    private void T(com.join.mgps.base.b holder, h model) {
        final DomainInfoBean pd_info;
        if (model == null) {
            return;
        }
        CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) model.a();
        J(commonGameInfoBean);
        if (commonGameInfoBean == null || (pd_info = commonGameInfoBean.getPd_info()) == null) {
            return;
        }
        if (!commonGameInfoBean.getExposure()) {
            com.papa.sim.statistic.t.l(this.f63919h).R1(Event.pdGameWish, new Ext().setIsJoin(pd_info.getIs_join()).setTestAbNumber(pd_info.getAb_test_number()).setIsResultPage("1"));
            commonGameInfoBean.setExposure(true);
        }
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) holder.getView(R.id.sdv_image);
        if (simpleDraweeView != null) {
            com.join.android.app.common.utils.l.h(simpleDraweeView, pd_info.getPic());
        }
        if (com.join.mgps.Util.t2.i(pd_info.getInfo())) {
            try {
                final WxProgram wxProgram = (WxProgram) JsonMapper.getInstance().fromJson(com.join.mgps.Util.a.b(pd_info.getInfo()), WxProgram.class);
                if (wxProgram != null) {
                    holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.q6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f63095b.h0(wxProgram, pd_info, view);
                        }
                    });
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private void U(com.join.mgps.base.b holder, h model) {
        MultiStandVideo multiStandVideo;
        if (model == null) {
            return;
        }
        final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) model.a();
        J(commonGameInfoBean);
        DownloadTask downloadTask = commonGameInfoBean.getDownloadTask();
        final GInfoBean g_info = commonGameInfoBean.getG_info();
        if (g_info != null) {
            holder.setText(R.id.mgListviewItemAppname, g_info.getName());
            ((TextView) holder.getView(R.id.mgListviewItemAppname)).setTypeface(Typeface.DEFAULT, 0);
            holder.getView(R.id.relateLayoutApp).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.v6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f63322b.i0(g_info, commonGameInfoBean, view);
                }
            });
            if (com.join.mgps.Util.t2.h(commonGameInfoBean.getOnlineGameAdVideoUrl())) {
                if (com.join.mgps.Util.t2.i(commonGameInfoBean.getOnlineGAmeAdPic())) {
                    com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.sdv_image), commonGameInfoBean.getOnlineGAmeAdPic());
                } else {
                    List<String> pic_info = g_info.getPic_info();
                    if (com.join.mgps.Util.t2.h("") && pic_info != null && pic_info.size() > 0) {
                        com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.sdv_image), pic_info.get(0));
                    }
                }
            }
            holder.setGone(R.id.giftPackageSwich, g_info.getGift_package_switch() == 1);
            if (g_info.getScore().doubleValue() <= 0.0d || !g_info.showScore()) {
                holder.setGone(R.id.tv_score, false);
            } else {
                holder.setText(R.id.tv_score, String.valueOf(g_info.getScore()));
                holder.setGone(R.id.tv_score, true);
            }
            holder.setText(R.id.tv_label, UtilsMy.P1(g_info.getSp_tag_info(), g_info.getTag_info()));
        }
        ((DownloadNormalView) holder.getView(R.id.dv_view)).f(new m6.c(this.f63919h, commonGameInfoBean));
        if (com.join.mgps.Util.t2.i(commonGameInfoBean.getOnlineGameAdVideoUrl()) && (multiStandVideo = (MultiStandVideo) holder.getView(R.id.wf_video)) != null) {
            multiStandVideo.l(commonGameInfoBean.getOnlineGAmeAdPic());
            multiStandVideo.setPlayTag(this.f63921j.s());
            multiStandVideo.setPlayPosition(commonGameInfoBean.hashCode());
            multiStandVideo.setUpLazy(commonGameInfoBean.getOnlineGameAdVideoUrl(), false, null, null, "");
            multiStandVideo.setRotateViewAuto(false);
            multiStandVideo.setLockLand(true);
            multiStandVideo.setReleaseWhenLossAudio(false);
            multiStandVideo.setShowFullAnimation(false);
            multiStandVideo.setIsTouchWiget(false);
            multiStandVideo.setNeedLockFull(false);
            multiStandVideo.setVideoAllCallBack(new b(g_info, commonGameInfoBean));
        }
        if (com.join.mgps.Util.t2.i(commonGameInfoBean.getBg_color())) {
            try {
                if (commonGameInfoBean.getBg_color().startsWith("#")) {
                    holder.setBackgroundColor(R.id.ll_bottom_container, Color.parseColor(commonGameInfoBean.getBg_color()));
                } else {
                    holder.setBackgroundColor(R.id.ll_bottom_container, Color.parseColor("#" + commonGameInfoBean.getBg_color()));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            holder.setBackgroundColor(R.id.ll_bottom_container, Color.parseColor("#994558"));
        }
        if (commonGameInfoBean.isH5Game()) {
            holder.setGone(R.id.giftPackageSwich, false);
            return;
        }
        if (downloadTask == null) {
            s0(holder, Boolean.TRUE, Boolean.FALSE);
            return;
        }
        int status = downloadTask.getStatus();
        long j10 = (long) (Double.parseDouble(g_info.getApp_size()) * 1024.0d * 1024.0d);
        if (UtilsMy.x0(g_info.getPay_tag_info(), g_info.getId()) > 0) {
            status = 43;
        }
        if (status != 0 && status != 48) {
            if (status == 2) {
                UtilsMy.U4(downloadTask);
                Boolean bool = Boolean.FALSE;
                s0(holder, bool, bool);
                holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                StringBuilder sb2 = new StringBuilder();
                sb2.append(downloadTask.getSpeed());
                sb2.append("/S");
                holder.setText(R.id.loding_info, sb2.toString());
                ((ProgressBar) holder.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                return;
            }
            if (status != 3) {
                if (status != 5) {
                    if (status != 6) {
                        if (status != 7 && status != 42 && status != 43) {
                            switch (status) {
                                case 10:
                                    Boolean bool2 = Boolean.FALSE;
                                    s0(holder, bool2, bool2);
                                    try {
                                        holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                        ((ProgressBar) holder.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                                    } catch (Exception e11) {
                                        e11.printStackTrace();
                                    }
                                    holder.setText(R.id.loding_info, "等待中");
                                    break;
                                case 12:
                                    s0(holder, Boolean.FALSE, Boolean.TRUE);
                                    holder.setText(R.id.appSize, UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                    holder.setText(R.id.loding_info, "解压中..");
                                    ((ProgressBar) holder.getView(R.id.progressBarZip)).setProgress((int) downloadTask.getProgress());
                                    break;
                                case 13:
                                    s0(holder, Boolean.FALSE, Boolean.TRUE);
                                    holder.setText(R.id.appSize, UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                    holder.setText(R.id.loding_info, "点击重新解压");
                                    ((ProgressBar) holder.getView(R.id.progressBarZip)).setProgress((int) downloadTask.getProgress());
                                    break;
                            }
                            return;
                        }
                    }
                }
            }
            Boolean bool3 = Boolean.FALSE;
            s0(holder, bool3, bool3);
            try {
                holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                ((ProgressBar) holder.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            holder.setText(R.id.loding_info, "暂停中");
            return;
        }
        s0(holder, Boolean.TRUE, Boolean.FALSE);
    }

    private void V(com.join.mgps.base.b holder, h model) {
        try {
            ForumBean.ForumSearchQueryBean forumSearchQueryBean = (ForumBean.ForumSearchQueryBean) model.a();
            if (forumSearchQueryBean != null) {
                com.join.mgps.Util.r0.D1((TextView) holder.getView(R.id.forum_post_view), forumSearchQueryBean.getView(), "0");
                com.join.mgps.Util.r0.D1((TextView) holder.getView(R.id.forum_post_commit), forumSearchQueryBean.getComment(), "0");
                com.join.mgps.Util.r0.D1((TextView) holder.getView(R.id.forum_post_praise), forumSearchQueryBean.getPraise(), "0");
                q0(holder.getView(R.id.cl_root), forumSearchQueryBean.getPid());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void W(com.join.mgps.base.b holder, h model) {
        int dimensionPixelOffset;
        try {
            ForumBean.ForumSearchQueryBean forumSearchQueryBean = (ForumBean.ForumSearchQueryBean) model.a();
            if (forumSearchQueryBean != null) {
                String message = forumSearchQueryBean.getMessage();
                String strG = com.join.mgps.Util.t2.g(forumSearchQueryBean.getKeyword());
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(message);
                int color = this.f63919h.getResources().getColor(R.color.search_high_light);
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
                holder.getView(R.id.messageParent).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.s6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63160b.j0(pid, view);
                    }
                });
                holder.setText(R.id.forum_post_message, spannableStringBuilder);
                try {
                    if (forumSearchQueryBean.isShowDivider()) {
                        holder.setTextColor(R.id.forum_post_message, Color.parseColor("#3b3b3b"));
                        ((TextView) holder.getView(R.id.forum_post_message)).setTypeface(Typeface.DEFAULT, 1);
                        dimensionPixelOffset = ((TextView) holder.getView(R.id.forum_post_message)).getResources().getDimensionPixelOffset(R.dimen.wdp36);
                    } else {
                        holder.setTextColor(R.id.forum_post_message, Color.parseColor("#FF4A4A4A"));
                        ((TextView) holder.getView(R.id.forum_post_message)).setTypeface(Typeface.DEFAULT, 0);
                        dimensionPixelOffset = 0;
                    }
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) holder.getView(R.id.forum_post_message).getLayoutParams();
                    layoutParams.topMargin = dimensionPixelOffset;
                    holder.getView(R.id.forum_post_message).setLayoutParams(layoutParams);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                holder.getView(R.id.messageParent).requestLayout();
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    private void X(com.join.mgps.base.b holder, h model) {
        try {
            ForumBean.ForumSearchQueryBean forumSearchQueryBean = (ForumBean.ForumSearchQueryBean) model.a();
            if (forumSearchQueryBean == null) {
                return;
            }
            String subject = forumSearchQueryBean.getSubject();
            String strG = com.join.mgps.Util.t2.g(forumSearchQueryBean.getKeyword());
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(subject);
            int color = this.f63919h.getResources().getColor(R.color.search_high_light);
            int iIndexOf = subject.indexOf(strG);
            int length = strG.length() + iIndexOf;
            try {
                if (length <= subject.length() && iIndexOf >= 0) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(color), iIndexOf, length, 33);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            holder.setText(R.id.forum_post_subject, spannableStringBuilder);
            q0(holder.getView(R.id.ll_root), forumSearchQueryBean.getPid());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void Y(com.join.mgps.base.b holder, h model) {
        final SearchIntegratedPostBean.TopArea topArea = (SearchIntegratedPostBean.TopArea) model.a();
        com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.icon), topArea.getIcon_src());
        holder.setText(R.id.name, topArea.getName());
        holder.setText(R.id.desc, topArea.getDescription());
        holder.setText(R.id.count, "今日更新:" + topArea.getToday_posts());
        holder.getView(R.id.cl_root).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.u6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                x6.k0(topArea, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d0(CommonGameInfoBean commonGameInfoBean) {
        if (commonGameInfoBean.getStatistics() == null) {
            return "";
        }
        return commonGameInfoBean.getStatistics().getMin_game_search_source() + "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0(int i10, View view) {
        ((SearchListActivity1) this.f63919h).setTab(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g0(GInfoBean gInfoBean, CommonGameInfoBean commonGameInfoBean, View view) {
        if (gInfoBean.getId() != null) {
            IntentUtil.getInstance().goGameDetialActivity(view.getContext(), gInfoBean.getId(), gInfoBean.getGame_info_tpl_type(), gInfoBean.getSp_tpl_two_position(), commonGameInfoBean.get_from_type(), commonGameInfoBean.getReMarks(), Where.search.name(), e0(), d0(commonGameInfoBean));
            f fVar = this.f63922k;
            if (fVar != null) {
                fVar.c(gInfoBean.getId());
                this.f63922k.e(gInfoBean.getId());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0(WxProgram wxProgram, DomainInfoBean domainInfoBean, View view) {
        if (wxProgram != null) {
            com.papa.sim.statistic.t.l(this.f63919h).R1(Event.pdGameWishClick, new Ext().setTestAbNumber(domainInfoBean.getAb_test_number()).setIsResultPage("1").setIsJoin(domainInfoBean.getIs_join()));
            wxProgram.setSceneType("game_search_wish");
            UtilsMy.C4(this.f63919h, wxProgram);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0(GInfoBean gInfoBean, CommonGameInfoBean commonGameInfoBean, View view) {
        if (gInfoBean.getId() != null) {
            IntentUtil.getInstance().goGameDetialActivity(view.getContext(), gInfoBean.getId(), gInfoBean.getGame_info_tpl_type(), gInfoBean.getSp_tpl_two_position(), commonGameInfoBean.get_from_type(), commonGameInfoBean.getReMarks(), Where.search.name(), e0(), d0(commonGameInfoBean));
            f fVar = this.f63922k;
            if (fVar != null) {
                fVar.c(gInfoBean.getId());
                this.f63922k.e(gInfoBean.getId());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0(String str, View view) {
        n0(view.getContext(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k0(SearchIntegratedPostBean.TopArea topArea, View view) {
        ForumBean forumBean = new ForumBean();
        forumBean.setFid(topArea.getFid());
        com.join.mgps.Util.r0.r0(view.getContext(), forumBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l0(GInfoBean gInfoBean, CommonGameInfoBean commonGameInfoBean, View view) {
        if (gInfoBean.getId() != null) {
            IntentUtil.getInstance().goGameDetialActivity(view.getContext(), gInfoBean.getId(), gInfoBean.getGame_info_tpl_type(), gInfoBean.getSp_tpl_two_position(), commonGameInfoBean.get_from_type(), commonGameInfoBean.getReMarks(), e0(), e0(), d0(commonGameInfoBean));
            f fVar = this.f63922k;
            if (fVar != null) {
                fVar.c(gInfoBean.getId());
                this.f63922k.e(gInfoBean.getId());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m0(GInfoBean gInfoBean, CommonGameInfoBean commonGameInfoBean, View view) {
        if (gInfoBean.getId() != null) {
            IntentUtil.getInstance().goGameDetialActivity(view.getContext(), gInfoBean.getId(), gInfoBean.getGame_info_tpl_type(), gInfoBean.getSp_tpl_two_position(), commonGameInfoBean.get_from_type(), commonGameInfoBean.getReMarks(), e0(), e0(), d0(commonGameInfoBean));
            f fVar = this.f63922k;
            if (fVar != null) {
                fVar.c(gInfoBean.getId());
                this.f63922k.e(gInfoBean.getId());
            }
        }
    }

    void J(CommonGameInfoBean commonGameInfoBean) {
        if (commonGameInfoBean == null) {
            return;
        }
        ExtBean extBean = new ExtBean();
        if (commonGameInfoBean.isAdInfo()) {
            commonGameInfoBean.set_from_type(147);
            commonGameInfoBean.set_from(147);
            extBean.setFrom("147");
            extBean.set_from_type(147);
        } else {
            commonGameInfoBean.set_from_type(103);
            commonGameInfoBean.set_from(103);
            extBean.setFrom("103");
            extBean.set_from_type(103);
        }
        extBean.setDataFlag(d0(commonGameInfoBean));
        commonGameInfoBean.setKeyword(e0());
        extBean.setPosition("112");
        extBean.setWhere(e0());
        commonGameInfoBean.setExt(JsonMapper.toJsonString(extBean));
    }

    public void Z(com.join.mgps.base.b holder, h model) {
        if (model == null) {
            return;
        }
        final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) model.a();
        J(commonGameInfoBean);
        DownloadTask downloadTask = commonGameInfoBean.getDownloadTask();
        final GInfoBean g_info = commonGameInfoBean.getG_info();
        if (g_info != null) {
            Context context = this.f63919h;
            if (model.f63957d) {
                RelativeLayout.LayoutParams layoutParams = holder.getView(R.id.line).getLayoutParams() != null ? (RelativeLayout.LayoutParams) holder.getView(R.id.line).getLayoutParams() : new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 1.0f, context.getResources().getDisplayMetrics()));
                layoutParams.leftMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp34);
                layoutParams.rightMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp34);
                holder.getView(R.id.line).setLayoutParams(layoutParams);
            }
            holder.setVisible(R.id.line, model.f63957d);
            holder.setText(R.id.mgListviewItemAppname, g_info.getName());
            if (com.join.mgps.Util.t2.i(g_info.getInfo())) {
                holder.setGone(R.id.mgListviewItemDescribe, true);
                holder.setText(R.id.mgListviewItemDescribe, g_info.getInfo());
            } else {
                holder.setGone(R.id.mgListviewItemDescribe, false);
            }
            holder.getView(R.id.relateLayoutApp).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.w6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f63357b.l0(g_info, commonGameInfoBean, view);
                }
            });
            if (com.join.mgps.Util.t2.i(commonGameInfoBean.getBig_pic())) {
                com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.sdv_image), commonGameInfoBean.getBig_pic());
            } else {
                List<String> pic_info = g_info.getPic_info();
                if (com.join.mgps.Util.t2.h("") && pic_info != null && pic_info.size() > 0) {
                    com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.sdv_image), pic_info.get(0));
                }
            }
            holder.setGone(R.id.giftPackageSwich, g_info.getGift_package_switch() == 1);
            long j10 = (long) (Double.parseDouble(g_info.getApp_size()) * 1024.0d * 1024.0d);
            if (g_info.getScore().doubleValue() <= 0.0d || !g_info.showScore()) {
                holder.setGone(R.id.tv_score, false);
            } else {
                holder.setText(R.id.tv_score, String.valueOf(g_info.getScore()));
                holder.setGone(R.id.tv_score, true);
            }
            ((DownloadNormalView) holder.getView(R.id.dv_view)).f(new m6.c(context, commonGameInfoBean));
            holder.setText(R.id.tv_label, UtilsMy.Q1(g_info.getSp_tag_info(), g_info.getTag_info()));
            if (g_info.isH5Game()) {
                holder.setGone(R.id.giftPackageSwich, false);
                return;
            }
            if (downloadTask == null) {
                s0(holder, Boolean.TRUE, Boolean.FALSE);
                return;
            }
            int status = downloadTask.getStatus();
            if (UtilsMy.x0(g_info.getPay_tag_info(), g_info.getId()) > 0) {
                status = 43;
            }
            if (status != 0 && status != 48) {
                if (status == 2) {
                    UtilsMy.U4(downloadTask);
                    Boolean bool = Boolean.FALSE;
                    s0(holder, bool, bool);
                    holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(downloadTask.getSpeed());
                    sb2.append("/S");
                    holder.setText(R.id.loding_info, sb2.toString());
                    ((ProgressBar) holder.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                    return;
                }
                if (status != 3) {
                    if (status != 5) {
                        if (status != 6) {
                            if (status != 7 && status != 42 && status != 43) {
                                switch (status) {
                                    case 10:
                                        Boolean bool2 = Boolean.FALSE;
                                        s0(holder, bool2, bool2);
                                        try {
                                            holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                            ((ProgressBar) holder.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                                        } catch (Exception e10) {
                                            e10.printStackTrace();
                                        }
                                        holder.setText(R.id.loding_info, "等待中");
                                        break;
                                    case 12:
                                        s0(holder, Boolean.FALSE, Boolean.TRUE);
                                        holder.setText(R.id.appSize, UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                        holder.setText(R.id.loding_info, "解压中..");
                                        ((ProgressBar) holder.getView(R.id.progressBarZip)).setProgress((int) downloadTask.getProgress());
                                        break;
                                    case 13:
                                        s0(holder, Boolean.FALSE, Boolean.TRUE);
                                        holder.setText(R.id.appSize, UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                        holder.setText(R.id.loding_info, "点击重新解压");
                                        ((ProgressBar) holder.getView(R.id.progressBarZip)).setProgress((int) downloadTask.getProgress());
                                        break;
                                }
                                return;
                            }
                        }
                    }
                }
                Boolean bool3 = Boolean.FALSE;
                s0(holder, bool3, bool3);
                try {
                    holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    ((ProgressBar) holder.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                holder.setText(R.id.loding_info, "暂停中");
                return;
            }
            s0(holder, Boolean.TRUE, Boolean.FALSE);
        }
    }

    public void a0(com.join.mgps.base.b holder, h model) {
        if (model == null) {
            return;
        }
        final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) model.a();
        J(commonGameInfoBean);
        DownloadTask downloadTask = commonGameInfoBean.getDownloadTask();
        final GInfoBean g_info = commonGameInfoBean.getG_info();
        if (g_info != null) {
            Context context = this.f63919h;
            if (model.f63957d) {
                RelativeLayout.LayoutParams layoutParams = holder.getView(R.id.line).getLayoutParams() != null ? (RelativeLayout.LayoutParams) holder.getView(R.id.line).getLayoutParams() : new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 1.0f, context.getResources().getDisplayMetrics()));
                layoutParams.leftMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp34);
                layoutParams.rightMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp34);
                holder.getView(R.id.line).setLayoutParams(layoutParams);
            }
            holder.setVisible(R.id.line, model.f63957d);
            holder.setText(R.id.mgListviewItemAppname, g_info.getName());
            if (com.join.mgps.Util.t2.i(g_info.getInfo())) {
                holder.setGone(R.id.mgListviewItemDescribe, true);
                holder.setText(R.id.mgListviewItemDescribe, g_info.getInfo());
            } else {
                holder.setGone(R.id.mgListviewItemDescribe, false);
            }
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.r6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f63120b.m0(g_info, commonGameInfoBean, view);
                }
            });
            if (com.join.mgps.Util.t2.i(commonGameInfoBean.getBig_pic())) {
                com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.sdv_image), commonGameInfoBean.getBig_pic());
            } else {
                List<String> pic_info = g_info.getPic_info();
                if (com.join.mgps.Util.t2.h("") && pic_info != null && pic_info.size() > 0) {
                    com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.sdv_image), pic_info.get(0));
                }
            }
            holder.setGone(R.id.giftPackageSwich, g_info.getGift_package_switch() == 1);
            long j10 = (long) (Double.parseDouble(g_info.getApp_size()) * 1024.0d * 1024.0d);
            if (g_info.getScore().doubleValue() <= 0.0d || !g_info.showScore()) {
                holder.setGone(R.id.tv_score, false);
            } else {
                holder.setText(R.id.tv_score, String.valueOf(g_info.getScore()));
                holder.setGone(R.id.tv_score, true);
            }
            ((DownloadNormalView) holder.getView(R.id.dv_view)).f(new m6.c(context, commonGameInfoBean));
            holder.setText(R.id.tv_label, UtilsMy.Q1(g_info.getSp_tag_info(), g_info.getTag_info()));
            if (g_info.isH5Game()) {
                holder.setGone(R.id.giftPackageSwich, false);
                return;
            }
            if (downloadTask == null) {
                t0(holder, Boolean.TRUE, Boolean.FALSE);
                return;
            }
            int status = downloadTask.getStatus();
            if (UtilsMy.x0(g_info.getPay_tag_info(), g_info.getId()) > 0) {
                status = 43;
            }
            if (status != 0 && status != 48) {
                if (status == 2) {
                    UtilsMy.U4(downloadTask);
                    Boolean bool = Boolean.FALSE;
                    t0(holder, bool, bool);
                    holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(downloadTask.getSpeed());
                    sb2.append("/S");
                    holder.setText(R.id.loding_info, sb2.toString());
                    ((ProgressBar) holder.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                    return;
                }
                if (status != 3) {
                    if (status != 5) {
                        if (status != 6) {
                            if (status != 7 && status != 42 && status != 43) {
                                switch (status) {
                                    case 10:
                                        Boolean bool2 = Boolean.FALSE;
                                        t0(holder, bool2, bool2);
                                        try {
                                            holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                            ((ProgressBar) holder.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                                        } catch (Exception e10) {
                                            e10.printStackTrace();
                                        }
                                        holder.setText(R.id.loding_info, "等待中");
                                        break;
                                    case 12:
                                        t0(holder, Boolean.FALSE, Boolean.TRUE);
                                        holder.setText(R.id.appSize, UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                        holder.setText(R.id.loding_info, "解压中..");
                                        ((ProgressBar) holder.getView(R.id.progressBarZip)).setProgress((int) downloadTask.getProgress());
                                        break;
                                    case 13:
                                        t0(holder, Boolean.FALSE, Boolean.TRUE);
                                        holder.setText(R.id.appSize, UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                        holder.setText(R.id.loding_info, "点击重新解压");
                                        ((ProgressBar) holder.getView(R.id.progressBarZip)).setProgress((int) downloadTask.getProgress());
                                        break;
                                }
                                return;
                            }
                        }
                    }
                }
                Boolean bool3 = Boolean.FALSE;
                t0(holder, bool3, bool3);
                try {
                    holder.setText(R.id.appSize, UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    ((ProgressBar) holder.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                holder.setText(R.id.loding_info, "暂停中");
                return;
            }
            t0(holder, Boolean.TRUE, Boolean.FALSE);
        }
    }

    public void b0(com.join.mgps.base.b holder, h model) {
        boolean z10;
        CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) model.a();
        J(commonGameInfoBean);
        GInfoBean g_info = commonGameInfoBean.getG_info();
        if (g_info != null) {
            ArrayList arrayList = new ArrayList();
            if (arrayList.size() == 0) {
                if (com.join.mgps.Util.t2.i(commonGameInfoBean.getBig_pic()) && com.join.mgps.Util.t2.i(commonGameInfoBean.getV_url())) {
                    arrayList.add(commonGameInfoBean.getBig_pic());
                    z10 = true;
                } else {
                    z10 = false;
                }
                List<String> pic_info = g_info.getPic_info();
                if (pic_info != null) {
                    for (int i10 = 0; i10 < pic_info.size(); i10++) {
                        arrayList.add(pic_info.get(i10));
                    }
                }
                holder.setGone(R.id.screenListView, arrayList.size() > 0);
                if (arrayList.size() > 0) {
                    int iIntValue = g_info.getPic_position().intValue();
                    ((HListView) holder.getView(R.id.screenListView)).setAdapter((ListAdapter) new i1(this.f63919h, iIntValue, arrayList, z10));
                    if (iIntValue == 1) {
                        ((HListView) holder.getView(R.id.screenListView)).setDividerWidth(this.f63919h.getResources().getDimensionPixelSize(R.dimen.wdp10));
                        ((HListView) holder.getView(R.id.screenListView)).postInvalidate();
                    } else {
                        ((HListView) holder.getView(R.id.screenListView)).setDividerWidth(this.f63919h.getResources().getDimensionPixelSize(R.dimen.wdp20));
                        ((HListView) holder.getView(R.id.screenListView)).postInvalidate();
                    }
                    ((HListView) holder.getView(R.id.screenListView)).setOnItemClickListener(new c(arrayList, commonGameInfoBean));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public void convert(@NonNull com.join.mgps.base.b baseViewHolder, h model) {
        switch (model.getItemType()) {
            case 1:
                X(baseViewHolder, model);
                break;
            case 2:
                W(baseViewHolder, model);
                break;
            case 3:
                V(baseViewHolder, model);
                break;
            case 4:
                Y(baseViewHolder, model);
                break;
            case 5:
                N(baseViewHolder, model);
                break;
            case 6:
                M(baseViewHolder, model);
                break;
            case 7:
                S(baseViewHolder, model);
                break;
            case 8:
                P(baseViewHolder, model);
                break;
            case 9:
                K(baseViewHolder, model);
                break;
            case 10:
                L(baseViewHolder, model);
                break;
            case 11:
            case 12:
                R(baseViewHolder, model);
                break;
            case 13:
                O(baseViewHolder, model);
                break;
            case 14:
                Q(baseViewHolder, model);
                break;
            case 15:
                T(baseViewHolder, model);
                break;
            case 16:
            case 17:
                U(baseViewHolder, model);
                break;
        }
    }

    public String e0() {
        return this.f63920i;
    }

    public void n0(Context context, String pid) {
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        forumPostsBean.setPid(Integer.parseInt(pid));
        com.join.mgps.Util.r0.v0(context, forumPostsBean);
    }

    public void o0(f l10) {
        this.f63922k = l10;
    }

    void p0(View view, int tbPadding) {
        if (view == null) {
            return;
        }
        view.setPadding(view.getPaddingLeft(), tbPadding, view.getPaddingRight(), tbPadding);
    }

    public void q0(View v10, final String pid) {
        v10.setOnClickListener(new e(pid));
    }

    public void r0(String mKeyword) {
        this.f63920i = mKeyword;
    }

    void s0(com.join.mgps.base.b holder, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            holder.setGone(R.id.linearLayout2, false);
            holder.setGone(R.id.progressBar, false);
            holder.setGone(R.id.progressBarZip, false);
            holder.setGone(R.id.ll_label, true);
            return;
        }
        holder.setVisible(R.id.linearLayout2, true);
        if (isZip.booleanValue()) {
            holder.setGone(R.id.progressBar, false);
            holder.setVisible(R.id.progressBarZip, true);
        } else {
            holder.setGone(R.id.progressBarZip, false);
            holder.setVisible(R.id.progressBar, true);
        }
        holder.setGone(R.id.ll_label, false);
    }

    void t0(com.join.mgps.base.b holder, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            holder.setGone(R.id.rl_download_state, false);
            holder.setGone(R.id.linearLayout2, false);
            holder.setGone(R.id.progressBar, false);
            holder.setGone(R.id.progressBarZip, false);
            holder.setGone(R.id.mgListviewItemDescribe, true);
            return;
        }
        holder.setVisible(R.id.linearLayout2, true);
        holder.setVisible(R.id.rl_download_state, true);
        if (isZip.booleanValue()) {
            holder.setGone(R.id.progressBar, false);
            holder.setVisible(R.id.progressBarZip, true);
        } else {
            holder.setGone(R.id.progressBarZip, false);
            holder.setVisible(R.id.progressBar, true);
        }
        holder.setGone(R.id.mgListviewItemDescribe, false);
    }
}
