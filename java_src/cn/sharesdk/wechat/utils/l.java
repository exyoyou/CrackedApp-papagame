package cn.sharesdk.wechat.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.ShareSDKFileProvider;
import com.mob.MobSDK;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.DH;
import com.mob.tools.utils.ResHelper;
import com.tencent.mm.opensdk.channel.MMessageActV2;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static l f3020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f3021b = new j();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private k f3022c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f3023d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f3024e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3025f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3026g;

    private l() {
    }

    public boolean b() {
        return true;
    }

    public void c(final k kVar) throws Throwable {
        final Platform.ShareParams shareParamsA = kVar.a();
        final int shareType = shareParamsA.getShareType();
        final PlatformActionListener platformActionListenerC = kVar.c();
        c(new ShareSDKCallback<Integer>() { // from class: cn.sharesdk.wechat.utils.l.1
            @Override // cn.sharesdk.framework.ShareSDKCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onCallback(Integer num) {
                try {
                    if (shareType != 11 || num.intValue() >= 620756993) {
                        l.this.a(kVar, shareType, shareParamsA, platformActionListenerC);
                    } else {
                        SSDKLog.b().a("not support share miniprogram", new Object[0]);
                        l.this.a(kVar, 4, shareParamsA, platformActionListenerC);
                    }
                } catch (Throwable th) {
                    SSDKLog.b().a("wx share " + th, new Object[0]);
                    PlatformActionListener platformActionListener = platformActionListenerC;
                    if (platformActionListener != null) {
                        platformActionListener.onError(kVar.b(), 9, th);
                    }
                }
            }
        });
    }

    public void d(final ShareSDKCallback<Boolean> shareSDKCallback) {
        try {
            DH.requester(MobSDK.getContext()).getPInfoForce(true, "com.tencent.mm", 0).request(new DH.DHResponder() { // from class: cn.sharesdk.wechat.utils.l.8
                @Override // com.mob.tools.utils.DH.DHResponder
                public void onResponse(DH.DHResponse dHResponse) {
                    String str;
                    try {
                        str = dHResponse.getPInfoForce(new int[0]).versionName;
                        SSDKLog.b().b("wechat versionName ==>> " + str);
                    } catch (Throwable th) {
                        SSDKLog.b().a(th);
                        str = "0";
                    }
                    String[] strArrSplit = str.split("_")[0].split("\\.");
                    int length = strArrSplit.length;
                    int[] iArr = new int[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        try {
                            iArr[i10] = ResHelper.parseInt(strArrSplit[i10]);
                        } catch (Throwable th2) {
                            SSDKLog.b().a(th2);
                            iArr[i10] = 0;
                        }
                    }
                    if (length < 3) {
                        ShareSDKCallback shareSDKCallback2 = shareSDKCallback;
                        if (shareSDKCallback2 != null) {
                            shareSDKCallback2.onCallback(Boolean.FALSE);
                            return;
                        }
                        return;
                    }
                    int i11 = iArr[0];
                    if (i11 == 7 && iArr[1] == 0 && iArr[2] >= 13) {
                        ShareSDKCallback shareSDKCallback3 = shareSDKCallback;
                        if (shareSDKCallback3 != null) {
                            shareSDKCallback3.onCallback(Boolean.TRUE);
                            return;
                        }
                        return;
                    }
                    if (i11 >= 8) {
                        ShareSDKCallback shareSDKCallback4 = shareSDKCallback;
                        if (shareSDKCallback4 != null) {
                            shareSDKCallback4.onCallback(Boolean.TRUE);
                            return;
                        }
                        return;
                    }
                    ShareSDKCallback shareSDKCallback5 = shareSDKCallback;
                    if (shareSDKCallback5 != null) {
                        shareSDKCallback5.onCallback(Boolean.FALSE);
                    }
                }
            });
        } catch (Throwable unused) {
            if (shareSDKCallback != null) {
                shareSDKCallback.onCallback(Boolean.FALSE);
            }
        }
    }

    private void c(Context context, String str, String str2, String str3, String str4, int i10, k kVar) throws Throwable {
        WXFileObject wXFileObject = new WXFileObject();
        wXFileObject.filePath = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        if (!TextUtils.isEmpty(str)) {
            wXMediaMessage.title = str;
        }
        if (!TextUtils.isEmpty(str2)) {
            wXMediaMessage.description = str2;
        }
        wXMediaMessage.mediaObject = wXFileObject;
        if (!TextUtils.isEmpty(str4)) {
            wXMediaMessage.thumbData = a(context, str4, false);
        }
        a(wXMediaMessage, "filedata", i10, kVar);
    }

    public void b(String str) {
        this.f3023d = str;
    }

    public void b(k kVar) throws Throwable {
        this.f3022c = kVar;
        g gVar = new g();
        Platform.ShareParams shareParamsA = kVar.a();
        String strValueOf = String.valueOf(shareParamsA.getWxTemplateid());
        String strValueOf2 = String.valueOf(shareParamsA.getWxReserved());
        int scence = shareParamsA.getScence();
        gVar.f2992b = strValueOf;
        gVar.f2991a = scence;
        gVar.f2993c = strValueOf2;
        this.f3021b.a(gVar);
    }

    public static l a() {
        if (f3020a == null) {
            f3020a = new l();
        }
        return f3020a;
    }

    public void a(String str) {
        this.f3024e = str;
    }

    public void a(boolean z10) {
        this.f3025f = z10;
    }

    private void b(Context context, String str, String str2, String str3, int i10, k kVar, Platform.ShareParams shareParams) throws Throwable {
        WXImageObject wXImageObject = new WXImageObject();
        wXImageObject.imagePath = a(new File(str3));
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.mediaObject = wXImageObject;
        if (i10 != 0) {
            wXMediaMessage.title = str;
            wXMediaMessage.description = str2;
        } else {
            if (!TextUtils.isEmpty(shareParams.getEntranceMiniProgramUsername())) {
                wXImageObject.entranceMiniProgramUsername = shareParams.getEntranceMiniProgramUsername();
            }
            if (!TextUtils.isEmpty(shareParams.getEntranceMiniProgramPath())) {
                wXImageObject.entranceMiniProgramPath = shareParams.getEntranceMiniProgramPath();
            }
        }
        wXMediaMessage.thumbData = a(context, str3, false);
        a(wXMediaMessage, "img", i10, kVar);
    }

    private void c(Context context, String str, String str2, String str3, Bitmap bitmap, int i10, k kVar) throws Throwable {
        WXFileObject wXFileObject = new WXFileObject();
        wXFileObject.filePath = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXFileObject;
        wXMediaMessage.thumbData = a(context, bitmap, false);
        a(wXMediaMessage, "filedata", i10, kVar);
    }

    public void a(int i10) {
        this.f3026g = i10;
    }

    public void a(k kVar) throws Throwable {
        this.f3022c = kVar;
        b bVar = new b();
        bVar.f2977a = "snsapi_userinfo";
        bVar.f2978b = "sharesdk_wechat_auth";
        this.f3021b.a((m) bVar, false);
    }

    public void a(ShareSDKCallback<Boolean> shareSDKCallback) {
        this.f3021b.a(shareSDKCallback);
    }

    public void a(k kVar, Platform.ShareParams shareParams, PlatformActionListener platformActionListener) throws Throwable {
        Platform platformB = kVar.b();
        String str = ((Integer) shareParams.get("scene", Integer.class)).intValue() == 1 ? "com.tencent.mm.ui.tools.ShareToTimeLineUI" : "com.tencent.mm.ui.tools.ShareImgUI";
        cn.sharesdk.framework.utils.g gVar = new cn.sharesdk.framework.utils.g();
        gVar.a("com.tencent.mm", str);
        gVar.a(shareParams, platformB);
        HashMap<String, Object> map = new HashMap<>();
        map.put("ShareParams", shareParams);
        platformActionListener.onComplete(platformB, 9, map);
    }

    public boolean c(String str) {
        return this.f3021b.a(str);
    }

    @SuppressLint({"WrongConstant"})
    public void c(final ShareSDKCallback<Integer> shareSDKCallback) {
        DH.requester(MobSDK.getContext()).getAInfoForPkg("com.tencent.mm", 128).request(new DH.DHResponder() { // from class: cn.sharesdk.wechat.utils.l.7
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                try {
                    shareSDKCallback.onCallback(Integer.valueOf(dHResponse.getAInfoForPkg(new int[0]).metaData.getInt("com.tencent.mm.BuildInfo.OPEN_SDK_VERSION", 0)));
                } catch (Throwable th) {
                    SSDKLog.b().a("WechatHelper getWXAppSupportAPI() get from metaData failed : " + th, new Object[0]);
                    shareSDKCallback.onCallback(0);
                }
            }
        });
    }

    public boolean c() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, String str, String str2, String str3, String str4, int i10, k kVar) throws Throwable {
        WXWebpageObject wXWebpageObject = new WXWebpageObject();
        wXWebpageObject.webpageUrl = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXWebpageObject;
        if (str4 != null && new File(str4).exists()) {
            byte[] bArrA = a(context, str4, false);
            wXMediaMessage.thumbData = bArrA;
            if (bArrA != null) {
                if (bArrA.length > 32768) {
                    throw new RuntimeException("checkArgs fail, thumbData is too large: " + wXMediaMessage.thumbData.length + " > 32768");
                }
            } else {
                throw new RuntimeException("checkArgs fail, thumbData is null");
            }
        }
        a(wXMediaMessage, "webpage", i10, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final k kVar, int i10, Platform.ShareParams shareParams, final PlatformActionListener platformActionListener) throws Throwable {
        File parentFile;
        final Platform platformB = kVar.b();
        final String title = shareParams.getTitle();
        final String text = shareParams.getText();
        final int scence = shareParams.getScence();
        final String imagePath = shareParams.getImagePath();
        String imageFileProviderPath = shareParams.getImageFileProviderPath();
        final String imageUrl = shareParams.getImageUrl();
        final Bitmap imageData = shareParams.getImageData();
        String musicUrl = shareParams.getMusicUrl();
        String url = shareParams.getUrl();
        String filePath = shareParams.getFilePath();
        String extInfo = shareParams.getExtInfo();
        switch (i10) {
            case 1:
                a(title, text, scence, kVar);
                return;
            case 2:
                if (imagePath != null && imagePath.length() > 0) {
                    b(MobSDK.getContext(), title, text, imagePath, scence, kVar, shareParams);
                    return;
                }
                if (imageFileProviderPath != null && imageFileProviderPath.length() > 0) {
                    a(MobSDK.getContext(), title, text, imageFileProviderPath, scence, kVar, shareParams);
                    return;
                }
                if (imageData != null && !imageData.isRecycled()) {
                    a(MobSDK.getContext(), title, text, imageData, scence, kVar, shareParams);
                    return;
                }
                if (imageUrl != null && imageUrl.length() > 0) {
                    String strDownloadBitmap = BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl);
                    try {
                        if (!TextUtils.isEmpty(strDownloadBitmap) && (parentFile = new File(strDownloadBitmap).getParentFile()) != null && parentFile.isDirectory()) {
                            File file = new File(parentFile.getAbsolutePath(), ".nomedia");
                            if (!file.exists() || !file.isFile()) {
                                file.createNewFile();
                            }
                        }
                        break;
                    } catch (Throwable th) {
                        SSDKLog.b().a("when share iamge wechat that create nomedia catch " + th, new Object[0]);
                    }
                    b(MobSDK.getContext(), title, text, strDownloadBitmap, scence, kVar, shareParams);
                    return;
                }
                b(MobSDK.getContext(), title, text, "", scence, kVar, shareParams);
                return;
            case 3:
            case 10:
            default:
                if (platformActionListener != null) {
                    platformActionListener.onError(platformB, 9, new IllegalArgumentException("shareType = " + i10));
                    return;
                }
                return;
            case 4:
                platformB.getShortLintk(url, false, new ShareSDKCallback<String>() { // from class: cn.sharesdk.wechat.utils.l.4
                    @Override // cn.sharesdk.framework.ShareSDKCallback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onCallback(String str) {
                        try {
                            kVar.a().setUrl(str);
                            String str2 = imagePath;
                            if (str2 == null || str2.length() <= 0) {
                                Bitmap bitmap = imageData;
                                if (bitmap == null || bitmap.isRecycled()) {
                                    String str3 = imageUrl;
                                    if (str3 == null || str3.length() <= 0) {
                                        l.this.b(MobSDK.getContext(), title, text, str, "", scence, kVar);
                                    } else {
                                        l.this.b(MobSDK.getContext(), title, text, str, BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl), scence, kVar);
                                    }
                                } else {
                                    l.this.b(MobSDK.getContext(), title, text, str, imageData, scence, kVar);
                                }
                            } else {
                                l.this.b(MobSDK.getContext(), title, text, str, imagePath, scence, kVar);
                            }
                        } catch (Throwable th2) {
                            PlatformActionListener platformActionListener2 = platformActionListener;
                            if (platformActionListener2 != null) {
                                platformActionListener2.onError(platformB, 9, th2);
                            }
                        }
                    }
                });
                return;
            case 5:
                platformB.getShortLintk(musicUrl + " " + url, false, new ShareSDKCallback<String>() { // from class: cn.sharesdk.wechat.utils.l.2
                    @Override // cn.sharesdk.framework.ShareSDKCallback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onCallback(String str) {
                        try {
                            String str2 = str.split(" ")[0];
                            String str3 = str.split(" ")[1];
                            String str4 = imagePath;
                            if (str4 == null || str4.length() <= 0) {
                                Bitmap bitmap = imageData;
                                if (bitmap == null || bitmap.isRecycled()) {
                                    String str5 = imageUrl;
                                    if (str5 == null || str5.length() <= 0) {
                                        l.this.a(MobSDK.getContext(), title, text, str2, str3, "", scence, kVar);
                                    } else {
                                        l.this.a(MobSDK.getContext(), title, text, str2, str3, BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl), scence, kVar);
                                    }
                                } else {
                                    l.this.a(MobSDK.getContext(), title, text, str2, str3, imageData, scence, kVar);
                                }
                            } else {
                                l.this.a(MobSDK.getContext(), title, text, str2, str3, imagePath, scence, kVar);
                            }
                        } catch (Throwable th2) {
                            PlatformActionListener platformActionListener2 = platformActionListener;
                            if (platformActionListener2 != null) {
                                platformActionListener2.onError(platformB, 9, th2);
                            }
                        }
                    }
                });
                return;
            case 6:
                platformB.getShortLintk(url, false, new ShareSDKCallback<String>() { // from class: cn.sharesdk.wechat.utils.l.3
                    @Override // cn.sharesdk.framework.ShareSDKCallback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onCallback(String str) {
                        try {
                            kVar.a().setUrl(str);
                            String str2 = imagePath;
                            if (str2 == null || str2.length() <= 0) {
                                Bitmap bitmap = imageData;
                                if (bitmap == null || bitmap.isRecycled()) {
                                    String str3 = imageUrl;
                                    if (str3 == null || str3.length() <= 0) {
                                        l.this.a(MobSDK.getContext(), title, text, str, "", scence, kVar);
                                    } else {
                                        l.this.a(MobSDK.getContext(), title, text, str, BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl), scence, kVar);
                                    }
                                } else {
                                    l.this.a(MobSDK.getContext(), title, text, str, imageData, scence, kVar);
                                }
                            } else {
                                l.this.a(MobSDK.getContext(), title, text, str, imagePath, scence, kVar);
                            }
                        } catch (Throwable th2) {
                            PlatformActionListener platformActionListener2 = platformActionListener;
                            if (platformActionListener2 != null) {
                                platformActionListener2.onError(platformB, 9, th2);
                            }
                        }
                    }
                });
                return;
            case 7:
                if (scence == 1) {
                    throw new Throwable("WechatMoments does not support SAHRE_APP");
                }
                if (scence != 2) {
                    if (imagePath != null && imagePath.length() > 0) {
                        b(MobSDK.getContext(), title, text, filePath, extInfo, imagePath, scence, kVar);
                        return;
                    }
                    if (imageData != null && !imageData.isRecycled()) {
                        b(MobSDK.getContext(), title, text, filePath, extInfo, imageData, scence, kVar);
                        return;
                    } else if (imageUrl != null && imageUrl.length() > 0) {
                        b(MobSDK.getContext(), title, text, filePath, extInfo, BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl), scence, kVar);
                        return;
                    } else {
                        b(MobSDK.getContext(), title, text, filePath, extInfo, "", scence, kVar);
                        return;
                    }
                }
                throw new Throwable("WechatFavorite does not support SAHRE_APP");
            case 8:
                if (scence != 1) {
                    if (imagePath != null && imagePath.length() > 0) {
                        c(MobSDK.getContext(), title, text, filePath, imagePath, scence, kVar);
                        return;
                    }
                    if (imageData != null && !imageData.isRecycled()) {
                        c(MobSDK.getContext(), title, text, filePath, imageData, scence, kVar);
                        return;
                    } else if (imageUrl != null && imageUrl.length() > 0) {
                        c(MobSDK.getContext(), title, text, filePath, BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl), scence, kVar);
                        return;
                    } else {
                        c(MobSDK.getContext(), title, text, a(new File(filePath)), "", scence, kVar);
                        return;
                    }
                }
                throw new Throwable("WechatMoments does not support SHARE_FILE");
            case 9:
                if (scence == 1) {
                    throw new Throwable("WechatMoments does not support SHARE_EMOJI");
                }
                if (scence != 2) {
                    if (imagePath != null && imagePath.length() > 0) {
                        a(MobSDK.getContext(), title, text, imagePath, scence, kVar);
                        return;
                    }
                    if (imageUrl != null && imageUrl.length() > 0) {
                        a(MobSDK.getContext(), title, text, new NetworkHelper().downloadCache(MobSDK.getContext(), imageUrl, "images", true, null), scence, kVar);
                        return;
                    } else if (imageData != null && !imageData.isRecycled()) {
                        a(MobSDK.getContext(), title, text, imageData, scence, kVar);
                        return;
                    } else {
                        a(MobSDK.getContext(), title, text, "", scence, kVar);
                        return;
                    }
                }
                throw new Throwable("WechatFavorite does not support SHARE_EMOJI");
            case 11:
                if (scence != 2) {
                    if (!TextUtils.isEmpty(this.f3023d)) {
                        platformB.getShortLintk(url, false, new ShareSDKCallback<String>() { // from class: cn.sharesdk.wechat.utils.l.5
                            @Override // cn.sharesdk.framework.ShareSDKCallback
                            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                            public void onCallback(String str) {
                                try {
                                    kVar.a().setUrl(str);
                                    String str2 = imagePath;
                                    if (str2 == null || str2.length() <= 0) {
                                        Bitmap bitmap = imageData;
                                        if (bitmap == null || bitmap.isRecycled()) {
                                            String str3 = imageUrl;
                                            if (str3 == null || str3.length() <= 0) {
                                                l.this.a(MobSDK.getContext(), str, l.this.f3023d, l.this.f3024e, title, text, "", scence, kVar);
                                            } else {
                                                l.this.a(MobSDK.getContext(), str, l.this.f3023d, l.this.f3024e, title, text, BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl), scence, kVar);
                                            }
                                        } else {
                                            l.this.a(MobSDK.getContext(), str, l.this.f3023d, l.this.f3024e, title, text, imageData, scence, kVar);
                                        }
                                    } else {
                                        l.this.a(MobSDK.getContext(), str, l.this.f3023d, l.this.f3024e, title, text, imagePath, scence, kVar);
                                    }
                                } catch (Throwable th2) {
                                    PlatformActionListener platformActionListener2 = platformActionListener;
                                    if (platformActionListener2 != null) {
                                        platformActionListener2.onError(platformB, 9, th2);
                                    }
                                }
                            }
                        });
                        return;
                    } else {
                        if (platformActionListener != null) {
                            platformActionListener.onError(platformB, 9, new Throwable("checkArgs fail, UserName or Path is invalid"));
                            return;
                        }
                        return;
                    }
                }
                throw new Throwable("WechatFavorite does not support SAHRE_WXMINIPROGRAM");
            case 12:
                if (!TextUtils.isEmpty(this.f3023d) && !TextUtils.isEmpty(this.f3024e)) {
                    a(this.f3023d, this.f3024e);
                    return;
                } else {
                    if (platformActionListener != null) {
                        platformActionListener.onError(platformB, 9, new Throwable("checkArgs fail, UserName or Path is invalid"));
                        return;
                    }
                    return;
                }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, String str, String str2, String str3, Bitmap bitmap, int i10, k kVar) throws Throwable {
        WXWebpageObject wXWebpageObject = new WXWebpageObject();
        wXWebpageObject.webpageUrl = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXWebpageObject;
        if (bitmap != null && !bitmap.isRecycled()) {
            byte[] bArrA = a(context, bitmap, false);
            wXMediaMessage.thumbData = bArrA;
            if (bArrA != null) {
                if (bArrA.length > 32768) {
                    throw new RuntimeException("checkArgs fail, thumbData is too large: " + wXMediaMessage.thumbData.length + " > 32768");
                }
            } else {
                throw new RuntimeException("checkArgs fail, thumbData is null");
            }
        }
        a(wXMediaMessage, "webpage", i10, kVar);
    }

    private void b(Context context, String str, String str2, String str3, String str4, String str5, int i10, k kVar) throws Throwable {
        WXAppExtendObject wXAppExtendObject = new WXAppExtendObject();
        wXAppExtendObject.filePath = str3;
        wXAppExtendObject.extInfo = str4;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXAppExtendObject;
        wXMediaMessage.thumbData = a(context, str5, false);
        a(wXMediaMessage, "appdata", i10, kVar);
    }

    private void b(Context context, String str, String str2, String str3, String str4, Bitmap bitmap, int i10, k kVar) throws Throwable {
        WXAppExtendObject wXAppExtendObject = new WXAppExtendObject();
        wXAppExtendObject.filePath = str3;
        wXAppExtendObject.extInfo = str4;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXAppExtendObject;
        wXMediaMessage.thumbData = a(context, bitmap, false);
        a(wXMediaMessage, "appdata", i10, kVar);
    }

    public void b(ShareSDKCallback<Boolean> shareSDKCallback) {
        this.f3021b.b(shareSDKCallback);
    }

    private void a(String str, String str2, int i10, k kVar) throws Throwable {
        WXTextObject wXTextObject = new WXTextObject();
        wXTextObject.text = str2;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.mediaObject = wXTextObject;
        wXMediaMessage.description = str2;
        a(wXMediaMessage, "text", i10, kVar);
    }

    private void a(final Context context, final String str, final String str2, final String str3, final int i10, final k kVar, final Platform.ShareParams shareParams) throws Throwable {
        try {
            final WXImageObject wXImageObject = new WXImageObject();
            try {
                d(new ShareSDKCallback<Boolean>() { // from class: cn.sharesdk.wechat.utils.l.6
                    @Override // cn.sharesdk.framework.ShareSDKCallback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onCallback(Boolean bool) {
                        try {
                            if (bool.booleanValue()) {
                                if (l.this.c()) {
                                    String strA = l.this.a(new File(str3));
                                    wXImageObject.imagePath = strA;
                                    SSDKLog.b().a("ShareSDK share file with FileProvider path is: " + strA);
                                }
                            } else if (kVar.c() != null) {
                                kVar.c().onError(kVar.b(), 9, new Throwable("Wecaht Version is not new"));
                            }
                            WXMediaMessage wXMediaMessage = new WXMediaMessage();
                            wXMediaMessage.mediaObject = wXImageObject;
                            if (i10 != 0) {
                                wXMediaMessage.title = str;
                                wXMediaMessage.description = str2;
                            } else {
                                if (!TextUtils.isEmpty(shareParams.getEntranceMiniProgramUsername())) {
                                    wXImageObject.entranceMiniProgramUsername = shareParams.getEntranceMiniProgramUsername();
                                }
                                if (!TextUtils.isEmpty(shareParams.getEntranceMiniProgramPath())) {
                                    wXImageObject.entranceMiniProgramPath = shareParams.getEntranceMiniProgramPath();
                                }
                            }
                            wXMediaMessage.thumbData = l.this.a(context, str3, false);
                            l.this.a(wXMediaMessage, "img", i10, kVar);
                        } catch (Throwable th) {
                            SSDKLog.b().a(th);
                        }
                    }
                });
            } catch (Throwable th) {
                th = th;
                SSDKLog.b().a(th);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void a(Context context, String str, String str2, Bitmap bitmap, int i10, k kVar, Platform.ShareParams shareParams) throws Throwable {
        WXImageObject wXImageObject = new WXImageObject();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 85, byteArrayOutputStream);
        byteArrayOutputStream.flush();
        byteArrayOutputStream.close();
        wXImageObject.imageData = byteArrayOutputStream.toByteArray();
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.mediaObject = wXImageObject;
        if (i10 != 0) {
            wXMediaMessage.title = str;
            wXMediaMessage.description = str2;
        } else {
            if (!TextUtils.isEmpty(shareParams.getEntranceMiniProgramUsername())) {
                wXImageObject.entranceMiniProgramUsername = shareParams.getEntranceMiniProgramUsername();
            }
            if (!TextUtils.isEmpty(shareParams.getEntranceMiniProgramPath())) {
                wXImageObject.entranceMiniProgramPath = shareParams.getEntranceMiniProgramPath();
            }
        }
        wXMediaMessage.thumbData = a(context, bitmap, false);
        a(wXMediaMessage, "img", i10, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2, String str3, String str4, String str5, int i10, k kVar) throws Throwable {
        WXMusicObject wXMusicObject = new WXMusicObject();
        wXMusicObject.musicUrl = str4;
        wXMusicObject.musicDataUrl = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXMusicObject;
        wXMediaMessage.thumbData = a(context, str5, false);
        a(wXMediaMessage, "music", i10, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2, String str3, String str4, Bitmap bitmap, int i10, k kVar) throws Throwable {
        WXMusicObject wXMusicObject = new WXMusicObject();
        wXMusicObject.musicUrl = str4;
        wXMusicObject.musicDataUrl = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXMusicObject;
        wXMediaMessage.thumbData = a(context, bitmap, false);
        a(wXMediaMessage, "music", i10, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2, String str3, String str4, int i10, k kVar) throws Throwable {
        WXVideoObject wXVideoObject = new WXVideoObject();
        wXVideoObject.videoUrl = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXVideoObject;
        wXMediaMessage.thumbData = a(context, str4, false);
        a(wXMediaMessage, "video", i10, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2, String str3, Bitmap bitmap, int i10, k kVar) throws Throwable {
        WXVideoObject wXVideoObject = new WXVideoObject();
        wXVideoObject.videoUrl = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXVideoObject;
        wXMediaMessage.thumbData = a(context, bitmap, false);
        a(wXMediaMessage, "video", i10, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2, String str3, String str4, String str5, Bitmap bitmap, int i10, k kVar) throws Throwable {
        String str6;
        WXMiniProgramObject wXMiniProgramObject = new WXMiniProgramObject();
        wXMiniProgramObject.webpageUrl = str;
        if (!TextUtils.isEmpty(str2) && str2.endsWith("@app")) {
            wXMiniProgramObject.userName = str2;
        } else {
            wXMiniProgramObject.userName = str2 + "@app";
        }
        if (!TextUtils.isEmpty(str3)) {
            String[] strArrSplit = str3.split("\\?");
            if (strArrSplit.length > 1) {
                str6 = strArrSplit[0] + ".html?" + strArrSplit[1];
            } else {
                str6 = strArrSplit[0] + ".html";
            }
            wXMiniProgramObject.path = str6;
            wXMiniProgramObject.withShareTicket = this.f3025f;
            wXMiniProgramObject.miniprogramType = this.f3026g;
        }
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str4;
        wXMediaMessage.mediaObject = wXMiniProgramObject;
        wXMediaMessage.description = str5;
        if (bitmap != null && !bitmap.isRecycled()) {
            byte[] bArrA = a(context, bitmap, true);
            wXMediaMessage.thumbData = bArrA;
            if (bArrA != null) {
                if (bArrA.length > 131072) {
                    throw new RuntimeException("checkArgs fail, thumbData is too large: " + wXMediaMessage.thumbData.length + " > 131072");
                }
            } else {
                throw new RuntimeException("checkArgs fail, thumbData is null");
            }
        }
        a(wXMediaMessage, "webpage", i10, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2, String str3, String str4, String str5, String str6, int i10, k kVar) throws Throwable {
        String str7;
        WXMiniProgramObject wXMiniProgramObject = new WXMiniProgramObject();
        wXMiniProgramObject.miniprogramType = this.f3026g;
        wXMiniProgramObject.webpageUrl = str;
        if (!TextUtils.isEmpty(str2) && str2.endsWith("@app")) {
            wXMiniProgramObject.userName = str2;
        } else {
            wXMiniProgramObject.userName = str2 + "@app";
        }
        if (!TextUtils.isEmpty(str3)) {
            String[] strArrSplit = str3.split("\\?");
            if (strArrSplit.length > 1) {
                str7 = strArrSplit[0] + ".html?" + strArrSplit[1];
            } else {
                str7 = strArrSplit[0] + ".html";
            }
            wXMiniProgramObject.path = str7;
            wXMiniProgramObject.withShareTicket = this.f3025f;
            wXMiniProgramObject.miniprogramType = this.f3026g;
        }
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str4;
        wXMediaMessage.mediaObject = wXMiniProgramObject;
        wXMediaMessage.description = str5;
        wXMediaMessage.thumbData = a(context, str6, true);
        a(wXMediaMessage, "miniProgram", i10, kVar);
    }

    private void a(String str, String str2) throws Throwable {
        i.a aVar = new i.a();
        aVar.f3005a = str;
        aVar.f3006b = str2;
        aVar.f3007c = this.f3026g;
        this.f3021b.b(aVar);
    }

    private void a(Context context, String str, String str2, String str3, int i10, k kVar) throws Throwable {
        WXEmojiObject wXEmojiObject = new WXEmojiObject();
        if (Build.VERSION.SDK_INT >= 24) {
            wXEmojiObject.emojiPath = a(new File(str3));
        } else {
            wXEmojiObject.emojiPath = str3;
        }
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.mediaObject = wXEmojiObject;
        wXMediaMessage.description = str2;
        wXMediaMessage.thumbData = a(context, str3, false);
        a(wXMediaMessage, "emoji", i10, kVar);
    }

    private void a(Context context, String str, String str2, Bitmap bitmap, int i10, k kVar) throws Throwable {
        WXEmojiObject wXEmojiObject = new WXEmojiObject();
        byte[] bArrA = a(context, bitmap, false);
        wXEmojiObject.emojiData = bArrA;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.mediaObject = wXEmojiObject;
        wXMediaMessage.description = str2;
        wXMediaMessage.thumbData = bArrA;
        a(wXMediaMessage, "emoji", i10, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] a(Context context, String str, boolean z10) throws Throwable {
        if (new File(str).exists()) {
            return a(context, BitmapHelper.getBitmap(str), BitmapHelper.getBmpFormat(str), z10);
        }
        throw new FileNotFoundException();
    }

    private byte[] a(Context context, Bitmap bitmap, boolean z10) throws Throwable {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                return a(context, bitmap, Bitmap.CompressFormat.PNG, z10);
            }
            throw new RuntimeException("checkArgs fail, thumbData is recycled");
        }
        throw new RuntimeException("checkArgs fail, thumbData is null");
    }

    private byte[] a(Context context, Bitmap bitmap, Bitmap.CompressFormat compressFormat, boolean z10) throws Throwable {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(compressFormat, 100, byteArrayOutputStream);
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                int length = byteArray.length;
                int i10 = z10 ? 131072 : 32768;
                while (length > i10) {
                    bitmap = a(bitmap, ((double) length) / ((double) i10));
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    bitmap.compress(compressFormat, 100, byteArrayOutputStream2);
                    byteArrayOutputStream2.flush();
                    byteArrayOutputStream2.close();
                    byteArray = byteArrayOutputStream2.toByteArray();
                    length = byteArray.length;
                }
                return byteArray;
            }
            throw new RuntimeException("checkArgs fail, thumbData is recycled");
        }
        throw new RuntimeException("checkArgs fail, thumbData is null");
    }

    private Bitmap a(Bitmap bitmap, double d10) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        double dSqrt = Math.sqrt(d10);
        return Bitmap.createScaledBitmap(bitmap, (int) (((double) width) / dSqrt), (int) (((double) height) / dSqrt), true);
    }

    public boolean a(WechatHandlerActivity wechatHandlerActivity) {
        return this.f3021b.a(wechatHandlerActivity, this.f3022c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(WXMediaMessage wXMediaMessage, String str, int i10, k kVar) throws Throwable {
        Class<?> cls;
        String str2 = DH.SyncMtd.getPackageName() + MMessageActV2.DEFAULT_ENTRY_CLASS_NAME;
        try {
            cls = Class.forName(str2);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            cls = null;
        }
        if (cls != null && !WechatHandlerActivity.class.isAssignableFrom(cls)) {
            new Throwable(str2 + " does not extend from " + WechatHandlerActivity.class.getName()).printStackTrace();
        }
        SendMessageReq sendMessageReq = new SendMessageReq();
        sendMessageReq.f3085e = str + System.currentTimeMillis();
        sendMessageReq.f2967a = wXMediaMessage;
        sendMessageReq.f2968b = i10;
        this.f3022c = kVar;
        this.f3021b.a(sendMessageReq, wXMediaMessage.mediaObject instanceof WXMiniProgramObject);
    }

    public String a(File file) {
        String packageName;
        if (file != null && file.exists()) {
            try {
                packageName = MobSDK.getContext().getPackageName();
            } catch (Throwable th) {
                SSDKLog.b().a("get packagename is catch: " + th, new Object[0]);
                packageName = null;
            }
            if (packageName != null) {
                Uri uriA = ShareSDKFileProvider.a(MobSDK.getContext(), packageName + ".cn.sharesdk.ShareSDKFileProvider", file);
                MobSDK.getContext().grantUriPermission("com.tencent.mm", uriA, 1);
                return uriA.toString();
            }
        }
        return null;
    }
}
