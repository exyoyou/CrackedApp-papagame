package org.apache.http.impl.auth;

import com.bytedance.pangle.provider.ContentProviderManager;
import com.coremedia.iso.boxes.c;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.HashSet;
import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ChallengeState;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.message.BasicHeaderValueFormatterHC4;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.BufferedHeader;
import org.apache.http.protocol.BasicHttpContextHC4;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EncodingUtils;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class DigestSchemeHC4 extends RFC2617SchemeHC4 {
    private static final char[] HEXADECIMAL = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final int QOP_AUTH = 2;
    private static final int QOP_AUTH_INT = 1;
    private static final int QOP_MISSING = 0;
    private static final int QOP_UNKNOWN = -1;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    private String f95045a1;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    private String f95046a2;
    private String cnonce;
    private boolean complete;
    private String lastNonce;
    private long nounceCount;

    public DigestSchemeHC4(Charset charset) {
        super(charset);
        this.complete = false;
    }

    public static String createCnonce() {
        byte[] bArr = new byte[8];
        new SecureRandom().nextBytes(bArr);
        return encode(bArr);
    }

    private Header createDigestHeader(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        String str;
        byte b10;
        MessageDigest messageDigest;
        String str2;
        String str3;
        byte b11;
        String string;
        String str4;
        String parameter = getParameter(ContentProviderManager.PROVIDER_URI);
        String parameter2 = getParameter("realm");
        String parameter3 = getParameter("nonce");
        String parameter4 = getParameter("opaque");
        String parameter5 = getParameter("methodname");
        String parameter6 = getParameter("algorithm");
        if (parameter6 == null) {
            parameter6 = "MD5";
        }
        HashSet hashSet = new HashSet(8);
        String str5 = "MD5";
        String parameter7 = getParameter("qop");
        if (parameter7 != null) {
            str = "qop";
            for (StringTokenizer stringTokenizer = new StringTokenizer(parameter7, ","); stringTokenizer.hasMoreTokens(); stringTokenizer = stringTokenizer) {
                hashSet.add(stringTokenizer.nextToken().trim().toLowerCase(Locale.ENGLISH));
            }
            b10 = ((httpRequest instanceof HttpEntityEnclosingRequest) && hashSet.contains("auth-int")) ? (byte) 1 : hashSet.contains(c.f24723u) ? (byte) 2 : (byte) -1;
        } else {
            str = "qop";
            b10 = 0;
        }
        if (b10 == -1) {
            throw new AuthenticationException("None of the qop methods is supported: " + parameter7);
        }
        String parameter8 = getParameter("charset");
        if (parameter8 == null) {
            parameter8 = "ISO-8859-1";
        }
        if (!parameter6.equalsIgnoreCase("MD5-sess")) {
            str5 = parameter6;
        }
        try {
            MessageDigest messageDigestCreateMessageDigest = createMessageDigest(str5);
            String name = credentials.getUserPrincipal().getName();
            String password = credentials.getPassword();
            if (parameter3.equals(this.lastNonce)) {
                this.nounceCount++;
            } else {
                this.nounceCount = 1L;
                this.cnonce = null;
                this.lastNonce = parameter3;
            }
            StringBuilder sb2 = new StringBuilder(256);
            Formatter formatter = new Formatter(sb2, Locale.US);
            formatter.format("%08x", Long.valueOf(this.nounceCount));
            formatter.close();
            String string2 = sb2.toString();
            if (this.cnonce == null) {
                this.cnonce = createCnonce();
            }
            this.f95045a1 = null;
            this.f95046a2 = null;
            if (parameter6.equalsIgnoreCase("MD5-sess")) {
                sb2.setLength(0);
                sb2.append(name);
                sb2.append(':');
                sb2.append(parameter2);
                sb2.append(':');
                sb2.append(password);
                messageDigest = messageDigestCreateMessageDigest;
                String strEncode = encode(messageDigest.digest(EncodingUtils.getBytes(sb2.toString(), parameter8)));
                sb2.setLength(0);
                sb2.append(strEncode);
                sb2.append(':');
                sb2.append(parameter3);
                sb2.append(':');
                sb2.append(this.cnonce);
                this.f95045a1 = sb2.toString();
            } else {
                messageDigest = messageDigestCreateMessageDigest;
                sb2.setLength(0);
                sb2.append(name);
                sb2.append(':');
                sb2.append(parameter2);
                sb2.append(':');
                sb2.append(password);
                this.f95045a1 = sb2.toString();
            }
            String strEncode2 = encode(messageDigest.digest(EncodingUtils.getBytes(this.f95045a1, parameter8)));
            if (b10 == 2) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(parameter5);
                sb3.append(':');
                str2 = parameter;
                sb3.append(str2);
                this.f95046a2 = sb3.toString();
                str3 = c.f24723u;
            } else {
                str2 = parameter;
                if (b10 == 1) {
                    HttpEntity entity = httpRequest instanceof HttpEntityEnclosingRequest ? ((HttpEntityEnclosingRequest) httpRequest).getEntity() : null;
                    if (entity == null || entity.isRepeatable()) {
                        str3 = c.f24723u;
                        HttpEntityDigester httpEntityDigester = new HttpEntityDigester(messageDigest);
                        if (entity != null) {
                            try {
                                entity.writeTo(httpEntityDigester);
                            } catch (IOException e10) {
                                throw new AuthenticationException("I/O error reading entity content", e10);
                            }
                        }
                        httpEntityDigester.close();
                        this.f95046a2 = parameter5 + ':' + str2 + ':' + encode(httpEntityDigester.getDigest());
                        b11 = b10;
                    } else {
                        str3 = c.f24723u;
                        if (!hashSet.contains(str3)) {
                            throw new AuthenticationException("Qop auth-int cannot be used with a non-repeatable entity");
                        }
                        this.f95046a2 = parameter5 + ':' + str2;
                        b11 = 2;
                    }
                    b10 = b11;
                } else {
                    str3 = c.f24723u;
                    this.f95046a2 = parameter5 + ':' + str2;
                }
            }
            String strEncode3 = encode(messageDigest.digest(EncodingUtils.getBytes(this.f95046a2, parameter8)));
            if (b10 == 0) {
                sb2.setLength(0);
                sb2.append(strEncode2);
                sb2.append(':');
                sb2.append(parameter3);
                sb2.append(':');
                sb2.append(strEncode3);
                string = sb2.toString();
            } else {
                sb2.setLength(0);
                sb2.append(strEncode2);
                sb2.append(':');
                sb2.append(parameter3);
                sb2.append(':');
                sb2.append(string2);
                sb2.append(':');
                sb2.append(this.cnonce);
                sb2.append(':');
                sb2.append(b10 == 1 ? r8 : str3);
                sb2.append(':');
                sb2.append(strEncode3);
                string = sb2.toString();
            }
            String strEncode4 = encode(messageDigest.digest(EncodingUtils.getAsciiBytes(string)));
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(128);
            if (isProxy()) {
                charArrayBuffer.append("Proxy-Authorization");
            } else {
                charArrayBuffer.append("Authorization");
            }
            charArrayBuffer.append(": Digest ");
            ArrayList arrayList = new ArrayList(20);
            arrayList.add(new BasicNameValuePair("username", name));
            arrayList.add(new BasicNameValuePair("realm", parameter2));
            arrayList.add(new BasicNameValuePair("nonce", parameter3));
            arrayList.add(new BasicNameValuePair(ContentProviderManager.PROVIDER_URI, str2));
            arrayList.add(new BasicNameValuePair(GrantCredentialsPermissionActivity.f89267i, strEncode4));
            if (b10 != 0) {
                if (b10 == 1) {
                    str3 = "auth-int";
                }
                str4 = str;
                arrayList.add(new BasicNameValuePair(str4, str3));
                arrayList.add(new BasicNameValuePair("nc", string2));
                arrayList.add(new BasicNameValuePair("cnonce", this.cnonce));
            } else {
                str4 = str;
            }
            arrayList.add(new BasicNameValuePair("algorithm", parameter6));
            if (parameter4 != null) {
                arrayList.add(new BasicNameValuePair("opaque", parameter4));
            }
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                BasicNameValuePair basicNameValuePair = (BasicNameValuePair) arrayList.get(i10);
                if (i10 > 0) {
                    charArrayBuffer.append(", ");
                }
                String name2 = basicNameValuePair.getName();
                BasicHeaderValueFormatterHC4.INSTANCE.formatNameValuePair(charArrayBuffer, basicNameValuePair, !("nc".equals(name2) || str4.equals(name2) || "algorithm".equals(name2)));
            }
            return new BufferedHeader(charArrayBuffer);
        } catch (UnsupportedDigestAlgorithmException unused) {
            throw new AuthenticationException("Unsuppported digest algorithm: " + str5);
        }
    }

    private static MessageDigest createMessageDigest(String str) throws UnsupportedDigestAlgorithmException {
        try {
            return MessageDigest.getInstance(str);
        } catch (Exception unused) {
            throw new UnsupportedDigestAlgorithmException("Unsupported algorithm in HTTP Digest authentication: " + str);
        }
    }

    static String encode(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i10 = 0; i10 < length; i10++) {
            byte b10 = bArr[i10];
            int i11 = i10 * 2;
            char[] cArr2 = HEXADECIMAL;
            cArr[i11] = cArr2[(b10 & 240) >> 4];
            cArr[i11 + 1] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    @Override // org.apache.http.auth.AuthScheme
    @Deprecated
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        return authenticate(credentials, httpRequest, new BasicHttpContextHC4());
    }

    String getA1() {
        return this.f95045a1;
    }

    String getA2() {
        return this.f95046a2;
    }

    String getCnonce() {
        return this.cnonce;
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getSchemeName() {
        return "digest";
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        if ("true".equalsIgnoreCase(getParameter("stale"))) {
            return false;
        }
        return this.complete;
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isConnectionBased() {
        return false;
    }

    public void overrideParamter(String str, String str2) {
        getParameters().put(str, str2);
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBaseHC4, org.apache.http.auth.AuthScheme
    public void processChallenge(Header header) throws MalformedChallengeException {
        super.processChallenge(header);
        this.complete = true;
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBaseHC4
    public String toString() {
        return "DIGEST [complete=" + this.complete + ", nonce=" + this.lastNonce + ", nc=" + this.nounceCount + "]";
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBaseHC4, org.apache.http.auth.ContextAwareAuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        Args.notNull(credentials, "Credentials");
        Args.notNull(httpRequest, "HTTP request");
        if (getParameter("realm") == null) {
            throw new AuthenticationException("missing realm in challenge");
        }
        if (getParameter("nonce") == null) {
            throw new AuthenticationException("missing nonce in challenge");
        }
        getParameters().put("methodname", httpRequest.getRequestLine().getMethod());
        getParameters().put(ContentProviderManager.PROVIDER_URI, httpRequest.getRequestLine().getUri());
        if (getParameter("charset") == null) {
            getParameters().put("charset", getCredentialsCharset(httpRequest));
        }
        return createDigestHeader(credentials, httpRequest);
    }

    @Deprecated
    public DigestSchemeHC4(ChallengeState challengeState) {
        super(challengeState);
    }

    public DigestSchemeHC4() {
        this(Consts.ASCII);
    }
}
