package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.baidu.mobads.sdk.internal.a;
import com.byazt.bv.BaseConstants;
import com.coremedia.iso.boxes.g0;
import io.netty.handler.ssl.ApplicationProtocolNames;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.helper.DescendableLinkedList;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import u.c;

/* JADX INFO: loaded from: classes10.dex */
class HtmlTreeBuilder extends TreeBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Element contextElement;
    private Element formElement;
    private Element headElement;
    private HtmlTreeBuilderState originalState;
    private HtmlTreeBuilderState state;
    private boolean baseUriSetFromDoc = false;
    private DescendableLinkedList<Element> formattingElements = new DescendableLinkedList<>();
    private List<Token.Character> pendingTableCharacters = new ArrayList();
    private boolean framesetOk = true;
    private boolean fosterInserts = false;
    private boolean fragmentParsing = false;

    HtmlTreeBuilder() {
    }

    private void clearStackToContext(String... strArr) {
        Iterator<Element> itDescendingIterator = this.stack.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            Element next = itDescendingIterator.next();
            if (StringUtil.in(next.nodeName(), strArr) || next.nodeName().equals(a.f7333f)) {
                return;
            } else {
                itDescendingIterator.remove();
            }
        }
    }

    private boolean inSpecificScope(String str, String[] strArr, String[] strArr2) {
        return inSpecificScope(new String[]{str}, strArr, strArr2);
    }

    private void insertNode(Node node) {
        if (this.stack.size() == 0) {
            this.doc.appendChild(node);
        } else if (isFosterInserts()) {
            insertInFosterParent(node);
        } else {
            currentElement().appendChild(node);
        }
    }

    private boolean isElementInQueue(DescendableLinkedList<Element> descendableLinkedList, Element element) {
        Iterator<Element> itDescendingIterator = descendableLinkedList.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            if (itDescendingIterator.next() == element) {
                return true;
            }
        }
        return false;
    }

    private boolean isSameFormattingElement(Element element, Element element2) {
        return element.nodeName().equals(element2.nodeName()) && element.attributes().equals(element2.attributes());
    }

    private void replaceInQueue(LinkedList<Element> linkedList, Element element, Element element2) {
        int iLastIndexOf = linkedList.lastIndexOf(element);
        Validate.isTrue(iLastIndexOf != -1);
        linkedList.remove(iLastIndexOf);
        linkedList.add(iLastIndexOf, element2);
    }

    Element aboveOnStack(Element element) {
        Iterator<Element> itDescendingIterator = this.stack.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            if (itDescendingIterator.next() == element) {
                return itDescendingIterator.next();
            }
        }
        return null;
    }

    void clearFormattingElementsToLastMarker() {
        while (!this.formattingElements.isEmpty()) {
            Element elementPeekLast = this.formattingElements.peekLast();
            this.formattingElements.removeLast();
            if (elementPeekLast == null) {
                return;
            }
        }
    }

    void clearStackToTableBodyContext() {
        clearStackToContext("tbody", "tfoot", "thead");
    }

    void clearStackToTableContext() {
        clearStackToContext("table");
    }

    void clearStackToTableRowContext() {
        clearStackToContext("tr");
    }

    void error(HtmlTreeBuilderState htmlTreeBuilderState) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Unexpected token [%s] when in state [%s]", this.currentToken.tokenType(), htmlTreeBuilderState));
        }
    }

    void framesetOk(boolean z10) {
        this.framesetOk = z10;
    }

    void generateImpliedEndTags(String str) {
        while (str != null && !currentElement().nodeName().equals(str) && StringUtil.in(currentElement().nodeName(), "dd", "dt", "li", "option", "optgroup", "p", "rp", "rt")) {
            pop();
        }
    }

    Element getActiveFormattingElement(String str) {
        Element next;
        Iterator<Element> itDescendingIterator = this.formattingElements.descendingIterator();
        while (itDescendingIterator.hasNext() && (next = itDescendingIterator.next()) != null) {
            if (next.nodeName().equals(str)) {
                return next;
            }
        }
        return null;
    }

    String getBaseUri() {
        return this.baseUri;
    }

    Document getDocument() {
        return this.doc;
    }

    Element getFormElement() {
        return this.formElement;
    }

    Element getFromStack(String str) {
        Iterator<Element> itDescendingIterator = this.stack.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            Element next = itDescendingIterator.next();
            if (next.nodeName().equals(str)) {
                return next;
            }
        }
        return null;
    }

    Element getHeadElement() {
        return this.headElement;
    }

    List<Token.Character> getPendingTableCharacters() {
        return this.pendingTableCharacters;
    }

    DescendableLinkedList<Element> getStack() {
        return this.stack;
    }

    boolean inButtonScope(String str) {
        return inScope(str, new String[]{"button"});
    }

    boolean inListItemScope(String str) {
        return inScope(str, new String[]{"ol", "ul"});
    }

    boolean inScope(String[] strArr) {
        return inSpecificScope(strArr, new String[]{"applet", "caption", a.f7333f, "table", "td", "th", "marquee", "object"}, (String[]) null);
    }

    boolean inSelectScope(String str) {
        Iterator<Element> itDescendingIterator = this.stack.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            String strNodeName = itDescendingIterator.next().nodeName();
            if (strNodeName.equals(str)) {
                return true;
            }
            if (!StringUtil.in(strNodeName, "optgroup", "option")) {
                return false;
            }
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    boolean inTableScope(String str) {
        return inSpecificScope(str, new String[]{a.f7333f, "table"}, (String[]) null);
    }

    Element insert(Token.StartTag startTag) {
        if (!startTag.isSelfClosing()) {
            Element element = new Element(Tag.valueOf(startTag.name()), this.baseUri, startTag.attributes);
            insert(element);
            return element;
        }
        Element elementInsertEmpty = insertEmpty(startTag);
        this.stack.add(elementInsertEmpty);
        this.tokeniser.emit(new Token.EndTag(elementInsertEmpty.tagName()));
        return elementInsertEmpty;
    }

    Element insertEmpty(Token.StartTag startTag) {
        Tag tagValueOf = Tag.valueOf(startTag.name());
        Element element = new Element(tagValueOf, this.baseUri, startTag.attributes);
        insertNode(element);
        if (startTag.isSelfClosing()) {
            if (!tagValueOf.isKnownTag()) {
                tagValueOf.setSelfClosing();
                this.tokeniser.acknowledgeSelfClosingFlag();
            } else if (tagValueOf.isSelfClosing()) {
                this.tokeniser.acknowledgeSelfClosingFlag();
            }
        }
        return element;
    }

    void insertInFosterParent(Node node) {
        Element elementAboveOnStack;
        Element fromStack = getFromStack("table");
        boolean z10 = false;
        if (fromStack == null) {
            elementAboveOnStack = this.stack.get(0);
        } else if (fromStack.parent() != null) {
            elementAboveOnStack = fromStack.parent();
            z10 = true;
        } else {
            elementAboveOnStack = aboveOnStack(fromStack);
        }
        if (!z10) {
            elementAboveOnStack.appendChild(node);
        } else {
            Validate.notNull(fromStack);
            fromStack.before(node);
        }
    }

    void insertMarkerToFormattingElements() {
        this.formattingElements.add(null);
    }

    void insertOnStackAfter(Element element, Element element2) {
        int iLastIndexOf = this.stack.lastIndexOf(element);
        Validate.isTrue(iLastIndexOf != -1);
        this.stack.add(iLastIndexOf + 1, element2);
    }

    boolean isFosterInserts() {
        return this.fosterInserts;
    }

    boolean isFragmentParsing() {
        return this.fragmentParsing;
    }

    boolean isInActiveFormattingElements(Element element) {
        return isElementInQueue(this.formattingElements, element);
    }

    boolean isSpecial(Element element) {
        return StringUtil.in(element.nodeName(), "address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "command", "dd", BaseConstants.MARKET_URI_AUTHORITY_DETAIL, "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", c.f97427c, TypedValues.AttributesType.S_FRAME, "frameset", "h1", ApplicationProtocolNames.HTTP_2, "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", a.f7333f, "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", "menu", g0.f24873q, "nav", "noembed", "noframes", "noscript", "object", "ol", "p", com.alipay.sdk.authjs.a.f7127l, "plaintext", "pre", "script", "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", "title", "tr", "ul", "wbr", "xmp");
    }

    void markInsertionMode() {
        this.originalState = this.state;
    }

    void maybeSetBaseUri(Element element) {
        if (this.baseUriSetFromDoc) {
            return;
        }
        String strAbsUrl = element.absUrl("href");
        if (strAbsUrl.length() != 0) {
            this.baseUri = strAbsUrl;
            this.baseUriSetFromDoc = true;
            this.doc.setBaseUri(strAbsUrl);
        }
    }

    void newPendingTableCharacters() {
        this.pendingTableCharacters = new ArrayList();
    }

    boolean onStack(Element element) {
        return isElementInQueue(this.stack, element);
    }

    HtmlTreeBuilderState originalState() {
        return this.originalState;
    }

    @Override // org.jsoup.parser.TreeBuilder
    Document parse(String str, String str2, ParseErrorList parseErrorList) {
        this.state = HtmlTreeBuilderState.Initial;
        return super.parse(str, str2, parseErrorList);
    }

    List<Node> parseFragment(String str, Element element, String str2, ParseErrorList parseErrorList) {
        Element element2;
        this.state = HtmlTreeBuilderState.Initial;
        initialiseParse(str, str2, parseErrorList);
        this.contextElement = element;
        this.fragmentParsing = true;
        if (element != null) {
            if (element.ownerDocument() != null) {
                this.doc.quirksMode(element.ownerDocument().quirksMode());
            }
            String strTagName = element.tagName();
            if (StringUtil.in(strTagName, "title", "textarea")) {
                this.tokeniser.transition(TokeniserState.Rcdata);
            } else if (StringUtil.in(strTagName, "iframe", "noembed", "noframes", "style", "xmp")) {
                this.tokeniser.transition(TokeniserState.Rawtext);
            } else if (strTagName.equals("script")) {
                this.tokeniser.transition(TokeniserState.ScriptData);
            } else if (!strTagName.equals("noscript") && strTagName.equals("plaintext")) {
                this.tokeniser.transition(TokeniserState.Data);
            } else {
                this.tokeniser.transition(TokeniserState.Data);
            }
            element2 = new Element(Tag.valueOf(a.f7333f), str2);
            this.doc.appendChild(element2);
            this.stack.push(element2);
            resetInsertionMode();
        } else {
            element2 = null;
        }
        runParser();
        return element != null ? element2.childNodes() : this.doc.childNodes();
    }

    Element pop() {
        if (this.stack.peekLast().nodeName().equals("td") && !this.state.name().equals("InCell")) {
            Validate.isFalse(true, "pop td not in cell");
        }
        if (this.stack.peekLast().nodeName().equals(a.f7333f)) {
            Validate.isFalse(true, "popping html!");
        }
        return this.stack.pollLast();
    }

    void popStackToBefore(String str) {
        Iterator<Element> itDescendingIterator = this.stack.descendingIterator();
        while (itDescendingIterator.hasNext() && !itDescendingIterator.next().nodeName().equals(str)) {
            itDescendingIterator.remove();
        }
    }

    void popStackToClose(String str) {
        Iterator<Element> itDescendingIterator = this.stack.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            if (itDescendingIterator.next().nodeName().equals(str)) {
                itDescendingIterator.remove();
                return;
            }
            itDescendingIterator.remove();
        }
    }

    @Override // org.jsoup.parser.TreeBuilder
    protected boolean process(Token token) {
        this.currentToken = token;
        return this.state.process(token, this);
    }

    void push(Element element) {
        this.stack.add(element);
    }

    void pushActiveFormattingElements(Element element) {
        Element next;
        Iterator<Element> itDescendingIterator = this.formattingElements.descendingIterator();
        int i10 = 0;
        while (itDescendingIterator.hasNext() && (next = itDescendingIterator.next()) != null) {
            if (isSameFormattingElement(element, next)) {
                i10++;
            }
            if (i10 == 3) {
                itDescendingIterator.remove();
                break;
            }
        }
        this.formattingElements.add(element);
    }

    void reconstructFormattingElements() {
        int size = this.formattingElements.size();
        if (size == 0 || this.formattingElements.getLast() == null || onStack(this.formattingElements.getLast())) {
            return;
        }
        Element last = this.formattingElements.getLast();
        boolean z10 = true;
        int i10 = size - 1;
        int i11 = i10;
        while (i11 != 0) {
            i11--;
            last = this.formattingElements.get(i11);
            if (last == null || onStack(last)) {
                z10 = false;
                break;
            }
        }
        while (true) {
            if (!z10) {
                i11++;
                last = this.formattingElements.get(i11);
            }
            Validate.notNull(last);
            Element elementInsert = insert(last.nodeName());
            elementInsert.attributes().addAll(last.attributes());
            this.formattingElements.add(i11, elementInsert);
            this.formattingElements.remove(i11 + 1);
            if (i11 == i10) {
                return;
            } else {
                z10 = false;
            }
        }
    }

    void removeFromActiveFormattingElements(Element element) {
        Iterator<Element> itDescendingIterator = this.formattingElements.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            if (itDescendingIterator.next() == element) {
                itDescendingIterator.remove();
                return;
            }
        }
    }

    boolean removeFromStack(Element element) {
        Iterator<Element> itDescendingIterator = this.stack.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            if (itDescendingIterator.next() == element) {
                itDescendingIterator.remove();
                return true;
            }
        }
        return false;
    }

    void replaceActiveFormattingElement(Element element, Element element2) {
        replaceInQueue(this.formattingElements, element, element2);
    }

    void replaceOnStack(Element element, Element element2) {
        replaceInQueue(this.stack, element, element2);
    }

    void resetInsertionMode() {
        Iterator<Element> itDescendingIterator = this.stack.descendingIterator();
        boolean z10 = false;
        while (itDescendingIterator.hasNext()) {
            Element next = itDescendingIterator.next();
            if (!itDescendingIterator.hasNext()) {
                next = this.contextElement;
                z10 = true;
            }
            String strNodeName = next.nodeName();
            if ("select".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InSelect);
                return;
            }
            if ("td".equals(strNodeName) || ("td".equals(strNodeName) && !z10)) {
                transition(HtmlTreeBuilderState.InCell);
                return;
            }
            if ("tr".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InRow);
                return;
            }
            if ("tbody".equals(strNodeName) || "thead".equals(strNodeName) || "tfoot".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InTableBody);
                return;
            }
            if ("caption".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InCaption);
                return;
            }
            if ("colgroup".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InColumnGroup);
                return;
            }
            if ("table".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InTable);
                return;
            }
            if ("head".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InBody);
                return;
            }
            if ("body".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InBody);
                return;
            }
            if ("frameset".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InFrameset);
                return;
            } else if (a.f7333f.equals(strNodeName)) {
                transition(HtmlTreeBuilderState.BeforeHead);
                return;
            } else if (z10) {
                transition(HtmlTreeBuilderState.InBody);
                return;
            }
        }
    }

    void setFormElement(Element element) {
        this.formElement = element;
    }

    void setFosterInserts(boolean z10) {
        this.fosterInserts = z10;
    }

    void setHeadElement(Element element) {
        this.headElement = element;
    }

    void setPendingTableCharacters(List<Token.Character> list) {
        this.pendingTableCharacters = list;
    }

    HtmlTreeBuilderState state() {
        return this.state;
    }

    public String toString() {
        return "TreeBuilder{currentToken=" + this.currentToken + ", state=" + this.state + ", currentElement=" + currentElement() + '}';
    }

    void transition(HtmlTreeBuilderState htmlTreeBuilderState) {
        this.state = htmlTreeBuilderState;
    }

    private boolean inSpecificScope(String[] strArr, String[] strArr2, String[] strArr3) {
        Iterator<Element> itDescendingIterator = this.stack.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            String strNodeName = itDescendingIterator.next().nodeName();
            if (StringUtil.in(strNodeName, strArr)) {
                return true;
            }
            if (StringUtil.in(strNodeName, strArr2)) {
                return false;
            }
            if (strArr3 != null && StringUtil.in(strNodeName, strArr3)) {
                return false;
            }
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    boolean framesetOk() {
        return this.framesetOk;
    }

    boolean inScope(String str) {
        return inScope(str, null);
    }

    void generateImpliedEndTags() {
        generateImpliedEndTags(null);
    }

    boolean inScope(String str, String[] strArr) {
        return inSpecificScope(str, new String[]{"applet", "caption", a.f7333f, "table", "td", "th", "marquee", "object"}, strArr);
    }

    boolean process(Token token, HtmlTreeBuilderState htmlTreeBuilderState) {
        this.currentToken = token;
        return htmlTreeBuilderState.process(token, this);
    }

    Element insert(String str) {
        Element element = new Element(Tag.valueOf(str), this.baseUri);
        insert(element);
        return element;
    }

    void popStackToClose(String... strArr) {
        Iterator<Element> itDescendingIterator = this.stack.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            if (StringUtil.in(itDescendingIterator.next().nodeName(), strArr)) {
                itDescendingIterator.remove();
                return;
            }
            itDescendingIterator.remove();
        }
    }

    void insert(Element element) {
        insertNode(element);
        this.stack.add(element);
    }

    void insert(Token.Comment comment) {
        insertNode(new Comment(comment.getData(), this.baseUri));
    }

    void insert(Token.Character character) {
        Node textNode;
        if (StringUtil.in(currentElement().tagName(), "script", "style")) {
            textNode = new DataNode(character.getData(), this.baseUri);
        } else {
            textNode = new TextNode(character.getData(), this.baseUri);
        }
        currentElement().appendChild(textNode);
    }
}
