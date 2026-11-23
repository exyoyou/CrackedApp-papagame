package com.join.mgps.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.SmsMessage;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class SMSBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f72274a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f72275b = "android.provider.Telephony.SMS_RECEIVED";

    public interface a {
        void a(String message);
    }

    public void a(a messageListener) {
        f72274a = messageListener;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(f72275b)) {
            for (Object obj : (Object[]) intent.getExtras().get("pdus")) {
                SmsMessage smsMessageCreateFromPdu = SmsMessage.createFromPdu((byte[]) obj);
                smsMessageCreateFromPdu.getDisplayOriginatingAddress();
                String displayMessageBody = smsMessageCreateFromPdu.getDisplayMessageBody();
                new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(smsMessageCreateFromPdu.getTimestampMillis()));
                f72274a.a(displayMessageBody);
            }
        }
    }
}
