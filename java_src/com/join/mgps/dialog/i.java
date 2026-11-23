package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.NewArenaMainActivty_;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f67594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Activity f67595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ListView f67596c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f67597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f67598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f67599f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    c f67600g;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            i.this.c();
        }
    }

    private class b extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<DownloadTask> f67602b;

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f67604a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            View f67605b;

            a() {
            }
        }

        public b(List<DownloadTask> datas) {
            this.f67602b = datas;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f67602b.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return this.f67602b.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            a aVar;
            if (convertView == null) {
                convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_arena_room_sort, (ViewGroup) null);
                aVar = new a();
                aVar.f67604a = (TextView) convertView.findViewById(R.id.tv_info);
                View viewFindViewById = convertView.findViewById(R.id.emptyView);
                aVar.f67605b = viewFindViewById;
                viewFindViewById.setVisibility(0);
                convertView.setTag(aVar);
            } else {
                aVar = (a) convertView.getTag();
            }
            aVar.f67604a.setText(this.f67602b.get(position).getShowName());
            aVar.f67604a.setBackgroundResource(R.drawable.room_sort_gray_border);
            return convertView;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    public interface c {
        void a(DownloadTask downloadTask);
    }

    public i(Activity activity, c callback) {
        this.f67600g = callback;
        this.f67595b = activity;
        e(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void f(View view) {
        c();
        ((NewArenaMainActivty_.h) NewArenaMainActivty_.intent(view.getContext()).flags(67108864)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(List list, AdapterView adapterView, View view, int i10, long j10) {
        c cVar = this.f67600g;
        if (cVar != null) {
            cVar.a((DownloadTask) list.get(i10));
        }
        c();
    }

    public void c() {
        this.f67594a.dismiss();
    }

    public c d() {
        return this.f67600g;
    }

    void e(final Activity activity) {
        Dialog dialog = new Dialog(activity, R.style.newtrans_floating_dialog);
        this.f67594a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f67594a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(activity).inflate(R.layout.dialog_arena_create, (ViewGroup) null);
        viewInflate.findViewById(R.id.iv_close).setOnClickListener(new a());
        this.f67596c = (ListView) viewInflate.findViewById(R.id.list);
        this.f67597d = viewInflate.findViewById(R.id.noRecord);
        this.f67599f = (TextView) viewInflate.findViewById(R.id.tv_top);
        View viewFindViewById = viewInflate.findViewById(R.id.tv2);
        this.f67598e = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f67564b.f(view);
            }
        });
        this.f67594a.setContentView(viewInflate);
        Window window = this.f67594a.getWindow();
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.width = -1;
        attributes2.height = -1;
        window.setGravity(17);
    }

    public void h(final List<DownloadTask> datas, final boolean isElite) {
        if (datas == null || datas.size() == 0) {
            this.f67597d.setVisibility(0);
            this.f67596c.setVisibility(8);
            this.f67599f.setText("提示");
        } else {
            this.f67597d.setVisibility(8);
            this.f67596c.setVisibility(0);
            this.f67596c.setAdapter((ListAdapter) new b(datas));
            this.f67596c.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.join.mgps.dialog.g
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                    this.f67546b.g(datas, adapterView, view, i10, j10);
                }
            });
        }
    }

    public void i(c onItemClickListener) {
        this.f67600g = onItemClickListener;
    }

    public void j() {
        if (this.f67594a.isShowing()) {
            return;
        }
        this.f67594a.show();
    }
}
