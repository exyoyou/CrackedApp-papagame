package com.aggmoread.sdk.z.c.a.a.d.a.d.r.d;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.aggmoread.sdk.z.c.a.a.d.a.c;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.m;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.l;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.baidu.mobads.sdk.api.FeedPortraitVideoView;
import com.baidu.mobads.sdk.api.IFeedPortraitListener;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.windmill.sdk.WMConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends com.aggmoread.sdk.z.c.a.a.d.a.d.b {
    private FeedPortraitVideoView A;
    private AtomicBoolean B;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f4586x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private NativeResponse f4587y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.d.b.o.a f4588z;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.d.a$a, reason: collision with other inner class name */
    class ViewOnAttachStateChangeListenerC0130a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.d.a$a$a, reason: collision with other inner class name */
        class C0131a implements IFeedPortraitListener {
            C0131a() {
            }

            @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
            public void pauseBtnClick() {
                e.b(a.this.f4586x, "pauseBtnClick ");
            }

            @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
            public void playCompletion() {
                e.b(a.this.f4586x, "playCompletion ");
                if (((com.aggmoread.sdk.z.c.a.a.d.a.d.b) a.this).f4452u != null) {
                    ((com.aggmoread.sdk.z.c.a.a.d.a.d.b) a.this).f4452u.onVideoComplete();
                }
            }

            @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
            public void playError() {
                e.b(a.this.f4586x, "playError ");
                if (((com.aggmoread.sdk.z.c.a.a.d.a.d.b) a.this).f4452u != null) {
                    ((com.aggmoread.sdk.z.c.a.a.d.a.d.b) a.this).f4452u.a(new j(-1000, "bd:视频素材播放失败！"));
                }
            }

            @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
            public void playPause() {
                e.b(a.this.f4586x, "playPause ");
                if (((com.aggmoread.sdk.z.c.a.a.d.a.d.b) a.this).f4452u != null) {
                    ((com.aggmoread.sdk.z.c.a.a.d.a.d.b) a.this).f4452u.onVideoPause();
                }
            }

            @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
            public void playRenderingStart() {
                e.b(a.this.f4586x, "playRenderingStart ");
                if (((com.aggmoread.sdk.z.c.a.a.d.a.d.b) a.this).f4452u != null) {
                    ((com.aggmoread.sdk.z.c.a.a.d.a.d.b) a.this).f4452u.onVideoStart();
                }
            }

            @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
            public void playResume() {
                e.b(a.this.f4586x, "playResume ");
                if (((com.aggmoread.sdk.z.c.a.a.d.a.d.b) a.this).f4452u != null) {
                    ((com.aggmoread.sdk.z.c.a.a.d.a.d.b) a.this).f4452u.onVideoStart();
                }
            }
        }

        ViewOnAttachStateChangeListenerC0130a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            e.b(a.this.f4586x, "onViewAttachedToWindow enter ");
            if (!a.this.B.compareAndSet(false, true)) {
                if (a.this.A != null) {
                    a.this.A.play();
                    return;
                }
                return;
            }
            if (a.this.A == null) {
                Object parent = a.this.f4588z.getParent();
                if (parent instanceof ViewGroup) {
                    Activity activityA = p.a((View) parent);
                    e.b(a.this.f4586x, "getView onViewAttachedToWindow " + activityA);
                    if (activityA != null) {
                        a.this.A = new FeedPortraitVideoView(activityA);
                    } else {
                        a.this.A = new FeedPortraitVideoView(a.this.f4425i.f4948d);
                    }
                }
            }
            if (a.this.A != null) {
                a.this.A.setUseDownloadFrame(true);
                a.this.A.setFeedPortraitListener(new C0131a());
                e.b(a.this.f4586x, "portraitVideoView parent " + a.this.A);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                layoutParams.gravity = 17;
                a.this.f4588z.addView(a.this.A, layoutParams);
                ArrayList arrayList = new ArrayList();
                arrayList.add(a.this.A);
                a aVar = a.this;
                aVar.a(aVar.f4588z, arrayList);
                e.b(a.this.f4586x, "render enter ");
                n.a((View) a.this.f4588z, a.this.f4431o);
                a aVar2 = a.this;
                n.a(aVar2.f4425i.f4946b, aVar2.f4431o, com.aggmoread.sdk.z.c.a.a.c.j.INFORMATION_FLOW, aVar2.f4588z, new View[0], new WeakReference(a.this.f4588z), null);
                a aVar3 = a.this;
                n.b(aVar3.f4425i.f4946b, aVar3.f4426j.e(), a.this.f4426j.b());
                byte[] bArrB = a.this.f4425i.f4962r.b();
                if (bArrB != null) {
                    n.a(a.this.f4425i.f4946b, bArrB);
                }
                a aVar4 = a.this;
                n.a(aVar4.f4431o, aVar4.f4426j);
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    class b implements NativeResponse.AdInteractionListener {
        b() {
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onADExposed() {
            e.b(a.this.f4586x, "onADExposed ");
            HashMap map = new HashMap();
            a.this.f4428l = System.currentTimeMillis();
            map.put(l.f5246a, a.this.f4426j.f5002b.a(f.c.f5024f, WMConstants.TIMER_STAGE_NONE));
            n.a((Object) a.this.f4431o, true, true);
            a.this.d();
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onADExposureFailed(int i10) {
            e.a(a.this.f4586x, "onADError %d", Integer.valueOf(i10));
            a.this.a(new j(-1000, String.valueOf(i10)));
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onADStatusChanged() {
            e.b(a.this.f4586x, "onADStatusChanged");
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onAdClick() {
            e.b(a.this.f4586x, "onADClicked");
            a aVar = a.this;
            aVar.f4427k++;
            aVar.j();
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onAdUnionClick() {
        }
    }

    public a(NativeResponse nativeResponse, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar, Map<String, Object> map) {
        super(eVar, fVar, map);
        this.f4586x = "AMDRAWTAGBD";
        new AtomicBoolean();
        this.B = new AtomicBoolean();
        this.f4587y = nativeResponse;
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.b(this.f4451t, com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(nativeResponse), fVar);
        this.f4588z = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(eVar.f4948d);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.a
    public com.aggmoread.sdk.z.c.a.a.d.b.o.a a() {
        e.b(this.f4586x, "ac " + this.f4588z);
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = this.f4588z;
        return aVar != null ? aVar : super.a();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void destroy() {
        if (this.f4587y != null) {
            this.f4587y = null;
            this.A = null;
            this.f4588z = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.b
    protected String getTitle() {
        return this.f4587y.getTitle();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public View getView() {
        e.b(this.f4586x, "getView");
        if (this.f4588z == null) {
            this.f4588z = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(this.f4425i.f4948d.getApplicationContext());
        }
        e.b(this.f4586x, "getView " + this.f4588z);
        this.f4588z.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC0130a());
        return this.f4588z;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void render() {
        e.b(this.f4586x, "render");
        if (this.f4587y == null) {
            e.b(this.f4586x, "render failed");
            return;
        }
        if (this.A == null) {
            this.A = new FeedPortraitVideoView(this.f4425i.f4948d);
        }
        com.aggmoread.sdk.z.c.a.a.c.o.b bVar = this.f4453v;
        if (bVar != null) {
            bVar.onRenderSuccess();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void renderActivity(Activity activity) {
        render();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        com.aggmoread.sdk.z.c.a.a.c.o.b bVar;
        m mVarA = a(this.f4425i, this.f4426j);
        boolean zA = mVarA.a(m.d.f5176n, this.f4423g).a(this.f4426j, a(), this.f4428l, this.f4431o);
        mVarA.b();
        n.a((Object) this.f4431o, false, true);
        if (!zA || (bVar = this.f4453v) == null) {
            return;
        }
        bVar.onAdClicked();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.b
    public void b(int i10) {
        super.b(i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4587y, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.b
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4587y, "203");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(c cVar) {
    }

    protected void a(com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar, List<View> list) {
        if (this.f4587y == null || aVar == null || this.A == null) {
            return;
        }
        this.f4587y.registerViewForInteraction(this.A, list, new ArrayList(), new b());
        this.A.setAdData(this.f4587y);
        this.A.play();
    }
}
