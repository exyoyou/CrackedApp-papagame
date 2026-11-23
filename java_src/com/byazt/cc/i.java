package com.byazt.cc;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.ete.ic;
import com.byazt.ete.oz;
import com.byazt.omf.EmptyView;
import com.byazt.omf.rl;
import com.xinzhu.overmind.utils.l;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, l.f90098b, 42})
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.pop.ve f12340a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f12341c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Handler f12342i = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.hkv.c f12343n;
    public SoftReference<com.byazt.cc.c> sp;
    public ic tt;
    public ve uj;
    public FrameLayout ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public SoftReference<com.byazt.ocd.ve> f12344x;

    public interface c {
        void c();

        void c(long j10);

        Context getActivity();

        void tt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve() {
        this.f12342i.postDelayed(new Runnable() { // from class: com.byazt.cc.i.4
            @Override // java.lang.Runnable
            public void run() {
                if (!com.byazt.yzg.a.f22493c) {
                    i.this.tt();
                    return;
                }
                com.byazt.yzg.a.f22493c = false;
                if (i.this.f12340a instanceof com.byazt.wz.c) {
                    ((com.byazt.wz.c) i.this.f12340a).x().c(new com.byazt.av.c() { // from class: com.byazt.cc.i.4.1
                        @Override // com.byazt.av.c
                        public void c() {
                        }

                        @Override // com.byazt.av.c
                        public void tt() {
                        }

                        @Override // com.byazt.av.c
                        public void ve() {
                            i.this.tt();
                        }
                    });
                }
            }
        }, 100L);
    }

    public void c(Context context, ic icVar) {
        this.f12341c = context;
        this.tt = icVar;
        this.ve = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.ve.setLayoutParams(layoutParams);
        oz.tt(this.tt);
    }

    public void tt() {
        ve veVar = this.uj;
        if (veVar != null) {
            veVar.tt();
        }
    }

    public ViewGroup c() {
        return this.ve;
    }

    public void c(String str, int i10, com.byazt.cc.c cVar, com.byazt.ocd.ve veVar) {
        this.sp = new SoftReference<>(cVar);
        if (veVar != null) {
            this.f12344x = new SoftReference<>(veVar);
        }
        HashMap map = new HashMap();
        map.put("splash_show_type", Integer.valueOf(i10));
        com.byazt.hkv.c cVar2 = new com.byazt.hkv.c(this.f12341c, this.tt, str, 4);
        ((com.byazt.nat.c) cVar2.c(com.byazt.nat.c.class)).c(this);
        ((com.byazt.vis.c) cVar2.c(com.byazt.vis.c.class)).c(map);
        SoftReference<com.byazt.ocd.ve> softReference = this.f12344x;
        if (softReference == null) {
            c(str, this.ve, null);
        } else {
            c(str, this.ve, softReference.get());
        }
        ((com.byazt.nat.c) cVar2.c(com.byazt.nat.c.class)).c(this.f12340a);
        com.byazt.nat.c.InterfaceC0376c interfaceC0376c = new com.byazt.nat.c.InterfaceC0376c() { // from class: com.byazt.cc.i.1
            @Override // com.byazt.nat.c.InterfaceC0376c
            public void c(View view, int i11) {
                if (i.this.sp != null && i.this.sp.get() != null) {
                    ((com.byazt.cc.c) i.this.sp.get()).tt();
                }
                i.this.ve();
            }
        };
        ((com.byazt.nat.c) cVar2.c(com.byazt.nat.c.class)).c(interfaceC0376c);
        ic icVar = this.tt;
        if (icVar != null) {
            rl.tt(icVar.lw(), interfaceC0376c, com.byazt.nat.c.InterfaceC0376c.class);
        }
        this.f12343n = cVar2;
        ve veVar2 = this.uj;
        if (veVar2 != null) {
            veVar2.c(cVar2);
        }
    }

    private com.byazt.pop.ve c(ic icVar, String str) {
        if (icVar.i() == 4) {
            return com.byazt.yih.x.c(this.f12341c, icVar, str);
        }
        return null;
    }

    private void c(String str, final ViewGroup viewGroup, com.byazt.ocd.ve veVar) {
        ic icVar = this.tt;
        if (icVar == null || this.f12341c == null || viewGroup == null) {
            return;
        }
        this.f12340a = c(icVar, str);
        EmptyView emptyView = new EmptyView(this.f12341c, viewGroup, this.tt.m17if());
        emptyView.c(this.tt, str);
        emptyView.setAdType(3);
        viewGroup.addView(emptyView);
        if (veVar != null) {
            c(veVar);
        }
        emptyView.setCallback(new EmptyView.c() { // from class: com.byazt.cc.i.2
            @Override // com.byazt.omf.EmptyView.c
            public void c(View view, Map<String, Object> map) {
            }

            @Override // com.byazt.omf.EmptyView.c
            public void tt() {
                if (i.this.f12340a != null) {
                    i.this.f12340a.ve();
                }
            }

            @Override // com.byazt.omf.EmptyView.c
            public void c(boolean z10) {
                if (i.this.f12340a != null && z10) {
                    i.this.f12340a.tt();
                }
                i.this.c(z10);
            }

            @Override // com.byazt.omf.EmptyView.c
            public void c() {
                ViewGroup viewGroup2;
                Context context;
                if (i.this.f12340a != null) {
                    i.this.f12340a.c();
                }
                if (i.this.f12340a == null || (viewGroup2 = viewGroup) == null || viewGroup2.getParent() == null) {
                    return;
                }
                try {
                    context = ((View) viewGroup.getParent()).getContext();
                } catch (Exception unused) {
                    context = null;
                }
                if (context == null || !(context instanceof Activity)) {
                    return;
                }
                i.this.f12340a.c((Activity) context, false);
            }
        });
    }

    private void c(final com.byazt.ocd.ve veVar) {
        com.byazt.pop.ve veVar2 = this.f12340a;
        if (veVar2 == null) {
            return;
        }
        veVar2.c(new com.byazt.pop.c() { // from class: com.byazt.cc.i.3
            @Override // com.byazt.pop.c
            public void c() {
                com.byazt.ocd.ve veVar3 = veVar;
                if (veVar3 != null) {
                    veVar3.c();
                }
            }

            @Override // com.byazt.pop.c
            public void tt(long j10, long j11, String str, String str2) {
                com.byazt.ocd.ve veVar3 = veVar;
                if (veVar3 != null) {
                    veVar3.tt(j10, j11, str, str2);
                }
            }

            @Override // com.byazt.pop.c
            public void ve(long j10, long j11, String str, String str2) {
                com.byazt.ocd.ve veVar3 = veVar;
                if (veVar3 != null) {
                    veVar3.ve(j10, j11, str, str2);
                }
            }

            @Override // com.byazt.pop.c
            public void c(long j10, long j11, String str, String str2) {
                com.byazt.ocd.ve veVar3 = veVar;
                if (veVar3 != null) {
                    veVar3.c(j10, j11, str, str2);
                }
            }

            @Override // com.byazt.pop.c
            public void c(long j10, String str, String str2) {
                com.byazt.ocd.ve veVar3 = veVar;
                if (veVar3 != null) {
                    veVar3.c(j10, str, str2);
                }
            }

            @Override // com.byazt.pop.c
            public void c(String str, String str2) {
                com.byazt.ocd.ve veVar3 = veVar;
                if (veVar3 != null) {
                    veVar3.c(str, str2);
                }
            }
        });
    }

    public void c(int i10) {
        if (i10 == 2 && oz.c(this.tt)) {
            this.uj = new uj();
        }
        ve veVar = this.uj;
        if (veVar != null) {
            veVar.c(this.f12341c, this.ve, this.tt);
            this.uj.c(this.f12343n);
        }
    }

    public void c(com.byazt.un.uj ujVar, c cVar) {
        ve veVar = this.uj;
        if (veVar != null) {
            veVar.c(ujVar, cVar);
        }
    }

    public void c(boolean z10) {
        ve veVar = this.uj;
        if (veVar != null) {
            veVar.c(z10);
        }
    }
}
