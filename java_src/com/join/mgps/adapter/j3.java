package com.join.mgps.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.viewpager.widget.PagerAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RecomDatabean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class j3 extends PagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f62487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<RecomDatabean> f62488b;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecomDatabean f62489b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f62490c;

        a(final RecomDatabean val$recomDatabean, final int val$finalPosition) {
            this.f62489b = val$recomDatabean;
            this.f62490c = val$finalPosition;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppBeanMain> sub = this.f62489b.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentDateBean intentDataBean = sub.get(0).getIntentDataBean();
            intentDataBean.setExtBean(new ExtBean("home", "6-1-" + (this.f62490c + 1)));
            IntentUtil.getInstance().intentActivity(j3.this.f62487a, intentDataBean);
        }
    }

    public j3(Context context, List<RecomDatabean> RecomDatabeans) {
        this.f62487a = context;
        if (RecomDatabeans == null) {
            this.f62488b = new ArrayList();
        } else {
            this.f62488b = RecomDatabeans;
        }
    }

    public void c(List<RecomDatabean> RecomDatabeans) {
        if (RecomDatabeans == null) {
            this.f62488b = new ArrayList();
        } else {
            this.f62488b = RecomDatabeans;
        }
        notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup container, int position, Object object) {
        container.removeView((View) object);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f62488b.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object object) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup container, int position) {
        if (this.f62488b.size() == 0) {
            return null;
        }
        int size = position % this.f62488b.size();
        if (size < 0) {
            size += this.f62488b.size();
        }
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this.f62487a);
        simpleDraweeView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
        simpleDraweeView.setPadding(com.join.mgps.Util.i0.a(this.f62487a, 10.0f), 0, com.join.mgps.Util.i0.a(this.f62487a, 10.0f), 0);
        RecomDatabean recomDatabean = this.f62488b.get(size);
        com.join.android.app.common.utils.l.h(simpleDraweeView, recomDatabean.getMain().getPic_remote());
        ViewParent parent = simpleDraweeView.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(simpleDraweeView);
            com.join.android.app.common.utils.l.h(simpleDraweeView, recomDatabean.getMain().getPic_remote());
        }
        simpleDraweeView.setOnClickListener(new a(recomDatabean, size));
        container.addView(simpleDraweeView);
        return simpleDraweeView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object object) {
        return view == object;
    }
}
