package org.apache.http.impl.cookie;

import java.util.Date;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class BasicMaxAgeHandlerHC4 extends AbstractCookieAttributeHandlerHC4 {
    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, "Cookie");
        if (str == null) {
            throw new MalformedCookieException("Missing value for max-age attribute");
        }
        try {
            int i10 = Integer.parseInt(str);
            if (i10 >= 0) {
                setCookie.setExpiryDate(new Date(System.currentTimeMillis() + (((long) i10) * 1000)));
                return;
            }
            throw new MalformedCookieException("Negative max-age attribute: " + str);
        } catch (NumberFormatException unused) {
            throw new MalformedCookieException("Invalid max-age attribute: " + str);
        }
    }
}
