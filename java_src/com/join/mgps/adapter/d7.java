package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.CarouselViewPager2;
import com.join.mgps.dto.BannerBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d7 extends com.join.mgps.customview.a<CarouselViewPager2> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<BannerBean> f61899c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f61900d;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f61901b;

        a(final int val$position) {
            this.f61901b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            d7 d7Var = d7.this;
            d7Var.g((BannerBean) d7Var.f61899c.get(this.f61901b));
        }
    }

    public d7(Context context, CarouselViewPager2 viewPager, List<BannerBean> tablesBeanListB) {
        super(viewPager);
        this.f61899c = tablesBeanListB;
        this.f61900d = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(BannerBean tablesBeanListB) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setJump_type(tablesBeanListB.getJump_type());
        intentDateBean.setLink_type(tablesBeanListB.getLink_type());
        intentDateBean.setLink_type_val(tablesBeanListB.getLink_type_val());
        if (tablesBeanListB.getLink_type() == 1) {
            intentDateBean.setTpl_type(tablesBeanListB.getGame_info_tpl_type());
        } else {
            intentDateBean.setTpl_type(tablesBeanListB.getTpl_type());
        }
        intentDateBean.setCrc_link_type_val(tablesBeanListB.getCrc_link_type_val());
        intentDateBean.setObject(tablesBeanListB.getTitle());
        IntentUtil.getInstance().intentActivity(this.f61900d, intentDateBean);
    }

    @Override // com.join.mgps.customview.a
    public int b() {
        List<BannerBean> list = this.f61899c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // com.join.mgps.customview.a
    public Object c(ViewGroup container, final int position) {
        View viewInflate = LayoutInflater.from(container.getContext()).inflate(R.layout.detial_viewpager_layout, (ViewGroup) null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate.findViewById(R.id.adImage);
        simpleDraweeView.setOnClickListener(new a(position));
        String pic_remote = this.f61899c.get(position).getPic_remote();
        Context context = this.f61900d;
        com.join.android.app.common.utils.l.f(simpleDraweeView, R.drawable.banner_normal_icon, pic_remote, com.join.android.app.common.utils.l.F(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp16)));
        container.addView(viewInflate, -1, -1);
        return viewInflate;
    }

    public void f(List<BannerBean> data) {
        this.f61899c = data;
    }
}
