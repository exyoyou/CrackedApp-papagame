package org.jsoup.nodes;

import com.baidu.mobads.sdk.internal.a;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;

/* JADX INFO: loaded from: classes10.dex */
public class Document extends Element {
    private OutputSettings outputSettings;
    private QuirksMode quirksMode;

    public static class OutputSettings implements Cloneable {
        private Charset charset;
        private CharsetEncoder charsetEncoder;
        private Entities.EscapeMode escapeMode = Entities.EscapeMode.base;
        private int indentAmount;
        private boolean outline;
        private boolean prettyPrint;

        public OutputSettings() {
            Charset charsetForName = Charset.forName("UTF-8");
            this.charset = charsetForName;
            this.charsetEncoder = charsetForName.newEncoder();
            this.prettyPrint = true;
            this.outline = false;
            this.indentAmount = 1;
        }

        public Charset charset() {
            return this.charset;
        }

        CharsetEncoder encoder() {
            return this.charsetEncoder;
        }

        public Entities.EscapeMode escapeMode() {
            return this.escapeMode;
        }

        public int indentAmount() {
            return this.indentAmount;
        }

        public boolean outline() {
            return this.outline;
        }

        public boolean prettyPrint() {
            return this.prettyPrint;
        }

        public OutputSettings charset(Charset charset) {
            this.charset = charset;
            this.charsetEncoder = charset.newEncoder();
            return this;
        }

        public OutputSettings clone() {
            try {
                OutputSettings outputSettings = (OutputSettings) super.clone();
                outputSettings.charset(this.charset.name());
                outputSettings.escapeMode = Entities.EscapeMode.valueOf(this.escapeMode.name());
                return outputSettings;
            } catch (CloneNotSupportedException e10) {
                throw new RuntimeException(e10);
            }
        }

        public OutputSettings escapeMode(Entities.EscapeMode escapeMode) {
            this.escapeMode = escapeMode;
            return this;
        }

        public OutputSettings indentAmount(int i10) {
            Validate.isTrue(i10 >= 0);
            this.indentAmount = i10;
            return this;
        }

        public OutputSettings outline(boolean z10) {
            this.outline = z10;
            return this;
        }

        public OutputSettings prettyPrint(boolean z10) {
            this.prettyPrint = z10;
            return this;
        }

        public OutputSettings charset(String str) {
            charset(Charset.forName(str));
            return this;
        }
    }

    public enum QuirksMode {
        noQuirks,
        quirks,
        limitedQuirks
    }

    public Document(String str) {
        super(Tag.valueOf("#root"), str);
        this.outputSettings = new OutputSettings();
        this.quirksMode = QuirksMode.noQuirks;
    }

    public static Document createShell(String str) {
        Validate.notNull(str);
        Document document = new Document(str);
        Element elementAppendElement = document.appendElement(a.f7333f);
        elementAppendElement.appendElement("head");
        elementAppendElement.appendElement("body");
        return document;
    }

    private Element findFirstElementByTagName(String str, Node node) {
        if (node.nodeName().equals(str)) {
            return (Element) node;
        }
        Iterator<Node> it2 = node.childNodes.iterator();
        while (it2.hasNext()) {
            Element elementFindFirstElementByTagName = findFirstElementByTagName(str, it2.next());
            if (elementFindFirstElementByTagName != null) {
                return elementFindFirstElementByTagName;
            }
        }
        return null;
    }

    private void normaliseStructure(String str, Element element) {
        Elements elementsByTag = getElementsByTag(str);
        Element elementFirst = elementsByTag.first();
        if (elementsByTag.size() > 1) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 1; i10 < elementsByTag.size(); i10++) {
                Element element2 = elementsByTag.get(i10);
                Iterator<Node> it2 = element2.childNodes.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
                element2.remove();
            }
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                elementFirst.appendChild((Node) it3.next());
            }
        }
        if (elementFirst.parent().equals(element)) {
            return;
        }
        element.appendChild(elementFirst);
    }

    private void normaliseTextNodes(Element element) {
        ArrayList arrayList = new ArrayList();
        for (Node node : element.childNodes) {
            if (node instanceof TextNode) {
                TextNode textNode = (TextNode) node;
                if (!textNode.isBlank()) {
                    arrayList.add(textNode);
                }
            }
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Node node2 = (Node) arrayList.get(size);
            element.removeChild(node2);
            body().prependChild(new TextNode(" ", ""));
            body().prependChild(node2);
        }
    }

    public Element body() {
        return findFirstElementByTagName("body", this);
    }

    public Element createElement(String str) {
        return new Element(Tag.valueOf(str), baseUri());
    }

    public Element head() {
        return findFirstElementByTagName("head", this);
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    public String nodeName() {
        return "#document";
    }

    public Document normalise() {
        Element elementFindFirstElementByTagName = findFirstElementByTagName(a.f7333f, this);
        if (elementFindFirstElementByTagName == null) {
            elementFindFirstElementByTagName = appendElement(a.f7333f);
        }
        if (head() == null) {
            elementFindFirstElementByTagName.prependElement("head");
        }
        if (body() == null) {
            elementFindFirstElementByTagName.appendElement("body");
        }
        normaliseTextNodes(head());
        normaliseTextNodes(elementFindFirstElementByTagName);
        normaliseTextNodes(this);
        normaliseStructure("head", elementFindFirstElementByTagName);
        normaliseStructure("body", elementFindFirstElementByTagName);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public String outerHtml() {
        return super.html();
    }

    public OutputSettings outputSettings() {
        return this.outputSettings;
    }

    public QuirksMode quirksMode() {
        return this.quirksMode;
    }

    @Override // org.jsoup.nodes.Element
    public Element text(String str) {
        body().text(str);
        return this;
    }

    public String title() {
        Element elementFirst = getElementsByTag("title").first();
        return elementFirst != null ? StringUtil.normaliseWhitespace(elementFirst.text()).trim() : "";
    }

    public Document outputSettings(OutputSettings outputSettings) {
        Validate.notNull(outputSettings);
        this.outputSettings = outputSettings;
        return this;
    }

    public Document quirksMode(QuirksMode quirksMode) {
        this.quirksMode = quirksMode;
        return this;
    }

    public void title(String str) {
        Validate.notNull(str);
        Element elementFirst = getElementsByTag("title").first();
        if (elementFirst == null) {
            head().appendElement("title").text(str);
        } else {
            elementFirst.text(str);
        }
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Document mo1691clone() {
        Document document = (Document) super.mo1691clone();
        document.outputSettings = this.outputSettings.clone();
        return document;
    }
}
