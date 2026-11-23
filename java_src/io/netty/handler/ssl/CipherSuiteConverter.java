package io.netty.handler.ssl;

import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;

/* JADX INFO: loaded from: classes.dex */
final class CipherSuiteConverter {
    private static final Map<String, String> j2oTls13;
    private static final Map<String, Map<String, String>> o2jTls13;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) CipherSuiteConverter.class);
    private static final Pattern JAVA_CIPHERSUITE_PATTERN = Pattern.compile("^(?:TLS|SSL)_((?:(?!_WITH_).)+)_WITH_(.*)_(.*)$");
    private static final Pattern OPENSSL_CIPHERSUITE_PATTERN = Pattern.compile("^(?:((?:(?:EXP-)?(?:(?:DHE|EDH|ECDH|ECDHE|SRP|RSA)-(?:DSS|RSA|ECDSA|PSK)|(?:ADH|AECDH|KRB5|PSK|SRP)))|EXP)-)?(.*)-(.*)$");
    private static final Pattern JAVA_AES_CBC_PATTERN = Pattern.compile("^(AES)_([0-9]+)_CBC$");
    private static final Pattern JAVA_AES_PATTERN = Pattern.compile("^(AES)_([0-9]+)_(.*)$");
    private static final Pattern OPENSSL_AES_CBC_PATTERN = Pattern.compile("^(AES)([0-9]+)$");
    private static final Pattern OPENSSL_AES_PATTERN = Pattern.compile("^(AES)([0-9]+)-(.*)$");
    private static final ConcurrentMap<String, String> j2o = PlatformDependent.newConcurrentHashMap();
    private static final ConcurrentMap<String, Map<String, String>> o2j = PlatformDependent.newConcurrentHashMap();

    static {
        HashMap map = new HashMap();
        map.put("TLS_AES_128_GCM_SHA256", "AEAD-AES128-GCM-SHA256");
        map.put("TLS_AES_256_GCM_SHA384", "AEAD-AES256-GCM-SHA384");
        map.put("TLS_CHACHA20_POLY1305_SHA256", "AEAD-CHACHA20-POLY1305-SHA256");
        j2oTls13 = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("TLS_AES_128_GCM_SHA256", Collections.singletonMap(SSLConnectionSocketFactory.TLS, "TLS_AES_128_GCM_SHA256"));
        map2.put("TLS_AES_256_GCM_SHA384", Collections.singletonMap(SSLConnectionSocketFactory.TLS, "TLS_AES_256_GCM_SHA384"));
        map2.put("TLS_CHACHA20_POLY1305_SHA256", Collections.singletonMap(SSLConnectionSocketFactory.TLS, "TLS_CHACHA20_POLY1305_SHA256"));
        map2.put("AEAD-AES128-GCM-SHA256", Collections.singletonMap(SSLConnectionSocketFactory.TLS, "TLS_AES_128_GCM_SHA256"));
        map2.put("AEAD-AES256-GCM-SHA384", Collections.singletonMap(SSLConnectionSocketFactory.TLS, "TLS_AES_256_GCM_SHA384"));
        map2.put("AEAD-CHACHA20-POLY1305-SHA256", Collections.singletonMap(SSLConnectionSocketFactory.TLS, "TLS_CHACHA20_POLY1305_SHA256"));
        o2jTls13 = Collections.unmodifiableMap(map2);
    }

    private CipherSuiteConverter() {
    }

    private static String cacheFromJava(String str, boolean z10) {
        String str2 = j2oTls13.get(str);
        if (str2 != null) {
            return z10 ? str2 : str;
        }
        String openSslUncached = toOpenSslUncached(str, z10);
        if (openSslUncached == null) {
            return null;
        }
        j2o.putIfAbsent(str, openSslUncached);
        String strSubstring = str.substring(4);
        HashMap map = new HashMap(4);
        map.put("", strSubstring);
        map.put(SSLConnectionSocketFactory.SSL, "SSL_" + strSubstring);
        map.put(SSLConnectionSocketFactory.TLS, "TLS_" + strSubstring);
        o2j.put(openSslUncached, map);
        logger.debug("Cipher suite mapping: {} => {}", str, openSslUncached);
        return openSslUncached;
    }

    private static Map<String, String> cacheFromOpenSsl(String str) {
        Map<String, String> map = o2jTls13.get(str);
        if (map != null) {
            return map;
        }
        String javaUncached0 = toJavaUncached0(str, false);
        if (javaUncached0 == null) {
            return null;
        }
        String str2 = "SSL_" + javaUncached0;
        String str3 = "TLS_" + javaUncached0;
        HashMap map2 = new HashMap(4);
        map2.put("", javaUncached0);
        map2.put(SSLConnectionSocketFactory.SSL, str2);
        map2.put(SSLConnectionSocketFactory.TLS, str3);
        o2j.putIfAbsent(str, map2);
        ConcurrentMap<String, String> concurrentMap = j2o;
        concurrentMap.putIfAbsent(str3, str);
        concurrentMap.putIfAbsent(str2, str);
        InternalLogger internalLogger = logger;
        internalLogger.debug("Cipher suite mapping: {} => {}", str3, str);
        internalLogger.debug("Cipher suite mapping: {} => {}", str2, str);
        return map2;
    }

    static void clearCache() {
        j2o.clear();
        o2j.clear();
    }

    static void convertToCipherStrings(Iterable<String> iterable, StringBuilder sb2, StringBuilder sb3, boolean z10) {
        String next;
        Iterator<String> it2 = iterable.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            String openSsl = toOpenSsl(next, z10);
            if (openSsl == null) {
                openSsl = next;
            }
            if (!OpenSsl.isCipherSuiteAvailable(openSsl)) {
                throw new IllegalArgumentException("unsupported cipher suite: " + next + '(' + openSsl + ')');
            }
            if (SslUtils.isTLSv13Cipher(openSsl) || SslUtils.isTLSv13Cipher(next)) {
                sb3.append(openSsl);
                sb3.append(':');
            } else {
                sb2.append(openSsl);
                sb2.append(':');
            }
        }
        if (sb2.length() == 0 && sb3.length() == 0) {
            throw new IllegalArgumentException("empty cipher suites");
        }
        if (sb2.length() > 0) {
            sb2.setLength(sb2.length() - 1);
        }
        if (sb3.length() > 0) {
            sb3.setLength(sb3.length() - 1);
        }
    }

    static boolean isJ2OCached(String str, String str2) {
        return str2.equals(j2o.get(str));
    }

    static boolean isO2JCached(String str, String str2, String str3) {
        Map<String, String> map = o2j.get(str);
        if (map == null) {
            return false;
        }
        return str3.equals(map.get(str2));
    }

    static String toJava(String str, String str2) {
        Map<String, String> mapCacheFromOpenSsl = o2j.get(str);
        if (mapCacheFromOpenSsl == null && (mapCacheFromOpenSsl = cacheFromOpenSsl(str)) == null) {
            return null;
        }
        String str3 = mapCacheFromOpenSsl.get(str2);
        if (str3 != null) {
            return str3;
        }
        String str4 = mapCacheFromOpenSsl.get("");
        if (str4 == null) {
            return null;
        }
        return str2 + '_' + str4;
    }

    private static String toJavaBulkCipher(String str, boolean z10) {
        if (str.startsWith("AES")) {
            Matcher matcher = OPENSSL_AES_CBC_PATTERN.matcher(str);
            if (matcher.matches()) {
                return matcher.replaceFirst("$1_$2_CBC");
            }
            Matcher matcher2 = OPENSSL_AES_PATTERN.matcher(str);
            if (matcher2.matches()) {
                return matcher2.replaceFirst("$1_$2_$3");
            }
        }
        if ("DES-CBC3".equals(str)) {
            return "3DES_EDE_CBC";
        }
        if ("RC4".equals(str)) {
            return z10 ? "RC4_40" : "RC4_128";
        }
        if ("DES-CBC".equals(str)) {
            return z10 ? "DES_CBC_40" : "DES_CBC";
        }
        if ("RC2-CBC".equals(str)) {
            return z10 ? "RC2_CBC_40" : "RC2_CBC";
        }
        return str.replace('-', '_');
    }

    private static String toJavaHandshakeAlgo(String str, boolean z10) {
        if (str.isEmpty()) {
            str = "RSA";
        } else if ("ADH".equals(str)) {
            str = "DH_anon";
        } else if ("AECDH".equals(str)) {
            str = "ECDH_anon";
        }
        String strReplace = str.replace('-', '_');
        if (!z10) {
            return strReplace;
        }
        return strReplace + "_EXPORT";
    }

    private static String toJavaHmacAlgo(String str) {
        return str;
    }

    static String toJavaUncached(String str) {
        return toJavaUncached0(str, true);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0081  */
    /* JADX WARN: Code duplicated, block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:23:0x0081, please report this as an issue */
    private static String toJavaUncached0(String str, boolean z10) {
        String javaBulkCipher;
        String str2;
        Map<String, String> map;
        if (z10 && (map = o2jTls13.get(str)) != null) {
            return map.get(SSLConnectionSocketFactory.TLS);
        }
        Matcher matcher = OPENSSL_CIPHERSUITE_PATTERN.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        boolean z11 = true;
        String strGroup = matcher.group(1);
        if (strGroup != null) {
            if (strGroup.startsWith("EXP-")) {
                strGroup = strGroup.substring(4);
            } else if ("EXP".equals(strGroup)) {
                strGroup = "";
            }
            String javaHandshakeAlgo = toJavaHandshakeAlgo(strGroup, z11);
            javaBulkCipher = toJavaBulkCipher(matcher.group(2), z11);
            str2 = javaHandshakeAlgo + "_WITH_" + javaBulkCipher + '_' + toJavaHmacAlgo(matcher.group(3));
            if (javaBulkCipher.contains("CHACHA20")) {
                return str2;
            }
            return str2 + "_SHA256";
        }
        strGroup = "";
        z11 = false;
        String javaHandshakeAlgo2 = toJavaHandshakeAlgo(strGroup, z11);
        javaBulkCipher = toJavaBulkCipher(matcher.group(2), z11);
        str2 = javaHandshakeAlgo2 + "_WITH_" + javaBulkCipher + '_' + toJavaHmacAlgo(matcher.group(3));
        if (javaBulkCipher.contains("CHACHA20")) {
            return str2;
        }
        return str2 + "_SHA256";
    }

    static String toOpenSsl(String str, boolean z10) {
        String str2 = j2o.get(str);
        return str2 != null ? str2 : cacheFromJava(str, z10);
    }

    private static String toOpenSslBulkCipher(String str) {
        if (str.startsWith("AES_")) {
            Matcher matcher = JAVA_AES_CBC_PATTERN.matcher(str);
            if (matcher.matches()) {
                return matcher.replaceFirst("$1$2");
            }
            Matcher matcher2 = JAVA_AES_PATTERN.matcher(str);
            if (matcher2.matches()) {
                return matcher2.replaceFirst("$1$2-$3");
            }
        }
        if ("3DES_EDE_CBC".equals(str)) {
            return "DES-CBC3";
        }
        if ("RC4_128".equals(str) || "RC4_40".equals(str)) {
            return "RC4";
        }
        if ("DES40_CBC".equals(str) || "DES_CBC_40".equals(str)) {
            return "DES-CBC";
        }
        return "RC2_CBC_40".equals(str) ? "RC2-CBC" : str.replace('_', '-');
    }

    private static String toOpenSslHandshakeAlgo(String str) {
        boolean zEndsWith = str.endsWith("_EXPORT");
        if (zEndsWith) {
            str = str.substring(0, str.length() - 7);
        }
        if ("RSA".equals(str)) {
            str = "";
        } else if (str.endsWith("_anon")) {
            str = 'A' + str.substring(0, str.length() - 5);
        }
        if (zEndsWith) {
            if (str.isEmpty()) {
                str = "EXP";
            } else {
                str = "EXP-" + str;
            }
        }
        return str.replace('_', '-');
    }

    private static String toOpenSslHmacAlgo(String str) {
        return str;
    }

    static String toOpenSslUncached(String str, boolean z10) {
        String str2 = j2oTls13.get(str);
        if (str2 != null) {
            return z10 ? str2 : str;
        }
        Matcher matcher = JAVA_CIPHERSUITE_PATTERN.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String openSslHandshakeAlgo = toOpenSslHandshakeAlgo(matcher.group(1));
        String openSslBulkCipher = toOpenSslBulkCipher(matcher.group(2));
        String openSslHmacAlgo = toOpenSslHmacAlgo(matcher.group(3));
        if (openSslHandshakeAlgo.isEmpty()) {
            return openSslBulkCipher + '-' + openSslHmacAlgo;
        }
        if (openSslBulkCipher.contains("CHACHA20")) {
            return openSslHandshakeAlgo + '-' + openSslBulkCipher;
        }
        return openSslHandshakeAlgo + '-' + openSslBulkCipher + '-' + openSslHmacAlgo;
    }
}
