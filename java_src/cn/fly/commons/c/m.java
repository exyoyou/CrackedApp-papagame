package cn.fly.commons.c;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.Signature;
import android.os.IBinder;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.tools.utils.DH;
import java.security.MessageDigest;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public class m extends h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f1183c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f1184d;

    public m(Context context) {
        super(context);
        this.f1183c = cn.fly.commons.m.a("025e_fmfhfnGjhWge%kflAfnfmWlhg'fkfefnggijFlhgTgghn");
    }

    @Override // cn.fly.commons.c.h
    protected Intent a() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(cn.fly.commons.m.a("017e]fmfhfnTjh6ge%kfl2fnfm7lhg>fkfe"), cn.fly.commons.m.a("033eMfmfhfn_jhAgeOkfl+fnfm$lhgHfkfefnggfeLhgkNfkghgegnMhWflfffk6eh")));
        intent.setAction(cn.fly.commons.m.a("040fek?fkfm5gNfn+e?fmfhfn%jh^ge2kfl?fnfm5lhgQfkfefnijinikgifjgghnfjgnikilimgggfik"));
        return intent;
    }

    @Override // cn.fly.commons.c.h
    public h.b a(IBinder iBinder) {
        h.b bVar = new h.b();
        bVar.f1176a = a(iBinder, cn.fly.commons.m.a("004Bijgmgghn"));
        return bVar;
    }

    private final String a(IBinder iBinder, String str) {
        if (TextUtils.isEmpty(this.f1184d)) {
            try {
                final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
                DH.requester(FlySDK.getContext()).getMpfo(this.f1169b, 64).request(new DH.DHResponder() { // from class: cn.fly.commons.c.m.1
                    @Override // cn.fly.tools.utils.DH.DHResponder
                    public void onResponse(DH.DHResponse dHResponse) {
                        if (dHResponse.getMpfo(new int[0]) != null) {
                            linkedBlockingQueue.offer(dHResponse.getMpfo(new int[0]));
                        } else {
                            linkedBlockingQueue.offer(Boolean.FALSE);
                        }
                    }
                });
                Object objPoll = linkedBlockingQueue.poll(300L, TimeUnit.MILLISECONDS);
                Signature[] signatureArrB = !(objPoll instanceof Boolean) ? cn.fly.tools.c.b(objPoll, this.f1169b) : null;
                if (signatureArrB != null && signatureArrB.length > 0) {
                    byte[] byteArray = signatureArrB[0].toByteArray();
                    MessageDigest messageDigest = MessageDigest.getInstance(cn.fly.commons.m.a("004Dgnhmhfjh"));
                    if (messageDigest != null) {
                        byte[] bArrDigest = messageDigest.digest(byteArray);
                        StringBuilder sb2 = new StringBuilder();
                        for (byte b10 : bArrDigest) {
                            sb2.append(Integer.toHexString((b10 & 255) | 256).substring(1, 3));
                        }
                        this.f1184d = sb2.toString();
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return a(str, iBinder, this.f1183c, 1, this.f1169b, this.f1184d, str);
    }
}
