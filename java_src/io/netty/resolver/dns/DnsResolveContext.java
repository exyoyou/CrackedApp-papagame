package io.netty.resolver.dns;

import com.join.mgps.Util.o0;
import external.org.apache.commons.lang3.d;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufHolder;
import io.netty.channel.AddressedEnvelope;
import io.netty.channel.ChannelPromise;
import io.netty.channel.EventLoop;
import io.netty.handler.codec.CorruptedFrameException;
import io.netty.handler.codec.dns.DefaultDnsQuestion;
import io.netty.handler.codec.dns.DefaultDnsRecordDecoder;
import io.netty.handler.codec.dns.DnsQuestion;
import io.netty.handler.codec.dns.DnsRawRecord;
import io.netty.handler.codec.dns.DnsRecord;
import io.netty.handler.codec.dns.DnsRecordType;
import io.netty.handler.codec.dns.DnsResponse;
import io.netty.handler.codec.dns.DnsResponseCode;
import io.netty.handler.codec.dns.DnsSection;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.FutureListener;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.Promise;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.SuppressJava6Requirement;
import io.netty.util.internal.ThrowableUtil;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
abstract class DnsResolveContext<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    final DnsRecord[] additionals;
    private int allowedQueries;
    private boolean completeEarly;
    private final int dnsClass;
    private final DnsRecordType[] expectedTypes;
    private List<T> finalResult;
    private final String hostname;
    private final int maxAllowedQueries;
    private final DnsServerAddressStream nameServerAddrs;
    final DnsNameResolver parent;
    private final Set<Future<AddressedEnvelope<DnsResponse, InetSocketAddress>>> queriesInProgress = Collections.newSetFromMap(new IdentityHashMap());
    private boolean triedCNAME;
    private static final RuntimeException NXDOMAIN_QUERY_FAILED_EXCEPTION = (RuntimeException) ThrowableUtil.unknownStackTrace(DnsResolveContextException.newStatic("No answer found and NXDOMAIN response code returned"), DnsResolveContext.class, "onResponse(..)");
    private static final RuntimeException CNAME_NOT_FOUND_QUERY_FAILED_EXCEPTION = (RuntimeException) ThrowableUtil.unknownStackTrace(DnsResolveContextException.newStatic("No matching CNAME record found"), DnsResolveContext.class, "onResponseCNAME(..)");
    private static final RuntimeException NO_MATCHING_RECORD_QUERY_FAILED_EXCEPTION = (RuntimeException) ThrowableUtil.unknownStackTrace(DnsResolveContextException.newStatic("No matching record type found"), DnsResolveContext.class, "onResponseAorAAAA(..)");
    private static final RuntimeException UNRECOGNIZED_TYPE_QUERY_FAILED_EXCEPTION = (RuntimeException) ThrowableUtil.unknownStackTrace(new RuntimeException("Response type was unrecognized"), DnsResolveContext.class, "onResponse(..)");
    private static final RuntimeException NAME_SERVERS_EXHAUSTED_EXCEPTION = (RuntimeException) ThrowableUtil.unknownStackTrace(DnsResolveContextException.newStatic("No name servers returned an answer"), DnsResolveContext.class, "tryToFinishResolve(..)");

    private static final class AuthoritativeNameServerList {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private AuthoritativeNameServer head;
        private int nameServerCount;
        private final String questionName;

        AuthoritativeNameServerList(String str) {
            this.questionName = str.toLowerCase(Locale.US);
        }

        private static void cache(AuthoritativeNameServer authoritativeNameServer, AuthoritativeDnsServerCache authoritativeDnsServerCache, EventLoop eventLoop) {
            if (authoritativeNameServer.isRootServer()) {
                return;
            }
            authoritativeDnsServerCache.cache(authoritativeNameServer.domainName, authoritativeNameServer.address, authoritativeNameServer.ttl, eventLoop);
        }

        private static void cacheUnresolved(AuthoritativeNameServer authoritativeNameServer, AuthoritativeDnsServerCache authoritativeDnsServerCache, EventLoop eventLoop) {
            authoritativeNameServer.address = InetSocketAddress.createUnresolved(authoritativeNameServer.nsName, 53);
            cache(authoritativeNameServer, authoritativeDnsServerCache, eventLoop);
        }

        void add(DnsRecord dnsRecord) {
            String strDecodeDomainName;
            if (dnsRecord.type() != DnsRecordType.NS || !(dnsRecord instanceof DnsRawRecord) || this.questionName.length() < dnsRecord.name().length()) {
                return;
            }
            String lowerCase = dnsRecord.name().toLowerCase(Locale.US);
            int length = lowerCase.length() - 1;
            int length2 = this.questionName.length() - 1;
            int i10 = 0;
            while (length >= 0) {
                char cCharAt = lowerCase.charAt(length);
                if (this.questionName.charAt(length2) != cCharAt) {
                    return;
                }
                if (cCharAt == '.') {
                    i10++;
                }
                length--;
                length2--;
            }
            AuthoritativeNameServer authoritativeNameServer = this.head;
            if ((authoritativeNameServer != null && authoritativeNameServer.dots > i10) || (strDecodeDomainName = DnsResolveContext.decodeDomainName(((ByteBufHolder) dnsRecord).content())) == null) {
                return;
            }
            AuthoritativeNameServer authoritativeNameServer2 = this.head;
            if (authoritativeNameServer2 == null || authoritativeNameServer2.dots < i10) {
                this.nameServerCount = 1;
                this.head = new AuthoritativeNameServer(i10, dnsRecord.timeToLive(), lowerCase, strDecodeDomainName);
            } else {
                if (this.head.dots != i10) {
                    return;
                }
                AuthoritativeNameServer authoritativeNameServer3 = this.head;
                while (true) {
                    AuthoritativeNameServer authoritativeNameServer4 = authoritativeNameServer3.next;
                    if (authoritativeNameServer4 == null) {
                        authoritativeNameServer3.next = new AuthoritativeNameServer(i10, dnsRecord.timeToLive(), lowerCase, strDecodeDomainName);
                        this.nameServerCount++;
                        return;
                    }
                    authoritativeNameServer3 = authoritativeNameServer4;
                }
            }
        }

        List<InetSocketAddress> addressList() {
            ArrayList arrayList = new ArrayList(this.nameServerCount);
            for (AuthoritativeNameServer authoritativeNameServer = this.head; authoritativeNameServer != null; authoritativeNameServer = authoritativeNameServer.next) {
                if (authoritativeNameServer.address != null) {
                    arrayList.add(authoritativeNameServer.address);
                }
            }
            return arrayList;
        }

        void handleWithAdditional(DnsNameResolver dnsNameResolver, DnsRecord dnsRecord, AuthoritativeDnsServerCache authoritativeDnsServerCache) {
            AuthoritativeNameServer authoritativeNameServer = this.head;
            String strName = dnsRecord.name();
            InetAddress inetAddressDecodeAddress = DnsAddressDecoder.decodeAddress(dnsRecord, strName, dnsNameResolver.isDecodeIdn());
            if (inetAddressDecodeAddress == null) {
                return;
            }
            while (authoritativeNameServer != null) {
                if (authoritativeNameServer.nsName.equalsIgnoreCase(strName)) {
                    if (authoritativeNameServer.address != null) {
                        while (true) {
                            AuthoritativeNameServer authoritativeNameServer2 = authoritativeNameServer.next;
                            if (authoritativeNameServer2 == null || !authoritativeNameServer2.isCopy) {
                                break;
                            } else {
                                authoritativeNameServer = authoritativeNameServer2;
                            }
                        }
                        AuthoritativeNameServer authoritativeNameServer3 = new AuthoritativeNameServer(authoritativeNameServer);
                        authoritativeNameServer3.next = authoritativeNameServer.next;
                        authoritativeNameServer.next = authoritativeNameServer3;
                        this.nameServerCount++;
                        authoritativeNameServer = authoritativeNameServer3;
                    }
                    authoritativeNameServer.update(dnsNameResolver.newRedirectServerAddress(inetAddressDecodeAddress), dnsRecord.timeToLive());
                    cache(authoritativeNameServer, authoritativeDnsServerCache, dnsNameResolver.executor());
                    return;
                }
                authoritativeNameServer = authoritativeNameServer.next;
            }
        }

        void handleWithoutAdditionals(DnsNameResolver dnsNameResolver, DnsCache dnsCache, AuthoritativeDnsServerCache authoritativeDnsServerCache) {
            InetAddress inetAddressAddress;
            AuthoritativeNameServer authoritativeNameServer = this.head;
            while (authoritativeNameServer != null) {
                if (authoritativeNameServer.address == null) {
                    cacheUnresolved(authoritativeNameServer, authoritativeDnsServerCache, dnsNameResolver.executor());
                    List<? extends DnsCacheEntry> list = dnsCache.get(authoritativeNameServer.nsName, null);
                    if (list != null && !list.isEmpty() && (inetAddressAddress = list.get(0).address()) != null) {
                        authoritativeNameServer.update(dnsNameResolver.newRedirectServerAddress(inetAddressAddress));
                        int i10 = 1;
                        while (i10 < list.size()) {
                            InetAddress inetAddressAddress2 = list.get(i10).address();
                            AuthoritativeNameServer authoritativeNameServer2 = new AuthoritativeNameServer(authoritativeNameServer);
                            authoritativeNameServer2.next = authoritativeNameServer.next;
                            authoritativeNameServer.next = authoritativeNameServer2;
                            authoritativeNameServer2.update(dnsNameResolver.newRedirectServerAddress(inetAddressAddress2));
                            this.nameServerCount++;
                            i10++;
                            authoritativeNameServer = authoritativeNameServer2;
                        }
                    }
                }
                authoritativeNameServer = authoritativeNameServer.next;
            }
        }

        boolean isEmpty() {
            return this.nameServerCount == 0;
        }
    }

    private final class CombinedDnsServerAddressStream implements DnsServerAddressStream {
        private final DnsServerAddressStream originalStream;
        private final InetSocketAddress replaced;
        private Iterator<InetAddress> resolved;
        private final List<InetAddress> resolvedAddresses;

        CombinedDnsServerAddressStream(InetSocketAddress inetSocketAddress, List<InetAddress> list, DnsServerAddressStream dnsServerAddressStream) {
            this.replaced = inetSocketAddress;
            this.resolvedAddresses = list;
            this.originalStream = dnsServerAddressStream;
            this.resolved = list.iterator();
        }

        private InetSocketAddress nextResolved0() {
            return DnsResolveContext.this.parent.newRedirectServerAddress(this.resolved.next());
        }

        @Override // io.netty.resolver.dns.DnsServerAddressStream
        public DnsServerAddressStream duplicate() {
            return new CombinedDnsServerAddressStream(this.replaced, this.resolvedAddresses, this.originalStream.duplicate());
        }

        @Override // io.netty.resolver.dns.DnsServerAddressStream
        public InetSocketAddress next() {
            if (this.resolved.hasNext()) {
                return nextResolved0();
            }
            InetSocketAddress next = this.originalStream.next();
            if (!next.equals(this.replaced)) {
                return next;
            }
            this.resolved = this.resolvedAddresses.iterator();
            return nextResolved0();
        }

        @Override // io.netty.resolver.dns.DnsServerAddressStream
        public int size() {
            return (this.originalStream.size() + this.resolvedAddresses.size()) - 1;
        }
    }

    private static final class DnsAddressStreamList extends AbstractList<InetSocketAddress> {
        private List<InetSocketAddress> addresses;
        private final DnsServerAddressStream duplicate;

        DnsAddressStreamList(DnsServerAddressStream dnsServerAddressStream) {
            this.duplicate = dnsServerAddressStream.duplicate();
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<InetSocketAddress> iterator() {
            return new Iterator<InetSocketAddress>() { // from class: io.netty.resolver.dns.DnsResolveContext.DnsAddressStreamList.1

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                private int f91661i;
                private final DnsServerAddressStream stream;

                {
                    this.stream = DnsAddressStreamList.this.duplicate.duplicate();
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.f91661i < this.stream.size();
                }

                @Override // java.util.Iterator
                public void remove() {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.Iterator
                public InetSocketAddress next() {
                    if (!hasNext()) {
                        throw new NoSuchElementException();
                    }
                    this.f91661i++;
                    return this.stream.next();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.duplicate.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public InetSocketAddress get(int i10) {
            if (this.addresses == null) {
                DnsServerAddressStream dnsServerAddressStreamDuplicate = this.duplicate.duplicate();
                this.addresses = new ArrayList(size());
                for (int i11 = 0; i11 < dnsServerAddressStreamDuplicate.size(); i11++) {
                    this.addresses.add(dnsServerAddressStreamDuplicate.next());
                }
            }
            return this.addresses.get(i10);
        }
    }

    static final class DnsResolveContextException extends RuntimeException {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        private DnsResolveContextException(String str) {
            super(str);
        }

        static DnsResolveContextException newStatic(String str) {
            return PlatformDependent.javaVersion() >= 7 ? new DnsResolveContextException(str, true) : new DnsResolveContextException(str);
        }

        @SuppressJava6Requirement(reason = "uses Java 7+ Exception.<init>(String, Throwable, boolean, boolean) but is guarded by version checks")
        private DnsResolveContextException(String str, boolean z10) {
            super(str, null, false, true);
        }
    }

    private static final class SearchDomainUnknownHostException extends UnknownHostException {
        private static final long serialVersionUID = -8573510133644997085L;

        SearchDomainUnknownHostException(Throwable th, String str) {
            super("Search domain query failed. Original hostname: '" + str + "' " + th.getMessage());
            setStackTrace(th.getStackTrace());
            initCause(th.getCause());
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    }

    DnsResolveContext(DnsNameResolver dnsNameResolver, String str, int i10, DnsRecordType[] dnsRecordTypeArr, DnsRecord[] dnsRecordArr, DnsServerAddressStream dnsServerAddressStream) {
        this.parent = dnsNameResolver;
        this.hostname = str;
        this.dnsClass = i10;
        this.expectedTypes = dnsRecordTypeArr;
        this.additionals = dnsRecordArr;
        this.nameServerAddrs = (DnsServerAddressStream) ObjectUtil.checkNotNull(dnsServerAddressStream, "nameServerAddrs");
        int iMaxQueriesPerResolve = dnsNameResolver.maxQueriesPerResolve();
        this.maxAllowedQueries = iMaxQueriesPerResolve;
        this.allowedQueries = iMaxQueriesPerResolve;
    }

    private static Map<String, String> buildAliasMap(DnsResponse dnsResponse, DnsCnameCache dnsCnameCache, EventLoop eventLoop) {
        String strDecodeDomainName;
        int iCount = dnsResponse.count(DnsSection.ANSWER);
        HashMap map = null;
        for (int i10 = 0; i10 < iCount; i10++) {
            DnsRecord dnsRecordRecordAt = dnsResponse.recordAt(DnsSection.ANSWER, i10);
            if (dnsRecordRecordAt.type() == DnsRecordType.CNAME && (dnsRecordRecordAt instanceof DnsRawRecord) && (strDecodeDomainName = decodeDomainName(((ByteBufHolder) dnsRecordRecordAt).content())) != null) {
                if (map == null) {
                    map = new HashMap(Math.min(8, iCount));
                }
                String strName = dnsRecordRecordAt.name();
                Locale locale = Locale.US;
                String lowerCase = strName.toLowerCase(locale);
                String lowerCase2 = strDecodeDomainName.toLowerCase(locale);
                String strHostnameWithDot = hostnameWithDot(lowerCase);
                String strHostnameWithDot2 = hostnameWithDot(lowerCase2);
                if (!strHostnameWithDot.equalsIgnoreCase(strHostnameWithDot2)) {
                    dnsCnameCache.cache(strHostnameWithDot, strHostnameWithDot2, dnsRecordRecordAt.timeToLive(), eventLoop);
                    map.put(lowerCase, lowerCase2);
                }
            }
        }
        return map != null ? map : Collections.emptyMap();
    }

    static String decodeDomainName(ByteBuf byteBuf) {
        byteBuf.markReaderIndex();
        try {
            return DefaultDnsRecordDecoder.decodeName(byteBuf);
        } catch (CorruptedFrameException unused) {
            return null;
        } finally {
            byteBuf.resetReaderIndex();
        }
    }

    private static AuthoritativeNameServerList extractAuthoritativeNameServers(String str, DnsResponse dnsResponse) {
        int iCount = dnsResponse.count(DnsSection.AUTHORITY);
        if (iCount == 0) {
            return null;
        }
        AuthoritativeNameServerList authoritativeNameServerList = new AuthoritativeNameServerList(str);
        for (int i10 = 0; i10 < iCount; i10++) {
            authoritativeNameServerList.add(dnsResponse.recordAt(DnsSection.AUTHORITY, i10));
        }
        if (authoritativeNameServerList.isEmpty()) {
            return null;
        }
        return authoritativeNameServerList;
    }

    private void finishResolve(Promise<List<T>> promise, Throwable th) {
        if (!this.completeEarly && !this.queriesInProgress.isEmpty()) {
            Iterator<Future<AddressedEnvelope<DnsResponse, InetSocketAddress>>> it2 = this.queriesInProgress.iterator();
            while (it2.hasNext()) {
                Future<AddressedEnvelope<DnsResponse, InetSocketAddress>> next = it2.next();
                it2.remove();
                next.cancel(false);
            }
        }
        if (this.finalResult != null) {
            if (promise.isDone()) {
                return;
            }
            DnsNameResolver.trySuccess(promise, filterResults(this.finalResult));
            return;
        }
        int i10 = this.maxAllowedQueries - this.allowedQueries;
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append("failed to resolve '");
        sb2.append(this.hostname);
        sb2.append('\'');
        if (i10 > 1) {
            if (i10 < this.maxAllowedQueries) {
                sb2.append(" after ");
                sb2.append(i10);
                sb2.append(" queries ");
            } else {
                sb2.append(". Exceeded max queries per resolve ");
                sb2.append(this.maxAllowedQueries);
                sb2.append(' ');
            }
        }
        UnknownHostException unknownHostException = new UnknownHostException(sb2.toString());
        if (th == null) {
            cache(this.hostname, this.additionals, unknownHostException);
        } else {
            unknownHostException.initCause(th);
        }
        promise.tryFailure(unknownHostException);
    }

    private void followCname(DnsQuestion dnsQuestion, String str, DnsQueryLifecycleObserver dnsQueryLifecycleObserver, Promise<List<T>> promise) {
        HashSet hashSet = null;
        while (true) {
            String str2 = cnameCache().get(hostnameWithDot(str));
            if (str2 == null) {
                break;
            }
            if (hashSet == null) {
                hashSet = new HashSet(2);
            }
            if (!hashSet.add(str)) {
                break;
            } else {
                str = str2;
            }
        }
        DnsServerAddressStream nameServers = getNameServers(str);
        try {
            DefaultDnsQuestion defaultDnsQuestion = new DefaultDnsQuestion(str, dnsQuestion.type(), this.dnsClass);
            query(nameServers, 0, defaultDnsQuestion, dnsQueryLifecycleObserver.queryCNAMEd(defaultDnsQuestion), true, promise, null);
        } catch (Throwable th) {
            dnsQueryLifecycleObserver.queryFailed(th);
            PlatformDependent.throwException(th);
        }
    }

    private DnsServerAddressStream getNameServers(String str) {
        DnsServerAddressStream nameServersFromCache = getNameServersFromCache(str);
        return nameServersFromCache == null ? this.nameServerAddrs.duplicate() : nameServersFromCache;
    }

    private DnsServerAddressStream getNameServersFromCache(String str) {
        DnsServerAddressStream dnsServerAddressStream;
        int length = str.length();
        if (length == 0) {
            return null;
        }
        if (str.charAt(length - 1) != '.') {
            str = str + o0.f49827a;
        }
        int iIndexOf = str.indexOf(46);
        if (iIndexOf == str.length() - 1) {
            return null;
        }
        do {
            str = str.substring(iIndexOf + 1);
            iIndexOf = str.indexOf(46);
            if (iIndexOf <= 0 || iIndexOf == str.length() - 1) {
                return null;
            }
            dnsServerAddressStream = authoritativeDnsServerCache().get(str);
        } while (dnsServerAddressStream == null);
        return dnsServerAddressStream;
    }

    private boolean handleRedirect(DnsQuestion dnsQuestion, AddressedEnvelope<DnsResponse, InetSocketAddress> addressedEnvelope, DnsQueryLifecycleObserver dnsQueryLifecycleObserver, Promise<List<T>> promise) {
        AuthoritativeNameServerList authoritativeNameServerListExtractAuthoritativeNameServers;
        DnsResponse dnsResponseContent = addressedEnvelope.content();
        if (dnsResponseContent.count(DnsSection.ANSWER) == 0 && (authoritativeNameServerListExtractAuthoritativeNameServers = extractAuthoritativeNameServers(dnsQuestion.name(), dnsResponseContent)) != null) {
            int iCount = dnsResponseContent.count(DnsSection.ADDITIONAL);
            AuthoritativeDnsServerCache authoritativeDnsServerCache = authoritativeDnsServerCache();
            for (int i10 = 0; i10 < iCount; i10++) {
                DnsRecord dnsRecordRecordAt = dnsResponseContent.recordAt(DnsSection.ADDITIONAL, i10);
                if ((dnsRecordRecordAt.type() != DnsRecordType.A || this.parent.supportsARecords()) && (dnsRecordRecordAt.type() != DnsRecordType.AAAA || this.parent.supportsAAAARecords())) {
                    authoritativeNameServerListExtractAuthoritativeNameServers.handleWithAdditional(this.parent, dnsRecordRecordAt, authoritativeDnsServerCache);
                }
            }
            authoritativeNameServerListExtractAuthoritativeNameServers.handleWithoutAdditionals(this.parent, resolveCache(), authoritativeDnsServerCache);
            DnsServerAddressStream dnsServerAddressStreamNewRedirectDnsServerStream = this.parent.newRedirectDnsServerStream(dnsQuestion.name(), authoritativeNameServerListExtractAuthoritativeNameServers.addressList());
            if (dnsServerAddressStreamNewRedirectDnsServerStream != null) {
                query(dnsServerAddressStreamNewRedirectDnsServerStream, 0, dnsQuestion, dnsQueryLifecycleObserver.queryRedirected(new DnsAddressStreamList(dnsServerAddressStreamNewRedirectDnsServerStream)), true, promise, null);
                return true;
            }
        }
        return false;
    }

    private boolean hasNDots() {
        int i10 = 0;
        for (int length = this.hostname.length() - 1; length >= 0; length--) {
            if (this.hostname.charAt(length) == '.' && (i10 = i10 + 1) >= this.parent.ndots()) {
                return true;
            }
        }
        return false;
    }

    private static String hostnameWithDot(String str) {
        if (StringUtil.endsWith(str, d.f90941a)) {
            return str;
        }
        return str + d.f90941a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalResolve(String str, Promise<List<T>> promise) {
        while (true) {
            String str2 = cnameCache().get(hostnameWithDot(str));
            if (str2 == null) {
                try {
                    break;
                } finally {
                    this.parent.flushQueries();
                }
            }
            str = str2;
        }
        DnsServerAddressStream nameServers = getNameServers(str);
        int length = this.expectedTypes.length - 1;
        for (int i10 = 0; i10 < length; i10++) {
            if (!query(str, this.expectedTypes[i10], nameServers.duplicate(), false, promise)) {
                return;
            }
        }
        query(str, this.expectedTypes[length], nameServers, false, promise);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DnsQueryLifecycleObserver newDnsQueryLifecycleObserver(DnsQuestion dnsQuestion) {
        return this.parent.dnsQueryLifecycleObserverFactory().newDnsQueryLifecycleObserver(dnsQuestion);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0070  */
    /* JADX WARN: Code duplicated, block: B:26:0x0081 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x0083  */
    /* JADX WARN: Code duplicated, block: B:30:0x008b  */
    /* JADX WARN: Code duplicated, block: B:31:0x0098  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:58:0x00bc A[SYNTHETIC] */
    private void onExpectedResponse(DnsQuestion dnsQuestion, AddressedEnvelope<DnsResponse, InetSocketAddress> addressedEnvelope, DnsQueryLifecycleObserver dnsQueryLifecycleObserver, Promise<List<T>> promise) {
        boolean z10;
        T tConvertRecord;
        boolean z11;
        DnsResponse dnsResponseContent = addressedEnvelope.content();
        Map<String, String> mapBuildAliasMap = buildAliasMap(dnsResponseContent, cnameCache(), this.parent.executor());
        int iCount = dnsResponseContent.count(DnsSection.ANSWER);
        boolean zIsCompleteEarly = this.completeEarly;
        boolean z12 = false;
        for (int i10 = 0; i10 < iCount; i10++) {
            DnsRecord dnsRecordRecordAt = dnsResponseContent.recordAt(DnsSection.ANSWER, i10);
            DnsRecordType dnsRecordTypeType = dnsRecordRecordAt.type();
            DnsRecordType[] dnsRecordTypeArr = this.expectedTypes;
            int length = dnsRecordTypeArr.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    z10 = false;
                    break;
                } else {
                    if (dnsRecordTypeType == dnsRecordTypeArr[i11]) {
                        z10 = true;
                        break;
                    }
                    i11++;
                }
            }
            if (z10) {
                String strName = dnsQuestion.name();
                Locale locale = Locale.US;
                String lowerCase = strName.toLowerCase(locale);
                String lowerCase2 = dnsRecordRecordAt.name().toLowerCase(locale);
                if (lowerCase2.equals(lowerCase)) {
                    tConvertRecord = convertRecord(dnsRecordRecordAt, this.hostname, this.additionals, this.parent.executor());
                    if (tConvertRecord != null) {
                        if (!zIsCompleteEarly) {
                            zIsCompleteEarly = isCompleteEarly(tConvertRecord);
                        }
                        if (this.finalResult == null) {
                            ArrayList arrayList = new ArrayList(8);
                            this.finalResult = arrayList;
                            arrayList.add(tConvertRecord);
                        } else {
                            if (isDuplicateAllowed()) {
                            }
                            this.finalResult.add(tConvertRecord);
                        }
                        z11 = false;
                        cache(this.hostname, this.additionals, dnsRecordRecordAt, tConvertRecord);
                        if (z11) {
                            ReferenceCountUtil.release(tConvertRecord);
                        }
                        z12 = true;
                    }
                } else {
                    HashMap map = new HashMap(mapBuildAliasMap);
                    do {
                        lowerCase = (String) map.remove(lowerCase);
                        if (lowerCase2.equals(lowerCase)) {
                            break;
                        }
                    } while (lowerCase != null);
                    if (lowerCase != null) {
                        tConvertRecord = convertRecord(dnsRecordRecordAt, this.hostname, this.additionals, this.parent.executor());
                        if (tConvertRecord != null) {
                            if (!zIsCompleteEarly) {
                                zIsCompleteEarly = isCompleteEarly(tConvertRecord);
                            }
                            if (this.finalResult == null) {
                                ArrayList arrayList2 = new ArrayList(8);
                                this.finalResult = arrayList2;
                                arrayList2.add(tConvertRecord);
                            } else {
                                if (isDuplicateAllowed() && this.finalResult.contains(tConvertRecord)) {
                                    z11 = true;
                                } else {
                                    this.finalResult.add(tConvertRecord);
                                }
                                cache(this.hostname, this.additionals, dnsRecordRecordAt, tConvertRecord);
                                if (z11) {
                                    ReferenceCountUtil.release(tConvertRecord);
                                }
                                z12 = true;
                            }
                            z11 = false;
                            cache(this.hostname, this.additionals, dnsRecordRecordAt, tConvertRecord);
                            if (z11) {
                                ReferenceCountUtil.release(tConvertRecord);
                            }
                            z12 = true;
                        }
                    }
                }
            }
        }
        if (!mapBuildAliasMap.isEmpty()) {
            dnsQueryLifecycleObserver.querySucceed();
            onResponseCNAME(dnsQuestion, mapBuildAliasMap, newDnsQueryLifecycleObserver(dnsQuestion), promise);
        } else {
            if (!z12) {
                dnsQueryLifecycleObserver.queryFailed(NO_MATCHING_RECORD_QUERY_FAILED_EXCEPTION);
                return;
            }
            if (zIsCompleteEarly) {
                this.completeEarly = true;
            }
            dnsQueryLifecycleObserver.querySucceed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onResponse(DnsServerAddressStream dnsServerAddressStream, int i10, DnsQuestion dnsQuestion, AddressedEnvelope<DnsResponse, InetSocketAddress> addressedEnvelope, DnsQueryLifecycleObserver dnsQueryLifecycleObserver, Promise<List<T>> promise) {
        try {
            DnsResponse dnsResponseContent = addressedEnvelope.content();
            DnsResponseCode dnsResponseCodeCode = dnsResponseContent.code();
            if (dnsResponseCodeCode != DnsResponseCode.NOERROR) {
                if (dnsResponseCodeCode != DnsResponseCode.NXDOMAIN) {
                    query(dnsServerAddressStream, i10 + 1, dnsQuestion, dnsQueryLifecycleObserver.queryNoAnswer(dnsResponseCodeCode), true, promise, null);
                } else {
                    dnsQueryLifecycleObserver.queryFailed(NXDOMAIN_QUERY_FAILED_EXCEPTION);
                    if (!dnsResponseContent.isAuthoritativeAnswer()) {
                        query(dnsServerAddressStream, i10 + 1, dnsQuestion, newDnsQueryLifecycleObserver(dnsQuestion), true, promise, null);
                    }
                }
                ReferenceCountUtil.safeRelease(addressedEnvelope);
                return;
            }
            if (handleRedirect(dnsQuestion, addressedEnvelope, dnsQueryLifecycleObserver, promise)) {
                ReferenceCountUtil.safeRelease(addressedEnvelope);
                return;
            }
            DnsRecordType dnsRecordTypeType = dnsQuestion.type();
            if (dnsRecordTypeType == DnsRecordType.CNAME) {
                onResponseCNAME(dnsQuestion, buildAliasMap(addressedEnvelope.content(), cnameCache(), this.parent.executor()), dnsQueryLifecycleObserver, promise);
                ReferenceCountUtil.safeRelease(addressedEnvelope);
                return;
            }
            for (DnsRecordType dnsRecordType : this.expectedTypes) {
                if (dnsRecordTypeType == dnsRecordType) {
                    onExpectedResponse(dnsQuestion, addressedEnvelope, dnsQueryLifecycleObserver, promise);
                    ReferenceCountUtil.safeRelease(addressedEnvelope);
                    return;
                }
            }
            dnsQueryLifecycleObserver.queryFailed(UNRECOGNIZED_TYPE_QUERY_FAILED_EXCEPTION);
            ReferenceCountUtil.safeRelease(addressedEnvelope);
        } catch (Throwable th) {
            ReferenceCountUtil.safeRelease(addressedEnvelope);
            throw th;
        }
    }

    private void onResponseCNAME(DnsQuestion dnsQuestion, Map<String, String> map, DnsQueryLifecycleObserver dnsQueryLifecycleObserver, Promise<List<T>> promise) {
        String strRemove;
        String lowerCase = dnsQuestion.name().toLowerCase(Locale.US);
        boolean z10 = false;
        while (!map.isEmpty() && (strRemove = map.remove(lowerCase)) != null) {
            z10 = true;
            lowerCase = strRemove;
        }
        if (z10) {
            followCname(dnsQuestion, lowerCase, dnsQueryLifecycleObserver, promise);
        } else {
            dnsQueryLifecycleObserver.queryFailed(CNAME_NOT_FOUND_QUERY_FAILED_EXCEPTION);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void query(final DnsServerAddressStream dnsServerAddressStream, final int i10, final DnsQuestion dnsQuestion, final DnsQueryLifecycleObserver dnsQueryLifecycleObserver, boolean z10, final Promise<List<T>> promise, Throwable th) {
        if (!this.completeEarly && i10 < dnsServerAddressStream.size() && this.allowedQueries != 0 && !promise.isCancelled()) {
            this.allowedQueries--;
            InetSocketAddress next = dnsServerAddressStream.next();
            if (next.isUnresolved()) {
                queryUnresolvedNameserver(next, dnsServerAddressStream, i10, dnsQuestion, dnsQueryLifecycleObserver, promise, th);
                return;
            }
            ChannelPromise channelPromiseNewPromise = this.parent.ch.newPromise();
            Future<AddressedEnvelope<DnsResponse, InetSocketAddress>> futureQuery0 = this.parent.query0(next, dnsQuestion, this.additionals, z10, channelPromiseNewPromise, this.parent.ch.eventLoop().newPromise());
            this.queriesInProgress.add(futureQuery0);
            dnsQueryLifecycleObserver.queryWritten(next, channelPromiseNewPromise);
            futureQuery0.addListener(new FutureListener<AddressedEnvelope<DnsResponse, InetSocketAddress>>() { // from class: io.netty.resolver.dns.DnsResolveContext.2
                @Override // io.netty.util.concurrent.GenericFutureListener
                public void operationComplete(Future<AddressedEnvelope<DnsResponse, InetSocketAddress>> future) {
                    DnsResolveContext.this.queriesInProgress.remove(future);
                    if (promise.isDone() || future.isCancelled()) {
                        dnsQueryLifecycleObserver.queryCancelled(DnsResolveContext.this.allowedQueries);
                        AddressedEnvelope<DnsResponse, InetSocketAddress> now = future.getNow();
                        if (now != null) {
                            now.release();
                            return;
                        }
                        return;
                    }
                    Throwable thCause = future.cause();
                    try {
                        if (thCause == null) {
                            DnsResolveContext.this.onResponse(dnsServerAddressStream, i10, dnsQuestion, future.getNow(), dnsQueryLifecycleObserver, promise);
                        } else {
                            dnsQueryLifecycleObserver.queryFailed(thCause);
                            DnsResolveContext dnsResolveContext = DnsResolveContext.this;
                            DnsServerAddressStream dnsServerAddressStream2 = dnsServerAddressStream;
                            int i11 = i10 + 1;
                            DnsQuestion dnsQuestion2 = dnsQuestion;
                            dnsResolveContext.query(dnsServerAddressStream2, i11, dnsQuestion2, dnsResolveContext.newDnsQueryLifecycleObserver(dnsQuestion2), true, promise, thCause);
                        }
                        DnsResolveContext.this.tryToFinishResolve(dnsServerAddressStream, i10, dnsQuestion, NoopDnsQueryLifecycleObserver.INSTANCE, promise, thCause);
                    } catch (Throwable th2) {
                        DnsResolveContext.this.tryToFinishResolve(dnsServerAddressStream, i10, dnsQuestion, NoopDnsQueryLifecycleObserver.INSTANCE, promise, thCause);
                        throw th2;
                    }
                }
            });
            return;
        }
        tryToFinishResolve(dnsServerAddressStream, i10, dnsQuestion, dnsQueryLifecycleObserver, promise, th);
    }

    private void queryUnresolvedNameserver(final InetSocketAddress inetSocketAddress, final DnsServerAddressStream dnsServerAddressStream, final int i10, final DnsQuestion dnsQuestion, final DnsQueryLifecycleObserver dnsQueryLifecycleObserver, final Promise<List<T>> promise, final Throwable th) {
        String hostString = PlatformDependent.javaVersion() >= 7 ? inetSocketAddress.getHostString() : inetSocketAddress.getHostName();
        final Future<AddressedEnvelope<DnsResponse, InetSocketAddress>> futureNewSucceededFuture = this.parent.executor().newSucceededFuture(null);
        this.queriesInProgress.add(futureNewSucceededFuture);
        Promise<List<T>> promiseNewPromise = this.parent.executor().newPromise();
        promiseNewPromise.addListener((GenericFutureListener<? extends Future<? super List<T>>>) new FutureListener<List<InetAddress>>() { // from class: io.netty.resolver.dns.DnsResolveContext.3
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(Future<List<InetAddress>> future) {
                DnsResolveContext.this.queriesInProgress.remove(futureNewSucceededFuture);
                if (!future.isSuccess()) {
                    DnsResolveContext.this.query(dnsServerAddressStream, i10 + 1, dnsQuestion, dnsQueryLifecycleObserver, true, promise, th);
                    return;
                }
                DnsResolveContext.this.query(new CombinedDnsServerAddressStream(inetSocketAddress, future.getNow(), dnsServerAddressStream), i10, dnsQuestion, dnsQueryLifecycleObserver, true, promise, th);
            }
        });
        if (DnsNameResolver.doResolveAllCached(hostString, this.additionals, promiseNewPromise, resolveCache(), this.parent.resolvedInternetProtocolFamiliesUnsafe())) {
            return;
        }
        final AuthoritativeDnsServerCache authoritativeDnsServerCache = authoritativeDnsServerCache();
        DnsNameResolver dnsNameResolver = this.parent;
        new DnsAddressResolveContext(dnsNameResolver, hostString, this.additionals, dnsNameResolver.newNameServerAddressStream(hostString), resolveCache(), new AuthoritativeDnsServerCache() { // from class: io.netty.resolver.dns.DnsResolveContext.4
            @Override // io.netty.resolver.dns.AuthoritativeDnsServerCache
            public void cache(String str, InetSocketAddress inetSocketAddress2, long j10, EventLoop eventLoop) {
                authoritativeDnsServerCache.cache(str, inetSocketAddress2, j10, eventLoop);
            }

            @Override // io.netty.resolver.dns.AuthoritativeDnsServerCache
            public void clear() {
                authoritativeDnsServerCache.clear();
            }

            @Override // io.netty.resolver.dns.AuthoritativeDnsServerCache
            public DnsServerAddressStream get(String str) {
                return null;
            }

            @Override // io.netty.resolver.dns.AuthoritativeDnsServerCache
            public boolean clear(String str) {
                return authoritativeDnsServerCache.clear(str);
            }
        }, false).resolve(promiseNewPromise);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryToFinishResolve(DnsServerAddressStream dnsServerAddressStream, int i10, DnsQuestion dnsQuestion, DnsQueryLifecycleObserver dnsQueryLifecycleObserver, Promise<List<T>> promise, Throwable th) {
        if (!this.completeEarly && !this.queriesInProgress.isEmpty()) {
            dnsQueryLifecycleObserver.queryCancelled(this.allowedQueries);
            return;
        }
        if (this.finalResult != null) {
            dnsQueryLifecycleObserver.queryCancelled(this.allowedQueries);
        } else {
            if (i10 < dnsServerAddressStream.size()) {
                if (dnsQueryLifecycleObserver == NoopDnsQueryLifecycleObserver.INSTANCE) {
                    query(dnsServerAddressStream, 1 + i10, dnsQuestion, newDnsQueryLifecycleObserver(dnsQuestion), true, promise, th);
                    return;
                } else {
                    query(dnsServerAddressStream, 1 + i10, dnsQuestion, dnsQueryLifecycleObserver, true, promise, th);
                    return;
                }
            }
            dnsQueryLifecycleObserver.queryFailed(NAME_SERVERS_EXHAUSTED_EXCEPTION);
            if (th == null && !this.triedCNAME) {
                this.triedCNAME = true;
                String str = this.hostname;
                query(str, DnsRecordType.CNAME, getNameServers(str), true, promise);
                return;
            }
        }
        finishResolve(promise, th);
    }

    AuthoritativeDnsServerCache authoritativeDnsServerCache() {
        return this.parent.authoritativeDnsServerCache();
    }

    abstract void cache(String str, DnsRecord[] dnsRecordArr, DnsRecord dnsRecord, T t10);

    abstract void cache(String str, DnsRecord[] dnsRecordArr, UnknownHostException unknownHostException);

    DnsCnameCache cnameCache() {
        return this.parent.cnameCache();
    }

    abstract T convertRecord(DnsRecord dnsRecord, String str, DnsRecord[] dnsRecordArr, EventLoop eventLoop);

    void doSearchDomainQuery(String str, Promise<List<T>> promise) {
        newResolverContext(this.parent, str, this.dnsClass, this.expectedTypes, this.additionals, this.nameServerAddrs).internalResolve(str, promise);
    }

    abstract List<T> filterResults(List<T> list);

    abstract boolean isCompleteEarly(T t10);

    abstract boolean isDuplicateAllowed();

    abstract DnsResolveContext<T> newResolverContext(DnsNameResolver dnsNameResolver, String str, int i10, DnsRecordType[] dnsRecordTypeArr, DnsRecord[] dnsRecordArr, DnsServerAddressStream dnsServerAddressStream);

    void resolve(Promise<List<T>> promise) {
        String str;
        String[] strArrSearchDomains = this.parent.searchDomains();
        if (strArrSearchDomains.length == 0 || this.parent.ndots() == 0 || StringUtil.endsWith(this.hostname, d.f90941a)) {
            internalResolve(this.hostname, promise);
            return;
        }
        boolean zHasNDots = hasNDots();
        if (zHasNDots) {
            str = this.hostname;
        } else {
            str = this.hostname + d.f90941a + strArrSearchDomains[0];
        }
        int i10 = !zHasNDots ? 1 : 0;
        Promise<List<T>> promiseNewPromise = this.parent.executor().newPromise();
        promiseNewPromise.addListener((GenericFutureListener<? extends Future<? super List<T>>>) new FutureListener<List<T>>(i10, promise, strArrSearchDomains, zHasNDots) { // from class: io.netty.resolver.dns.DnsResolveContext.1
            private int searchDomainIdx;
            final /* synthetic */ int val$initialSearchDomainIdx;
            final /* synthetic */ Promise val$promise;
            final /* synthetic */ String[] val$searchDomains;
            final /* synthetic */ boolean val$startWithoutSearchDomain;

            {
                this.val$initialSearchDomainIdx = i10;
                this.val$promise = promise;
                this.val$searchDomains = strArrSearchDomains;
                this.val$startWithoutSearchDomain = zHasNDots;
                this.searchDomainIdx = i10;
            }

            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(Future<List<T>> future) {
                Throwable thCause = future.cause();
                if (thCause == null) {
                    this.val$promise.trySuccess(future.getNow());
                    return;
                }
                if (DnsNameResolver.isTransportOrTimeoutError(thCause)) {
                    this.val$promise.tryFailure(new SearchDomainUnknownHostException(thCause, DnsResolveContext.this.hostname));
                    return;
                }
                if (this.searchDomainIdx >= this.val$searchDomains.length) {
                    if (this.val$startWithoutSearchDomain) {
                        this.val$promise.tryFailure(new SearchDomainUnknownHostException(thCause, DnsResolveContext.this.hostname));
                        return;
                    } else {
                        DnsResolveContext dnsResolveContext = DnsResolveContext.this;
                        dnsResolveContext.internalResolve(dnsResolveContext.hostname, this.val$promise);
                        return;
                    }
                }
                Promise<List<T>> promiseNewPromise2 = DnsResolveContext.this.parent.executor().newPromise();
                promiseNewPromise2.addListener((GenericFutureListener<? extends Future<? super List<T>>>) this);
                DnsResolveContext dnsResolveContext2 = DnsResolveContext.this;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(DnsResolveContext.this.hostname);
                sb2.append(d.f90941a);
                String[] strArr = this.val$searchDomains;
                int i11 = this.searchDomainIdx;
                this.searchDomainIdx = i11 + 1;
                sb2.append(strArr[i11]);
                dnsResolveContext2.doSearchDomainQuery(sb2.toString(), promiseNewPromise2);
            }
        });
        doSearchDomainQuery(str, promiseNewPromise);
    }

    DnsCache resolveCache() {
        return this.parent.resolveCache();
    }

    private static final class AuthoritativeNameServer {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private InetSocketAddress address;
        private final String domainName;
        private final int dots;
        final boolean isCopy = false;
        AuthoritativeNameServer next;
        final String nsName;
        private long ttl;

        AuthoritativeNameServer(int i10, long j10, String str, String str2) {
            this.dots = i10;
            this.ttl = j10;
            this.nsName = str2;
            this.domainName = str;
        }

        boolean isRootServer() {
            return this.dots == 1;
        }

        void update(InetSocketAddress inetSocketAddress, long j10) {
            this.address = inetSocketAddress;
            this.ttl = Math.min(this.ttl, j10);
        }

        void update(InetSocketAddress inetSocketAddress) {
            update(inetSocketAddress, Long.MAX_VALUE);
        }

        AuthoritativeNameServer(AuthoritativeNameServer authoritativeNameServer) {
            this.dots = authoritativeNameServer.dots;
            this.ttl = authoritativeNameServer.ttl;
            this.nsName = authoritativeNameServer.nsName;
            this.domainName = authoritativeNameServer.domainName;
        }
    }

    private boolean query(String str, DnsRecordType dnsRecordType, DnsServerAddressStream dnsServerAddressStream, boolean z10, Promise<List<T>> promise) {
        try {
            DefaultDnsQuestion defaultDnsQuestion = new DefaultDnsQuestion(str, dnsRecordType, this.dnsClass);
            query(dnsServerAddressStream, 0, defaultDnsQuestion, newDnsQueryLifecycleObserver(defaultDnsQuestion), z10, promise, null);
            return true;
        } catch (Throwable th) {
            promise.tryFailure(new IllegalArgumentException("Unable to create DNS Question for: [" + str + ", " + dnsRecordType + ']', th));
            return false;
        }
    }
}
