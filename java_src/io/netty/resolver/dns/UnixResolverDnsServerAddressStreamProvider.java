package io.netty.resolver.dns;

import io.netty.util.NetUtil;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.SocketUtils;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class UnixResolverDnsServerAddressStreamProvider implements DnsServerAddressStreamProvider {
    static final int DEFAULT_NDOTS = 1;
    private static final String DOMAIN_ROW_LABEL = "domain";
    private static final String ETC_RESOLVER_DIR = "/etc/resolver";
    private static final String ETC_RESOLV_CONF_FILE = "/etc/resolv.conf";
    private static final String NAMESERVER_ROW_LABEL = "nameserver";
    private static final String NDOTS_LABEL = "ndots:";
    private static final String OPTIONS_ROW_LABEL = "options";
    private static final String PORT_ROW_LABEL = "port";
    private static final String SEARCH_ROW_LABEL = "search";
    private static final String SORTLIST_ROW_LABEL = "sortlist";
    private final DnsServerAddresses defaultNameServerAddresses;
    private final Map<String, DnsServerAddresses> domainToNameServerStreamMap;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) UnixResolverDnsServerAddressStreamProvider.class);
    private static final Pattern SEARCH_DOMAIN_PATTERN = Pattern.compile("\\s+");

    public UnixResolverDnsServerAddressStreamProvider(File file, File... fileArr) throws Throwable {
        Map<? extends String, ? extends DnsServerAddresses> map = parse((File) ObjectUtil.checkNotNull(file, "etcResolvConf"));
        boolean z10 = (fileArr == null || fileArr.length == 0) ? false : true;
        Map<String, DnsServerAddresses> map2 = z10 ? parse(fileArr) : map;
        this.domainToNameServerStreamMap = map2;
        DnsServerAddresses dnsServerAddresses = map.get(file.getName());
        if (dnsServerAddresses == null) {
            Collection<? extends DnsServerAddresses> collectionValues = map.values();
            if (collectionValues.isEmpty()) {
                throw new IllegalArgumentException(file + " didn't provide any name servers");
            }
            this.defaultNameServerAddresses = collectionValues.iterator().next();
        } else {
            this.defaultNameServerAddresses = dnsServerAddresses;
        }
        if (z10) {
            map2.putAll(map);
        }
    }

    private boolean mayOverrideNameServers() {
        return (this.domainToNameServerStreamMap.isEmpty() && this.defaultNameServerAddresses.stream().next() == null) ? false : true;
    }

    private static Map<String, DnsServerAddresses> parse(File... fileArr) throws Throwable {
        int i10;
        char cCharAt;
        String strSubstring;
        File[] fileArr2 = fileArr;
        HashMap map = new HashMap(fileArr2.length << 1);
        int length = fileArr2.length;
        int i11 = 0;
        int i12 = 0;
        while (i12 < length) {
            File file = fileArr2[i12];
            if (file.isFile()) {
                FileReader fileReader = new FileReader(file);
                BufferedReader bufferedReader = null;
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(fileReader);
                    try {
                        ArrayList arrayList = new ArrayList(2);
                        String name = file.getName();
                        int i13 = 53;
                        ArrayList arrayList2 = arrayList;
                        while (true) {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                i10 = length;
                                if (!arrayList2.isEmpty()) {
                                    putIfAbsent(map, name, arrayList2);
                                }
                                bufferedReader2.close();
                                break;
                            }
                            String strTrim = line.trim();
                            try {
                                if (strTrim.isEmpty() || (cCharAt = strTrim.charAt(i11)) == '#' || cCharAt == ';') {
                                    length = length;
                                } else {
                                    if (strTrim.startsWith(NAMESERVER_ROW_LABEL)) {
                                        int iIndexOfNonWhiteSpace = StringUtil.indexOfNonWhiteSpace(strTrim, 10);
                                        if (iIndexOfNonWhiteSpace < 0) {
                                            throw new IllegalArgumentException("error parsing label nameserver in file " + file + ". value: " + strTrim);
                                        }
                                        int iIndexOfWhiteSpace = StringUtil.indexOfWhiteSpace(strTrim, iIndexOfNonWhiteSpace);
                                        if (iIndexOfWhiteSpace == -1) {
                                            strSubstring = strTrim.substring(iIndexOfNonWhiteSpace);
                                        } else {
                                            int iIndexOfNonWhiteSpace2 = StringUtil.indexOfNonWhiteSpace(strTrim, iIndexOfWhiteSpace);
                                            if (iIndexOfNonWhiteSpace2 == -1 || strTrim.charAt(iIndexOfNonWhiteSpace2) != '#') {
                                                throw new IllegalArgumentException("error parsing label nameserver in file " + file + ". value: " + strTrim);
                                            }
                                            strSubstring = strTrim.substring(iIndexOfNonWhiteSpace, iIndexOfWhiteSpace);
                                        }
                                        try {
                                            if (!NetUtil.isValidIpV4Address(strSubstring) && !NetUtil.isValidIpV6Address(strSubstring)) {
                                                int iLastIndexOf = strSubstring.lastIndexOf(46);
                                                int i14 = iLastIndexOf + 1;
                                                if (i14 >= strSubstring.length()) {
                                                    throw new IllegalArgumentException("error parsing label nameserver in file " + file + ". invalid IP value: " + strTrim);
                                                }
                                                i13 = Integer.parseInt(strSubstring.substring(i14));
                                                try {
                                                    strSubstring = strSubstring.substring(0, iLastIndexOf);
                                                } catch (IllegalArgumentException e10) {
                                                    e = e10;
                                                    logger.warn("Could not parse entry. Ignoring line: {}", strTrim, e);
                                                }
                                            }
                                            arrayList2.add(SocketUtils.socketAddress(strSubstring, i13));
                                        } catch (IllegalArgumentException e11) {
                                            e = e11;
                                        }
                                    } else {
                                        length = length;
                                        if (strTrim.startsWith(DOMAIN_ROW_LABEL)) {
                                            int iIndexOfNonWhiteSpace3 = StringUtil.indexOfNonWhiteSpace(strTrim, 6);
                                            if (iIndexOfNonWhiteSpace3 < 0) {
                                                throw new IllegalArgumentException("error parsing label domain in file " + file + " value: " + strTrim);
                                            }
                                            String strSubstring2 = strTrim.substring(iIndexOfNonWhiteSpace3);
                                            try {
                                                if (!arrayList2.isEmpty()) {
                                                    try {
                                                        putIfAbsent(map, strSubstring2, arrayList2);
                                                    } catch (IllegalArgumentException e12) {
                                                        e = e12;
                                                        name = strSubstring2;
                                                        logger.warn("Could not parse entry. Ignoring line: {}", strTrim, e);
                                                    }
                                                }
                                                try {
                                                    arrayList2 = new ArrayList(2);
                                                    name = strSubstring2;
                                                } catch (IllegalArgumentException e13) {
                                                    e = e13;
                                                    name = strSubstring2;
                                                    logger.warn("Could not parse entry. Ignoring line: {}", strTrim, e);
                                                }
                                            } catch (IllegalArgumentException e14) {
                                                e = e14;
                                            }
                                        } else {
                                            try {
                                                if (strTrim.startsWith("port")) {
                                                    int iIndexOfNonWhiteSpace4 = StringUtil.indexOfNonWhiteSpace(strTrim, 4);
                                                    if (iIndexOfNonWhiteSpace4 < 0) {
                                                        throw new IllegalArgumentException("error parsing label port in file " + file + " value: " + strTrim);
                                                    }
                                                    i13 = Integer.parseInt(strTrim.substring(iIndexOfNonWhiteSpace4));
                                                } else if (strTrim.startsWith(SORTLIST_ROW_LABEL)) {
                                                    logger.info("row type {} not supported. Ignoring line: {}", SORTLIST_ROW_LABEL, strTrim);
                                                }
                                            } catch (IllegalArgumentException e15) {
                                                e = e15;
                                                logger.warn("Could not parse entry. Ignoring line: {}", strTrim, e);
                                            }
                                        }
                                        length = length;
                                        i11 = 0;
                                    }
                                    logger.warn("Could not parse entry. Ignoring line: {}", strTrim, e);
                                    length = length;
                                    i11 = 0;
                                }
                            } catch (IllegalArgumentException e16) {
                                e = e16;
                                length = length;
                            }
                            length = length;
                            i11 = 0;
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader == null) {
                            fileReader.close();
                        } else {
                            bufferedReader.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                i10 = length;
            }
            i12++;
            fileArr2 = fileArr;
            length = i10;
            i11 = 0;
        }
        return map;
    }

    static int parseEtcResolverFirstNdots() throws IOException {
        return parseEtcResolverFirstNdots(new File(ETC_RESOLV_CONF_FILE));
    }

    static List<String> parseEtcResolverSearchDomains() throws IOException {
        return parseEtcResolverSearchDomains(new File(ETC_RESOLV_CONF_FILE));
    }

    static DnsServerAddressStreamProvider parseSilently() {
        try {
            UnixResolverDnsServerAddressStreamProvider unixResolverDnsServerAddressStreamProvider = new UnixResolverDnsServerAddressStreamProvider(ETC_RESOLV_CONF_FILE, ETC_RESOLVER_DIR);
            return unixResolverDnsServerAddressStreamProvider.mayOverrideNameServers() ? unixResolverDnsServerAddressStreamProvider : DefaultDnsServerAddressStreamProvider.INSTANCE;
        } catch (Exception e10) {
            logger.debug("failed to parse {} and/or {}", ETC_RESOLV_CONF_FILE, ETC_RESOLVER_DIR, e10);
            return DefaultDnsServerAddressStreamProvider.INSTANCE;
        }
    }

    private static void putIfAbsent(Map<String, DnsServerAddresses> map, String str, List<InetSocketAddress> list) {
        putIfAbsent(map, str, DnsServerAddresses.sequential(list));
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStreamProvider
    public DnsServerAddressStream nameServerAddressStream(String str) {
        while (true) {
            int iIndexOf = str.indexOf(46, 1);
            if (iIndexOf < 0 || iIndexOf == str.length() - 1) {
                break;
            }
            DnsServerAddresses dnsServerAddresses = this.domainToNameServerStreamMap.get(str);
            if (dnsServerAddresses != null) {
                return dnsServerAddresses.stream();
            }
            str = str.substring(iIndexOf + 1);
        }
        return this.defaultNameServerAddresses.stream();
    }

    static int parseEtcResolverFirstNdots(File file) throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        String line;
        FileReader fileReader = new FileReader(file);
        try {
            bufferedReader = new BufferedReader(fileReader);
            do {
                try {
                    line = bufferedReader.readLine();
                    if (line != null) {
                    }
                    bufferedReader.close();
                    return 1;
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedReader == null) {
                        fileReader.close();
                    } else {
                        bufferedReader.close();
                    }
                    throw th;
                }
            } while (!line.startsWith(OPTIONS_ROW_LABEL));
            int iIndexOf = line.indexOf(NDOTS_LABEL);
            if (iIndexOf >= 0) {
                int i10 = iIndexOf + 6;
                int iIndexOf2 = line.indexOf(32, i10);
                if (iIndexOf2 < 0) {
                    iIndexOf2 = line.length();
                }
                int i11 = Integer.parseInt(line.substring(i10, iIndexOf2));
                bufferedReader.close();
                return i11;
            }
            bufferedReader.close();
            return 1;
        } catch (Throwable th3) {
            bufferedReader = null;
            th = th3;
        }
    }

    static List<String> parseEtcResolverSearchDomains(File file) throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        int iIndexOfNonWhiteSpace;
        ArrayList arrayList = new ArrayList();
        FileReader fileReader = new FileReader(file);
        String strSubstring = null;
        try {
            bufferedReader = new BufferedReader(fileReader);
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (strSubstring == null && line.startsWith(DOMAIN_ROW_LABEL)) {
                        int iIndexOfNonWhiteSpace2 = StringUtil.indexOfNonWhiteSpace(line, 6);
                        if (iIndexOfNonWhiteSpace2 >= 0) {
                            strSubstring = line.substring(iIndexOfNonWhiteSpace2);
                        }
                    } else if (line.startsWith("search") && (iIndexOfNonWhiteSpace = StringUtil.indexOfNonWhiteSpace(line, 6)) >= 0) {
                        Collections.addAll(arrayList, SEARCH_DOMAIN_PATTERN.split(line.substring(iIndexOfNonWhiteSpace)));
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedReader == null) {
                        fileReader.close();
                    } else {
                        bufferedReader.close();
                    }
                    throw th;
                }
            }
            bufferedReader.close();
            return (strSubstring == null || !arrayList.isEmpty()) ? arrayList : Collections.singletonList(strSubstring);
        } catch (Throwable th3) {
            bufferedReader = null;
            th = th3;
        }
    }

    private static void putIfAbsent(Map<String, DnsServerAddresses> map, String str, DnsServerAddresses dnsServerAddresses) {
        DnsServerAddresses dnsServerAddressesPut = map.put(str, dnsServerAddresses);
        if (dnsServerAddressesPut != null) {
            map.put(str, dnsServerAddressesPut);
            logger.debug("Domain name {} already maps to addresses {} so new addresses {} will be discarded", str, dnsServerAddressesPut, dnsServerAddresses);
        }
    }

    public UnixResolverDnsServerAddressStreamProvider(String str, String str2) throws IOException {
        this(str == null ? null : new File(str), str2 != null ? new File(str2).listFiles() : null);
    }
}
