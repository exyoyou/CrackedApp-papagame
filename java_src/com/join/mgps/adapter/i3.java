package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.RecomDatabean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i3 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<RecomDatabean> f62352c;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecomDatabean f62353b;

        a(final RecomDatabean val$recomDatabean) {
            this.f62353b = val$recomDatabean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppBeanMain> sub = this.f62353b.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(i3.this.f62351b, sub.get(0).getIntentDataBean());
        }
    }

    public i3(Context context, List<RecomDatabean> RecomDatabeans) {
        this.f62351b = context;
        if (RecomDatabeans == null) {
            this.f62352c = new ArrayList();
        } else {
            this.f62352c = RecomDatabeans;
        }
    }

    public void b(List<RecomDatabean> RecomDatabeans) {
        if (RecomDatabeans == null) {
            this.f62352c = new ArrayList();
        } else {
            this.f62352c = RecomDatabeans;
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62352c.size() == 0 ? 0 : Integer.MAX_VALUE;
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
    public View getView(final int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = LayoutInflater.from(this.f62351b).inflate(R.layout.mgpapamain_gallery_item, parent, false);
        }
        List<RecomDatabean> list = this.f62352c;
        RecomDatabean recomDatabean = list.get(position % list.size());
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) com.join.mgps.Util.m3.a(convertView, R.id.intersting_itemback);
        com.join.android.app.common.utils.l.h(simpleDraweeView, recomDatabean.getMain().getPic_remote());
        simpleDraweeView.setOnClickListener(new a(recomDatabean));
        return convertView;
    }
}
