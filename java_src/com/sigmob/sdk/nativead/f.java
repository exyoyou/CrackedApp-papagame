package com.sigmob.sdk.nativead;

import android.os.Bundle;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.volley.toolbox.DownloadItem;
import com.czhj.volley.toolbox.FileDownloadRequest;
import com.czhj.volley.toolbox.FileDownloader;
import com.sigmob.sdk.base.BaseAdActivity;
import com.sigmob.sdk.base.common.AdActivity;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class f extends com.sigmob.sdk.base.common.y {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NativeAdBroadcastReceiver f81417c;

    protected f(com.sigmob.sdk.base.common.p listener) {
        super(listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        File adPrivacyTemplateFile = this.f79299b.getAdPrivacyTemplateFile();
        if (adPrivacyTemplateFile == null || adPrivacyTemplateFile.exists()) {
            return;
        }
        DownloadItem downloadItem = new DownloadItem();
        downloadItem.url = this.f79299b.getadPrivacy().privacy_template_url;
        downloadItem.filePath = adPrivacyTemplateFile.getAbsolutePath();
        downloadItem.type = DownloadItem.FileType.OTHER;
        FileDownloader fileDownloaderA = com.sigmob.sdk.base.common.t.a();
        if (fileDownloaderA == null) {
            return;
        }
        fileDownloaderA.add(downloadItem, new FileDownloadRequest.FileDownloadListener() { // from class: com.sigmob.sdk.nativead.f.1
            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void downloadProgress(DownloadItem item, long totalSize, long readSize) {
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onCancel(DownloadItem item) {
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onErrorResponse(DownloadItem item) {
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onSuccess(DownloadItem item) {
            }
        });
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.sigmob.sdk.base.common.y
    public void b(BaseAdUnit baseAdUnit) {
        NativeAdBroadcastReceiver nativeAdBroadcastReceiver = this.f81417c;
        if (nativeAdBroadcastReceiver != null) {
            nativeAdBroadcastReceiver.b(nativeAdBroadcastReceiver);
            this.f81417c = null;
        }
        super.b(baseAdUnit);
    }

    @Override // com.sigmob.sdk.base.common.y
    protected void a(com.sigmob.sdk.base.common.p customEventInterstitialListener) {
        ThreadPoolFactory.getFixIOExecutor().submit(new Runnable() { // from class: com.sigmob.sdk.nativead.r0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81508b.a();
            }
        });
    }

    @Override // com.sigmob.sdk.base.common.y
    public void a(BaseAdUnit baseAdUnit, Bundle option) {
        super.a(baseAdUnit, option);
        if (this.f81417c == null) {
            com.sigmob.sdk.base.common.p pVar = this.f79298a;
            if (pVar instanceof g) {
                NativeAdBroadcastReceiver nativeAdBroadcastReceiver = new NativeAdBroadcastReceiver((g) pVar, baseAdUnit.getUuid());
                this.f81417c = nativeAdBroadcastReceiver;
                nativeAdBroadcastReceiver.a(nativeAdBroadcastReceiver);
            }
        }
        BaseAdActivity.a(com.sigmob.sdk.b.e(), AdActivity.class, baseAdUnit.getUuid(), option, BaseAdActivity.f78793e);
    }

    @Override // com.sigmob.sdk.base.common.y
    protected boolean a(BaseAdUnit adUnit) {
        if (adUnit.getMaterial() == null) {
            return false;
        }
        return a(adUnit.getMaterial());
    }

    private static boolean a(MaterialMeta material) {
        return true;
    }
}
