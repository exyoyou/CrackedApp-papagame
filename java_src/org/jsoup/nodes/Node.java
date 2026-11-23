package org.jsoup.nodes;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.parser.Parser;
import org.jsoup.select.Elements;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;

/* JADX INFO: loaded from: classes10.dex */
public abstract class Node implements Cloneable {
    Attributes attributes;
    String baseUri;
    List<Node> childNodes;
    Node parentNode;
    int siblingIndex;

    private static class OuterHtmlVisitor implements NodeVisitor {
        private StringBuilder accum;
        private Document.OutputSettings out;

        OuterHtmlVisitor(StringBuilder sb2, Document.OutputSettings outputSettings) {
            this.accum = sb2;
            this.out = outputSettings;
        }

        @Override // org.jsoup.select.NodeVisitor
        public void head(Node node, int i10) {
            node.outerHtmlHead(this.accum, i10, this.out);
        }

        @Override // org.jsoup.select.NodeVisitor
        public void tail(Node node, int i10) {
            if (node.nodeName().equals("#text")) {
                return;
            }
            node.outerHtmlTail(this.accum, i10, this.out);
        }
    }

    protected Node(String str, Attributes attributes) {
        Validate.notNull(str);
        Validate.notNull(attributes);
        this.childNodes = new ArrayList(4);
        this.baseUri = str.trim();
        this.attributes = attributes;
    }

    private void addSiblingHtml(int i10, String str) {
        Validate.notNull(str);
        Validate.notNull(this.parentNode);
        List<Node> fragment = Parser.parseFragment(str, parent() instanceof Element ? (Element) parent() : null, baseUri());
        this.parentNode.addChildren(i10, (Node[]) fragment.toArray(new Node[fragment.size()]));
    }

    private Element getDeepChild(Element element) {
        Elements elementsChildren = element.children();
        return elementsChildren.size() > 0 ? getDeepChild(elementsChildren.get(0)) : element;
    }

    private Document.OutputSettings getOutputSettings() {
        return (ownerDocument() != null ? ownerDocument() : new Document("")).outputSettings();
    }

    private void reindexChildren() {
        for (int i10 = 0; i10 < this.childNodes.size(); i10++) {
            this.childNodes.get(i10).setSiblingIndex(i10);
        }
    }

    private void reparentChild(Node node) {
        Node node2 = node.parentNode;
        if (node2 != null) {
            node2.removeChild(node);
        }
        node.setParentNode(this);
    }

    public String absUrl(String str) {
        Validate.notEmpty(str);
        String strAttr = attr(str);
        try {
            if (!hasAttr(str)) {
                return "";
            }
            try {
                URL url = new URL(this.baseUri);
                if (strAttr.startsWith("?")) {
                    strAttr = url.getPath() + strAttr;
                }
                return new URL(url, strAttr).toExternalForm();
            } catch (MalformedURLException unused) {
                return new URL(strAttr).toExternalForm();
            }
        } catch (MalformedURLException unused2) {
            return "";
        }
    }

    protected void addChildren(Node... nodeArr) {
        for (Node node : nodeArr) {
            reparentChild(node);
            this.childNodes.add(node);
            node.setSiblingIndex(this.childNodes.size() - 1);
        }
    }

    public Node after(String str) {
        addSiblingHtml(siblingIndex() + 1, str);
        return this;
    }

    public String attr(String str) {
        Validate.notNull(str);
        if (this.attributes.hasKey(str)) {
            return this.attributes.get(str);
        }
        return str.toLowerCase().startsWith("abs:") ? absUrl(str.substring(4)) : "";
    }

    public Attributes attributes() {
        return this.attributes;
    }

    public String baseUri() {
        return this.baseUri;
    }

    public Node before(String str) {
        addSiblingHtml(siblingIndex(), str);
        return this;
    }

    public Node childNode(int i10) {
        return this.childNodes.get(i10);
    }

    public final int childNodeSize() {
        return this.childNodes.size();
    }

    public List<Node> childNodes() {
        return Collections.unmodifiableList(this.childNodes);
    }

    protected Node[] childNodesAsArray() {
        return (Node[]) this.childNodes.toArray(new Node[childNodeSize()]);
    }

    public List<Node> childNodesCopy() {
        ArrayList arrayList = new ArrayList(this.childNodes.size());
        Iterator<Node> it2 = this.childNodes.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().mo1691clone());
        }
        return arrayList;
    }

    protected Node doClone(Node node) {
        try {
            Node node2 = (Node) super.clone();
            node2.parentNode = node;
            node2.siblingIndex = node == null ? 0 : this.siblingIndex;
            Attributes attributes = this.attributes;
            node2.attributes = attributes != null ? attributes.clone() : null;
            node2.baseUri = this.baseUri;
            node2.childNodes = new ArrayList(this.childNodes.size());
            Iterator<Node> it2 = this.childNodes.iterator();
            while (it2.hasNext()) {
                node2.childNodes.add(it2.next().doClone(node2));
            }
            return node2;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public boolean hasAttr(String str) {
        Validate.notNull(str);
        if (str.toLowerCase().startsWith("abs:")) {
            String strSubstring = str.substring(4);
            if (this.attributes.hasKey(strSubstring) && !absUrl(strSubstring).equals("")) {
                return true;
            }
        }
        return this.attributes.hasKey(str);
    }

    public int hashCode() {
        Node node = this.parentNode;
        int iHashCode = (node != null ? node.hashCode() : 0) * 31;
        Attributes attributes = this.attributes;
        return iHashCode + (attributes != null ? attributes.hashCode() : 0);
    }

    protected void indent(StringBuilder sb2, int i10, Document.OutputSettings outputSettings) {
        sb2.append("\n");
        sb2.append(StringUtil.padding(i10 * outputSettings.indentAmount()));
    }

    public Node nextSibling() {
        Node node = this.parentNode;
        if (node == null) {
            return null;
        }
        List<Node> list = node.childNodes;
        Integer numValueOf = Integer.valueOf(siblingIndex());
        Validate.notNull(numValueOf);
        if (list.size() > numValueOf.intValue() + 1) {
            return list.get(numValueOf.intValue() + 1);
        }
        return null;
    }

    public abstract String nodeName();

    public String outerHtml() {
        StringBuilder sb2 = new StringBuilder(128);
        outerHtml(sb2);
        return sb2.toString();
    }

    abstract void outerHtmlHead(StringBuilder sb2, int i10, Document.OutputSettings outputSettings);

    abstract void outerHtmlTail(StringBuilder sb2, int i10, Document.OutputSettings outputSettings);

    public Document ownerDocument() {
        if (this instanceof Document) {
            return (Document) this;
        }
        Node node = this.parentNode;
        if (node == null) {
            return null;
        }
        return node.ownerDocument();
    }

    public Node parent() {
        return this.parentNode;
    }

    public Node previousSibling() {
        Node node = this.parentNode;
        if (node == null) {
            return null;
        }
        List<Node> list = node.childNodes;
        Integer numValueOf = Integer.valueOf(siblingIndex());
        Validate.notNull(numValueOf);
        if (numValueOf.intValue() > 0) {
            return list.get(numValueOf.intValue() - 1);
        }
        return null;
    }

    public void remove() {
        Validate.notNull(this.parentNode);
        this.parentNode.removeChild(this);
    }

    public Node removeAttr(String str) {
        Validate.notNull(str);
        this.attributes.remove(str);
        return this;
    }

    protected void removeChild(Node node) {
        Validate.isTrue(node.parentNode == this);
        this.childNodes.remove(node.siblingIndex());
        reindexChildren();
        node.parentNode = null;
    }

    protected void replaceChild(Node node, Node node2) {
        Validate.isTrue(node.parentNode == this);
        Validate.notNull(node2);
        Node node3 = node2.parentNode;
        if (node3 != null) {
            node3.removeChild(node2);
        }
        Integer numValueOf = Integer.valueOf(node.siblingIndex());
        this.childNodes.set(numValueOf.intValue(), node2);
        node2.parentNode = this;
        node2.setSiblingIndex(numValueOf.intValue());
        node.parentNode = null;
    }

    public void replaceWith(Node node) {
        Validate.notNull(node);
        Validate.notNull(this.parentNode);
        this.parentNode.replaceChild(this, node);
    }

    public void setBaseUri(final String str) {
        Validate.notNull(str);
        traverse(new NodeVisitor() { // from class: org.jsoup.nodes.Node.1
            @Override // org.jsoup.select.NodeVisitor
            public void head(Node node, int i10) {
                node.baseUri = str;
            }

            @Override // org.jsoup.select.NodeVisitor
            public void tail(Node node, int i10) {
            }
        });
    }

    protected void setParentNode(Node node) {
        Node node2 = this.parentNode;
        if (node2 != null) {
            node2.removeChild(this);
        }
        this.parentNode = node;
    }

    protected void setSiblingIndex(int i10) {
        this.siblingIndex = i10;
    }

    public int siblingIndex() {
        return this.siblingIndex;
    }

    public List<Node> siblingNodes() {
        Node node = this.parentNode;
        if (node == null) {
            return Collections.emptyList();
        }
        List<Node> list = node.childNodes;
        ArrayList arrayList = new ArrayList(list.size() - 1);
        for (Node node2 : list) {
            if (node2 != this) {
                arrayList.add(node2);
            }
        }
        return arrayList;
    }

    public String toString() {
        return outerHtml();
    }

    public Node traverse(NodeVisitor nodeVisitor) {
        Validate.notNull(nodeVisitor);
        new NodeTraversor(nodeVisitor).traverse(this);
        return this;
    }

    public Node unwrap() {
        Validate.notNull(this.parentNode);
        int i10 = this.siblingIndex;
        Node node = this.childNodes.size() > 0 ? this.childNodes.get(0) : null;
        this.parentNode.addChildren(i10, childNodesAsArray());
        remove();
        return node;
    }

    public Node wrap(String str) {
        Validate.notEmpty(str);
        List<Node> fragment = Parser.parseFragment(str, parent() instanceof Element ? (Element) parent() : null, baseUri());
        Node node = fragment.get(0);
        if (node == null || !(node instanceof Element)) {
            return null;
        }
        Element element = (Element) node;
        Element deepChild = getDeepChild(element);
        this.parentNode.replaceChild(this, element);
        deepChild.addChildren(this);
        if (fragment.size() > 0) {
            for (int i10 = 0; i10 < fragment.size(); i10++) {
                Node node2 = fragment.get(i10);
                node2.parentNode.removeChild(node2);
                element.appendChild(node2);
            }
        }
        return this;
    }

    public Node after(Node node) {
        Validate.notNull(node);
        Validate.notNull(this.parentNode);
        this.parentNode.addChildren(siblingIndex() + 1, node);
        return this;
    }

    public Node before(Node node) {
        Validate.notNull(node);
        Validate.notNull(this.parentNode);
        this.parentNode.addChildren(siblingIndex(), node);
        return this;
    }

    @Override // 
    /* JADX INFO: renamed from: clone */
    public Node mo1691clone() {
        return doClone(null);
    }

    protected void outerHtml(StringBuilder sb2) {
        new NodeTraversor(new OuterHtmlVisitor(sb2, getOutputSettings())).traverse(this);
    }

    protected void addChildren(int i10, Node... nodeArr) {
        Validate.noNullElements(nodeArr);
        for (int length = nodeArr.length - 1; length >= 0; length--) {
            Node node = nodeArr[length];
            reparentChild(node);
            this.childNodes.add(i10, node);
        }
        reindexChildren();
    }

    public Node attr(String str, String str2) {
        this.attributes.put(str, str2);
        return this;
    }

    protected Node(String str) {
        this(str, new Attributes());
    }

    protected Node() {
        this.childNodes = Collections.emptyList();
        this.attributes = null;
    }
}
