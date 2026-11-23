package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;

/* JADX INFO: loaded from: classes7.dex */
public class SendMessageReq extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WXMediaMessage f2967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2969c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public IWXSceneDataObject f2970d;

    public interface IWXSceneDataObject {
        boolean checkArgs();

        int getJumpType();

        void serialize(Bundle bundle);

        void unserialize(Bundle bundle);
    }

    @Override // cn.sharesdk.wechat.utils.m
    public int a() {
        return 2;
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void b(Bundle bundle) {
        super.b(bundle);
        bundle.putAll(WXMediaMessage.a.a(this.f2967a));
        bundle.putInt("_wxapi_sendmessagetowx_req_scene", this.f2968b);
        bundle.putInt("_wxapi_sendmessagetowx_req_media_type", this.f2967a.getType());
        bundle.putString("_wxapi_sendmessagetowx_req_use_open_id", this.f2969c);
        IWXSceneDataObject iWXSceneDataObject = this.f2970d;
        if (iWXSceneDataObject != null) {
            bundle.putString("_scene_data_object_identifier", iWXSceneDataObject.getClass().getName());
            this.f2970d.serialize(bundle);
        }
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void a(Bundle bundle) {
        super.a(bundle);
        this.f2967a = WXMediaMessage.a.a(bundle);
        this.f2968b = bundle.getInt("_wxapi_sendmessagetowx_req_scene");
        this.f2969c = bundle.getString("_wxapi_sendmessagetowx_req_use_open_id");
        if (bundle.getString("_scene_data_object_identifie") != null) {
            try {
                IWXSceneDataObject iWXSceneDataObject = (IWXSceneDataObject) Class.forName(bundle.getString("_scene_data_object_identifie")).newInstance();
                this.f2970d = iWXSceneDataObject;
                iWXSceneDataObject.unserialize(bundle);
            } catch (ClassNotFoundException e10) {
                e10.printStackTrace();
            } catch (IllegalAccessException e11) {
                e11.printStackTrace();
            } catch (InstantiationException e12) {
                e12.printStackTrace();
            }
        }
    }

    @Override // cn.sharesdk.wechat.utils.m
    public boolean b() {
        int type = this.f2967a.getType();
        WXMediaMessage wXMediaMessage = this.f2967a;
        if (wXMediaMessage == null) {
            SSDKLog.b().a("MicroMsg.SDK.SendMessageToWX.Req", "checkArgs fail ,message is null");
            return false;
        }
        if (type == 6 && this.f2968b == 2) {
            ((WXFileObject) wXMediaMessage.mediaObject).setContentLengthLimit(26214400);
        }
        int i10 = this.f2968b;
        if (i10 == 3 && this.f2969c == null) {
            SSDKLog.b().a("MicroMsg.SDK.SendMessageToWX.Req", "Send specifiedContact userOpenId can not be null.");
            return false;
        }
        if (i10 == 3 && this.f3086f == null) {
            SSDKLog.b().a("MicroMsg.SDK.SendMessageToWX.Req", "Send specifiedContact openid can not be null.");
            return false;
        }
        if (i10 != 4) {
            return this.f2967a.a();
        }
        if (this.f2970d == null) {
            SSDKLog.b().a("MicroMsg.SDK.SendMessageToWX.Req", "checkArgs fail, sceneDataObject is null");
            return false;
        }
        if (this.f2967a.getType() == 1) {
            return this.f2970d.checkArgs();
        }
        return this.f2967a.a() && this.f2970d.checkArgs();
    }
}
