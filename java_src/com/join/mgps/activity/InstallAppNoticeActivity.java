package com.join.mgps.activity;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import com.BaseActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.BootPageData;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import me.relex.circleindicator.CircleIndicator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.install_app_notice_layout)
public class InstallAppNoticeActivity extends BaseActivity {

    @Extra
    String adJson;
    b adapter;
    DownloadTask downloadTask;

    @Extra
    String gameId;

    @ViewById
    CircleIndicator indicator;

    @ViewById
    TextView message;

    @ViewById
    SimpleDraweeView more;
    BootPageData popupAdBean;

    @ViewById
    MultiTouchViewPager viewPager;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            InstallAppNoticeActivity.this.finish();
        }
    }

    public class b extends PagerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        List<String> f54046a;

        class a extends com.facebook.drawee.controller.b<com.facebook.imagepipeline.image.g> {
            a() {
            }

            @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void onFinalImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo, Animatable animatable) {
                super.onFinalImageSet(id2, imageInfo, animatable);
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.activity.InstallAppNoticeActivity$b$b, reason: collision with other inner class name */
        class ViewOnClickListenerC0672b implements View.OnClickListener {
            ViewOnClickListenerC0672b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InstallAppNoticeActivity.this.installApk();
            }
        }

        public b() {
        }

        public List<String> b() {
            return this.f54046a;
        }

        public void c(List<String> beans) {
            this.f54046a = beans;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            List<String> list = this.f54046a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int position) {
            String str = this.f54046a.get(position);
            Context context = viewGroup.getContext();
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.home_popup_ad_item, (ViewGroup) null);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate.findViewById(R.id.adImage);
            simpleDraweeView.getHierarchy().J(R.drawable.main_normal_icon);
            com.facebook.drawee.backends.pipeline.e eVarNewDraweeControllerBuilder = Fresco.newDraweeControllerBuilder();
            eVarNewDraweeControllerBuilder.b(InstallAppNoticeActivity.this.isHomePopupAdLocalCached(str) ? com.join.mgps.Util.t0.j(new File(com.join.mgps.Util.z.b(context), com.join.mgps.Util.o0.t(str))) : Uri.parse(str));
            eVarNewDraweeControllerBuilder.c(simpleDraweeView.getController());
            eVarNewDraweeControllerBuilder.I(new a());
            simpleDraweeView.setController(eVarNewDraweeControllerBuilder.build());
            simpleDraweeView.setClickable(true);
            try {
                viewGroup.addView(viewInflate, -1, -1);
                simpleDraweeView.setOnClickListener(new ViewOnClickListenerC0672b());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return viewInflate;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void installApk() {
        com.join.android.app.common.utils.g.t0(this).z(this, new File(this.downloadTask.getGameZipPath()));
    }

    @AfterViews
    void afterViews() {
        try {
            this.popupAdBean = (BootPageData) JsonMapper.getInstance().fromJson(com.join.mgps.Util.t2.g(this.adJson), BootPageData.class);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.downloadTask = q5.f.M().G(this.gameId);
        BootPageData bootPageData = this.popupAdBean;
        if (bootPageData == null || bootPageData.getGame_setup_boot() == null || com.join.mgps.Util.t2.h(this.popupAdBean.getGame_setup_boot().getTitle()) || this.popupAdBean.getGame_setup_boot().getPic().length == 0) {
            finish();
        }
        this.message.setText(this.popupAdBean.getGame_setup_boot().getTitle() + "下载完成，请按下图操作");
        ArrayList arrayList = new ArrayList();
        for (String str : this.popupAdBean.getGame_setup_boot().getPic()) {
            arrayList.add(str);
        }
        b bVar = new b();
        this.adapter = bVar;
        bVar.c(arrayList);
        this.viewPager.setAdapter(this.adapter);
        this.indicator.setViewPager(this.viewPager);
        try {
            this.more.setOnClickListener(new a());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void goIntent(Context context, AppBeanMain bean) {
        if (bean == null) {
            return;
        }
        IntentUtil.getInstance().intentActivity(context, new IntentDateBean(bean.getLink_type(), bean.getJump_type(), bean.getLink_type_val(), bean.getCrc_link_type_val(), bean.getTpl_type(), null));
    }

    boolean isHomePopupAdLocalCached(String url) {
        return new File(com.join.mgps.Util.z.b(this), com.join.mgps.Util.o0.t(url)).exists();
    }
}
