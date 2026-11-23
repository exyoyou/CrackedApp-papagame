package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.s0;
import com.join.mgps.Util.o0;
import com.sigmob.sdk.base.mta.PointCategory;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.namespace.NamespaceContext;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes5.dex */
public class q extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f33242l = "http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f33243e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    s0 f33244f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    com.mp4parser.iso14496.part30.e f33245g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    List<com.googlecode.mp4parser.authoring.f> f33246h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    a1 f33247i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f33248j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long[] f33249k;

    class a implements com.googlecode.mp4parser.authoring.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final /* synthetic */ String f33251b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final /* synthetic */ List f33252c;

        a(String str, List list) {
            this.f33251b = str;
            this.f33252c = list;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                b(Channels.newChannel(byteArrayOutputStream));
                return ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            writableByteChannel.write(ByteBuffer.wrap(com.coremedia.iso.l.b(this.f33251b)));
            Iterator it2 = this.f33252c.iterator();
            while (it2.hasNext()) {
                FileInputStream fileInputStream = new FileInputStream((File) it2.next());
                byte[] bArr = new byte[HttpPostBodyUtil.chunkSize];
                while (true) {
                    int i10 = fileInputStream.read(bArr);
                    if (-1 == i10) {
                        break;
                    } else {
                        writableByteChannel.write(ByteBuffer.wrap(bArr, 0, i10));
                    }
                }
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            long length = com.coremedia.iso.l.b(this.f33251b).length;
            Iterator it2 = this.f33252c.iterator();
            while (it2.hasNext()) {
                length += ((File) it2.next()).length();
            }
            return length;
        }
    }

    class b implements com.googlecode.mp4parser.authoring.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final /* synthetic */ File f33254b;

        b(File file) {
            this.f33254b = file;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            try {
                return ByteBuffer.wrap(q.this.e(new FileInputStream(this.f33254b)));
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            Channels.newOutputStream(writableByteChannel).write(q.this.e(new FileInputStream(this.f33254b)));
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f33254b.length();
        }
    }

    private static class c implements NamespaceContext {
        private c() {
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getNamespaceURI(String str) {
            if (str.equals("ttml")) {
                return "http://www.w3.org/ns/ttml";
            }
            if (str.equals("smpte")) {
                return q.f33242l;
            }
            return null;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getPrefix(String str) {
            if (str.equals("http://www.w3.org/ns/ttml")) {
                return "ttml";
            }
            if (str.equals(q.f33242l)) {
                return "smpte";
            }
            return null;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public Iterator getPrefixes(String str) {
            return Arrays.asList("ttml", "smpte").iterator();
        }

        /* synthetic */ c(c cVar) {
            this();
        }
    }

    public q(File... fileArr) throws XPathExpressionException, ParserConfigurationException, SAXException, IOException {
        super(fileArr[0].getName());
        this.f33243e = new com.googlecode.mp4parser.authoring.i();
        this.f33244f = new s0();
        this.f33245g = new com.mp4parser.iso14496.part30.e();
        this.f33246h = new ArrayList();
        this.f33247i = new a1();
        this.f33249k = new long[fileArr.length];
        DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
        documentBuilderFactoryNewInstance.setNamespaceAware(true);
        DocumentBuilder documentBuilderNewDocumentBuilder = documentBuilderFactoryNewInstance.newDocumentBuilder();
        long j10 = 0;
        c cVar = null;
        String str = null;
        int i10 = 0;
        while (i10 < fileArr.length) {
            File file = fileArr[i10];
            a1.a aVar = new a1.a();
            this.f33247i.v().add(aVar);
            aVar.d(1L);
            Document document = documentBuilderNewDocumentBuilder.parse(file);
            String strC = c(document);
            if (str == null) {
                str = strC;
            } else if (!str.equals(strC)) {
                throw new RuntimeException("Within one Track all sample documents need to have the same language");
            }
            XPathFactory xPathFactoryNewInstance = XPathFactory.newInstance();
            c cVar2 = new c(cVar);
            XPath xPathNewXPath = xPathFactoryNewInstance.newXPath();
            xPathNewXPath.setNamespaceContext(cVar2);
            long jD = d(document);
            this.f33249k[i10] = jD - j10;
            NodeList nodeList = (NodeList) xPathNewXPath.compile("/ttml:tt/ttml:body/ttml:div/@smpte:backgroundImage").evaluate(document, XPathConstants.NODESET);
            HashMap map = new HashMap();
            HashSet hashSet = new HashSet();
            for (int i11 = 0; i11 < nodeList.getLength(); i11++) {
                hashSet.add(nodeList.item(i11).getNodeValue());
            }
            ArrayList<String> arrayList = new ArrayList(hashSet);
            Collections.sort(arrayList);
            int i12 = 1;
            for (String str2 : arrayList) {
                map.put(str2, "urn:dece:container:subtitleimageindex:" + i12 + str2.substring(str2.lastIndexOf(o0.f49827a)));
                i12++;
                i10 = i10;
            }
            if (arrayList.isEmpty()) {
                this.f33246h.add(new b(file));
            } else {
                String str3 = new String(e(new FileInputStream(file)));
                for (Map.Entry entry : map.entrySet()) {
                    str3 = str3.replace((CharSequence) entry.getKey(), (CharSequence) entry.getValue());
                }
                ArrayList arrayList2 = new ArrayList();
                this.f33246h.add(new a(str3, arrayList2));
                a1.a.C0536a c0536a = new a1.a.C0536a();
                c0536a.h(com.coremedia.iso.l.c(str3));
                aVar.c().add(c0536a);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    File file2 = new File(file.getParentFile(), (String) it2.next());
                    arrayList2.add(file2);
                    a1.a.C0536a c0536a2 = new a1.a.C0536a();
                    c0536a2.h(file2.length());
                    aVar.c().add(c0536a2);
                }
            }
            i10++;
            j10 = jD;
            cVar = null;
        }
        this.f33243e.p(com.googlecode.mp4parser.util.g.a(str));
        this.f33245g.J(f33242l);
        this.f33245g.K(f33242l);
        if (this.f33248j) {
            this.f33245g.I("image/png");
        } else {
            this.f33245g.I("");
        }
        this.f33244f.m(this.f33245g);
        this.f33243e.t(30000L);
        this.f33243e.q(65535);
    }

    public static long b(Document document) {
        XPathFactory xPathFactoryNewInstance = XPathFactory.newInstance();
        c cVar = new c(null);
        XPath xPathNewXPath = xPathFactoryNewInstance.newXPath();
        xPathNewXPath.setNamespaceContext(cVar);
        try {
            NodeList nodeList = (NodeList) xPathNewXPath.compile("//*[@begin]").evaluate(document, XPathConstants.NODESET);
            long jMin = 0;
            for (int i10 = 0; i10 < nodeList.getLength(); i10++) {
                jMin = Math.min(f(nodeList.item(i10).getAttributes().getNamedItem("begin").getNodeValue()), jMin);
            }
            return jMin;
        } catch (XPathExpressionException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String c(Document document) {
        return document.getDocumentElement().getAttribute("xml:lang");
    }

    public static long d(Document document) {
        long jF;
        XPathFactory xPathFactoryNewInstance = XPathFactory.newInstance();
        c cVar = new c(null);
        XPath xPathNewXPath = xPathFactoryNewInstance.newXPath();
        xPathNewXPath.setNamespaceContext(cVar);
        try {
            NodeList nodeList = (NodeList) xPathNewXPath.compile("//*[@begin]").evaluate(document, XPathConstants.NODESET);
            long jMax = 0;
            for (int i10 = 0; i10 < nodeList.getLength(); i10++) {
                Node nodeItem = nodeList.item(i10);
                String nodeValue = nodeItem.getAttributes().getNamedItem("begin").getNodeValue();
                if (nodeItem.getAttributes().getNamedItem("dur") != null) {
                    jF = f(nodeValue) + f(nodeItem.getAttributes().getNamedItem("dur").getNodeValue());
                } else {
                    if (nodeItem.getAttributes().getNamedItem(PointCategory.END) == null) {
                        throw new RuntimeException("neither end nor dur attribute is present");
                    }
                    jF = f(nodeItem.getAttributes().getNamedItem(PointCategory.END).getNodeValue());
                }
                jMax = Math.max(jF, jMax);
            }
            return jMax;
        } catch (XPathExpressionException e10) {
            throw new RuntimeException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] e(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[HttpPostBodyUtil.chunkSize];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i10 = inputStream.read(bArr);
            if (-1 == i10) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    static long f(String str) {
        Matcher matcher = Pattern.compile("([0-9][0-9]):([0-9][0-9]):([0-9][0-9])([\\.:][0-9][0-9]?[0-9]?)?").matcher(str);
        if (!matcher.matches()) {
            throw new RuntimeException("Cannot match " + str + " to time expression");
        }
        String strGroup = matcher.group(1);
        String strGroup2 = matcher.group(2);
        String strGroup3 = matcher.group(3);
        String strGroup4 = matcher.group(4);
        if (strGroup4 == null) {
            strGroup4 = ".000";
        }
        String strReplace = strGroup4.replace(":", o0.f49827a);
        return (long) ((Long.parseLong(strGroup) * 60 * 60 * 1000) + (Long.parseLong(strGroup2) * 60 * 1000) + (Long.parseLong(strGroup3) * 1000) + (Double.parseDouble("0" + strReplace) * 1000.0d));
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33244f;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f33243e;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return this.f33247i;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f33246h;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        int length = this.f33249k.length;
        long[] jArr = new long[length];
        for (int i10 = 0; i10 < length; i10++) {
            jArr[i10] = (this.f33249k[i10] * this.f33243e.i()) / 1000;
        }
        return jArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "subt";
    }
}
