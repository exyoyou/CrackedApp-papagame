package com.aggmoread.sdk.z.b.c;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.aggmoread.sdk.z.a.l.c;
import com.aggmoread.sdk.z.a.l.f;
import com.aggmoread.sdk.z.a.t.e;
import com.aggmoread.sdk.z.a.u.d;
import com.aggmoread.sdk.z.a.u.l;
import com.aggmoread.sdk.z.a.u.m;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.bykv.vk.component.ttvideo.player.C;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
public class b extends com.aggmoread.sdk.z.a.b implements c, d.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.aggmoread.sdk.z.b.a.a.C0106a.C0107a f4288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f4289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.b.a.a f4290c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f4293f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.aggmoread.sdk.z.b.e.a f4294g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f4295h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private WeakReference<Activity> f4296i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f4291d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4292e = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.aggmoread.sdk.z.b.e.a.b f4297j = new C0112b();

    class a extends com.aggmoread.sdk.z.a.j.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.d f4298b;

        a(com.aggmoread.sdk.z.a.g.d dVar) {
            this.f4298b = dVar;
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void a() {
            super.a();
            com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "apkIsDownLoading  ");
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void b() {
            super.b();
            com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "onStartDownload  ");
            com.aggmoread.sdk.z.a.q.a.a("onStartDownload", b.this.f4288a.f4271j, this.f4298b);
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void c(long j10) {
            super.c(j10);
            com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "onStartApkInstaller  ");
            com.aggmoread.sdk.z.a.q.a.a("onStartApkInstaller", b.this.f4288a.f4272k, this.f4298b);
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void a(long j10) {
            super.a(j10);
            com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "onApkInstalled  ");
            com.aggmoread.sdk.z.a.q.a.a("onApkInstalled", b.this.f4288a.f4276o, this.f4298b);
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void b(long j10) {
            super.b(j10);
            com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "onDownloadSuccess  ");
            com.aggmoread.sdk.z.a.q.a.a("onDownloadCompleted", b.this.f4288a.f4275n, this.f4298b);
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void a(long j10, int i10, String str) {
            super.a(j10, i10, str);
            com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "onApkInstalledError  ");
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void b(long j10, int i10, String str) {
            super.b(j10, i10, str);
            com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "onDownloadFail  ");
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.c.b$b, reason: collision with other inner class name */
    class C0112b implements com.aggmoread.sdk.z.b.e.a.b {
        C0112b() {
        }

        @Override // com.aggmoread.sdk.z.b.e.a.b
        public void a() {
            b bVar = b.this;
            bVar.a(bVar.f4293f.f4083c);
        }

        @Override // com.aggmoread.sdk.z.b.e.a.b
        public void onDismiss() {
            if (b.this.f4294g != null) {
                b.this.f4294g.a();
                b.this.f4294g = null;
            }
        }

        @Override // com.aggmoread.sdk.z.b.e.a.b
        public void onRenderSuccess() {
            b.this.f4295h = true;
        }
    }

    public b(com.aggmoread.sdk.z.b.a.a aVar, com.aggmoread.sdk.z.b.a.a.C0106a.C0107a c0107a) {
        this.f4288a = c0107a;
        this.f4290c = aVar;
        aVar.e().k();
        UUID.randomUUID().toString();
    }

    private boolean e() {
        if (com.aggmoread.sdk.z.a.h.a.d().h()) {
            return this.f4291d && !this.f4292e;
        }
        return this.f4291d;
    }

    private Activity f() {
        WeakReference<Activity> weakReference = this.f4296i;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private void g() {
        com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "retry shown = " + com.aggmoread.sdk.z.a.m.b.a(this.f4293f) + ", has " + this.f4291d);
        if (this.f4291d || !com.aggmoread.sdk.z.a.m.b.a(this.f4293f)) {
            return;
        }
        this.f4289b.onADExposed();
        com.aggmoread.sdk.z.a.q.a.a("onAdExposure", this.f4288a.f4273l);
        this.f4291d = true;
        this.f4293f.a();
    }

    @Override // com.aggmoread.sdk.z.a.l.c
    public View a(View view, List<View> list, f fVar) {
        if (!TextUtils.isEmpty(this.f4288a.f4277p)) {
            this.f4294g = new com.aggmoread.sdk.z.b.e.a(this.f4297j);
            Activity activityF = f();
            if (activityF == null && (view.getContext() instanceof Activity)) {
                activityF = (Activity) view.getContext();
            }
            this.f4294g.a(activityF, this.f4288a.f4277p);
        }
        ArrayList<View> arrayList = new ArrayList<>();
        this.f4289b = fVar;
        if (list != null) {
            com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "bindView enter, view = " + view + " , clickableViews size = " + list.size());
            arrayList.addAll(list);
        }
        a(arrayList);
        if (!(view instanceof d)) {
            d dVar = new d(view.getContext());
            this.f4293f = dVar;
            dVar.a(this);
            this.f4293f.a(this.f4290c.e().m());
            this.f4293f.a(arrayList);
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
            this.f4293f.addView(view);
            return this.f4293f;
        }
        d dVar2 = (d) view;
        this.f4293f = dVar2;
        dVar2.a(this);
        this.f4293f.a(this.f4290c.e().m());
        this.f4293f.a(arrayList);
        com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "bindView abort, title = " + getTitle());
        g();
        return view;
    }

    @Override // com.aggmoread.sdk.z.a.l.b
    public com.aggmoread.sdk.z.a.g.a b() {
        return null;
    }

    @Override // com.aggmoread.sdk.z.a.u.d.e
    public void d() {
        com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "dispatchDraw enter , SdkHelper.isShown(nativeAdViewExt) = " + com.aggmoread.sdk.z.a.m.b.a(this.f4293f));
        g();
    }

    @Override // com.aggmoread.sdk.z.a.l.b
    public String getDesc() {
        return this.f4288a.f4263b;
    }

    @Override // com.aggmoread.sdk.z.a.l.b
    public String getIconUrl() {
        String str = this.f4288a.f4264c;
        return (str == null || !str.isEmpty()) ? getImageUrl() : this.f4288a.f4264c;
    }

    @Override // com.aggmoread.sdk.z.a.l.b
    public String getImageUrl() {
        List<String> list = this.f4288a.f4268g;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return list.get(0);
    }

    @Override // com.aggmoread.sdk.z.a.l.b
    public String getTitle() {
        return this.f4288a.f4262a;
    }

    @Override // com.aggmoread.sdk.z.a.l.e
    public int getVideoCurrentPosition() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.a.l.e
    public int getVideoDuration() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.a.l.c
    public boolean isAppAd() {
        return this.f4288a.c();
    }

    @Override // com.aggmoread.sdk.z.a.l.c
    public boolean isVideoAd() {
        return false;
    }

    @Override // com.aggmoread.sdk.z.a.u.d.e
    public void onClick(View view) {
        List<String> listA;
        String str;
        if (!e()) {
            com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "abort click , reason: hasExporsed = " + this.f4291d + " , isClicked = " + this.f4292e);
            return;
        }
        this.f4292e = true;
        this.f4289b.onADClicked();
        com.aggmoread.sdk.z.a.g.d dVar = this.f4293f.f4083c;
        com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "feedsListFrameLayout2 adUrlDefine = " + dVar);
        com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "action e x = " + (((float) dVar.f3419a) / ((float) dVar.f3423e)) + " ,y = " + (((float) dVar.f3420b) / ((float) dVar.f3424f)));
        com.aggmoread.sdk.z.a.q.a.a(IAdInterListener.AdCommandType.AD_CLICK, this.f4288a.f4274m, dVar);
        String str2 = this.f4288a.f4266e;
        if (str2 != null && !TextUtils.isEmpty(str2)) {
            try {
                Intent intent = new Intent();
                intent.setData(Uri.parse(this.f4288a.f4266e));
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                this.f4290c.e().l().startActivity(intent);
                com.aggmoread.sdk.z.a.q.a.a("onStartAppSuccess", this.f4288a.a(3), dVar);
                com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "onStartAppSuccess");
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                if (e10 instanceof ActivityNotFoundException) {
                    listA = this.f4288a.a(0);
                    str = "onAppNotExist";
                } else {
                    listA = this.f4288a.a(2);
                    str = "onStartAppFailed";
                }
                com.aggmoread.sdk.z.a.q.a.a(str, listA, dVar);
                com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", str);
            }
        }
        if (!this.f4288a.c()) {
            try {
                b(dVar);
                return;
            } catch (l e11) {
                e11.printStackTrace();
                return;
            }
        }
        if (TextUtils.isEmpty(this.f4288a.f4277p)) {
            a(dVar);
            return;
        }
        if (this.f4294g == null) {
            com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "PP null");
            this.f4294g = new com.aggmoread.sdk.z.b.e.a(this.f4297j);
            Activity activityF = f();
            if (activityF == null && (view.getContext() instanceof Activity)) {
                activityF = (Activity) view.getContext();
            }
            this.f4294g.a(activityF, this.f4288a.f4277p);
        }
        this.f4294g.a(view.getContext(), view);
    }

    @Override // com.aggmoread.sdk.z.a.u.d.e
    public void onScrollChanged() {
        com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "scroll ");
        g();
    }

    @Override // com.aggmoread.sdk.z.a.l.e
    public void pauseVideo() {
    }

    @Override // com.aggmoread.sdk.z.a.l.c
    public void resume() {
    }

    @Override // com.aggmoread.sdk.z.a.l.e
    public void resumeVideo() {
    }

    @Override // com.aggmoread.sdk.z.a.l.e
    public void startVideo() {
    }

    @Override // com.aggmoread.sdk.z.a.l.e
    public void stopVideo() {
    }

    @Override // com.aggmoread.sdk.z.a.l.b
    public List<String> c() {
        List<String> list = this.f4288a.f4268g;
        return list == null ? new ArrayList() : list;
    }

    private void b(com.aggmoread.sdk.z.a.g.d dVar) {
        String str = this.f4288a.f4265d;
        if (TextUtils.isEmpty(str)) {
            this.f4289b.a(new com.aggmoread.sdk.z.a.g.f(50008, "跳转地址异常"));
            return;
        }
        com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "startWebActivity = " + str);
        String strA = com.aggmoread.sdk.z.a.q.a.a(str, dVar);
        com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "startWebActivity final = " + strA);
        com.aggmoread.sdk.z.a.u.c.a(this.f4290c.e().l(), this.f4288a.f4262a, strA, com.aggmoread.sdk.z.a.u.c.a.f4080a);
    }

    @Override // com.aggmoread.sdk.z.a.u.d.e
    public void a(int i10) {
        com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "onWindowVisibilityChanged = " + i10);
        if (this.f4291d || i10 != 0) {
            return;
        }
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.aggmoread.sdk.z.a.g.d dVar) {
        Intent intentA;
        Context contextA = com.aggmoread.sdk.z.a.h.a.d().a();
        String str = this.f4288a.f4270i;
        if (!com.aggmoread.sdk.z.a.m.d.c(contextA, str) || (intentA = com.aggmoread.sdk.z.a.m.d.a(contextA, str)) == null) {
            a(this.f4288a.a(), dVar);
            return;
        }
        com.aggmoread.sdk.z.a.d.d("DSPNVEIFACEIMPL", "intent = " + intentA);
        intentA.addFlags(C.ENCODING_PCM_MU_LAW);
        contextA.startActivity(intentA);
    }

    @Override // com.aggmoread.sdk.z.a.l.e
    public void a(m mVar, e eVar, com.aggmoread.sdk.z.a.l.e.a aVar) {
    }

    private void a(String str, com.aggmoread.sdk.z.a.g.d dVar) {
        try {
            com.aggmoread.sdk.z.b.a.a.C0106a.C0107a c0107a = this.f4288a;
            new com.aggmoread.sdk.z.a.j.b(this.f4290c.e().l(), this.f4290c.e().k(), new a(dVar)).a(str, c0107a.f4270i, c0107a.f4262a);
        } catch (Throwable th) {
            th.printStackTrace();
        }
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
