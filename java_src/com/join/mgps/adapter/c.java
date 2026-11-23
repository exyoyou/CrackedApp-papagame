package com.join.mgps.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BannerImage;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class c extends PagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f61359a = getClass().getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f61360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<BannerImage> f61361c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f61362d;

    public c(Context context, ArrayList<BannerImage> viewList) {
        ArrayList<BannerImage> arrayList = new ArrayList<>();
        this.f61361c = arrayList;
        this.f61360b = context;
        arrayList.clear();
        this.f61361c.addAll(viewList);
    }

    public void b(ArrayList<BannerImage> viewList) {
        ArrayList<BannerImage> arrayList = this.f61361c;
        if (arrayList == null) {
            this.f61361c = new ArrayList<>();
        } else {
            arrayList.clear();
        }
        this.f61361c.addAll(viewList);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup container, int position, Object object) {
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f61361c.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object object) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup container, int position) {
        ArrayList<BannerImage> arrayList = this.f61361c;
        if (arrayList == null || arrayList.size() == 0) {
            SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this.f61360b);
            com.join.android.app.common.utils.l.h(simpleDraweeView, "http://xxx.com");
            return simpleDraweeView;
        }
        BannerImage bannerImage = this.f61361c.get(position);
        SimpleDraweeView imageView = bannerImage.getImageView();
        try {
            ViewGroup viewGroup = (ViewGroup) imageView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(imageView);
            }
            imageView = bannerImage.getImageView();
            com.join.android.app.common.utils.l.e(imageView, R.drawable.banner_normal_icon, bannerImage.getUrl(), com.facebook.drawee.drawable.s.c.f27292i);
            container.addView(imageView);
            return imageView;
        } catch (Exception e10) {
            e10.printStackTrace();
            return imageView;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View arg0, Object arg1) {
        return arg0 == arg1;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(ViewGroup container) {
        super.startUpdate(container);
    }
}
