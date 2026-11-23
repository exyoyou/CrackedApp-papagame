package com.sigmob.sdk.base.views;

import android.text.TextUtils;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class l implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List<String> f80147a = Arrays.asList("image/jpeg", "image/png", "image/bmp", "image/gif");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List<String> f80148b = Arrays.asList("application/x-javascript");
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f80149c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f80150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f80151e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f80152f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f80153g;

    /* JADX INFO: renamed from: com.sigmob.sdk.base.views.l$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f80154a;

        static {
            int[] iArr = new int[b.values().length];
            f80154a = iArr;
            try {
                iArr[b.IFRAME_RESOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f80154a[b.HTML_RESOURCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f80154a[b.STATIC_RESOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f80154a[b.NATIVE_RESOURCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f80154a[b.URL_RESOURCE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum a {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    public enum b {
        STATIC_RESOURCE,
        HTML_RESOURCE,
        IFRAME_RESOURCE,
        NATIVE_RESOURCE,
        URL_RESOURCE
    }

    public l(String resource, b type, a creativeType, int width, int height) {
        Preconditions.NoThrow.checkNotNull(resource);
        Preconditions.NoThrow.checkNotNull(type);
        Preconditions.NoThrow.checkNotNull(creativeType);
        this.f80149c = resource;
        this.f80150d = type;
        this.f80151e = creativeType;
        this.f80152f = width;
        this.f80153g = height;
    }

    public String a() {
        return this.f80149c;
    }

    public b b() {
        return this.f80150d;
    }

    public a c() {
        return this.f80151e;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0039  */
    /* JADX WARN: Code duplicated, block: B:26:0x003f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0048 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x0049 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x004a  */
    /* JADX WARN: Code duplicated, block: B:32:0x004e  */
    public String a(String clickThroughUrl, String webViewClickThroughUrl) {
        a aVar;
        a aVar2;
        int i10 = AnonymousClass1.f80154a[this.f80150d.ordinal()];
        if (i10 == 1 || i10 == 2) {
            aVar = a.IMAGE;
            aVar2 = this.f80151e;
            if (aVar == aVar2) {
                SigmobLog.d("CreativeType.IMAGE");
                if (TextUtils.isEmpty(webViewClickThroughUrl)) {
                    return clickThroughUrl;
                }
                return null;
            }
            if (a.JAVASCRIPT == aVar2) {
                SigmobLog.d("CreativeType.JAVASCRIPT");
                return webViewClickThroughUrl;
            }
        } else {
            if (i10 == 3) {
                a aVar3 = a.IMAGE;
                a aVar4 = this.f80151e;
                if (aVar3 == aVar4) {
                    SigmobLog.d("CreativeType.IMAGE");
                    return TextUtils.isEmpty(clickThroughUrl) ? webViewClickThroughUrl : clickThroughUrl;
                }
                if (a.JAVASCRIPT != aVar4) {
                    return null;
                }
                SigmobLog.d("CreativeType.JAVASCRIPT");
                return webViewClickThroughUrl;
            }
            if (i10 == 4 || i10 == 5) {
                aVar = a.IMAGE;
                aVar2 = this.f80151e;
                if (aVar == aVar2) {
                    SigmobLog.d("CreativeType.IMAGE");
                    if (TextUtils.isEmpty(webViewClickThroughUrl)) {
                        return clickThroughUrl;
                    }
                    return null;
                }
                if (a.JAVASCRIPT == aVar2) {
                    SigmobLog.d("CreativeType.JAVASCRIPT");
                    return webViewClickThroughUrl;
                }
            }
        }
        return null;
    }

    public void a(m webView) {
        StringBuilder sb2;
        String str;
        String string;
        String str2;
        Preconditions.NoThrow.checkNotNull(webView);
        int i10 = AnonymousClass1.f80154a[this.f80150d.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                string = this.f80149c;
            } else {
                if (i10 != 3) {
                    if (i10 == 4) {
                        if (!this.f80149c.toLowerCase().startsWith("file://")) {
                            str2 = "file://" + this.f80149c;
                        }
                        webView.loadUrl(str2);
                        return;
                    }
                    if (i10 != 5) {
                        return;
                    }
                    str2 = this.f80149c;
                    webView.loadUrl(str2);
                    return;
                }
                a aVar = this.f80151e;
                if (aVar == a.IMAGE) {
                    sb2 = new StringBuilder();
                    sb2.append("<html><head></head><body style=\"margin:0;padding:0\"><img src=\"");
                    sb2.append(this.f80149c);
                    str = "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>";
                } else {
                    if (aVar != a.JAVASCRIPT) {
                        return;
                    }
                    sb2 = new StringBuilder();
                    sb2.append("<script src=\"");
                    sb2.append(this.f80149c);
                    str = "\"></script>";
                }
            }
            webView.a(string);
        }
        sb2 = new StringBuilder();
        sb2.append("<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"");
        sb2.append(this.f80152f);
        sb2.append("\" height=\"");
        sb2.append(this.f80153g);
        sb2.append("\" src=\"");
        sb2.append(this.f80149c);
        str = "\"></iframe>";
        sb2.append(str);
        string = sb2.toString();
        webView.a(string);
    }
}
