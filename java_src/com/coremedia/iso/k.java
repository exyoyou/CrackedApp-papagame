package com.coremedia.iso;

import com.coremedia.iso.boxes.k1;
import com.haima.hmcp.widgets.BaseVideoView;
import com.join.mgps.Util.v0;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes9.dex */
public class k extends a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static String[] f25232h = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Properties f25233c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Pattern f25234d = Pattern.compile("(.*)\\((.*?)\\)");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    StringBuilder f25235e = new StringBuilder();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f25236f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    String[] f25237g;

    public k(String... strArr) {
        InputStream resourceAsStream = getClass().getResourceAsStream("/isoparser-default.properties");
        try {
            Properties properties = new Properties();
            this.f25233c = properties;
            try {
                properties.load(resourceAsStream);
                ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                Enumeration<URL> resources = (contextClassLoader == null ? ClassLoader.getSystemClassLoader() : contextClassLoader).getResources("isoparser-custom.properties");
                while (resources.hasMoreElements()) {
                    InputStream inputStreamOpenStream = resources.nextElement().openStream();
                    try {
                        this.f25233c.load(inputStreamOpenStream);
                        inputStreamOpenStream.close();
                    } catch (Throwable th) {
                        inputStreamOpenStream.close();
                        throw th;
                    }
                }
                for (String str : strArr) {
                    this.f25233c.load(getClass().getResourceAsStream(str));
                }
                try {
                    resourceAsStream.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            } catch (IOException e11) {
                throw new RuntimeException(e11);
            }
        } catch (Throwable th2) {
            try {
                resourceAsStream.close();
            } catch (IOException e12) {
                e12.printStackTrace();
            }
            throw th2;
        }
    }

    @Override // com.coremedia.iso.a
    public com.coremedia.iso.boxes.d b(String str, byte[] bArr, String str2) {
        c(str, bArr, str2);
        try {
            Class<?> cls = Class.forName(this.f25236f);
            String[] strArr = this.f25237g;
            if (strArr.length <= 0) {
                return (com.coremedia.iso.boxes.d) cls.newInstance();
            }
            Class<?>[] clsArr = new Class[strArr.length];
            Object[] objArr = new Object[strArr.length];
            int i10 = 0;
            while (true) {
                String[] strArr2 = this.f25237g;
                if (i10 >= strArr2.length) {
                    return (com.coremedia.iso.boxes.d) cls.getConstructor(clsArr).newInstance(objArr);
                }
                if (BaseVideoView.USER_TYPE.equals(strArr2[i10])) {
                    objArr[i10] = bArr;
                    clsArr[i10] = byte[].class;
                } else if ("type".equals(this.f25237g[i10])) {
                    objArr[i10] = str;
                    clsArr[i10] = String.class;
                } else {
                    if (!"parent".equals(this.f25237g[i10])) {
                        throw new InternalError("No such param: " + this.f25237g[i10]);
                    }
                    objArr[i10] = str2;
                    clsArr[i10] = String.class;
                }
                i10++;
            }
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException(e10);
        } catch (IllegalAccessException e11) {
            throw new RuntimeException(e11);
        } catch (InstantiationException e12) {
            throw new RuntimeException(e12);
        } catch (NoSuchMethodException e13) {
            throw new RuntimeException(e13);
        } catch (InvocationTargetException e14) {
            throw new RuntimeException(e14);
        }
    }

    public void c(String str, byte[] bArr, String str2) {
        String property;
        if (bArr == null) {
            property = this.f25233c.getProperty(str);
            if (property == null) {
                StringBuilder sb2 = this.f25235e;
                sb2.append(str2);
                sb2.append('-');
                sb2.append(str);
                String string = sb2.toString();
                this.f25235e.setLength(0);
                property = this.f25233c.getProperty(string);
            }
        } else {
            if (!k1.f24950p.equals(str)) {
                throw new RuntimeException("we have a userType but no uuid box type. Something's wrong");
            }
            property = this.f25233c.getProperty("uuid[" + e.b(bArr).toUpperCase() + "]");
            if (property == null) {
                property = this.f25233c.getProperty(String.valueOf(str2) + "-uuid[" + e.b(bArr).toUpperCase() + "]");
            }
            if (property == null) {
                property = this.f25233c.getProperty(k1.f24950p);
            }
        }
        if (property == null) {
            property = this.f25233c.getProperty(v0.f50057a);
        }
        if (property == null) {
            throw new RuntimeException("No box object found for " + str);
        }
        if (!property.endsWith(")")) {
            this.f25237g = f25232h;
            this.f25236f = property;
            return;
        }
        Matcher matcher = this.f25234d.matcher(property);
        if (!matcher.matches()) {
            throw new RuntimeException("Cannot work with that constructor: " + property);
        }
        this.f25236f = matcher.group(1);
        if (matcher.group(2).length() == 0) {
            this.f25237g = f25232h;
        } else {
            this.f25237g = matcher.group(2).length() > 0 ? matcher.group(2).split(",") : new String[0];
        }
    }

    public k(Properties properties) {
        this.f25233c = properties;
    }
}
