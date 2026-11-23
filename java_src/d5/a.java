package d5;

import com.coremedia.iso.c;
import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.coremedia.iso.boxes.sampleentry.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f90707p = "amf0";

    public a() {
        super(f90707p);
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(s());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.position(6);
        i.f(byteBufferAllocate, this.f25060o);
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        h(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long jO = o() + 8;
        return jO + ((long) ((this.f33267m || jO >= 4294967296L) ? 16 : 8));
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void i(e eVar, ByteBuffer byteBuffer, long j10, c cVar) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        eVar.read(byteBufferAllocate);
        byteBufferAllocate.position(6);
        this.f25060o = g.i(byteBufferAllocate);
        p(eVar, j10 - 8, cVar);
    }
}
