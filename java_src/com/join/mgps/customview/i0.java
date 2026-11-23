package com.join.mgps.customview;

import android.app.Activity;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.posting.PostingActivity;
import com.join.mgps.dto.GroupInfoBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i0 extends PopupWindow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ListView f66582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    PostingActivity.m f66583b;

    class a implements android.widget.AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f66584b;

        a(final List val$data) {
            this.f66584b = val$data;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id2) {
            if (((b) this.f66584b.get(position)).f66588a == 2) {
                i0.this.f66583b.e(((b) this.f66584b.get(position)).f66589b);
                i0.this.dismiss();
            }
        }
    }

    class b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static final int f66586e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static final int f66587f = 2;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f66588a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        GroupInfoBean f66589b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f66590c;

        b() {
        }
    }

    class c extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<b> f66592b;

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f66594a;

            a() {
            }
        }

        class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f66596a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            ImageView f66597b;

            b() {
            }
        }

        public c(List<b> datas) {
            this.f66592b = datas;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f66592b.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return this.f66592b.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int position) {
            return this.f66592b.get(position).f66588a;
        }

        /* JADX WARN: Code duplicated, block: B:6:0x0013  */
        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            b bVar;
            int i10 = this.f66592b.get(position).f66588a;
            a aVar = null;
            if (convertView == null) {
                if (i10 == 1) {
                    a aVar2 = new a();
                    View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_posting_group_title, (ViewGroup) null);
                    aVar2.f66594a = (TextView) viewInflate.findViewById(R.id.tv_title);
                    viewInflate.setTag(aVar2);
                    aVar = aVar2;
                    convertView = viewInflate;
                    bVar = null;
                } else if (i10 != 2) {
                    bVar = null;
                } else {
                    convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_select_posting_group, (ViewGroup) null);
                    bVar = new b();
                    bVar.f66596a = (TextView) convertView.findViewById(R.id.tv_name);
                    bVar.f66597b = (ImageView) convertView.findViewById(R.id.iv_selected);
                    convertView.setTag(bVar);
                }
            } else if (i10 == 1) {
                aVar = (a) convertView.getTag();
                bVar = null;
            } else if (i10 != 2) {
                bVar = null;
            } else {
                bVar = (b) convertView.getTag();
            }
            if (i10 == 1) {
                aVar.f66594a.setText(this.f66592b.get(position).f66590c);
            } else if (i10 == 2) {
                bVar.f66596a.setText(this.f66592b.get(position).f66589b.getName());
                if (this.f66592b.get(position).f66589b.isSelected()) {
                    bVar.f66597b.setVisibility(0);
                } else {
                    bVar.f66597b.setVisibility(8);
                }
            }
            return convertView;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    public i0(Activity activity, PostingActivity.m callback) {
        this.f66583b = callback;
        View viewInflate = LayoutInflater.from(activity).inflate(R.layout.pop_select_posting_group, (ViewGroup) null);
        this.f66582a = (ListView) viewInflate.findViewById(R.id.mListView);
        setContentView(viewInflate);
        setSoftInputMode(16);
        setWidth(activity.getWindowManager().getDefaultDisplay().getWidth());
        setHeight(-1);
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        update();
        setBackgroundDrawable(new ColorDrawable(0));
        setAnimationStyle(R.style.PopupAnimation_100);
    }

    public void a(List<GroupInfoBean> recData, List<GroupInfoBean> userData, GroupInfoBean selectedGroup) {
        ArrayList arrayList = new ArrayList();
        if (recData != null && recData.size() > 0) {
            if (selectedGroup != null) {
                for (int i10 = 0; i10 < recData.size(); i10++) {
                    if (recData.get(i10).getFid() == selectedGroup.getFid()) {
                        recData.get(i10).setSelected(true);
                        break;
                    }
                }
            }
            b bVar = new b();
            bVar.f66588a = 1;
            bVar.f66590c = "推荐";
            arrayList.add(bVar);
            for (GroupInfoBean groupInfoBean : recData) {
                b bVar2 = new b();
                bVar2.f66588a = 2;
                bVar2.f66589b = groupInfoBean;
                arrayList.add(bVar2);
            }
        }
        if (userData != null && userData.size() > 0) {
            if (selectedGroup != null) {
                for (int i11 = 0; i11 < userData.size(); i11++) {
                    if (userData.get(i11).getFid() == selectedGroup.getFid()) {
                        userData.get(i11).setSelected(true);
                        break;
                    }
                }
            }
            b bVar3 = new b();
            bVar3.f66588a = 1;
            bVar3.f66590c = "我的";
            arrayList.add(bVar3);
            for (GroupInfoBean groupInfoBean2 : userData) {
                b bVar4 = new b();
                bVar4.f66588a = 2;
                bVar4.f66589b = groupInfoBean2;
                arrayList.add(bVar4);
            }
        }
        this.f66582a.setAdapter((ListAdapter) new c(arrayList));
        this.f66582a.setOnItemClickListener(new a(arrayList));
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View anchor) {
        if (Build.VERSION.SDK_INT == 24) {
            Rect rect = new Rect();
            anchor.getGlobalVisibleRect(rect);
            setHeight(anchor.getResources().getDisplayMetrics().heightPixels - rect.bottom);
        }
        super.showAsDropDown(anchor);
    }
}
