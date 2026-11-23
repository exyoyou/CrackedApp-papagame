package com.join.mgps.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.List;
import me.relex.circleindicator.CircleIndicator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.appdown_finish_activity)
public class AppDownFinishActivity extends BaseAppCompatActivity {
    protected int activityCloseEnterAnimation;
    protected int activityCloseExitAnimation;

    @Extra
    String gameId;
    private CircleIndicator indicator;
    b mBarHideEnableObserver;
    private e mCardAdapter;
    private ViewPager mViewPager;
    List<String> games = new ArrayList();
    private ContentObserver mNavigationBarObserver = new a(new Handler());

    class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            Settings.Global.getInt(AppDownFinishActivity.this.getContentResolver(), "navigationbar_is_min", 0);
        }
    }

    private class b extends ContentObserver {
        b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
        }
    }

    public interface c {
        View a(int position);

        int getCount();
    }

    private class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public DownloadTask f50370a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f50371b;

        private d() {
        }

        /* synthetic */ d(AppDownFinishActivity appDownFinishActivity, a aVar) {
            this();
        }
    }

    public class e extends PagerAdapter implements c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<d> f50374b = new ArrayList();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<View> f50373a = new ArrayList();

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ d f50376b;

            a(final d val$item) {
                this.f50376b = val$item;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                UtilsMy.k4(v10.getContext(), this.f50376b.f50370a);
                if (this.f50376b.f50371b) {
                    com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.onclickSoGameStart, new Ext().setGameId(this.f50376b.f50370a.getCrc_link_type_val()));
                } else {
                    com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.onclickSinGameStart, new Ext().setGameId(this.f50376b.f50370a.getCrc_link_type_val()));
                }
                AppDownFinishActivity.this.finish();
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                AppDownFinishActivity.this.finish();
            }
        }

        public e() {
        }

        private void c(d item, View view) {
            TextView textView = (TextView) view.findViewById(R.id.info);
            TextView textView2 = (TextView) view.findViewById(R.id.title);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) view.findViewById(R.id.icon);
            ImageView imageView = (ImageView) view.findViewById(R.id.cancle);
            if (Dtype.apk.name().equals(item.f50370a.getFileType())) {
                textView.setText("下载完成");
                item.f50371b = true;
                com.papa.sim.statistic.t.l(AppDownFinishActivity.this).R1(Event.showSoGameStart, new Ext().setGameId(item.f50370a.getCrc_link_type_val()));
            } else {
                com.papa.sim.statistic.t.l(AppDownFinishActivity.this).R1(Event.showSinGameStart, new Ext().setGameId(item.f50370a.getCrc_link_type_val()));
                item.f50371b = false;
                textView.setText("安装完成");
            }
            com.join.android.app.common.utils.l.h(simpleDraweeView, item.f50370a.getPortraitURL());
            textView2.setText(item.f50370a.getShowName());
            view.findViewById(R.id.tv_ok).setOnClickListener(new a(item));
            imageView.setOnClickListener(new b());
        }

        @Override // com.join.mgps.activity.AppDownFinishActivity.c
        public View a(int position) {
            return this.f50373a.get(position);
        }

        public void b(d item) {
            this.f50373a.add(null);
            this.f50374b.add(item);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
            this.f50373a.set(position, null);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f50374b.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup container, int position) {
            View viewInflate = LayoutInflater.from(container.getContext()).inflate(R.layout.item_app_down_finish, container, false);
            container.addView(viewInflate);
            c(this.f50374b.get(position), viewInflate);
            this.f50373a.set(position, viewInflate);
            return viewInflate;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }
    }

    private void registerNavigationBarObserver() {
        getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_is_min"), true, this.mNavigationBarObserver);
    }

    @AfterViews
    void afterview() {
        this.mViewPager = (ViewPager) findViewById(R.id.viewPager);
        try {
            TypedArray typedArrayObtainStyledAttributes = getTheme().obtainStyledAttributes(new int[]{android.R.attr.windowAnimationStyle});
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
            typedArrayObtainStyledAttributes.recycle();
            TypedArray typedArrayObtainStyledAttributes2 = getTheme().obtainStyledAttributes(resourceId, new int[]{android.R.attr.activityCloseEnterAnimation, android.R.attr.activityCloseExitAnimation});
            this.activityCloseEnterAnimation = typedArrayObtainStyledAttributes2.getResourceId(0, 0);
            this.activityCloseExitAnimation = typedArrayObtainStyledAttributes2.getResourceId(1, 0);
            typedArrayObtainStyledAttributes2.recycle();
        } catch (Resources.NotFoundException e10) {
            e10.printStackTrace();
        }
        this.games.clear();
        this.games.add(this.gameId);
        this.mCardAdapter = new e();
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
        d dVar = new d(this, null);
        dVar.f50370a = downloadTaskG;
        this.mCardAdapter.b(dVar);
        this.indicator = (CircleIndicator) findViewById(R.id.indicator);
        this.mViewPager.setAdapter(this.mCardAdapter);
        this.indicator.setViewPager(this.mViewPager);
        this.mViewPager.setOffscreenPageLimit(3);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        try {
            overridePendingTransition(this.activityCloseEnterAnimation, this.activityCloseExitAnimation);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            getContentResolver().unregisterContentObserver(this.mBarHideEnableObserver);
            getContentResolver().unregisterContentObserver(this.mNavigationBarObserver);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Bundle extras = intent.getExtras();
        if (extras != null && extras.containsKey("gameId")) {
            this.gameId = extras.getString("gameId");
        }
        if (!this.games.contains(this.gameId)) {
            this.games.add(this.gameId);
            DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
            d dVar = new d(this, null);
            dVar.f50370a = downloadTaskG;
            this.mCardAdapter.b(dVar);
            this.mCardAdapter.notifyDataSetChanged();
            this.indicator.setViewPager(this.mViewPager);
        }
        try {
            registerContentResolver();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void registerContentResolver() {
        this.mBarHideEnableObserver = new b(new Handler());
        getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_hide_bar_enabled"), true, this.mBarHideEnableObserver);
        registerNavigationBarObserver();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
        com.join.mgps.Util.p2.r(this, 16777215, true);
    }
}
