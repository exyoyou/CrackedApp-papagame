package ms.bz.bd.c.Pgl;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes.dex */
public final class c1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f94395c;

    public c1(Context context) {
        this.f94395c = context;
    }

    public final String c() {
        Uri uri = Uri.parse((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "9e76b8", new byte[]{43, 104, 74, 86, com.sigmob.sdk.archives.tar.e.S, BinaryMemcacheOpcodes.SASL_AUTH, 46, BinaryMemcacheOpcodes.GATQ, 41, 41, 43, 105, 10, com.sigmob.sdk.archives.tar.e.P, 72, 45, com.sigmob.sdk.archives.tar.e.K, 69, 40, 111, HttpConstants.COMMA, 98, 74, 86, 84, HttpConstants.SEMICOLON, BinaryMemcacheOpcodes.GATK, 11, 111, 98, 45, 105, 80, 75, 73, com.sigmob.sdk.archives.tar.e.N}));
        try {
            int i10 = Build.VERSION.SDK_INT;
            try {
                ContentProviderClient contentProviderClientAcquireContentProviderClient = this.f94395c.getContentResolver().acquireContentProviderClient(uri);
                Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "868c98", new byte[]{46, com.sigmob.sdk.archives.tar.e.I, 95, 56, 39, 6, 31}), null, null);
                contentProviderClientAcquireContentProviderClient.release();
                if (bundleCall.getInt((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "77257d", new byte[]{37, HttpConstants.COLON, 69, 68}), -1) == 0) {
                    return bundleCall.getString((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "aca116", new byte[]{121, 101}));
                }
                bundleCall.getString((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c5ec86", new byte[]{ByteCompanionObject.MAX_VALUE, com.sigmob.sdk.archives.tar.e.J, 5, 4, 6, 38, 101}));
                return null;
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
        }
    }
}
