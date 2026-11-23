package ms.bz.bd.c.Pgl;

import android.content.Context;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.lang.reflect.Method;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
public final class a2 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f94394c;
    private Class tt;
    private Method uj;
    private Object ve;

    public a2(Context context) {
        this.f94394c = context;
        try {
            Class<?> cls = Class.forName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "6fd825", new byte[]{BinaryMemcacheOpcodes.GATKQ, 107, 26, 2, 12, HttpConstants.COMMA, com.sigmob.sdk.archives.tar.e.I, 85, HttpConstants.COLON, 97, BinaryMemcacheOpcodes.GATK, 42, BinaryMemcacheOpcodes.GATQ, 72, 67, 43, 56, 87, 57, 38, 14, 96, 39, 94, 2, com.sigmob.sdk.archives.tar.e.L, 60, 67, com.sigmob.sdk.archives.tar.e.H, 122, 14, 105, 7, 64}));
            this.tt = cls;
            this.ve = cls.newInstance();
        } catch (Exception unused) {
        }
        try {
            this.uj = this.tt.getMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "589b43", new byte[]{BinaryMemcacheOpcodes.GATK, Utf8.REPLACEMENT_BYTE, 94, 57, 42, 13, BinaryMemcacheOpcodes.ADDQ}), Context.class);
        } catch (Exception unused2) {
        }
    }

    public final String c() {
        Context context = this.f94394c;
        Method method = this.uj;
        Object obj = this.ve;
        if (obj != null && method != null) {
            try {
                return (String) method.invoke(obj, context);
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
