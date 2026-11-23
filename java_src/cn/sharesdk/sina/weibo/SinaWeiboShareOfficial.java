package cn.sharesdk.sina.weibo;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.widget.LinearLayout;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.ShareSDKFileProvider;
import cn.sharesdk.framework.utils.k;
import com.mob.MobSDK;
import com.mob.tools.FakeActivity;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.ResHelper;
import com.sina.weibo.BuildConfig;
import com.sina.weibo.sdk.api.ImageObject;
import com.sina.weibo.sdk.api.MultiImageObject;
import com.sina.weibo.sdk.api.TextObject;
import com.sina.weibo.sdk.api.VideoSourceObject;
import com.sina.weibo.sdk.api.WebpageObject;
import com.sina.weibo.sdk.api.WeiboMultiMessage;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.common.UiError;
import com.sina.weibo.sdk.openapi.IWBAPI;
import com.sina.weibo.sdk.openapi.SdkListener;
import com.sina.weibo.sdk.openapi.WBAPIFactory;
import com.sina.weibo.sdk.share.WbShareCallback;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes7.dex */
public class SinaWeiboShareOfficial extends FakeActivity implements WbShareCallback {
    private String appkey;
    private IWBAPI iwbapi;
    private AuthorizeListener listener;
    private Platform.ShareParams params;
    private String permissions;
    private String redirectUrl;
    private long thumbSize = PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;

    public SinaWeiboShareOfficial(String str, String str2, String str3, Platform.ShareParams shareParams, AuthorizeListener authorizeListener) {
        this.appkey = str;
        this.redirectUrl = str2;
        this.permissions = str3;
        this.params = shareParams;
        this.listener = authorizeListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void actionShare() {
        SSDKLog.b().b("SinaWeiboShareOfficial actionShare");
        WeiboMultiMessage weiboMultiMessage = new WeiboMultiMessage();
        if (!TextUtils.isEmpty(this.params.getText())) {
            TextObject textObject = new TextObject();
            textObject.text = this.params.getText();
            weiboMultiMessage.textObject = textObject;
        }
        if (!TextUtils.isEmpty(this.params.getUrl())) {
            weiboMultiMessage.mediaObject = getWebpageObj();
        } else if (this.params.getImageArray() != null && this.params.getImageArray().length > 0) {
            weiboMultiMessage.multiImageObject = getMultiImageObject();
        } else if (TextUtils.isEmpty(this.params.getFilePath())) {
            if (this.params.getImageData() != null || !TextUtils.isEmpty(this.params.getImagePath())) {
                if (this.params.getImageData() != null) {
                    weiboMultiMessage.imageObject = getImageObj();
                } else if (!TextUtils.isEmpty(this.params.getImagePath())) {
                    weiboMultiMessage.multiImageObject = getOneImage();
                }
            }
        } else if (getVideoSourceObject() != null) {
            weiboMultiMessage.videoSourceObject = getVideoSourceObject();
        }
        IWBAPI iwbapi = this.iwbapi;
        if (iwbapi == null) {
            AuthorizeListener authorizeListener = this.listener;
            if (authorizeListener != null) {
                authorizeListener.onError(new Throwable("SinaWeibo SDK init failed"));
            }
            finish();
            return;
        }
        try {
            iwbapi.shareMessage(this.activity, weiboMultiMessage, true);
        } catch (Throwable th) {
            AuthorizeListener authorizeListener2 = this.listener;
            if (authorizeListener2 != null) {
                authorizeListener2.onError(new Throwable("Share to sina failed: " + th));
            }
            SSDKLog.b().a("SinaWeiboShareOfficial share catch: " + th);
            finish();
        }
    }

    private byte[] bitmapTByte(Context context, Bitmap bitmap) throws Throwable {
        if (bitmap == null) {
            throw new RuntimeException("checkArgs fail, thumbData is null");
        }
        if (bitmap.isRecycled()) {
            throw new RuntimeException("checkArgs fail, thumbData is recycled");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 85, byteArrayOutputStream);
        byteArrayOutputStream.flush();
        byteArrayOutputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        while (true) {
            long j10 = length;
            long j11 = this.thumbSize;
            if (j10 <= j11) {
                return byteArray;
            }
            bitmap = getResizedBitmap(bitmap, ((double) length) / j11);
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.JPEG, 85, byteArrayOutputStream2);
            byteArrayOutputStream2.flush();
            byteArrayOutputStream2.close();
            byteArray = byteArrayOutputStream2.toByteArray();
            length = byteArray.length;
        }
    }

    private String generateGUID() {
        return UUID.randomUUID().toString().replace("-", "");
    }

    private ImageObject getImageObj() {
        ImageObject imageObject = new ImageObject();
        try {
            imageObject.imageData = getThumb(this.activity, this.params.getImageData());
        } catch (Throwable th) {
            SSDKLog.b().a("SinaWeiboShareOfficial getImageObj catch: " + th, new Object[0]);
        }
        return imageObject;
    }

    private MultiImageObject getMultiImageObject() {
        MultiImageObject multiImageObject = new MultiImageObject();
        try {
            List listAsList = Arrays.asList(this.params.getImageArray());
            ArrayList<Uri> arrayList = new ArrayList<>();
            Iterator it2 = listAsList.iterator();
            while (it2.hasNext()) {
                File file = new File((String) it2.next());
                if (file.exists()) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        File file2 = new File(MobSDK.getContext().getExternalFilesDir(null).getPath() + e.F0 + file.getName());
                        if (!file.getPath().equals(file2.getPath()) ? ResHelper.copyFile(file.getPath(), file2.getPath()) : true) {
                            Uri uriA = ShareSDKFileProvider.a(MobSDK.getContext(), MobSDK.getContext().getPackageName() + ".cn.sharesdk.ShareSDKFileProvider", file);
                            MobSDK.getContext().grantUriPermission(BuildConfig.APPLICATION_ID, uriA, 3);
                            arrayList.add(uriA);
                        }
                    } else {
                        arrayList.add(Uri.fromFile(file));
                    }
                }
            }
            multiImageObject.imageList = arrayList;
        } catch (Throwable th) {
            SSDKLog.b().a("SinaWeiboShareOfficial getMultiImageObject catch: " + th, new Object[0]);
        }
        return multiImageObject;
    }

    private MultiImageObject getOneImage() {
        MultiImageObject multiImageObject = new MultiImageObject();
        try {
            List listAsList = Arrays.asList(this.params.getImagePath());
            ArrayList<Uri> arrayList = new ArrayList<>();
            Iterator it2 = listAsList.iterator();
            while (it2.hasNext()) {
                File file = new File((String) it2.next());
                if (file.exists()) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        File file2 = new File(MobSDK.getContext().getExternalFilesDir(null).getPath() + e.F0 + file.getName());
                        if (!file.getPath().equals(file2.getPath()) ? ResHelper.copyFile(file.getPath(), file2.getPath()) : true) {
                            Uri uriA = ShareSDKFileProvider.a(MobSDK.getContext(), MobSDK.getContext().getPackageName() + ".cn.sharesdk.ShareSDKFileProvider", file);
                            MobSDK.getContext().grantUriPermission(BuildConfig.APPLICATION_ID, uriA, 3);
                            arrayList.add(uriA);
                        } else {
                            SSDKLog.b().a("QQQ", " SinaWeiboShareOfficial copy failed ");
                        }
                    } else {
                        arrayList.add(Uri.fromFile(file));
                    }
                }
            }
            multiImageObject.imageList = arrayList;
        } catch (Throwable th) {
            SSDKLog.b().a("SinaWeiboShareOfficial getOneImage catch: " + th, new Object[0]);
            multiImageObject.imageList = null;
        }
        return multiImageObject;
    }

    private Bitmap getResizedBitmap(Bitmap bitmap, double d10) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        double dSqrt = Math.sqrt(d10);
        return Bitmap.createScaledBitmap(bitmap, (int) (((double) width) / dSqrt), (int) (((double) height) / dSqrt), true);
    }

    private byte[] getThumb(Context context, Bitmap bitmap) throws Throwable {
        if (bitmap == null) {
            throw new RuntimeException("checkArgs fail, thumbData is null");
        }
        if (bitmap.isRecycled()) {
            throw new RuntimeException("checkArgs fail, thumbData is recycled");
        }
        return bitmapTByte(context, bitmap);
    }

    private VideoSourceObject getVideoSourceObject() {
        VideoSourceObject videoSourceObject = new VideoSourceObject();
        try {
            String filePath = this.params.getFilePath();
            Uri uriFromFile = null;
            if (TextUtils.isEmpty(filePath)) {
                SSDKLog.b().a("SinaWeiboShareOfficial getVideoSourceObject filePath is null ", new Object[0]);
                return null;
            }
            try {
                File file = new File(filePath);
                if (file.exists()) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        Uri uriA = ShareSDKFileProvider.a(MobSDK.getContext(), MobSDK.getContext().getPackageName() + ".cn.sharesdk.ShareSDKFileProvider", file);
                        MobSDK.getContext().grantUriPermission(BuildConfig.APPLICATION_ID, uriA, 3);
                        uriFromFile = uriA;
                    } else {
                        uriFromFile = Uri.fromFile(file);
                    }
                }
                videoSourceObject.videoPath = uriFromFile;
            } catch (Throwable th) {
                SSDKLog.b().a("SinaWeiboShareOfficial getVideoSourceObject copyFile catch: " + th, new Object[0]);
                return null;
            }
        } catch (Throwable th2) {
            SSDKLog.b().a("SinaWeiboShareOfficial getVideoSourceObject catch: " + th2, new Object[0]);
        }
        return videoSourceObject;
    }

    private WebpageObject getWebpageObj() {
        WebpageObject webpageObject = new WebpageObject();
        webpageObject.title = this.params.getTitle();
        webpageObject.description = this.params.getText();
        webpageObject.actionUrl = this.params.getUrl();
        webpageObject.defaultText = this.params.getText();
        try {
            if (this.params.getImageData() != null) {
                webpageObject.thumbData = getThumb(this.activity, this.params.getImageData());
            } else if (!TextUtils.isEmpty(this.params.getImagePath())) {
                webpageObject.thumbData = getThumb(this.activity, this.params.getImagePath());
            }
        } catch (Throwable th) {
            SSDKLog.b().a("SinaWeiboShareOfficial getWebpageObj catch: " + th, new Object[0]);
            webpageObject.thumbData = null;
        }
        return webpageObject;
    }

    @Override // com.mob.tools.FakeActivity
    public void onActivityResult(int i10, int i11, Intent intent) {
        IWBAPI iwbapi = this.iwbapi;
        if (iwbapi != null) {
            iwbapi.doResultIntent(intent, this);
        } else {
            SSDKLog.b().a("SinaWeiboShareOfficial onActivityResult iwbapi is null");
        }
        super.onActivityResult(i10, i11, intent);
        SSDKLog.b().a("SinaWeiboShareOfficial onActivityResult");
    }

    @Override // com.sina.weibo.sdk.share.WbShareCallback
    public void onCancel() {
        AuthorizeListener authorizeListener = this.listener;
        if (authorizeListener != null) {
            authorizeListener.onCancel();
        }
        SSDKLog.b().a("SinaWeiboShareOfficial doShare onCancel");
        finish();
    }

    @Override // com.sina.weibo.sdk.share.WbShareCallback
    public void onComplete() {
        AuthorizeListener authorizeListener = this.listener;
        if (authorizeListener != null) {
            authorizeListener.onComplete(null);
        }
        SSDKLog.b().a("SinaWeiboShareOfficial doShare onComplete ");
        finish();
    }

    @Override // com.mob.tools.FakeActivity
    public void onCreate() {
        super.onCreate();
        try {
            LinearLayout linearLayout = new LinearLayout(this.activity);
            linearLayout.setOrientation(1);
            this.activity.setContentView(linearLayout);
        } catch (Exception e10) {
            SSDKLog.b().a(e10);
        }
        k.a(new k.a() { // from class: cn.sharesdk.sina.weibo.SinaWeiboShareOfficial.1
            @Override // cn.sharesdk.framework.utils.k.a
            public void a() throws Throwable {
                try {
                    AuthInfo authInfo = new AuthInfo(((FakeActivity) SinaWeiboShareOfficial.this).activity, SinaWeiboShareOfficial.this.appkey, SinaWeiboShareOfficial.this.redirectUrl, SinaWeiboShareOfficial.this.permissions);
                    SinaWeiboShareOfficial sinaWeiboShareOfficial = SinaWeiboShareOfficial.this;
                    sinaWeiboShareOfficial.iwbapi = WBAPIFactory.createWBAPI(((FakeActivity) sinaWeiboShareOfficial).activity);
                    SinaWeiboShareOfficial.this.iwbapi.registerApp(((FakeActivity) SinaWeiboShareOfficial.this).activity, authInfo, new SdkListener() { // from class: cn.sharesdk.sina.weibo.SinaWeiboShareOfficial.1.1
                        @Override // com.sina.weibo.sdk.openapi.SdkListener
                        public void onInitFailure(Exception exc) {
                            if (SinaWeiboShareOfficial.this.listener != null) {
                                SinaWeiboShareOfficial.this.listener.onError(exc);
                            }
                            SSDKLog.b().a("SinaWeiboShareOfficial", "WeiboInitFailure " + exc);
                        }

                        @Override // com.sina.weibo.sdk.openapi.SdkListener
                        public void onInitSuccess() {
                            SinaWeibo.initFlag = true;
                            SinaWeiboShareOfficial.this.actionShare();
                        }
                    });
                } catch (Throwable th) {
                    if (SinaWeiboShareOfficial.this.listener != null) {
                        SinaWeiboShareOfficial.this.listener.onError(new Throwable("sinaweibo sdk init failed: " + th));
                    }
                    SSDKLog.b().a("SinaWeiboShareOfficial", "onCreate AuthInfo " + th);
                    SinaWeiboShareOfficial.this.finish();
                }
            }
        });
        k.a(new k.a() { // from class: cn.sharesdk.sina.weibo.SinaWeiboShareOfficial.2
            @Override // cn.sharesdk.framework.utils.k.a
            public void a() throws Throwable {
                try {
                    if (SinaWeibo.initFlag) {
                        SinaWeiboShareOfficial.this.actionShare();
                    }
                    SSDKLog.b().a("SinaWeiboShareOfficial actionShare() ");
                } catch (Throwable th) {
                    if (SinaWeiboShareOfficial.this.listener != null) {
                        SinaWeiboShareOfficial.this.listener.onError(new Throwable("Share catch: " + th));
                    }
                    SSDKLog.b().a("SinaWeiboShareOfficial  catch: " + th);
                    SinaWeiboShareOfficial.this.finish();
                }
            }
        });
    }

    @Override // com.mob.tools.FakeActivity
    public void onDestroy() {
        super.onDestroy();
        SSDKLog.b().a("SinaWeiboShareOfficial doShare onDestroy");
    }

    @Override // com.sina.weibo.sdk.share.WbShareCallback
    public void onError(UiError uiError) {
        if (this.listener != null) {
            this.listener.onError(new Throwable("errorCode: " + uiError.errorCode + " errorMessage: " + uiError.errorMessage + " errorDetail: " + uiError.errorDetail));
        }
        SSDKLog.b().a("SinaWeiboShareOfficial doShare onError: " + uiError.errorDetail);
        finish();
    }

    @Override // com.mob.tools.FakeActivity
    public void onPause() {
        super.onPause();
        SSDKLog.b().a("SinaWeiboShareOfficial doShare onPause");
    }

    @Override // com.mob.tools.FakeActivity
    public void onResume() {
        super.onResume();
        SSDKLog.b().a("SinaWeiboShareOfficial doShare onResume");
    }

    @Override // com.mob.tools.FakeActivity
    public void onStop() {
        super.onStop();
        SSDKLog.b().a("SinaWeiboShareOfficial doShare onStop");
    }

    public final void setThumbImage(MultiImageObject multiImageObject, Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 85, byteArrayOutputStream2);
                    multiImageObject.thumbData = byteArrayOutputStream2.toByteArray();
                    byteArrayOutputStream2.close();
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    try {
                        SSDKLog.b().a(th);
                        if (byteArrayOutputStream == null) {
                        } else {
                            byteArrayOutputStream.close();
                        }
                    } catch (Throwable th2) {
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable th3) {
                                SSDKLog.b().a(th3);
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                SSDKLog.b().a(th4);
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private byte[] getThumb(Context context, String str) throws Throwable {
        if (new File(str).exists()) {
            return bitmapTByte(context, BitmapHelper.getBitmap(str));
        }
        throw new FileNotFoundException();
    }
}
