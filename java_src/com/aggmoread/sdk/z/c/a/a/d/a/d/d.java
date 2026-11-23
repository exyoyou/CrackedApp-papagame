package com.aggmoread.sdk.z.c.a.a.d.a.d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.client.AMConst;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d extends com.aggmoread.sdk.z.c.a.a.d.a.a implements com.aggmoread.sdk.z.c.a.a.c.p.f {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected static final Object f4470y = new Object();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected static final Object f4471z = new Object();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Map<String, Object> f4472t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public WeakReference f4473u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected com.aggmoread.sdk.z.c.a.a.d.a.c f4474v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public WeakReference<View> f4475w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected boolean f4476x;

    public d(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map) {
        super(eVar, fVar);
        this.f4472t = new HashMap();
        this.f4476x = false;
        if (map != null) {
            a(map);
            map.put(AMConst.ExtrasKey.AD_ID, this.f4423g);
            this.f4472t.putAll(map);
        }
    }

    public abstract View a(@NonNull Context context, @NonNull View view, FrameLayout.LayoutParams layoutParams, List<View> list, View view2, List<View> list2, View view3, @NonNull com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar);

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public View a(@NonNull Context context, @NonNull View view, FrameLayout.LayoutParams layoutParams, List<View> list, View view2, List<View> list2, @NonNull com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
        return a(context, view, layoutParams, list, view2, list2, null, aVar);
    }

    protected ViewGroup b(Context context) {
        return new FrameLayout(context);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public void bindCTAViews(List<View> list) {
    }

    protected com.aggmoread.sdk.z.c.a.a.d.a.c c() {
        com.aggmoread.sdk.z.c.a.a.d.a.c cVar = this.f4474v;
        return cVar != null ? cVar : this.f4425i.f4964t;
    }

    protected boolean d() {
        return false;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public void destroy() {
    }

    protected void e() {
        a(this.f4425i, this.f4426j).a(6).c(com.aggmoread.sdk.z.c.a.a.e.p.b(this.f4425i, this.f4426j, this.f4472t)).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5176n, this.f4423g).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.D, getTitle()).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5179q, com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4425i, this.f4426j, this.f4472t)).b();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public com.aggmoread.sdk.z.c.a.a.c.c g() {
        return null;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public double getAppPrice() {
        return 0.0d;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAppScore() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAppStatus() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getCTAText() {
        return "";
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public long getDownloadCount() {
        return 0L;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public String getID() {
        return this.f4423g;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getPictureHeight() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getPictureWidth() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getProgress() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public abstract String getTitle();

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getVideoCurrentPosition() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public Map<String, Object> h() {
        return com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4472t);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public void pauseVideo() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public View renderView(View view) {
        if (view == null) {
            return null;
        }
        this.f4476x = true;
        return a(view, (View) null, a(this.f4425i.f4948d.getApplicationContext()));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public void resume() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public void resumeVideo() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public void setVideoMute(boolean z10) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public void startVideo() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public void stopVideo() {
    }

    protected ViewGroup a(Context context) {
        return new FrameLayout(context);
    }

    protected void b(int i10) {
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00b3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:28:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:31:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:39:0x0104  */
    /* JADX WARN: Code duplicated, block: B:40:0x0106  */
    /* JADX WARN: Code duplicated, block: B:44:0x011a  */
    /* JADX WARN: Code duplicated, block: B:46:0x012e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0141  */
    /* JADX WARN: Code duplicated, block: B:51:0x014c  */
    /* JADX WARN: Code duplicated, block: B:54:0x016a  */
    /* JADX WARN: Instruction removed from duplicated block: B:27:0x00b5, please report this as an issue */
    protected com.aggmoread.sdk.z.c.a.a.d.b.o.a a(View view, View view2, ViewGroup viewGroup) {
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        com.aggmoread.sdk.z.c.a.a.d.b.o.b bVar;
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar;
        ViewGroup.LayoutParams layoutParams;
        boolean z10;
        View childAt = view;
        Context applicationContext = this.f4425i.f4948d.getApplicationContext();
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar2 = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(applicationContext);
        ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-1, -2);
        ViewGroup.LayoutParams layoutParams3 = new ViewGroup.LayoutParams(-1, -1);
        ViewGroup viewGroup4 = null;
        if (!(childAt instanceof com.aggmoread.sdk.z.c.a.a.d.b.o.a)) {
            if (view.getParent() != null) {
                if (view.getParent() instanceof com.aggmoread.sdk.z.c.a.a.d.b.o.b) {
                    ViewGroup viewGroup5 = (ViewGroup) view.getParent();
                    viewGroup5.removeAllViews();
                    if (viewGroup5.getParent() != null) {
                        ViewGroup viewGroup6 = (ViewGroup) viewGroup5.getParent();
                        viewGroup6.removeAllViews();
                        viewGroup6.addView(childAt);
                        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAG", "tag p a ");
                    }
                }
                viewGroup2 = (ViewGroup) view.getParent();
                com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAG", "P =" + viewGroup2);
                layoutParams2 = view.getLayoutParams();
                if (!(viewGroup2 instanceof com.aggmoread.sdk.z.c.a.a.d.b.o.a)) {
                    if (viewGroup2.getParent() instanceof com.aggmoread.sdk.z.c.a.a.d.b.o.a) {
                        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAG", "PA");
                        aVar2 = (com.aggmoread.sdk.z.c.a.a.d.b.o.a) viewGroup2.getParent();
                    }
                    if (viewGroup2 != null) {
                        viewGroup2.removeView(childAt);
                    } else if (viewGroup3 != null) {
                        childAt = viewGroup3.getChildAt(0);
                        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAG", "F A " + childAt);
                        viewGroup3.removeView(childAt);
                        aVar2.removeAllViews();
                    }
                    if (d() || (childAt instanceof com.aggmoread.sdk.z.c.a.a.d.b.o.b)) {
                        viewGroup.addView(childAt, layoutParams3);
                        aVar2.f5197g = null;
                    } else {
                        com.aggmoread.sdk.z.c.a.a.d.b.o.b bVar2 = new com.aggmoread.sdk.z.c.a.a.d.b.o.b(applicationContext);
                        bVar2.addView(childAt, layoutParams3);
                        viewGroup.addView(bVar2, layoutParams3);
                        aVar2.f5197g = bVar2;
                    }
                    bVar = aVar2.f5197g;
                    if (bVar != null) {
                        if (com.aggmoread.sdk.z.c.a.a.e.p.h(this.f4426j) == -1.0d) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        bVar.f5199b = z10;
                    }
                    viewGroup.setTag(f4470y);
                    aVar2.addView(viewGroup, layoutParams3);
                    this.f4475w = new WeakReference<>(childAt);
                    if (view2 != null) {
                        aVar = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(view2.getContext());
                        layoutParams = new ViewGroup.LayoutParams(-1, -2);
                        if (view2.getParent() != null) {
                            viewGroup4 = (ViewGroup) view2.getParent();
                            layoutParams = view2.getLayoutParams();
                            viewGroup4.removeView(view2);
                        }
                        aVar.addView(view2, layoutParams3);
                        if (viewGroup4 != null) {
                            viewGroup4.addView(aVar, layoutParams);
                        }
                        this.f4432p = new WeakReference<>(aVar);
                    } else {
                        this.f4432p = new WeakReference<>(aVar2);
                    }
                    com.aggmoread.sdk.z.c.a.a.d.b.n.a((View) this.f4432p.get(), this.f4431o);
                    aVar2.addOnAttachStateChangeListener(new com.aggmoread.sdk.z.c.a.a.d.b.o.c());
                    if (viewGroup2 != null) {
                        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAG", "p add ");
                        viewGroup2.addView(aVar2, layoutParams2);
                    }
                    return aVar2;
                }
                aVar2 = (com.aggmoread.sdk.z.c.a.a.d.b.o.a) viewGroup2;
                viewGroup2 = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
            } else {
                viewGroup2 = null;
            }
            viewGroup3 = null;
            if (viewGroup2 != null) {
                viewGroup2.removeView(childAt);
            } else if (viewGroup3 != null) {
                childAt = viewGroup3.getChildAt(0);
                com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAG", "F A " + childAt);
                viewGroup3.removeView(childAt);
                aVar2.removeAllViews();
            }
            if (d()) {
                viewGroup.addView(childAt, layoutParams3);
                aVar2.f5197g = null;
            } else {
                viewGroup.addView(childAt, layoutParams3);
                aVar2.f5197g = null;
            }
            bVar = aVar2.f5197g;
            if (bVar != null) {
                if (com.aggmoread.sdk.z.c.a.a.e.p.h(this.f4426j) == -1.0d) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                bVar.f5199b = z10;
            }
            viewGroup.setTag(f4470y);
            aVar2.addView(viewGroup, layoutParams3);
            this.f4475w = new WeakReference<>(childAt);
            if (view2 != null) {
                aVar = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(view2.getContext());
                layoutParams = new ViewGroup.LayoutParams(-1, -2);
                if (view2.getParent() != null) {
                    viewGroup4 = (ViewGroup) view2.getParent();
                    layoutParams = view2.getLayoutParams();
                    viewGroup4.removeView(view2);
                }
                aVar.addView(view2, layoutParams3);
                if (viewGroup4 != null) {
                    viewGroup4.addView(aVar, layoutParams);
                }
                this.f4432p = new WeakReference<>(aVar);
            } else {
                this.f4432p = new WeakReference<>(aVar2);
            }
            com.aggmoread.sdk.z.c.a.a.d.b.n.a((View) this.f4432p.get(), this.f4431o);
            aVar2.addOnAttachStateChangeListener(new com.aggmoread.sdk.z.c.a.a.d.b.o.c());
            if (viewGroup2 != null) {
                com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAG", "p add ");
                viewGroup2.addView(aVar2, layoutParams2);
            }
            return aVar2;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAG", "A ");
        aVar2 = (com.aggmoread.sdk.z.c.a.a.d.b.o.a) childAt;
        viewGroup2 = (ViewGroup) childAt.findViewWithTag(f4470y);
        viewGroup3 = viewGroup2;
        viewGroup2 = null;
        if (viewGroup2 != null) {
            viewGroup2.removeView(childAt);
        } else if (viewGroup3 != null) {
            childAt = viewGroup3.getChildAt(0);
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAG", "F A " + childAt);
            viewGroup3.removeView(childAt);
            aVar2.removeAllViews();
        }
        if (d()) {
            viewGroup.addView(childAt, layoutParams3);
            aVar2.f5197g = null;
        } else {
            viewGroup.addView(childAt, layoutParams3);
            aVar2.f5197g = null;
        }
        bVar = aVar2.f5197g;
        if (bVar != null) {
            if (com.aggmoread.sdk.z.c.a.a.e.p.h(this.f4426j) == -1.0d) {
                z10 = true;
            } else {
                z10 = false;
            }
            bVar.f5199b = z10;
        }
        viewGroup.setTag(f4470y);
        aVar2.addView(viewGroup, layoutParams3);
        this.f4475w = new WeakReference<>(childAt);
        if (view2 != null) {
            aVar = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(view2.getContext());
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
            if (view2.getParent() != null) {
                viewGroup4 = (ViewGroup) view2.getParent();
                layoutParams = view2.getLayoutParams();
                viewGroup4.removeView(view2);
            }
            aVar.addView(view2, layoutParams3);
            if (viewGroup4 != null) {
                viewGroup4.addView(aVar, layoutParams);
            }
            this.f4432p = new WeakReference<>(aVar);
        } else {
            this.f4432p = new WeakReference<>(aVar2);
        }
        com.aggmoread.sdk.z.c.a.a.d.b.n.a((View) this.f4432p.get(), this.f4431o);
        aVar2.addOnAttachStateChangeListener(new com.aggmoread.sdk.z.c.a.a.d.b.o.c());
        if (viewGroup2 != null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAG", "p add ");
            viewGroup2.addView(aVar2, layoutParams2);
        }
        return aVar2;
    }

    protected void b(int i10, int i11, String str) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public final void a(int i10) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.k(this.f4426j)) {
            b(i10);
        }
    }

    protected void b(ViewGroup viewGroup, com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public final void a(int i10, int i11, String str) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.k(this.f4426j)) {
            b(i10, i11, str);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public void a(@NonNull ViewGroup viewGroup, com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAG", "bindMedia ");
        if (viewGroup != null) {
            Object obj = f4471z;
            ViewGroup viewGroupB = (ViewGroup) viewGroup.findViewWithTag(obj);
            if (viewGroupB == null || !a(viewGroupB)) {
                com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAG", " new ");
                if (viewGroupB != null) {
                    viewGroup.removeView(viewGroupB);
                }
                viewGroupB = b(viewGroup.getContext());
                viewGroupB.setTag(obj);
                viewGroup.addView(viewGroupB, new ViewGroup.LayoutParams(-1, -1));
            }
            b(viewGroupB, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
        com.aggmoread.sdk.z.c.a.a.e.e.a("exposure");
        e();
        if (com.aggmoread.sdk.z.c.a.a.e.p.f()) {
            com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4472t, getTitle());
        }
        if (com.aggmoread.sdk.z.c.a.a.e.p.b(this.f4426j)) {
            aVar.onAdExposed();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
        this.f4474v = cVar;
    }

    protected boolean a(View view) {
        return view instanceof FrameLayout;
    }
}
