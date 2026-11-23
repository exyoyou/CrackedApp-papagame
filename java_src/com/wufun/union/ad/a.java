package com.wufun.union.ad;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;

/* JADX INFO: loaded from: classes8.dex */
public class a implements AdChannel.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f88157a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdChannel f88158b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Messenger f88159c;

    public a(Context context, AdChannel adChannel) {
        this.f88157a = context;
        this.f88158b = adChannel;
    }

    @Override // com.wufun.union.ad.AdChannel.a
    public void a(int i10, String str) {
        AdChannel adChannel = this.f88158b;
        if (adChannel != null) {
            AdChannel.Type type = adChannel.f88141c;
            if (type == AdChannel.Type.TT) {
                if (i10 == 6) {
                    c(adChannel.c());
                    this.f88158b.k(0);
                }
            } else if (type == AdChannel.Type.GDT && i10 == 6) {
                c(adChannel.c());
                this.f88158b.k(0);
            }
        }
        if (this.f88159c == null) {
            return;
        }
        Message message = new Message();
        Bundle bundle = new Bundle();
        bundle.putString("action", "onAdChannelCallback");
        bundle.putInt(NotificationCompat.CATEGORY_EVENT, i10);
        bundle.putString("message", str);
        message.setData(bundle);
        message.what = 0;
        try {
            this.f88159c.send(message);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public Messenger b() {
        return this.f88159c;
    }

    void c(String str) {
        if (TextUtils.isEmpty(str) || this.f88157a == null) {
            return;
        }
        Intent intent = new Intent(this.f88157a.getPackageName() + ".action.commonService");
        intent.setPackage(this.f88157a.getPackageName());
        intent.putExtra("action", "launchVGame");
        intent.putExtra("packageName", str);
        this.f88157a.startService(intent);
    }

    public void d(Messenger messenger) {
        this.f88159c = messenger;
    }
}
