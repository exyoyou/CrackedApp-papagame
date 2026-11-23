package com.beizi.fusion.widget.dialog.dislike;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.beizi.fusion.R;
import com.beizi.fusion.tool.ar;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class a extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static h f10942b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<b> f10943a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f10944c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10945d;

    /* JADX INFO: renamed from: com.beizi.fusion.widget.dialog.dislike.a$a, reason: collision with other inner class name */
    public static class C0247a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RecyclerView f10946a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private View f10947b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private a f10948c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c f10949d;

        public C0247a(Context context) {
            this.f10948c = new a(context, R.style.beizi_custom_dialog);
            View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.beizi_dislike_dialog, (ViewGroup) null, false);
            this.f10947b = viewInflate;
            this.f10948c.addContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
            this.f10946a = (RecyclerView) this.f10947b.findViewById(R.id.beizi_dislike_reasons_list_recycleview);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
            linearLayoutManager.setOrientation(1);
            this.f10946a.setLayoutManager(linearLayoutManager);
            a.f10942b.a(new e() { // from class: com.beizi.fusion.widget.dialog.dislike.a.a.1
                @Override // com.beizi.fusion.widget.dialog.dislike.a.e
                public void a(View view, int i10) {
                    if (C0247a.this.f10948c != null) {
                        C0247a.this.f10948c.dismiss();
                    }
                    if (C0247a.this.f10949d != null) {
                        C0247a.this.f10949d.a();
                    }
                }
            });
            this.f10946a.setAdapter(a.f10942b);
            WindowManager.LayoutParams attributes = this.f10948c.getWindow().getAttributes();
            Point point = new Point();
            this.f10948c.getWindow().getWindowManager().getDefaultDisplay().getSize(point);
            attributes.width = (int) (((double) point.x) * 0.85d);
            attributes.gravity = 17;
            this.f10948c.getWindow().setAttributes(attributes);
        }

        public C0247a a(c cVar) {
            this.f10949d = cVar;
            return this;
        }

        public a a() {
            this.f10948c.setContentView(this.f10947b);
            this.f10948c.setCancelable(true);
            this.f10948c.setCanceledOnTouchOutside(true);
            return this.f10948c;
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f10951a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f10952b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        List<d> f10953c;

        b() {
        }

        public List<d> a() {
            return this.f10953c;
        }

        public String b() {
            return this.f10952b;
        }

        public void a(List<d> list) {
            this.f10953c = list;
        }

        public void a(int i10) {
            this.f10951a = i10;
        }

        public void a(String str) {
            this.f10952b = str;
        }
    }

    public interface c {
        void a();
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f10955a;

        d() {
        }

        public String a() {
            return this.f10955a;
        }

        public void a(String str) {
            this.f10955a = str;
        }
    }

    public interface e {
        void a(View view, int i10);
    }

    public interface f {
        void a(View view, int i10);
    }

    public class g extends RecyclerView.Adapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<d> f10958b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Context f10959c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private f f10960d;

        /* JADX INFO: renamed from: com.beizi.fusion.widget.dialog.dislike.a$g$a, reason: collision with other inner class name */
        class C0248a extends RecyclerView.ViewHolder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f10963a;

            public C0248a(@NonNull View view) {
                super(view);
                this.f10963a = (TextView) view.findViewById(R.id.beizi_dislike_item_multi_two_recycleview_item);
            }
        }

        public g(Context context, List<d> list) {
            this.f10959c = context;
            this.f10958b = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f10958b.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, @SuppressLint({"RecyclerView"}) final int i10) {
            C0248a c0248a = (C0248a) viewHolder;
            c0248a.f10963a.setText(this.f10958b.get(i10).a());
            ar.a(c0248a.itemView, "#FFFAF6F6", 0, "", 10);
            c0248a.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.widget.dialog.dislike.a.g.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (g.this.f10960d != null) {
                        g.this.f10960d.a(view, i10);
                    }
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return new C0248a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.beizi_dislike_item_multi_two_recycle_item, viewGroup, false));
        }

        public void a(f fVar) {
            this.f10960d = fVar;
        }
    }

    class h extends RecyclerView.Adapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public e f10965a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Context f10967c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<b> f10968d;

        /* JADX INFO: renamed from: com.beizi.fusion.widget.dialog.dislike.a$h$a, reason: collision with other inner class name */
        public class C0249a extends RecyclerView.ViewHolder {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private TextView f10974b;

            public C0249a(@NonNull View view) {
                super(view);
                this.f10974b = (TextView) view.findViewById(R.id.beizi_dislike_item_multi_one_title);
            }
        }

        public class b extends RecyclerView.ViewHolder {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private TextView f10976b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private RecyclerView f10977c;

            public b(@NonNull View view) {
                super(view);
                this.f10976b = (TextView) view.findViewById(R.id.beizi_dislike_item_multi_two_title);
                this.f10977c = (RecyclerView) view.findViewById(R.id.beizi_dislike_item_multi_two_recycleview);
            }
        }

        public h(Context context, List<b> list) {
            this.f10967c = context;
            this.f10968d = list;
        }

        public void a(e eVar) {
            this.f10965a = eVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f10968d.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            return (this.f10968d.get(i10).a() == null || this.f10968d.get(i10).a().size() <= 0) ? a.this.f10944c : a.this.f10945d;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull final RecyclerView.ViewHolder viewHolder, int i10) {
            if (viewHolder instanceof C0249a) {
                ((C0249a) viewHolder).f10974b.setText(this.f10968d.get(i10).b());
            } else {
                b bVar = (b) viewHolder;
                bVar.f10976b.setText(this.f10968d.get(i10).b());
                bVar.f10977c.setLayoutManager(new FlowLayoutManager());
                a aVar = a.this;
                g gVar = aVar.new g(aVar.getContext(), this.f10968d.get(i10).a());
                bVar.f10977c.setAdapter(gVar);
                gVar.a(new f() { // from class: com.beizi.fusion.widget.dialog.dislike.a.h.1
                    @Override // com.beizi.fusion.widget.dialog.dislike.a.f
                    public void a(View view, int i11) {
                        e eVar = h.this.f10965a;
                        if (eVar != null) {
                            eVar.a(view, i11);
                        }
                    }
                });
                bVar.f10977c.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.beizi.fusion.widget.dialog.dislike.a.h.2
                    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
                        super.getItemOffsets(rect, view, recyclerView, state);
                        rect.bottom = 30;
                        rect.left = 60;
                    }
                });
            }
            if (this.f10965a != null) {
                viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.widget.dialog.dislike.a.h.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        int layoutPosition = viewHolder.getLayoutPosition();
                        if (a.this.f10945d != h.this.getItemViewType(layoutPosition)) {
                            h.this.f10965a.a(viewHolder.itemView, layoutPosition);
                        }
                    }
                });
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return i10 == a.this.f10944c ? new C0249a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.beizi_dislike_item_multi_one, viewGroup, false)) : new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.beizi_dislike_item_multi_two, viewGroup, false));
        }
    }

    public a(@NonNull Context context, int i10) {
        super(context, i10);
        this.f10943a = null;
        this.f10944c = 1;
        this.f10945d = 2;
        List<b> listB = b();
        this.f10943a = listB;
        f10942b = new h(context, listB);
    }

    private List<b> b() {
        ArrayList arrayList = new ArrayList();
        b bVar = new b();
        bVar.a("内容无法正常展示（卡顿、黑白屏）");
        bVar.a(this.f10944c);
        arrayList.add(bVar);
        b bVar2 = new b();
        bVar2.a("不感兴趣");
        bVar2.a(this.f10944c);
        arrayList.add(bVar2);
        b bVar3 = new b();
        bVar3.a("无法关闭");
        bVar3.a(this.f10944c);
        arrayList.add(bVar3);
        ArrayList arrayList2 = new ArrayList();
        d dVar = new d();
        dVar.a("疑似抄袭");
        arrayList2.add(dVar);
        d dVar2 = new d();
        dVar2.a("虚假欺诈");
        arrayList2.add(dVar2);
        d dVar3 = new d();
        dVar3.a("违法违规");
        arrayList2.add(dVar3);
        d dVar4 = new d();
        dVar4.a("低俗色情");
        arrayList2.add(dVar4);
        b bVar4 = new b();
        bVar4.a("举报广告");
        bVar4.a(arrayList2);
        bVar4.a(this.f10944c);
        arrayList.add(bVar4);
        return arrayList;
    }
}
