package com.join.android.app.common.http;

import android.content.Context;
import android.os.Build;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.join.android.app.common.utils.q;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.k2;
import com.join.mgps.Util.s1;
import com.join.mgps.dto.CloudUploadInfo;
import com.join.mgps.dto.Constant;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.SearchHistoryBean;
import com.papa.sim.statistic.UpLoadGameConfig;
import com.papa.sim.statistic.UpLoadGameConfigTemp;
import com.tencent.stat.DeviceInfo;
import java.io.File;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* JADX INFO: loaded from: classes5.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static h f34612a;

    class a extends d.p<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f34613b;

        a(final com.join.android.app.common.http.b val$callback) {
            this.f34613b = val$callback;
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception e10) {
            e10.printStackTrace();
            this.f34613b.a(e10);
        }

        @Override // com.join.android.app.common.http.d.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String rs) {
            this.f34613b.onSuccess(rs);
        }
    }

    class b extends d.p<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f34615b;

        b(final com.join.android.app.common.http.b val$callback) {
            this.f34615b = val$callback;
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception e10) {
            e10.printStackTrace();
            this.f34615b.a(e10);
        }

        @Override // com.join.android.app.common.http.d.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String rs) {
            this.f34615b.onSuccess(rs);
        }
    }

    private h() {
    }

    public static h b() {
        if (f34612a == null) {
            f34612a = new h();
        }
        return f34612a;
    }

    public void a(String tag) {
        d.t(tag);
    }

    public void c(Context context) {
        d.y("http://datainterface.5fun.com/tf?net_type=" + s1.a(context) + "&v=" + q.n(context).z() + "_" + q.n(context).A(), null, null);
    }

    public String d(String[] uploadFiles, String uid, String token, String gameId, String archiveName, String archiveFileName, g listner, String archiveDesc, int shareType) {
        String str;
        String str2;
        MultipartBody multipartBodyBuild;
        OkHttpClient okHttpClient = new OkHttpClient();
        if (uploadFiles.length < 2) {
            return "";
        }
        File file = new File(uploadFiles[0]);
        File file2 = new File(uploadFiles[1]);
        int i10 = shareType != 1 ? 1 : 2;
        if (i10 == 1) {
            MultipartBody.Builder builderAddFormDataPart = new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("archiveFile", file.getName(), RequestBody.create(MediaType.parse("application/octet-stream"), file)).addFormDataPart("archiveCover", file2.getName(), RequestBody.create(MediaType.parse("application/octet-stream"), file2)).addFormDataPart("uid", uid).addFormDataPart(Constants.TOKEN, token).addFormDataPart("gameId", gameId).addFormDataPart("archiveName", archiveName).addFormDataPart("archiveDesc", archiveDesc);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i10);
            str = "";
            sb2.append(str);
            str2 = archiveFileName;
            multipartBodyBuild = builderAddFormDataPart.addFormDataPart("shareType", sb2.toString()).addFormDataPart("archiveFileName", str2).build();
        } else {
            str = "";
            str2 = archiveFileName;
            multipartBodyBuild = new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("uid", uid).addFormDataPart(Constants.TOKEN, token).addFormDataPart("gameId", gameId).addFormDataPart("archiveName", archiveName).addFormDataPart("archiveDesc", archiveDesc).addFormDataPart("shareType", i10 + str).build();
        }
        try {
            Response responseExecute = okHttpClient.newCall(new Request.Builder().url(com.join.mgps.rpc.h.f72403z + "/cloud/shareArchive").post(new f(multipartBodyBuild, listner, str2)).build()).execute();
            return !responseExecute.isSuccessful() ? str : responseExecute.body().string();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void e(Context context, CloudUploadInfo cloudUploadInfo, File file, final com.join.android.app.common.http.b callback) {
        d.I().f(com.join.mgps.rpc.h.f72357l + "/v16/backup/upload", "backup_file", file, new d.n[]{new d.n("rid", cloudUploadInfo.getRid() + ""), new d.n("uid", cloudUploadInfo.getUid() + ""), new d.n(Constants.TOKEN, cloudUploadInfo.getToken()), new d.n("backup_type", "game"), new d.n("game_id", cloudUploadInfo.getGame_id())}, new b(callback), file.getName());
    }

    public String f(String uploadFile, String uid, String token, RequestModel requestModel, String channelNum, String archiveFileName, g listner) {
        OkHttpClient.Builder builderNewBuilder = new OkHttpClient().newBuilder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient okHttpClientBuild = builderNewBuilder.readTimeout(60L, timeUnit).writeTimeout(60L, timeUnit).build();
        File file = new File(uploadFile);
        try {
            Response responseExecute = okHttpClientBuild.newCall(new Request.Builder().url(com.join.mgps.rpc.h.B + "/common/upload").post(new f(new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("args.archiveFile", file.getName(), RequestBody.create(MediaType.parse("application/octet-stream"), file)).addFormDataPart("args.uid", uid).addFormDataPart("args.userToken", token).addFormDataPart("WF", "wufun").addFormDataPart("androidId", requestModel.getAndroidId()).addFormDataPart("androidVer", Build.VERSION.SDK_INT + "").addFormDataPart("args.async", "1").addFormDataPart("channelNum", channelNum).addFormDataPart("deviceId", requestModel.getDeviceId()).addFormDataPart("hDeviceId", MApplication.A).addFormDataPart("package_name", requestModel.getPackage_name()).addFormDataPart("package_type", requestModel.getPackage_type()).addFormDataPart("platform", requestModel.getPlatform()).addFormDataPart("version", requestModel.getVersion()).build(), listner, archiveFileName)).build()).execute();
            String strString = responseExecute.body().string();
            g1.c("upload File " + strString);
            return !responseExecute.isSuccessful() ? "" : strString;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String g(String uploadFile, String uid, String token, RequestModel requestModel, String channelNum, String archiveFileName, int keepFilename, int isVideo, g listner) {
        OkHttpClient.Builder builderNewBuilder = new OkHttpClient().newBuilder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient okHttpClientBuild = builderNewBuilder.readTimeout(60L, timeUnit).writeTimeout(60L, timeUnit).build();
        File file = new File(uploadFile);
        try {
            Response responseExecute = okHttpClientBuild.newCall(new Request.Builder().url(com.join.mgps.rpc.h.B + "/v2/common/upload").post(new f(new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("args.archiveFile", file.getName(), RequestBody.create(MediaType.parse("application/octet-stream"), file)).addFormDataPart("args.uid", uid).addFormDataPart("args.userToken", token).addFormDataPart("WF", "wufun").addFormDataPart("androidId", requestModel.getAndroidId()).addFormDataPart("androidVer", Build.VERSION.SDK_INT + "").addFormDataPart("args.async", "1").addFormDataPart("channelNum", channelNum).addFormDataPart("deviceId", requestModel.getDeviceId()).addFormDataPart("hDeviceId", MApplication.A).addFormDataPart("package_name", requestModel.getPackage_name()).addFormDataPart("package_type", requestModel.getPackage_type()).addFormDataPart("platform", requestModel.getPlatform()).addFormDataPart("version", requestModel.getVersion()).addFormDataPart("args.keepFilename", keepFilename + "").addFormDataPart("args.needCover", String.valueOf(isVideo)).build(), listner, archiveFileName)).build()).execute();
            String strString = responseExecute.body().string();
            g1.c("upload File " + strString);
            if (responseExecute.isSuccessful()) {
                return strString;
            }
            listner.onUploadFailed(responseExecute.message());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return "";
    }

    public void h(Context context, UpLoadGameConfig upLoadGameConfig, File file, final com.join.android.app.common.http.b callback) {
        UpLoadGameConfigTemp upLoadGameConfigTemp = new UpLoadGameConfigTemp();
        upLoadGameConfigTemp.setUid(upLoadGameConfig.getUid());
        upLoadGameConfigTemp.setDevice_id("");
        upLoadGameConfigTemp.setVer(q.n(context).z());
        upLoadGameConfigTemp.setToken(upLoadGameConfig.getToken());
        upLoadGameConfigTemp.setGame_name(upLoadGameConfig.getGame_name());
        upLoadGameConfigTemp.setGame_type(upLoadGameConfig.getGame_type());
        upLoadGameConfigTemp.setGame_platform_type(upLoadGameConfig.getGame_platform_type());
        upLoadGameConfigTemp.setGame_explain(upLoadGameConfig.getGame_explain());
        String strG = k2.g(upLoadGameConfigTemp);
        d.I().f(com.join.mgps.rpc.h.f72349j + "/user/upfile/upload_game_pack", "files", file, new d.n[]{new d.n("uid", upLoadGameConfig.getUid() + ""), new d.n(DeviceInfo.TAG_VERSION, q.n(context).z() + ""), new d.n(Constants.TOKEN, upLoadGameConfig.getToken()), new d.n(SearchHistoryBean.GAME_NAME, upLoadGameConfig.getGame_name()), new d.n("game_type", upLoadGameConfig.getGame_type() + ""), new d.n(DeviceInfo.TAG_VERSION, q.n(context).z() + ""), new d.n(Constants.TOKEN, upLoadGameConfig.getToken()), new d.n(SearchHistoryBean.GAME_NAME, upLoadGameConfig.getGame_name()), new d.n("game_type", upLoadGameConfig.getGame_type() + ""), new d.n("game_platform_type", upLoadGameConfig.getGame_platform_type() + ""), new d.n("game_explain", upLoadGameConfig.getGame_explain()), new d.n(Constant.MD5, strG), new d.n("device_id", "")}, new a(callback), file.getName());
    }

    public String i(String uploadFile, String uid, String token, String gameId, String archiveDesc, String version, String archiveFileName, String screenShot, g listner) {
        OkHttpClient.Builder builderNewBuilder = new OkHttpClient().newBuilder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient okHttpClientBuild = builderNewBuilder.readTimeout(60L, timeUnit).writeTimeout(60L, timeUnit).build();
        File file = new File(uploadFile);
        File file2 = new File(screenShot);
        try {
            Response responseExecute = okHttpClientBuild.newCall(new Request.Builder().url(com.join.mgps.rpc.h.B + "/v6_2/game/cloudArchive/release").post(new f(new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("args.archiveFile", file.getName(), RequestBody.create(MediaType.parse("application/octet-stream"), file)).addFormDataPart("args.archiveCover", file2.getName(), file2.exists() ? RequestBody.create(MediaType.parse("application/octet-stream"), file2) : null).addFormDataPart("args.uid", uid).addFormDataPart("args.userToken", token).addFormDataPart("args.gameId", gameId).addFormDataPart("args.archiveDesc", archiveDesc).addFormDataPart("args.version", version).build(), listner, archiveFileName)).build()).execute();
            String strString = responseExecute.body().string();
            g1.c("upload File " + strString);
            return !responseExecute.isSuccessful() ? "" : strString;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public String j(String[] uploadFiles, String uid, String token, String gameId, String archiveName, String archiveFileName, String archiveFileMd5, g listner) {
        OkHttpClient okHttpClient = new OkHttpClient();
        if (uploadFiles.length < 2) {
            return "";
        }
        File file = new File(uploadFiles[0]);
        File file2 = new File(uploadFiles[1]);
        try {
            Response responseExecute = okHttpClient.newCall(new Request.Builder().url(com.join.mgps.rpc.h.f72403z + "/cloud/backupArchive").post(new f(new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("archiveFile", file.getName(), RequestBody.create(MediaType.parse("application/octet-stream"), file)).addFormDataPart("archiveCover", file2.getName(), RequestBody.create(MediaType.parse("application/octet-stream"), file2)).addFormDataPart("uid", uid).addFormDataPart(Constants.TOKEN, token).addFormDataPart("gameId", gameId).addFormDataPart("archiveName", archiveName).addFormDataPart("archiveFileName", archiveFileName).addFormDataPart("archiveFileMd5", archiveFileMd5).build(), listner, archiveFileName)).build()).execute();
            String strString = responseExecute.body().string();
            g1.c("upload File " + strString);
            return !responseExecute.isSuccessful() ? "" : strString;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
