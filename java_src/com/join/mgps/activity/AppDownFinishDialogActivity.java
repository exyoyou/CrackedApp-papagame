package com.join.mgps.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.dialog.BaseDialogActivity;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.List;
import me.relex.circleindicator.CircleIndicator;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
public class AppDownFinishDialogActivity extends BaseDialogActivity {
    public static final String KEY_GAME_ID = "_game_id";
    String gameId;
    List<String> games = new ArrayList();
    private CircleIndicator indicator;
    private d mCardAdapter;
    private ViewPager mViewPager;

    public interface b {
        View a(int position);

        int getCount();
    }

    private class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public DownloadTask f50380a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f50381b;

        private c() {
        }
    }

    public class d extends PagerAdapter implements b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<c> f50384b = new ArrayList();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<View> f50383a = new ArrayList();

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ c f50386b;

            a(final c val$item) {
                this.f50386b = val$item;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (!this.f50386b.f50380a.isSo()) {
                    if (this.f50386b.f50380a.isMod()) {
                        com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.onclickSinGameStart, new Ext().setGameId(this.f50386b.f50380a.getCrc_link_type_val()).setGameFlag(1));
                    } else {
                        com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.onclickSinGameStart, new Ext().setGameId(this.f50386b.f50380a.getCrc_link_type_val()).setGameFlag(1));
                    }
                    com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.onclickSinGameStart, new Ext().setGameId(this.f50386b.f50380a.getCrc_link_type_val()).setGameFlag(1));
                } else if (this.f50386b.f50380a.isMod()) {
                    com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.onclickSoGameStart, new Ext().setGameId(this.f50386b.f50380a.getCrc_link_type_val()).setGameFlag(1));
                } else {
                    com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.onclickSoGameStart, new Ext().setGameId(this.f50386b.f50380a.getCrc_link_type_val()));
                }
                UtilsMy.k4(v10.getContext(), this.f50386b.f50380a);
                AppDownFinishDialogActivity.this.finish();
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ c f50388b;

            b(final c val$item) {
                this.f50388b = val$item;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (this.f50388b.f50380a.isSo()) {
                    if (this.f50388b.f50380a.isMod()) {
                        com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.exitSoGameStart, new Ext().setGameId(this.f50388b.f50380a.getCrc_link_type_val()).setGameFlag(1));
                    } else {
                        com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.exitSoGameStart, new Ext().setGameId(this.f50388b.f50380a.getCrc_link_type_val()));
                    }
                } else if (this.f50388b.f50380a.isMod()) {
                    com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.exitSinGameStart, new Ext().setGameId(this.f50388b.f50380a.getCrc_link_type_val()).setGameFlag(1));
                } else {
                    com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.exitSinGameStart, new Ext().setGameId(this.f50388b.f50380a.getCrc_link_type_val()).setGameFlag(1));
                }
                AppDownFinishDialogActivity.this.finish();
            }
        }

        public d() {
        }

        private void c(c item, View view) {
            if (item.f50380a == null) {
                return;
            }
            TextView textView = (TextView) view.findViewById(R.id.info);
            TextView textView2 = (TextView) view.findViewById(R.id.title);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) view.findViewById(R.id.icon);
            ImageView imageView = (ImageView) view.findViewById(R.id.cancle);
            TextView textView3 = (TextView) view.findViewById(R.id.tv_score);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.iv_star);
            TextView textView4 = (TextView) view.findViewById(R.id.tipsLayout);
            if (com.join.mgps.Util.t2.h(item.f50380a.getScore()) || Float.valueOf(item.f50380a.getScore()).floatValue() <= 0.0f) {
                textView3.setVisibility(8);
                imageView2.setVisibility(8);
            } else {
                textView3.setVisibility(0);
                textView3.setText(item.f50380a.getScore());
                imageView2.setVisibility(0);
            }
            if (item.f50380a.getSp_tag_info() == null || item.f50380a.getSp_tag_info().getModel() == null) {
                textView4.setVisibility(8);
            } else {
                textView4.setVisibility(0);
                textView4.setText(item.f50380a.getSp_tag_info().getModel().getName());
            }
            if (Dtype.apk.name().equals(item.f50380a.getFileType())) {
                textView.setText("下载完成");
                if (item.f50380a.isMod()) {
                    com.papa.sim.statistic.t.l(AppDownFinishDialogActivity.this).R1(Event.showSoGameStart, new Ext().setGameId(item.f50380a.getCrc_link_type_val()).setGameFlag(1));
                } else {
                    com.papa.sim.statistic.t.l(AppDownFinishDialogActivity.this).R1(Event.showSoGameStart, new Ext().setGameId(item.f50380a.getCrc_link_type_val()));
                }
            } else {
                if (item.f50380a.isMod()) {
                    com.papa.sim.statistic.t.l(AppDownFinishDialogActivity.this).R1(Event.showSinGameStart, new Ext().setGameId(item.f50380a.getCrc_link_type_val()).setGameFlag(1));
                } else {
                    com.papa.sim.statistic.t.l(AppDownFinishDialogActivity.this).R1(Event.showSinGameStart, new Ext().setGameId(item.f50380a.getCrc_link_type_val()));
                }
                textView.setText("安装完成");
            }
            com.join.android.app.common.utils.l.h(simpleDraweeView, item.f50380a.getPortraitURL());
            textView2.setText(item.f50380a.getShowName());
            view.findViewById(R.id.tv_ok).setOnClickListener(new a(item));
            imageView.setOnClickListener(new b(item));
        }

        @Override // com.join.mgps.activity.AppDownFinishDialogActivity.b
        public View a(int position) {
            return this.f50383a.get(position);
        }

        public void b(c item) {
            this.f50383a.add(null);
            this.f50384b.add(item);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
            this.f50383a.set(position, null);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f50384b.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup container, int position) {
            View viewInflate = LayoutInflater.from(container.getContext()).inflate(R.layout.item_app_down_finish, container, false);
            container.addView(viewInflate);
            c(this.f50384b.get(position), viewInflate);
            this.f50383a.set(position, viewInflate);
            return viewInflate;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }
    }

    private void updateList() {
        if (getIntent() != null) {
            String stringExtra = getIntent().getStringExtra(KEY_GAME_ID);
            this.gameId = stringExtra;
            if (!com.join.mgps.Util.t2.i(stringExtra) || this.games.contains(this.gameId)) {
                return;
            }
            this.games.add(this.gameId);
            DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
            c cVar = new c();
            cVar.f50380a = downloadTaskG;
            this.mCardAdapter.b(cVar);
            this.mCardAdapter.notifyDataSetChanged();
            this.indicator.setViewPager(this.mViewPager);
        }
    }

    void initView() {
        this.mViewPager = (ViewPager) findViewById(R.id.viewPager);
        this.games.clear();
        this.mCardAdapter = new d();
        this.indicator = (CircleIndicator) findViewById(R.id.indicator);
        this.mViewPager.setAdapter(this.mCardAdapter);
        this.indicator.setViewPager(this.mViewPager);
        this.mViewPager.setOffscreenPageLimit(3);
        updateList();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAppDownFinishEvent(com.join.mgps.event.u event) {
        if (event == null || getClass() != event.a()) {
            return;
        }
        finish();
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.appdown_finish_activity);
        com.join.mgps.Util.p2.v(this);
        org.greenrobot.eventbus.c.f().v(this);
        initView();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        updateList();
    }
}
