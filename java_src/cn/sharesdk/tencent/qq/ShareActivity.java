package cn.sharesdk.tencent.qq;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.widget.LinearLayout;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.ShareSDKFileProvider;
import cn.sharesdk.onekeyshare.OnekeyShare;
import com.mob.MobSDK;
import com.mob.tools.FakeActivity;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.DH;
import com.mob.tools.utils.ResHelper;
import com.sigmob.sdk.archives.tar.e;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class ShareActivity extends FakeActivity {
    private static final List<String> OPEN_MINI_APP_TYPES = Arrays.asList("develop", "trial", "release");
    private static final String QQ_PACKAGE_NAME = "com.tencent.mobileqq";
    private static final int START_ACTIVITY_CODE = 256;
    private String appId;
    private PlatformActionListener listener;
    private Platform platform;
    private String uriScheme;

    /* JADX INFO: Access modifiers changed from: private */
    public void advancedShare(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i10, String str9, String str10, String str11, int i11) {
        String shareScheme = getShareScheme(str, str2, str3, str4, str5, str6, str7, str8, i10, str9, str10, str11, i11);
        final Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(shareScheme));
        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ ShareActivity advancedShare scheme: " + shareScheme);
        try {
            getQQClientVersion(new ShareSDKCallback<int[]>() { // from class: cn.sharesdk.tencent.qq.ShareActivity.3
                @Override // cn.sharesdk.framework.ShareSDKCallback
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void onCallback(int[] iArr) {
                    ReceiveActivity.setUriScheme(ShareActivity.this.uriScheme);
                    ReceiveActivity.setPlatformActionListener(ShareActivity.this.listener);
                    if (iArr.length <= 1 || (iArr[0] < 4 && iArr[1] < 6)) {
                        intent.putExtra("key_request_code", 0);
                    }
                    intent.putExtra("pkg_name", ((FakeActivity) ShareActivity.this).activity.getPackageName());
                    ((FakeActivity) ShareActivity.this).activity.startActivityForResult(intent, 256);
                    if (Build.VERSION.SDK_INT >= 28) {
                        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ ShareActivity Build.VERSION.SDK_INT >= 28 activity.finish ");
                        ((FakeActivity) ShareActivity.this).activity.finish();
                    }
                }
            });
        } catch (Throwable th) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this.platform, 9, th);
            }
            SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ ShareActivity catch " + th);
            this.activity.finish();
        }
    }

    public static int compareVersion(String str, String str2) {
        if (str == null && str2 == null) {
            return 0;
        }
        if (str != null && str2 == null) {
            return 1;
        }
        if (str == null && str2 != null) {
            return -1;
        }
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        int i10 = 0;
        while (i10 < strArrSplit.length && i10 < strArrSplit2.length) {
            try {
                int i11 = Integer.parseInt(strArrSplit[i10]);
                int i12 = Integer.parseInt(strArrSplit2[i10]);
                if (i11 < i12) {
                    return -1;
                }
                if (i11 > i12) {
                    return 1;
                }
                i10++;
            } catch (NumberFormatException unused) {
                return str.compareTo(str2);
            }
        }
        if (strArrSplit.length > i10) {
            return 1;
        }
        return strArrSplit2.length > i10 ? -1 : 0;
    }

    public static String encodeToString(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Base64.encodeToString(str.getBytes("UTF-8"), 2);
            } catch (Throwable th) {
                SSDKLog.b().a("QQ convert2Base64String exception: " + th, new Object[0]);
            }
        }
        return "";
    }

    private void getQQClientVersion(final ShareSDKCallback<int[]> shareSDKCallback) {
        try {
            DH.requester(MobSDK.getContext()).getPInfoForce(true, QQ_PACKAGE_NAME, 0).request(new DH.DHResponder() { // from class: cn.sharesdk.tencent.qq.ShareActivity.4
                @Override // com.mob.tools.utils.DH.DHResponder
                public void onResponse(DH.DHResponse dHResponse) {
                    String str;
                    try {
                        str = dHResponse.getPInfoForce(new int[0]).versionName;
                    } catch (Throwable th) {
                        SSDKLog.b().a(th);
                        str = "0";
                    }
                    String[] strArrSplit = str.split("\\.");
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
                    ShareSDKCallback shareSDKCallback2 = shareSDKCallback;
                    if (shareSDKCallback2 != null) {
                        shareSDKCallback2.onCallback(iArr);
                    }
                }
            });
        } catch (Throwable unused) {
            if (shareSDKCallback != null) {
                shareSDKCallback.onCallback(new int[]{0});
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002e  */
    @SuppressLint({"WrongConstant"})
    private String getShareScheme(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i10, String str9, String str10, String str11, int i11) {
        String str12;
        String str13;
        String str14;
        String strDownloadBitmap;
        if (TextUtils.isEmpty(str4)) {
            str12 = str4;
            str13 = str5;
        } else {
            str12 = "";
            if (!TextUtils.isEmpty(str5)) {
                str13 = str5;
            } else if (str4.startsWith("https")) {
                try {
                    strDownloadBitmap = BitmapHelper.downloadBitmap(this.activity, str4);
                } catch (Throwable th) {
                    SSDKLog.b().a(th);
                    strDownloadBitmap = null;
                    str12 = str4;
                }
                str13 = strDownloadBitmap;
            } else {
                str12 = str4;
                str13 = str5;
            }
        }
        String str15 = "mqqapi://share/to_fri?src_type=app&version=1&file_type=news";
        if (!TextUtils.isEmpty(str12)) {
            str15 = "mqqapi://share/to_fri?src_type=app&version=1&file_type=news&image_url=" + Base64.encodeToString(str12.getBytes(), 2);
        }
        if (!TextUtils.isEmpty(str)) {
            str15 = str15 + "&title=" + Base64.encodeToString(str.getBytes(), 2);
        }
        if (!TextUtils.isEmpty(str3)) {
            str15 = str15 + "&description=" + Base64.encodeToString(str3.getBytes(), 2);
        }
        if (!TextUtils.isEmpty(str7)) {
            if (str7.length() > 20) {
                str14 = str7.substring(0, 20) + "...";
            } else {
                str14 = str7;
            }
            str15 = str15 + "&app_name=" + Base64.encodeToString(str14.getBytes(), 2);
        }
        if (!TextUtils.isEmpty(str8)) {
            str15 = str15 + "&share_id=" + str8;
        }
        if (!TextUtils.isEmpty(str2)) {
            str15 = str15 + "&url=" + Base64.encodeToString(str2.getBytes(), 2);
        }
        if (!TextUtils.isEmpty(str3)) {
            str15 = str15 + "&share_qq_ext_str=" + Base64.encodeToString(str3.getBytes(), 2);
        }
        if (i11 == 15) {
            if (!TextUtils.isEmpty(str9) && !TextUtils.isEmpty(str10)) {
                str15 = str15 + "&req_type=" + Base64.encodeToString("7".getBytes(), 2);
            }
            if (!TextUtils.isEmpty(str9)) {
                str15 = str15 + "&mini_program_appid=" + Base64.encodeToString(str9.getBytes(), 2);
            }
            if (!TextUtils.isEmpty(str10)) {
                str15 = str15 + "&mini_program_path=" + Base64.encodeToString(str10.getBytes(), 2);
            }
            if (!TextUtils.isEmpty(str11)) {
                str15 = str15 + "&mini_program_type=" + Base64.encodeToString(str11.getBytes(), 2);
            }
        } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str13)) {
            str15 = str15 + "&req_type=" + Base64.encodeToString("5".getBytes(), 2);
        } else if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str3) && TextUtils.isEmpty(str2)) {
            str15 = str15 + "&req_type=" + Base64.encodeToString("6".getBytes(), 2);
        } else if (TextUtils.isEmpty(str6)) {
            str15 = str15 + "&req_type=" + Base64.encodeToString("1".getBytes(), 2);
        } else {
            str15 = (str15 + "&req_type=" + Base64.encodeToString("2".getBytes(), 2)) + "&audioUrl=" + Base64.encodeToString(str6.getBytes(), 2);
        }
        if (!TextUtils.isEmpty(str13)) {
            try {
                File file = new File(str13);
                Uri uriA = ShareSDKFileProvider.a(MobSDK.getContext(), MobSDK.getContext().getPackageName() + ".cn.sharesdk.ShareSDKFileProvider", file);
                MobSDK.getContext().grantUriPermission(QQ_PACKAGE_NAME, uriA, 3);
                MobSDK.getContext().grantUriPermission("com.tencent.tim", uriA, 3);
                str15 = str15 + "&file_uri=" + Base64.encodeToString(uriA.toString().getBytes(), 2);
            } catch (Exception e10) {
                SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "doShareToQQ() getUriForFile exception:" + e10);
            }
        }
        if (!TextUtils.isEmpty(str13)) {
            str15 = str15 + "&file_data=" + Base64.encodeToString(str13.getBytes(), 2);
        }
        String str16 = str15 + "&cflag=" + Base64.encodeToString((i10 == 1 ? "10" : e.V).getBytes(), 2);
        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "QQ share params: " + str16);
        return str16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openMiniProgram(final String str, final String str2, final String str3) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            DH.requester(MobSDK.getContext()).getAInfoForPkg(DH.SyncMtd.getPackageName(), 128).request(new DH.DHResponder() { // from class: cn.sharesdk.tencent.qq.ShareActivity.2
                @Override // com.mob.tools.utils.DH.DHResponder
                public void onResponse(DH.DHResponse dHResponse) {
                    try {
                        ApplicationInfo aInfoForPkg = dHResponse.getAInfoForPkg(new int[0]);
                        if (aInfoForPkg == null) {
                            SSDKLog.b().a("ainfo null", new Object[0]);
                            return;
                        }
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setData(Uri.parse(String.format("mqqapi://connect_miniapp/launch?app_type=%1$s&mini_app_id=%2$s&version=1&src_type=app&app_name=%3$s&app_id=%4$s&src_id=%5$s&mini_app_path=%6$s&mini_app_type=%7$s&open_id=%8$s", "mini_program_or_game", str, ShareActivity.encodeToString(aInfoForPkg.sourceDir), ShareActivity.encodeToString(ShareActivity.this.appId), "21", ShareActivity.encodeToString(str2), ShareActivity.encodeToString(str3), ShareActivity.encodeToString(""))));
                        intent.putExtra("pkg_name", DH.SyncMtd.getPackageName());
                        ((FakeActivity) ShareActivity.this).activity.startActivity(intent);
                        if (Build.VERSION.SDK_INT >= 28) {
                            SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ ShareActivity Build.VERSION.SDK_INT >= 28 activity.finish ");
                            ((FakeActivity) ShareActivity.this).activity.finish();
                        }
                    } catch (Throwable th) {
                        if (ShareActivity.this.listener != null) {
                            ShareActivity.this.listener.onError(ShareActivity.this.platform, 9, th);
                        }
                        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ openMiniProgram catch " + th);
                        ((FakeActivity) ShareActivity.this).activity.finish();
                    }
                }
            });
            return;
        }
        PlatformActionListener platformActionListener = this.listener;
        if (platformActionListener != null) {
            platformActionListener.onError(this.platform, 9, new Throwable("miniAppId or miniPath or miniType is null"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shareMiniProgram(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i10, String str9, String str10, String str11, int i11) {
        advancedShare(str, str2, str3, str4, str5, str6, str7, str8, i10, str9, str10, str11, i11);
    }

    @Override // com.mob.tools.FakeActivity
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 256 && i11 == 0 && Build.VERSION.SDK_INT < 28) {
            this.listener.onCancel(this.platform, 9);
        }
        this.activity.finish();
    }

    @Override // com.mob.tools.FakeActivity
    public void onCreate() {
        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ ShareActivity onCreate");
        try {
            LinearLayout linearLayout = new LinearLayout(this.activity);
            linearLayout.setOrientation(1);
            this.activity.setContentView(linearLayout);
        } catch (Exception e10) {
            SSDKLog.b().a(e10);
        }
        Bundle extras = this.activity.getIntent().getExtras();
        final String string = extras.getString("title");
        final String string2 = extras.getString("titleUrl");
        final String string3 = extras.getString("summary");
        final String string4 = extras.getString("imageUrl");
        final String string5 = extras.getString("musicUrl");
        final String string6 = extras.getString("appId");
        final int i10 = extras.getInt("hidden");
        final String string7 = extras.getString("imagePath");
        final String string8 = extras.getString("mini_program_appid");
        final String string9 = extras.getString("mini_program_path");
        final String string10 = extras.getString("mini_program_type");
        final int i11 = extras.getInt("share_type");
        try {
            DH.requester(MobSDK.getContext()).getAppName().getPInfoForce(true, QQ_PACKAGE_NAME, 0).request(new DH.DHResponder() { // from class: cn.sharesdk.tencent.qq.ShareActivity.1
                @Override // com.mob.tools.utils.DH.DHResponder
                public void onResponse(DH.DHResponse dHResponse) {
                    try {
                        final String appName = dHResponse.getAppName();
                        int i12 = i11;
                        if (i12 == 15) {
                            if (ShareActivity.this.resultCompareVersion("8.0.8", dHResponse.getPInfoForce(new int[0]).versionName) < 0) {
                                if (ShareActivity.this.listener != null) {
                                    ShareActivity.this.listener.onError(ShareActivity.this.platform, 9, new Throwable("808以下不支持分享小程序"));
                                    return;
                                }
                                return;
                            } else {
                                ShareActivity.this.shareMiniProgram(string, string2, string3, string4, string7, string5, appName, string6, i10, string8, string9, string10, i11);
                                if (ShareActivity.this.listener != null) {
                                    ShareActivity.this.listener.onComplete(ShareActivity.this.platform, 9, new HashMap<>());
                                    return;
                                }
                                return;
                            }
                        }
                        if (i12 != 22) {
                            if (TextUtils.isEmpty(string8) && TextUtils.isEmpty(string9) && TextUtils.isEmpty(string10) && TextUtils.isEmpty(string) && TextUtils.isEmpty(string3) && TextUtils.isEmpty(string2) && ((TextUtils.isEmpty(string7) || !new File(string7).exists()) && !TextUtils.isEmpty(string4))) {
                                new Thread() { // from class: cn.sharesdk.tencent.qq.ShareActivity.1.1
                                    @Override // java.lang.Thread, java.lang.Runnable
                                    public void run() {
                                        String strDownloadBitmap;
                                        try {
                                            try {
                                                strDownloadBitmap = BitmapHelper.downloadBitmap(((FakeActivity) ShareActivity.this).activity, string4);
                                                SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ ShareActivity path: " + strDownloadBitmap);
                                            } catch (Throwable th) {
                                                SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ ShareActivity path catch " + th);
                                                SSDKLog.b().a(th);
                                                strDownloadBitmap = null;
                                            }
                                            String str = strDownloadBitmap;
                                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                            ShareActivity.this.advancedShare(string, string2, string3, string4, str, string5, appName, string6, i10, string8, string9, string10, i11);
                                        } catch (Throwable th2) {
                                            SSDKLog.b().a(th2);
                                            SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ ShareActivity run catch " + th2);
                                        }
                                    }
                                }.start();
                                return;
                            } else {
                                ShareActivity.this.advancedShare(string, string2, string3, string4, string7, string5, appName, string6, i10, string8, string9, string10, i11);
                                return;
                            }
                        }
                        if (TextUtils.isEmpty(string8)) {
                            if (ShareActivity.this.listener != null) {
                                ShareActivity.this.listener.onError(ShareActivity.this.platform, 9, new Throwable("Result is MINIAPP_ID_EMPTY : -1"));
                                return;
                            }
                            return;
                        }
                        if (!ShareActivity.OPEN_MINI_APP_TYPES.contains(string10)) {
                            if (ShareActivity.this.listener != null) {
                                ShareActivity.this.listener.onError(ShareActivity.this.platform, 9, new Throwable("Result is MINIAPP_VERSION_WRONG : -7"));
                            }
                        } else if (ShareActivity.this.resultCompareVersion("8.1.8", dHResponse.getPInfoForce(new int[0]).versionName) < 0) {
                            if (ShareActivity.this.listener != null) {
                                ShareActivity.this.listener.onError(ShareActivity.this.platform, 9, new Throwable("Result is MINIAPP_SHOULD_DOWNLOAD : -2"));
                            }
                        } else {
                            ShareActivity.this.openMiniProgram(string8, string9, string10);
                            if (ShareActivity.this.listener != null) {
                                ShareActivity.this.listener.onComplete(ShareActivity.this.platform, 9, new HashMap<>());
                            }
                        }
                    } catch (Throwable th) {
                        SSDKLog.b().a(th);
                    }
                }
            });
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    public int resultCompareVersion(String str, String str2) {
        return compareVersion(str2, str);
    }

    public void setAppId(String str) {
        this.uriScheme = "tencent" + str;
        this.appId = str;
    }

    public void setPlatformActionListener(Platform platform, PlatformActionListener platformActionListener) {
        this.platform = platform;
        this.listener = platformActionListener;
    }
}
