package com.aggmoread.sdk.z.a.l;

import android.media.MediaPlayer;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.aggmoread.sdk.z.a.m.l;
import com.aggmoread.sdk.z.a.u.m;
import com.baidu.mobads.sdk.api.IAdInterListener;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
public class d extends com.aggmoread.sdk.z.a.b implements com.aggmoread.sdk.z.a.l.c, com.aggmoread.sdk.z.a.l.e, View.OnClickListener, com.aggmoread.sdk.z.a.u.d.e {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final String f3673i = "d";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.c.a.b f3674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f3675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.c f3676c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.u.d f3679f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.t.f f3680g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3677d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile int f3678e = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile long f3681h = 0;

    class a implements com.aggmoread.sdk.z.a.t.a.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.t.e f3682a;

        a(com.aggmoread.sdk.z.a.t.e eVar) {
            this.f3682a = eVar;
        }

        @Override // com.aggmoread.sdk.z.a.t.a.g
        public void a(int i10) {
            com.aggmoread.sdk.z.a.t.e eVar = this.f3682a;
            if (eVar == null || eVar.c() || d.this.f3679f == null) {
                return;
            }
            d.this.f3679f.c();
        }
    }

    class b implements com.aggmoread.sdk.z.a.t.f.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.l.e.a f3684a;

        b(d dVar, com.aggmoread.sdk.z.a.l.e.a aVar) {
            this.f3684a = aVar;
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void a(MediaPlayer mediaPlayer) {
            com.aggmoread.sdk.z.a.l.e.a aVar = this.f3684a;
            if (aVar != null) {
                aVar.a();
                this.f3684a.e();
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void b(MediaPlayer mediaPlayer) {
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void c(MediaPlayer mediaPlayer) {
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void d(MediaPlayer mediaPlayer) {
            com.aggmoread.sdk.z.a.l.e.a aVar = this.f3684a;
            if (aVar != null) {
                aVar.d();
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void e(MediaPlayer mediaPlayer) {
            com.aggmoread.sdk.z.a.l.e.a aVar = this.f3684a;
            if (aVar != null) {
                aVar.e();
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void f(MediaPlayer mediaPlayer) {
            com.aggmoread.sdk.z.a.l.e.a aVar = this.f3684a;
            if (aVar != null) {
                aVar.f();
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void g(MediaPlayer mediaPlayer) {
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void a(boolean z10) {
        }
    }

    class c implements MediaPlayer.OnPreparedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.l.e.a f3685a;

        c(d dVar, com.aggmoread.sdk.z.a.l.e.a aVar) {
            this.f3685a = aVar;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            com.aggmoread.sdk.z.a.l.e.a aVar = this.f3685a;
            if (aVar != null) {
                aVar.a(mediaPlayer.getDuration());
                this.f3685a.b();
            }
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.l.d$d, reason: collision with other inner class name */
    class C0081d implements MediaPlayer.OnCompletionListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.l.e.a f3686a;

        C0081d(d dVar, com.aggmoread.sdk.z.a.l.e.a aVar) {
            this.f3686a = aVar;
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            com.aggmoread.sdk.z.a.l.e.a aVar = this.f3686a;
            if (aVar != null) {
                aVar.c();
            }
        }
    }

    class e implements MediaPlayer.OnErrorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.l.e.a f3687a;

        e(d dVar, com.aggmoread.sdk.z.a.l.e.a aVar) {
            this.f3687a = aVar;
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
            com.aggmoread.sdk.z.a.l.e.a aVar = this.f3687a;
            if (aVar == null) {
                return false;
            }
            aVar.a(new com.aggmoread.sdk.z.a.g.f(i10, "extra msg: " + i11));
            return false;
        }
    }

    public d(com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.g.c.a.b bVar) {
        this.f3674a = bVar;
        this.f3676c = cVar;
        cVar.e().k();
        UUID.randomUUID().toString();
    }

    private boolean e() {
        if (com.aggmoread.sdk.z.a.h.a.d().h()) {
            return this.f3677d && this.f3678e < 2 && System.currentTimeMillis() - this.f3681h > 5000;
        }
        return this.f3677d;
    }

    private void g() {
        if (this.f3677d || !com.aggmoread.sdk.z.a.m.b.a(this.f3679f)) {
            return;
        }
        this.f3675b.onADExposed();
        com.aggmoread.sdk.z.a.q.a.a("onAdExposure", this.f3674a.f3405q);
        this.f3677d = true;
        com.aggmoread.sdk.z.a.m.b.a(this.f3679f, (ViewGroup) null, this.f3676c.e());
        this.f3679f.a();
    }

    @Override // com.aggmoread.sdk.z.a.l.c
    public View a(View view, List<View> list, f fVar) {
        view.getContext();
        ArrayList<View> arrayList = new ArrayList<>();
        this.f3675b = fVar;
        if (list != null) {
            com.aggmoread.sdk.z.a.d.d("JHAIMPTAG", "bindView enter, view = " + view + " , clickableViews size = " + list.size());
            arrayList.addAll(list);
        }
        a(arrayList);
        if (view instanceof com.aggmoread.sdk.z.a.u.d) {
            com.aggmoread.sdk.z.a.u.d dVar = (com.aggmoread.sdk.z.a.u.d) view;
            this.f3679f = dVar;
            dVar.a(this);
            this.f3679f.a(this.f3676c.e().m());
            this.f3679f.a(arrayList);
            g();
            return view;
        }
        com.aggmoread.sdk.z.a.u.d dVar2 = new com.aggmoread.sdk.z.a.u.d(view.getContext());
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
        this.f3679f = dVar2;
        dVar2.a(this);
        this.f3679f.a(this.f3676c.e().m());
        this.f3679f.a(arrayList);
        this.f3679f.addView(view);
        return this.f3679f;
    }

    @Override // com.aggmoread.sdk.z.a.l.b
    public com.aggmoread.sdk.z.a.g.a b() {
        return this.f3674a.f3410v;
    }

    @Override // com.aggmoread.sdk.z.a.l.b
    public List<String> c() {
        return this.f3674a.n();
    }

    @Override // com.aggmoread.sdk.z.a.u.d.e
    public void d() {
        g();
        com.aggmoread.sdk.z.a.d.d(f3673i, "dispatchDraw enter , SdkHelper.isShown(nativeAdViewExt) = " + com.aggmoread.sdk.z.a.m.b.a(this.f3679f));
    }

    public int f() {
        return this.f3674a.p();
    }

    @Override // com.aggmoread.sdk.z.a.l.b
    public String getDesc() {
        List<String> listG = this.f3674a.g();
        if (listG == null || listG.size() <= 0) {
            return null;
        }
        return listG.get(0);
    }

    @Override // com.aggmoread.sdk.z.a.l.b
    public String getIconUrl() {
        List<String> listM = this.f3674a.m();
        if (listM == null || listM.size() <= 0) {
            return null;
        }
        return listM.get(0);
    }

    @Override // com.aggmoread.sdk.z.a.l.b
    public String getImageUrl() {
        List<String> listN = this.f3674a.n();
        if (listN == null || listN.size() <= 0) {
            return null;
        }
        return listN.get(0);
    }

    @Override // com.aggmoread.sdk.z.a.l.b
    public String getTitle() {
        return this.f3674a.f3391c;
    }

    @Override // com.aggmoread.sdk.z.a.l.e
    public int getVideoCurrentPosition() {
        com.aggmoread.sdk.z.a.t.f fVar = this.f3680g;
        if (fVar != null) {
            return fVar.f();
        }
        return 0;
    }

    @Override // com.aggmoread.sdk.z.a.l.e
    public int getVideoDuration() {
        com.aggmoread.sdk.z.a.t.f fVar = this.f3680g;
        if (fVar != null) {
            return fVar.e();
        }
        return 0;
    }

    @Override // com.aggmoread.sdk.z.a.l.c
    public boolean isAppAd() {
        return this.f3674a.t();
    }

    @Override // com.aggmoread.sdk.z.a.l.c
    public boolean isVideoAd() {
        return !TextUtils.isEmpty(this.f3674a.q());
    }

    @Override // android.view.View.OnClickListener, com.aggmoread.sdk.z.a.u.d.e
    public void onClick(View view) {
        if (!e()) {
            com.aggmoread.sdk.z.a.d.d("JHAIMPTAG", "abort click , reason: hasExporsed = " + this.f3677d + " , isClicked = " + this.f3678e);
            return;
        }
        this.f3681h = System.currentTimeMillis();
        this.f3678e++;
        this.f3675b.onADClicked();
        com.aggmoread.sdk.z.a.g.d dVar = this.f3679f.f4083c;
        String str = f3673i;
        com.aggmoread.sdk.z.a.d.d(str, "feedsListFrameLayout2 juHeApiAdUrlDefine = " + dVar);
        com.aggmoread.sdk.z.a.d.d(str, "action e x = " + (((float) dVar.f3419a) / ((float) dVar.f3423e)) + " ,y = " + (((float) dVar.f3420b) / ((float) dVar.f3424f)));
        com.aggmoread.sdk.z.a.q.a.a(IAdInterListener.AdCommandType.AD_CLICK, this.f3674a.f3406r, dVar);
        l.a(view, this.f3676c, this.f3674a, dVar, this.f3675b);
    }

    @Override // com.aggmoread.sdk.z.a.u.d.e
    public void onScrollChanged() {
        g();
    }

    @Override // com.aggmoread.sdk.z.a.l.e
    public void pauseVideo() {
        com.aggmoread.sdk.z.a.d.d("JHAIMPTAG", "pauseVideo");
        com.aggmoread.sdk.z.a.t.f fVar = this.f3680g;
        if (fVar != null) {
            fVar.b();
        }
    }

    @Override // com.aggmoread.sdk.z.a.l.c
    public void resume() {
        com.aggmoread.sdk.z.a.d.d("JHAIMPTAG", "resume");
        resumeVideo();
    }

    @Override // com.aggmoread.sdk.z.a.l.e
    public void resumeVideo() {
        com.aggmoread.sdk.z.a.d.d("JHAIMPTAG", "resumeVideo");
        com.aggmoread.sdk.z.a.t.f fVar = this.f3680g;
        if (fVar == null || !fVar.a()) {
            return;
        }
        this.f3680g.d();
    }

    @Override // com.aggmoread.sdk.z.a.l.e
    public void startVideo() {
        com.aggmoread.sdk.z.a.d.d("JHAIMPTAG", "startVideo");
        com.aggmoread.sdk.z.a.t.f fVar = this.f3680g;
        if (fVar != null) {
            fVar.d();
        }
    }

    @Override // com.aggmoread.sdk.z.a.l.e
    public void stopVideo() {
        com.aggmoread.sdk.z.a.d.d("JHAIMPTAG", "stopVideo");
        com.aggmoread.sdk.z.a.t.f fVar = this.f3680g;
        if (fVar != null) {
            fVar.q();
        }
    }

    @Override // com.aggmoread.sdk.z.a.u.d.e
    public void a(int i10) {
        com.aggmoread.sdk.z.a.d.d("JHAIMPTAG", "onWindowVisibilityChanged = " + i10);
        if (this.f3677d || i10 != 0) {
            return;
        }
        g();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0089 A[PHI: r8
      0x0089: PHI (r8v1 com.aggmoread.sdk.z.a.t.e) = (r8v0 com.aggmoread.sdk.z.a.t.e), (r8v14 com.aggmoread.sdk.z.a.t.e) binds: [B:23:0x004d, B:28:0x0063] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.aggmoread.sdk.z.a.l.e
    public void a(m mVar, com.aggmoread.sdk.z.a.t.e eVar, com.aggmoread.sdk.z.a.l.e.a aVar) {
        boolean z10;
        String str;
        if (this.f3679f == null) {
            str = "container shouldn't be null!";
        } else if (mVar == null) {
            str = "media view shouldn't be null!";
        } else if (mVar.getVisibility() != 0) {
            str = "media view should be visible!";
        } else if (!isVideoAd()) {
            str = "The native ad doesn't contain video!";
        } else {
            if (com.aggmoread.sdk.z.a.m.b.a(this.f3679f, mVar)) {
                boolean z11 = true;
                boolean z12 = com.aggmoread.sdk.z.a.p.e.c(com.aggmoread.sdk.z.a.h.a.d().a()) == 100;
                com.aggmoread.sdk.z.a.t.f fVarB = mVar.b();
                com.aggmoread.sdk.z.a.t.a aVarA = mVar.a();
                if (aVarA instanceof com.aggmoread.sdk.z.a.t.b) {
                    if (eVar == null && this.f3676c.e() != null) {
                        eVar = this.f3676c.e().p();
                    }
                    if (eVar != null) {
                        com.aggmoread.sdk.z.a.t.b bVar = (com.aggmoread.sdk.z.a.t.b) aVarA;
                        bVar.c(eVar.d());
                        bVar.b(eVar.c());
                        boolean zB = eVar.b();
                        int iA = eVar.a();
                        if (iA != 1) {
                            z10 = iA != 2 ? z12 : false;
                            z11 = zB;
                        } else {
                            z11 = zB;
                            z10 = true;
                        }
                    } else {
                        z10 = z12;
                    }
                } else {
                    z10 = z12;
                }
                aVarA.a(new a(eVar));
                if (fVarB != null) {
                    this.f3680g = fVarB;
                    fVarB.a(z11 ? 0.0f : 1.0f);
                    fVarB.a(new b(this, aVar));
                    fVarB.a(new c(this, aVar));
                    fVarB.a(new C0081d(this, aVar));
                    fVarB.a(new e(this, aVar));
                    String strQ = this.f3674a.q();
                    if (TextUtils.isEmpty(strQ)) {
                        return;
                    }
                    fVarB.a(strQ);
                    if (!z10) {
                        aVarA.a(this.f3674a.f3411w);
                        return;
                    } else {
                        fVarB.requestFocus();
                        fVarB.d();
                        return;
                    }
                }
                return;
            }
            str = "The media view not in container !";
        }
        com.aggmoread.sdk.z.a.d.d("JHAIMPTAG", str);
    }

    private void a(ArrayList<View> arrayList) {
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            View view = arrayList.get(i10);
            if (view != null) {
                view.setFocusable(true);
                view.setClickable(true);
            }
        }
    }
}
