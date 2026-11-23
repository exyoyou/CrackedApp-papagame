package io.netty.resolver.dns;

import io.netty.channel.AddressedEnvelope;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelPromise;
import io.netty.handler.codec.dns.AbstractDnsOptPseudoRrRecord;
import io.netty.handler.codec.dns.DnsQuery;
import io.netty.handler.codec.dns.DnsQuestion;
import io.netty.handler.codec.dns.DnsRecord;
import io.netty.handler.codec.dns.DnsResponse;
import io.netty.handler.codec.dns.DnsSection;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.FutureListener;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.Promise;
import io.netty.util.concurrent.ScheduledFuture;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.net.InetSocketAddress;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
abstract class DnsQueryContext implements FutureListener<AddressedEnvelope<DnsResponse, InetSocketAddress>> {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) DnsQueryContext.class);
    private final DnsRecord[] additionals;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final int f91660id;
    private final InetSocketAddress nameServerAddr;
    private final DnsRecord optResource;
    private final DnsNameResolver parent;
    private final Promise<AddressedEnvelope<DnsResponse, InetSocketAddress>> promise;
    private final DnsQuestion question;
    private final boolean recursionDesired;
    private volatile ScheduledFuture<?> timeoutFuture;

    DnsQueryContext(DnsNameResolver dnsNameResolver, InetSocketAddress inetSocketAddress, DnsQuestion dnsQuestion, DnsRecord[] dnsRecordArr, Promise<AddressedEnvelope<DnsResponse, InetSocketAddress>> promise) {
        this.parent = (DnsNameResolver) ObjectUtil.checkNotNull(dnsNameResolver, "parent");
        this.nameServerAddr = (InetSocketAddress) ObjectUtil.checkNotNull(inetSocketAddress, "nameServerAddr");
        this.question = (DnsQuestion) ObjectUtil.checkNotNull(dnsQuestion, "question");
        this.additionals = (DnsRecord[]) ObjectUtil.checkNotNull(dnsRecordArr, "additionals");
        this.promise = (Promise) ObjectUtil.checkNotNull(promise, "promise");
        this.recursionDesired = dnsNameResolver.isRecursionDesired();
        this.f91660id = dnsNameResolver.queryContextManager.add(this);
        promise.addListener((GenericFutureListener<? extends Future<? super AddressedEnvelope<DnsResponse, InetSocketAddress>>>) this);
        if (!dnsNameResolver.isOptResourceEnabled()) {
            this.optResource = null;
        } else {
            int i10 = 0;
            this.optResource = new AbstractDnsOptPseudoRrRecord(dnsNameResolver.maxPayloadSize(), i10, i10) { // from class: io.netty.resolver.dns.DnsQueryContext.1
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onQueryWriteCompletion(ChannelFuture channelFuture) {
        if (channelFuture.isSuccess()) {
            final long jQueryTimeoutMillis = this.parent.queryTimeoutMillis();
            if (jQueryTimeoutMillis > 0) {
                this.timeoutFuture = this.parent.ch.eventLoop().schedule(new Runnable() { // from class: io.netty.resolver.dns.DnsQueryContext.4
                    @Override // java.lang.Runnable
                    public void run() {
                        if (DnsQueryContext.this.promise.isDone()) {
                            return;
                        }
                        DnsQueryContext.this.tryFailure("query via " + DnsQueryContext.this.protocol() + " timed out after " + jQueryTimeoutMillis + " milliseconds", null, true);
                    }
                }, jQueryTimeoutMillis, TimeUnit.MILLISECONDS);
                return;
            }
            return;
        }
        tryFailure("failed to send a query via " + protocol(), channelFuture.cause(), false);
    }

    private void sendQuery(final DnsQuery dnsQuery, boolean z10, final ChannelPromise channelPromise) {
        if (this.parent.channelFuture.isDone()) {
            writeQuery(dnsQuery, z10, channelPromise);
        } else {
            this.parent.channelFuture.addListener(new GenericFutureListener<Future<? super Channel>>() { // from class: io.netty.resolver.dns.DnsQueryContext.2
                @Override // io.netty.util.concurrent.GenericFutureListener
                public void operationComplete(Future<? super Channel> future) {
                    if (future.isSuccess()) {
                        DnsQueryContext.this.writeQuery(dnsQuery, true, channelPromise);
                        return;
                    }
                    Throwable thCause = future.cause();
                    DnsQueryContext.this.promise.tryFailure(thCause);
                    channelPromise.setFailure(thCause);
                }
            });
        }
    }

    private boolean trySuccess(AddressedEnvelope<? extends DnsResponse, InetSocketAddress> addressedEnvelope) {
        return this.promise.trySuccess(addressedEnvelope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeQuery(DnsQuery dnsQuery, boolean z10, ChannelPromise channelPromise) {
        final ChannelFuture channelFutureWriteAndFlush = z10 ? channel().writeAndFlush(dnsQuery, channelPromise) : channel().write(dnsQuery, channelPromise);
        if (channelFutureWriteAndFlush.isDone()) {
            onQueryWriteCompletion(channelFutureWriteAndFlush);
        } else {
            channelFutureWriteAndFlush.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.resolver.dns.DnsQueryContext.3
                @Override // io.netty.util.concurrent.GenericFutureListener
                public void operationComplete(ChannelFuture channelFuture) {
                    DnsQueryContext.this.onQueryWriteCompletion(channelFutureWriteAndFlush);
                }
            });
        }
    }

    protected abstract Channel channel();

    void finish(AddressedEnvelope<? extends DnsResponse, InetSocketAddress> addressedEnvelope) {
        DnsResponse dnsResponseContent = addressedEnvelope.content();
        DnsSection dnsSection = DnsSection.QUESTION;
        if (dnsResponseContent.count(dnsSection) != 1) {
            logger.warn("Received a DNS response with invalid number of questions: {}", addressedEnvelope);
        } else if (!question().equals(dnsResponseContent.recordAt(dnsSection))) {
            logger.warn("Received a mismatching DNS response: {}", addressedEnvelope);
        } else if (trySuccess(addressedEnvelope)) {
            return;
        }
        addressedEnvelope.release();
    }

    InetSocketAddress nameServerAddr() {
        return this.nameServerAddr;
    }

    protected abstract DnsQuery newQuery(int i10);

    @Override // io.netty.util.concurrent.GenericFutureListener
    public void operationComplete(Future<AddressedEnvelope<DnsResponse, InetSocketAddress>> future) {
        ScheduledFuture<?> scheduledFuture = this.timeoutFuture;
        if (scheduledFuture != null) {
            this.timeoutFuture = null;
            scheduledFuture.cancel(false);
        }
        this.parent.queryContextManager.remove(this.nameServerAddr, this.f91660id);
    }

    DnsNameResolver parent() {
        return this.parent;
    }

    protected abstract String protocol();

    void query(boolean z10, ChannelPromise channelPromise) {
        DnsQuestion dnsQuestionQuestion = question();
        InetSocketAddress inetSocketAddressNameServerAddr = nameServerAddr();
        DnsQuery dnsQueryNewQuery = newQuery(this.f91660id);
        dnsQueryNewQuery.setRecursionDesired(this.recursionDesired);
        dnsQueryNewQuery.addRecord(DnsSection.QUESTION, (DnsRecord) dnsQuestionQuestion);
        for (DnsRecord dnsRecord : this.additionals) {
            dnsQueryNewQuery.addRecord(DnsSection.ADDITIONAL, dnsRecord);
        }
        DnsRecord dnsRecord2 = this.optResource;
        if (dnsRecord2 != null) {
            dnsQueryNewQuery.addRecord(DnsSection.ADDITIONAL, dnsRecord2);
        }
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("{} WRITE: {}, [{}: {}], {}", channel(), protocol(), Integer.valueOf(this.f91660id), inetSocketAddressNameServerAddr, dnsQuestionQuestion);
        }
        sendQuery(dnsQueryNewQuery, z10, channelPromise);
    }

    DnsQuestion question() {
        return this.question;
    }

    boolean tryFailure(String str, Throwable th, boolean z10) {
        if (this.promise.isDone()) {
            return false;
        }
        InetSocketAddress inetSocketAddressNameServerAddr = nameServerAddr();
        StringBuilder sb2 = new StringBuilder(str.length() + 64);
        sb2.append('[');
        sb2.append(inetSocketAddressNameServerAddr);
        sb2.append("] ");
        sb2.append(str);
        sb2.append(" (no stack trace available)");
        return this.promise.tryFailure(z10 ? new DnsNameResolverTimeoutException(inetSocketAddressNameServerAddr, question(), sb2.toString()) : new DnsNameResolverException(inetSocketAddressNameServerAddr, question(), sb2.toString(), th));
    }
}
