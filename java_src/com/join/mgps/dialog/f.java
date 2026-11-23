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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f67515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Activity f67516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ListView f67517c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.join.mgps.fragment.roomlist.c.m f67518d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f67519e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f67520f = 2;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            f.this.b();
        }
    }

    class b implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f67522b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f67523c;

        b(final List val$infos, final boolean val$isElite) {
            this.f67522b = val$infos;
            this.f67523c = val$isElite;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            if (((c) this.f67522b.get(position)).f67526b == f.this.f67519e) {
                return;
            }
            GameConfig gameConfig = ((c) this.f67522b.get(position)).f67525a;
            if (!this.f67523c) {
                f.this.b();
                f.this.f67518d.b(gameConfig);
            } else {
                f.this.b();
                if (gameConfig.getElite_match_switch() == 1) {
                    f.this.f67518d.b(gameConfig);
                }
            }
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        GameConfig f67525a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f67526b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f67527c;

        c() {
        }
    }

    private class d extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<c> f67529b;

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f67531a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            View f67532b;

            a() {
            }
        }

        class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f67534a;

            b() {
            }
        }

        public d(List<c> datas) {
            this.f67529b = datas;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f67529b.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return this.f67529b.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int position) {
            return this.f67529b.get(position).f67526b;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            int itemViewType = getItemViewType(position);
            a aVar = null;
            if (convertView == null) {
                if (itemViewType == f.this.f67519e) {
                    convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_arena_create_title, (ViewGroup) null);
                    b bVar = new b();
                    bVar.f67534a = (TextView) convertView.findViewById(R.id.tv_title);
                    convertView.setTag(bVar);
                } else {
                    convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_arena_room_sort, (ViewGroup) null);
                    aVar = new a();
                    aVar.f67531a = (TextView) convertView.findViewById(R.id.tv_info);
                    View viewFindViewById = convertView.findViewById(R.id.emptyView);
                    aVar.f67532b = viewFindViewById;
                    viewFindViewById.setVisibility(0);
                    convertView.setTag(aVar);
                }
            } else if (itemViewType == f.this.f67519e) {
            } else {
                aVar = (a) convertView.getTag();
            }
            c cVar = this.f67529b.get(position);
            if (itemViewType != f.this.f67519e) {
                aVar.f67531a.setText(cVar.f67525a.getGame_name());
                aVar.f67531a.setBackgroundResource(R.drawable.room_sort_gray_border);
            }
            return convertView;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    public f(Activity activity, com.join.mgps.fragment.roomlist.c.m callback) {
        this.f67518d = callback;
        this.f67516b = activity;
        c(activity);
    }

    private c a(GameConfig config, int type, boolean isElite) {
        c cVar = new c();
        cVar.f67526b = type;
        cVar.f67525a = config;
        cVar.f67527c = isElite;
        return cVar;
    }

    public void b() {
        this.f67515a.dismiss();
    }

    void c(final Activity activity) {
        Dialog dialog = new Dialog(activity, R.style.newtrans_floating_dialog);
        this.f67515a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f67515a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(activity).inflate(R.layout.dialog_arena_create, (ViewGroup) null);
        viewInflate.findViewById(R.id.iv_close).setOnClickListener(new a());
        this.f67517c = (ListView) viewInflate.findViewById(R.id.list);
        this.f67515a.setContentView(viewInflate);
        Window window = this.f67515a.getWindow();
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.width = -1;
        attributes2.height = -1;
        window.setGravity(17);
    }

    public void d(List<GameConfig> datas, final boolean isElite) {
        if (datas == null || datas.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (isElite) {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (GameConfig gameConfig : datas) {
                if (gameConfig.getElite_match_switch() == 1) {
                    arrayList2.add(gameConfig);
                } else {
                    arrayList3.add(gameConfig);
                }
            }
            if (arrayList2.size() > 0) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList.add(a((GameConfig) it2.next(), this.f67520f, true));
                }
            }
            if (arrayList3.size() > 0) {
                arrayList.add(a(null, this.f67519e, true));
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    arrayList.add(a((GameConfig) it3.next(), this.f67520f, true));
                }
            }
        } else {
            for (GameConfig gameConfig2 : datas) {
                if (!isElite) {
                    arrayList.add(a(gameConfig2, this.f67520f, false));
                }
            }
        }
        this.f67517c.setAdapter((ListAdapter) new d(arrayList));
        this.f67517c.setOnItemClickListener(new b(arrayList, isElite));
    }

    public void e() {
        if (this.f67515a.isShowing()) {
            return;
        }
        this.f67515a.show();
    }
}
