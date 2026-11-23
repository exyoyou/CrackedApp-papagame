package com.airsaid.pickerviewlibrary.widget;

import android.view.View;
import com.airsaid.pickerviewlibrary.R;
import com.airsaid.pickerviewlibrary.widget.wheelview.WheelView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f6228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WheelView f6229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WheelView f6230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WheelView f6231d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<T> f6232e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<ArrayList<T>> f6233f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayList<ArrayList<ArrayList<T>>> f6234g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f6235h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private i.c f6236i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private i.c f6237j;

    class a implements i.c {
        a() {
        }

        @Override // i.c
        public void a(int i10) {
            int currentItem;
            if (b.this.f6233f != null) {
                currentItem = b.this.f6230c.getCurrentItem();
                if (currentItem >= ((ArrayList) b.this.f6233f.get(i10)).size() - 1) {
                    currentItem = ((ArrayList) b.this.f6233f.get(i10)).size() - 1;
                }
                b.this.f6230c.setAdapter(new h.a((ArrayList) b.this.f6233f.get(i10)));
                b.this.f6230c.setCurrentItem(currentItem);
            } else {
                currentItem = 0;
            }
            if (b.this.f6234g != null) {
                b.this.f6237j.a(currentItem);
            }
        }
    }

    /* JADX INFO: renamed from: com.airsaid.pickerviewlibrary.widget.b$b, reason: collision with other inner class name */
    class C0197b implements i.c {
        C0197b() {
        }

        @Override // i.c
        public void a(int i10) {
            if (b.this.f6234g != null) {
                int currentItem = b.this.f6229b.getCurrentItem();
                if (currentItem >= b.this.f6234g.size() - 1) {
                    currentItem = b.this.f6234g.size() - 1;
                }
                if (i10 >= ((ArrayList) b.this.f6233f.get(currentItem)).size() - 1) {
                    i10 = ((ArrayList) b.this.f6233f.get(currentItem)).size() - 1;
                }
                int currentItem2 = b.this.f6231d.getCurrentItem();
                if (currentItem2 >= ((ArrayList) ((ArrayList) b.this.f6234g.get(currentItem)).get(i10)).size() - 1) {
                    currentItem2 = ((ArrayList) ((ArrayList) b.this.f6234g.get(currentItem)).get(i10)).size() - 1;
                }
                b.this.f6231d.setAdapter(new h.a((ArrayList) ((ArrayList) b.this.f6234g.get(b.this.f6229b.getCurrentItem())).get(i10)));
                b.this.f6231d.setCurrentItem(currentItem2);
            }
        }
    }

    public b(View view) {
        this.f6228a = view;
        t(view);
    }

    private void i(int i10, int i11, int i12) {
        ArrayList<ArrayList<T>> arrayList = this.f6233f;
        if (arrayList != null) {
            this.f6230c.setAdapter(new h.a(arrayList.get(i10)));
            this.f6230c.setCurrentItem(i11);
        }
        ArrayList<ArrayList<ArrayList<T>>> arrayList2 = this.f6234g;
        if (arrayList2 != null) {
            this.f6231d.setAdapter(new h.a(arrayList2.get(i10).get(i11)));
            this.f6231d.setCurrentItem(i12);
        }
    }

    public int[] g() {
        return new int[]{this.f6229b.getCurrentItem(), this.f6230c.getCurrentItem(), this.f6231d.getCurrentItem()};
    }

    public View h() {
        return this.f6228a;
    }

    public void j(int i10, int i11, int i12) {
        if (this.f6235h) {
            i(i10, i11, i12);
        }
        this.f6229b.setCurrentItem(i10);
        this.f6230c.setCurrentItem(i11);
        this.f6231d.setCurrentItem(i12);
    }

    public void k(boolean z10) {
        this.f6229b.setCyclic(z10);
        this.f6230c.setCyclic(z10);
        this.f6231d.setCyclic(z10);
    }

    public void l(boolean z10, boolean z11, boolean z12) {
        this.f6229b.setCyclic(z10);
        this.f6230c.setCyclic(z11);
        this.f6231d.setCyclic(z12);
    }

    public void m(String str, String str2, String str3) {
        if (str != null) {
            this.f6229b.setLabel(str);
        }
        if (str2 != null) {
            this.f6230c.setLabel(str2);
        }
        if (str3 != null) {
            this.f6231d.setLabel(str3);
        }
    }

    public void n(boolean z10) {
        this.f6230c.setCyclic(z10);
    }

    public void o(boolean z10) {
        this.f6231d.setCyclic(z10);
    }

    public void p(ArrayList<T> arrayList) {
        q(arrayList, null, null, false);
    }

    public void q(ArrayList<T> arrayList, ArrayList<ArrayList<T>> arrayList2, ArrayList<ArrayList<ArrayList<T>>> arrayList3, boolean z10) {
        this.f6235h = z10;
        this.f6232e = arrayList;
        this.f6233f = arrayList2;
        this.f6234g = arrayList3;
        int i10 = arrayList3 == null ? 8 : 4;
        if (arrayList2 == null) {
            i10 = 12;
        }
        WheelView wheelView = (WheelView) this.f6228a.findViewById(R.id.options1);
        this.f6229b = wheelView;
        wheelView.setAdapter(new h.a(this.f6232e, i10));
        this.f6229b.setCurrentItem(0);
        WheelView wheelView2 = (WheelView) this.f6228a.findViewById(R.id.options2);
        this.f6230c = wheelView2;
        ArrayList<ArrayList<T>> arrayList4 = this.f6233f;
        if (arrayList4 != null) {
            wheelView2.setAdapter(new h.a(arrayList4.get(0)));
        }
        this.f6230c.setCurrentItem(this.f6229b.getCurrentItem());
        WheelView wheelView3 = (WheelView) this.f6228a.findViewById(R.id.options3);
        this.f6231d = wheelView3;
        ArrayList<ArrayList<ArrayList<T>>> arrayList5 = this.f6234g;
        if (arrayList5 != null) {
            wheelView3.setAdapter(new h.a(arrayList5.get(0).get(0)));
        }
        WheelView wheelView4 = this.f6231d;
        wheelView4.setCurrentItem(wheelView4.getCurrentItem());
        if (this.f6233f == null) {
            this.f6230c.setVisibility(8);
        }
        if (this.f6234g == null) {
            this.f6231d.setVisibility(8);
        }
        this.f6236i = new a();
        this.f6237j = new C0197b();
        if (arrayList2 != null && z10) {
            this.f6229b.setOnItemSelectedListener(this.f6236i);
        }
        if (arrayList3 == null || !z10) {
            return;
        }
        this.f6230c.setOnItemSelectedListener(this.f6237j);
    }

    public void r(ArrayList<T> arrayList, ArrayList<ArrayList<T>> arrayList2, boolean z10) {
        q(arrayList, arrayList2, null, z10);
    }

    public void s(float f10) {
        WheelView wheelView = this.f6229b;
        if (wheelView != null) {
            wheelView.setTextSize(f10);
        }
        WheelView wheelView2 = this.f6230c;
        if (wheelView2 != null) {
            wheelView2.setTextSize(f10);
        }
        WheelView wheelView3 = this.f6231d;
        if (wheelView3 != null) {
            wheelView3.setTextSize(f10);
        }
    }

    public void t(View view) {
        this.f6228a = view;
    }
}
