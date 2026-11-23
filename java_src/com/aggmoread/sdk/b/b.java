package com.aggmoread.sdk.b;

import android.app.Activity;
import com.aggmoread.sdk.client.AMAdApkInfo;
import com.aggmoread.sdk.client.AMAdDownloadConfirmListener;
import com.aggmoread.sdk.client.AMError;

/* JADX INFO: loaded from: classes7.dex */
public class b implements com.aggmoread.sdk.z.c.a.a.d.a.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AMAdDownloadConfirmListener f3235a;

    class a implements AMAdDownloadConfirmListener.Controller {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.a.c.b f3236a;

        /* JADX INFO: renamed from: com.aggmoread.sdk.b.b$a$a, reason: collision with other inner class name */
        class C0064a implements com.aggmoread.sdk.z.c.a.a.d.a.c.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ AMAdDownloadConfirmListener.ApkInfoLoadListener f3237a;

            C0064a(a aVar, AMAdDownloadConfirmListener.ApkInfoLoadListener apkInfoLoadListener) {
                this.f3237a = apkInfoLoadListener;
            }

            @Override // com.aggmoread.sdk.z.c.a.a.d.a.c.a
            public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
                this.f3237a.onApkInfoLoadFailed(new AMError(dVar.a(), dVar.b()));
            }

            @Override // com.aggmoread.sdk.z.c.a.a.d.a.c.a
            public void a(com.aggmoread.sdk.z.c.a.a.d.a.b bVar) {
                this.f3237a.onApkInfo(new AMAdApkInfo(bVar.a(), bVar.b(), bVar.h(), bVar.c(), bVar.g(), bVar.f(), bVar.e(), bVar.d()));
            }
        }

        a(b bVar, com.aggmoread.sdk.z.c.a.a.d.a.c.b bVar2) {
            this.f3236a = bVar2;
        }

        @Override // com.aggmoread.sdk.client.AMAdDownloadConfirmListener.Controller
        public void loadAppInfo(AMAdDownloadConfirmListener.ApkInfoLoadListener apkInfoLoadListener) {
            this.f3236a.a(new C0064a(this, apkInfoLoadListener));
        }

        @Override // com.aggmoread.sdk.client.AMAdDownloadConfirmListener.Controller
        public void onCancel() {
            this.f3236a.onCancel();
        }

        @Override // com.aggmoread.sdk.client.AMAdDownloadConfirmListener.Controller
        public void onConfirm() {
            this.f3236a.onConfirm();
        }
    }

    public b(AMAdDownloadConfirmListener aMAdDownloadConfirmListener) {
        this.f3235a = aMAdDownloadConfirmListener;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.c
    public void a(Activity activity, int i10, com.aggmoread.sdk.z.c.a.a.d.a.c.b bVar) {
        this.f3235a.onDownloadConfirm(activity, i10, new a(this, bVar));
    }
}
