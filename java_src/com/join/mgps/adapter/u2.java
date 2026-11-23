package com.join.mgps.adapter;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.CompanySubBean;
import com.join.mgps.dto.GameOLHeadAdBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class u2 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<l6.b> f63215b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Context f63216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    LayoutInflater f63217d;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameOLHeadAdBean f63218b;

        a(final GameOLHeadAdBean val$leftBean) {
            this.f63218b = val$leftBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            List<CompanySubBean> sub = this.f63218b.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(u2.this.f63216c, sub.get(0).getIntentDataBean());
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameOLHeadAdBean f63220b;

        b(final GameOLHeadAdBean val$rightBean) {
            this.f63220b = val$rightBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            List<CompanySubBean> sub = this.f63220b.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(u2.this.f63216c, sub.get(0).getIntentDataBean());
        }
    }

    public u2(Context context) {
        this.f63216c = context;
        this.f63217d = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public l6.b getItem(int position) {
        return this.f63215b.get(position);
    }

    public List<l6.b> b() {
        return this.f63215b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f63215b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = this.f63217d.inflate(R.layout.game_single_company_item_layout, (ViewGroup) null);
        }
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) com.join.mgps.Util.m3.a(convertView, R.id.imageLeft);
        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) com.join.mgps.Util.m3.a(convertView, R.id.imageRight);
        TextView textView = (TextView) com.join.mgps.Util.m3.a(convertView, R.id.companyLeft);
        TextView textView2 = (TextView) com.join.mgps.Util.m3.a(convertView, R.id.appNumberLeft);
        TextView textView3 = (TextView) com.join.mgps.Util.m3.a(convertView, R.id.companyRight);
        TextView textView4 = (TextView) com.join.mgps.Util.m3.a(convertView, R.id.appNumberRight);
        RelativeLayout relativeLayout = (RelativeLayout) com.join.mgps.Util.m3.a(convertView, R.id.rightLayout);
        l6.b item = getItem(position);
        GameOLHeadAdBean gameOLHeadAdBeanA = item.a();
        GameOLHeadAdBean gameOLHeadAdBeanB = item.b();
        com.join.android.app.common.utils.l.d(simpleDraweeView, R.drawable.banner_normal_icon, gameOLHeadAdBeanA.getMain().getPic_remote());
        textView.setText(gameOLHeadAdBeanA.getMain().getSub_title());
        List<CompanySubBean> sub = gameOLHeadAdBeanA.getSub();
        if (sub != null && sub.size() > 0) {
            textView2.setText(Html.fromHtml("<font color='0xF47500' >" + sub.get(0).getGame_count() + "</font>款游戏"), TextView.BufferType.SPANNABLE);
        }
        if (gameOLHeadAdBeanB != null) {
            List<CompanySubBean> sub2 = gameOLHeadAdBeanB.getSub();
            if (sub2 != null && sub2.size() > 0) {
                textView4.setText(Html.fromHtml("<font color='0xF47500' >" + sub2.get(0).getGame_count() + "</font>款游戏"), TextView.BufferType.SPANNABLE);
            }
            com.join.android.app.common.utils.l.d(simpleDraweeView2, R.drawable.rect_normal_icon, gameOLHeadAdBeanB.getMain().getPic_remote());
            textView3.setText(gameOLHeadAdBeanB.getMain().getSub_title());
            relativeLayout.setVisibility(0);
        } else {
            relativeLayout.setVisibility(4);
        }
        simpleDraweeView.setOnClickListener(new a(gameOLHeadAdBeanA));
        simpleDraweeView2.setOnClickListener(new b(gameOLHeadAdBeanB));
        return convertView;
    }
}
