package com.join.android.app.component.album;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a extends PopupWindow {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static e f34892f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f34893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f34894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ListView f34895c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.join.android.app.component.album.lib.b f34896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f34897e;

    /* JADX INFO: renamed from: com.join.android.app.component.album.a$a, reason: collision with other inner class name */
    class ViewOnClickListenerC0642a implements View.OnClickListener {
        ViewOnClickListenerC0642a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.dismiss();
        }
    }

    class b implements com.join.android.app.component.album.lib.b.g {

        /* JADX INFO: renamed from: com.join.android.app.component.album.a$b$a, reason: collision with other inner class name */
        class C0643a implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Object f34900b;

            C0643a(final Object val$result) {
                this.f34900b = val$result;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
                e eVar = a.f34892f;
                if (eVar != null) {
                    eVar.a((com.join.android.app.component.album.lib.a) ((List) this.f34900b).get(position));
                }
            }
        }

        b() {
        }

        @Override // com.join.android.app.component.album.lib.b.g
        public void a() {
        }

        @Override // com.join.android.app.component.album.lib.b.g
        public void b(Object item) {
        }

        @Override // com.join.android.app.component.album.lib.b.g
        public void c(final Object result) {
            com.join.android.app.component.album.adapter.a aVar = new com.join.android.app.component.album.adapter.a(a.this.f34893a, (List) result);
            a.this.f34895c.setAdapter((ListAdapter) aVar);
            aVar.notifyDataSetChanged();
            a.this.f34895c.setOnItemClickListener(new C0643a(result));
        }
    }

    class c implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f34902b;

        c(final List val$list) {
            this.f34902b = val$list;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            e eVar = a.f34892f;
            if (eVar != null) {
                eVar.a((com.join.android.app.component.album.lib.a) this.f34902b.get(position));
            }
        }
    }

    class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            if (event.getAction() != 4) {
                return false;
            }
            a.this.dismiss();
            return true;
        }
    }

    public interface e {
        void a(com.join.android.app.component.album.lib.a folder);
    }

    public a(Context context, View parent, int width, int height, com.join.android.app.component.album.lib.b mScaner) {
        super(parent, width, height, true);
        this.f34893a = context;
        this.f34894b = parent;
        this.f34896d = mScaner;
        e();
        g();
        d();
    }

    private void d() {
        this.f34895c = (ListView) this.f34894b.findViewById(R.id.list);
        this.f34894b.findViewById(R.id.main).setOnClickListener(new ViewOnClickListenerC0642a());
        ((RelativeLayout.LayoutParams) this.f34895c.getLayoutParams()).height = (int) (((double) this.f34897e) * 0.6d);
        com.join.android.app.component.album.lib.b bVar = this.f34896d;
        if (bVar == null) {
            com.join.android.app.component.album.lib.b bVar2 = new com.join.android.app.component.album.lib.b(this.f34893a);
            this.f34896d = bVar2;
            bVar2.l(new b());
        } else {
            List<com.join.android.app.component.album.lib.a> listF = bVar.f();
            com.join.android.app.component.album.adapter.a aVar = new com.join.android.app.component.album.adapter.a(this.f34893a, listF);
            this.f34895c.setAdapter((ListAdapter) aVar);
            aVar.notifyDataSetChanged();
            this.f34895c.setOnItemClickListener(new c(listF));
        }
        c();
    }

    private void e() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) this.f34893a).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f34897e = displayMetrics.heightPixels;
    }

    private void g() {
        setBackgroundDrawable(new BitmapDrawable());
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new d());
    }

    public void c() {
    }

    public void f(e l10) {
        f34892f = l10;
    }

    public void h() {
        List<com.join.android.app.component.album.lib.a> listF = this.f34896d.f();
        com.join.android.app.component.album.adapter.a aVar = (com.join.android.app.component.album.adapter.a) this.f34895c.getAdapter();
        aVar.c(listF);
        aVar.notifyDataSetChanged();
    }
}
