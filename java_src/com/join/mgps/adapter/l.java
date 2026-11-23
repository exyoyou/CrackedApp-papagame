package com.join.mgps.adapter;

import android.content.ClipboardManager;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.GiftsDetailActivity_;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class l extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ExtBean f62635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f62636c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<GiftPackageDataInfoBean> f62637d;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f62638b;

        a(final GiftPackageDataInfoBean val$giftPackageDataBean) {
            this.f62638b = val$giftPackageDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserInfo accountData = AccountUtil_.getInstance_(l.this.f62636c).getAccountData();
            if (accountData != null) {
                GiftsDetailActivity_.intent(l.this.f62636c).c(this.f62638b).a(accountData.getUid()).start();
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f62640b;

        b(final GiftPackageDataInfoBean val$giftPackageDataBean) {
            this.f62640b = val$giftPackageDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f62640b.getGift_package_status() == 1) {
                if (this.f62640b.getGift_package_overdue() == 1) {
                    com.join.mgps.Util.a3.b(l.this.f62636c).d("该礼包已过期");
                    return;
                }
                ((ClipboardManager) l.this.f62636c.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.f62640b.getGift_package_code());
                com.join.mgps.Util.a3.b(l.this.f62636c).d(this.f62640b.getGift_package_code() + "已复制到剪贴板");
            }
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f62642a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f62643b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f62644c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f62645d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f62646e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f62647f;

        c() {
        }
    }

    public l(Context _context) {
        this.f62636c = _context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62637d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        View viewInflate;
        c cVar;
        if (view == null) {
            cVar = new c();
            viewInflate = LayoutInflater.from(this.f62636c).inflate(R.layout.codes_box_item, (ViewGroup) null);
            cVar.f62642a = (LinearLayout) viewInflate.findViewById(R.id.layoutItem);
            cVar.f62643b = (SimpleDraweeView) viewInflate.findViewById(R.id.giftIcon);
            cVar.f62644c = (TextView) viewInflate.findViewById(R.id.giftNameTv);
            cVar.f62645d = (TextView) viewInflate.findViewById(R.id.giftNameTime);
            cVar.f62646e = (TextView) viewInflate.findViewById(R.id.saveCodeContent);
            cVar.f62647f = (TextView) viewInflate.findViewById(R.id.saveCodeTv);
            viewInflate.setTag(cVar);
        } else {
            viewInflate = view;
            cVar = (c) view.getTag();
        }
        GiftPackageDataInfoBean giftPackageDataInfoBean = this.f62637d.get(i10);
        cVar.f62644c.setText(giftPackageDataInfoBean.getGift_package_title());
        cVar.f62645d.setText(com.join.mgps.Util.e0.C(giftPackageDataInfoBean.getGift_package_times_begin()) + " 至 " + com.join.mgps.Util.e0.C(giftPackageDataInfoBean.getGift_package_times_end()));
        cVar.f62646e.setText(giftPackageDataInfoBean.getGift_package_code());
        cVar.f62643b.setImageDrawable(this.f62636c.getResources().getDrawable(R.drawable.banner_normal_icon));
        com.join.android.app.common.utils.l.f(cVar.f62643b, R.drawable.banner_normal_icon, giftPackageDataInfoBean.getGift_package_pic(), com.join.android.app.common.utils.l.E(this.f62636c));
        if (giftPackageDataInfoBean.getGift_package_status() != 1) {
            cVar.f62647f.setText("领取");
            cVar.f62647f.setTextColor(-358375);
            cVar.f62647f.setBackgroundResource(R.drawable.recom_maincolor_butn);
        } else if (giftPackageDataInfoBean.getGift_package_overdue() == 1) {
            cVar.f62647f.setText("已过期");
            cVar.f62647f.setTextColor(-7763575);
            cVar.f62647f.setBackgroundResource(R.drawable.recom_grey_butn);
        } else {
            cVar.f62647f.setText("复制");
            cVar.f62647f.setTextColor(-358375);
            cVar.f62647f.setBackgroundResource(R.drawable.recom_maincolor_butn);
        }
        cVar.f62642a.setOnClickListener(new a(giftPackageDataInfoBean));
        cVar.f62647f.setOnClickListener(new b(giftPackageDataInfoBean));
        return viewInflate;
    }

    public l(Context context, List<GiftPackageDataInfoBean> packageDataBeanList) {
        this.f62636c = context;
        this.f62637d = packageDataBeanList;
    }
}
