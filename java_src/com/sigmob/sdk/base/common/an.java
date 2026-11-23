package com.sigmob.sdk.base.common;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.byazt.bv.BaseConstants;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.windad.WindAds;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes5.dex */
public class an {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f78990a = new b() { // from class: com.sigmob.sdk.base.common.an.1
        @Override // com.sigmob.sdk.base.common.an.b
        public void a(String url, am urlAction) {
        }

        @Override // com.sigmob.sdk.base.common.an.b
        public void b(String url, am lastFailedUrlAction) {
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c f78991b = new c() { // from class: com.sigmob.sdk.base.common.an.2
        @Override // com.sigmob.sdk.base.common.an.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.an.c
        public void b() {
        }

        @Override // com.sigmob.sdk.base.common.an.c
        public void c() {
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final EnumSet<am> f78992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f78993d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f78994e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c f78995f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final BaseAdUnit f78996g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f78997h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f78998i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f78999j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f79000k;

    /* JADX INFO: renamed from: com.sigmob.sdk.base.common.an$3, reason: invalid class name */
    class AnonymousClass3 implements ao.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ am f79001a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f79002b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ an f79003c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Uri f79004d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f79005e;

        AnonymousClass3(final am val$followDeepLink, final Context val$context, final an val$finalUrlHandler, final Uri val$deeplinkUri, final String val$finalHandleUrL) {
            this.f79001a = val$followDeepLink;
            this.f79002b = val$context;
            this.f79003c = val$finalUrlHandler;
            this.f79004d = val$deeplinkUri;
            this.f79005e = val$finalHandleUrL;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str, am amVar) {
            try {
                an.this.f78993d.a(str, amVar);
            } catch (Throwable unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(String str, am amVar) {
            try {
                an.this.f78993d.b(str, amVar);
            } catch (Throwable unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(String str, am amVar) {
            try {
                an.this.f78993d.a(str, amVar);
            } catch (Throwable unused) {
            }
        }

        @Override // com.sigmob.sdk.base.common.ao.a
        public void a(final String resolvedUrl) {
            final am amVar = this.f79001a;
            if (!resolvedUrl.toLowerCase().startsWith("http")) {
                amVar = am.FOLLOW_DEEP_LINK;
            }
            try {
                amVar.a(this.f79002b, Uri.parse(resolvedUrl), this.f79003c, an.this.f78996g);
                WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.common.r0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f79261b.d(resolvedUrl, amVar);
                    }
                });
            } catch (Exception unused) {
                WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.common.s0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f79266b.c(resolvedUrl, amVar);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str, am amVar) {
            try {
                an.this.f78993d.b(str, amVar);
            } catch (Throwable unused) {
            }
        }

        @Override // com.sigmob.sdk.base.common.ao.a
        public void a(String message, Throwable throwable) {
            try {
                this.f79001a.a(this.f79002b, this.f79004d, this.f79003c, an.this.f78996g);
                Handler handler = WindAds.sharedAds().getHandler();
                final String str = this.f79005e;
                final am amVar = this.f79001a;
                handler.post(new Runnable() { // from class: com.sigmob.sdk.base.common.p0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f79239b.b(str, amVar);
                    }
                });
            } catch (Exception unused) {
                Handler handler2 = WindAds.sharedAds().getHandler();
                final String str2 = this.f79005e;
                final am amVar2 = this.f79001a;
                handler2.post(new Runnable() { // from class: com.sigmob.sdk.base.common.q0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f79252b.a(str2, amVar2);
                    }
                });
            }
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private EnumSet<am> f79010a = EnumSet.of(am.NOOP);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b f79011b = an.f78990a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private b f79012c = an.f78990a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c f79013d = an.f78991b;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f79014e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f79015f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private BaseAdUnit f79016g;

        public a a(am first, am... others) {
            this.f79010a = EnumSet.of(first, others);
            return this;
        }

        public a b(b resultActions) {
            this.f79012c = resultActions;
            return this;
        }

        public a a(b resultActions) {
            this.f79011b = resultActions;
            return this;
        }

        public a b(boolean enable) {
            this.f79015f = enable;
            return this;
        }

        public a a(c sigmobSchemeListener) {
            this.f79013d = sigmobSchemeListener;
            return this;
        }

        public a a(BaseAdUnit adunit) {
            this.f79016g = adunit;
            return this;
        }

        public a a(boolean skip) {
            this.f79014e = skip;
            return this;
        }

        public an a() {
            return new an(this.f79010a, this.f79011b, this.f79012c, this.f79013d, this.f79014e, this.f79016g, this.f79015f);
        }
    }

    public interface b {
        void a(String url, am urlAction);

        void b(String url, am lastFailedUrlAction);
    }

    public interface c {
        void a();

        void b();

        void c();
    }

    private an(EnumSet<am> supportedUrlActions, b resultActions, b deepLinkResultActions, c sigmobSchemeListener, boolean skipShowSigmobBrowser, BaseAdUnit adUnit, boolean withoOutresolvedUrl) {
        this.f78992c = EnumSet.copyOf((EnumSet) supportedUrlActions);
        this.f78993d = resultActions;
        this.f78994e = deepLinkResultActions;
        this.f78995f = sigmobSchemeListener;
        this.f78997h = skipShowSigmobBrowser;
        this.f78996g = adUnit;
        this.f78998i = false;
        this.f78999j = false;
        this.f79000k = withoOutresolvedUrl;
    }

    public void a(Context context, String url) {
        Preconditions.NoThrow.checkNotNull(context);
        b(context, url);
    }

    private void a(String url, am urlAction, String message, Throwable throwable) {
        Preconditions.NoThrow.checkNotNull(message);
        if (urlAction == null) {
            urlAction = am.NOOP;
        }
        SigmobLog.d(message, throwable);
        this.f78993d.b(url, urlAction);
    }

    public boolean b(Context context, String url) {
        am amVar = am.NOOP;
        final String strMacroProcess = null;
        for (final am amVar2 : this.f78992c) {
            String strA = amVar2.a(this.f78996g);
            int interactionType = this.f78996g.getInteractionType();
            if (!TextUtils.isEmpty(url) && interactionType != 7) {
                strA = url;
            }
            if (!TextUtils.isEmpty(strA)) {
                strMacroProcess = this.f78996g.getMacroCommon().macroProcess(strA);
                try {
                    Uri uri = Uri.parse(strMacroProcess);
                    AndroidMarket androidMarket = this.f78996g.getAndroidMarket();
                    if (amVar2 != am.FOLLOW_DEEP_LINK || !uri.getScheme().equalsIgnoreCase(BaseConstants.SCHEME_MARKET) || androidMarket == null || TextUtils.isEmpty(androidMarket.market_url)) {
                        if (amVar2.a(uri, interactionType)) {
                            if (!this.f79000k && am.OPEN_WITH_BROWSER == amVar2) {
                                ao.a(strMacroProcess, new AnonymousClass3(amVar2, context, this, uri, strMacroProcess));
                                return true;
                            }
                            amVar2.a(context, uri, this, this.f78996g);
                            WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.common.an.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    an.this.f78993d.a(strMacroProcess, amVar2);
                                }
                            });
                            return true;
                        }
                    }
                } catch (Throwable unused) {
                    this.f78993d.b(strMacroProcess, amVar2);
                }
            }
        }
        try {
            a(strMacroProcess, amVar, "Link ignored. Unable to handle url: ", null);
            return false;
        } catch (Throwable th) {
            SigmobLog.e("handleResolvedUrl error", th);
            return false;
        }
    }

    boolean a() {
        return this.f78997h;
    }
}
