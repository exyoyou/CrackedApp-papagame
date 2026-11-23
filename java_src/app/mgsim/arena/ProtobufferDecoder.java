package app.mgsim.arena;

import com.google.protobuf.MessageLite;
import com.papa91.battle.protocol.Response;
import org.jboss.netty.channel.e;
import org.jboss.netty.channel.m;
import org.jboss.netty.handler.codec.frame.a;

/* JADX INFO: loaded from: classes7.dex */
public class ProtobufferDecoder extends a {
    private static final boolean HAS_PARSER;
    private static final String TAG = "ArenaService";

    static {
        boolean z10 = false;
        try {
            MessageLite.class.getDeclaredMethod("getParserForType", new Class[0]);
            z10 = true;
        } catch (Throwable unused) {
        }
        HAS_PARSER = z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.jboss.netty.handler.codec.frame.a
    protected Object decode(m mVar, e eVar, org.jboss.netty.buffer.e eVar2) throws Exception {
        try {
            if (eVar2.readableBytes() < 4) {
                return null;
            }
            eVar2.l0();
            int i10 = eVar2.readInt();
            if (eVar2.readableBytes() < i10) {
                eVar2.p0();
                return null;
            }
            org.jboss.netty.buffer.e eVarN = eVar2.N(i10);
            try {
                return HAS_PARSER ? Response.getDefaultInstance().getParserForType().parseFrom(eVarN.array()) : ((Response.Builder) Response.getDefaultInstance().newBuilderForType().mergeFrom(eVarN.array())).build();
            } catch (Exception e10) {
                eVar.close();
                throw e10;
            }
        } catch (Exception unused) {
            return null;
        }
    }
}
