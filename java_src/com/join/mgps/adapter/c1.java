package com.join.mgps.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c1 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f61363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<GiftPackageDataInfoBean> f61364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f61365d;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f61366b;

        a(final GiftPackageDataInfoBean val$bean) {
            this.f61366b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f61366b.getGift_package_status() != 1 || TextUtils.isEmpty(this.f61366b.getGift_package_code())) {
                Message message = new Message();
                message.what = 3;
                message.obj = this.f61366b;
                c1.this.f61365d.sendMessage(message);
                return;
            }
            Message message2 = new Message();
            message2.what = 2;
            message2.obj = this.f61366b;
            c1.this.f61365d.sendMessage(message2);
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f61368a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f61369b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f61370c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Button f61371d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ProgressBar f61372e;

        b() {
        }
    }

    public c1(Context mContext, Handler handler) {
        this.f61365d = handler;
        this.f61363b = mContext;
    }

    public List<GiftPackageDataInfoBean> b() {
        if (this.f61364c == null) {
            this.f61364c = new ArrayList();
        }
        return this.f61364c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f61364c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        b bVar;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.f61363b).inflate(R.layout.gamedetial_more_gift_item_layout, (ViewGroup) null);
            bVar = new b();
            bVar.f61370c = (TextView) convertView.findViewById(R.id.content);
            bVar.f61369b = (TextView) convertView.findViewById(R.id.percent);
            bVar.f61368a = (TextView) convertView.findViewById(R.id.title);
            bVar.f61371d = (Button) convertView.findViewById(R.id.getGift);
            bVar.f61372e = (ProgressBar) convertView.findViewById(R.id.progress);
            convertView.setTag(bVar);
        } else {
            bVar = (b) convertView.getTag();
        }
        GiftPackageDataInfoBean giftPackageDataInfoBean = this.f61364c.get(position);
        bVar.f61370c.setText(giftPackageDataInfoBean.getGift_package_content());
        int gift_package_surplus = (giftPackageDataInfoBean.getGift_package_surplus() == 0 || giftPackageDataInfoBean.getGift_package_count() == 0) ? 0 : (giftPackageDataInfoBean.getGift_package_surplus() * 100) / giftPackageDataInfoBean.getGift_package_count();
        if (giftPackageDataInfoBean.getGift_package_status() != 1 || TextUtils.isEmpty(giftPackageDataInfoBean.getGift_package_code())) {
            bVar.f61371d.setText("领取");
        } else {
            bVar.f61371d.setText("查看");
        }
        bVar.f61369b.setText("剩余" + gift_package_surplus + "%");
        bVar.f61372e.setProgress(100 - gift_package_surplus);
        bVar.f61370c.setText("礼包内容：" + giftPackageDataInfoBean.getGift_package_content());
        bVar.f61368a.setText(giftPackageDataInfoBean.getGift_package_title());
        bVar.f61371d.setOnClickListener(new a(giftPackageDataInfoBean));
        return convertView;
    }
}
