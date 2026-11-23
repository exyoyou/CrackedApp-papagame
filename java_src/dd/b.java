package dd;

import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.e;
import org.jboss.netty.channel.j;

/* JADX INFO: loaded from: classes10.dex */
public interface b extends Iterable<j> {
    j R(Integer num);

    b await() throws InterruptedException;

    boolean await(long j10) throws InterruptedException;

    boolean await(long j10, TimeUnit timeUnit) throws InterruptedException;

    b awaitUninterruptibly();

    boolean awaitUninterruptibly(long j10);

    boolean awaitUninterruptibly(long j10, TimeUnit timeUnit);

    j c(e eVar);

    void e(c cVar);

    void g(c cVar);

    a getGroup();

    boolean isDone();

    boolean isPartialFailure();

    boolean isPartialSuccess();

    @Override // java.lang.Iterable
    Iterator<j> iterator();

    boolean q();

    boolean s();
}
