package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.baidu.mobads.sdk.internal.a;
import com.byazt.bv.BaseConstants;
import com.coremedia.iso.boxes.g0;
import com.join.mgps.activity.posting.PostingActivity_;
import com.kuaishou.weapon.p0.t;
import io.netty.handler.ssl.ApplicationProtocolNames;
import java.util.Iterator;
import org.jsoup.helper.DescendableLinkedList;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import u.c;

/* JADX INFO: loaded from: classes10.dex */
enum HtmlTreeBuilderState {
    Initial { // from class: org.jsoup.parser.HtmlTreeBuilderState.1
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (!token.isDoctype()) {
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHtml);
                    return htmlTreeBuilder.process(token);
                }
                Token.Doctype doctypeAsDoctype = token.asDoctype();
                htmlTreeBuilder.getDocument().appendChild(new DocumentType(doctypeAsDoctype.getName(), doctypeAsDoctype.getPublicIdentifier(), doctypeAsDoctype.getSystemIdentifier(), htmlTreeBuilder.getBaseUri()));
                if (doctypeAsDoctype.isForceQuirks()) {
                    htmlTreeBuilder.getDocument().quirksMode(Document.QuirksMode.quirks);
                }
                htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHtml);
            }
            return true;
        }
    },
    BeforeHtml { // from class: org.jsoup.parser.HtmlTreeBuilderState.2
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.insert(a.f7333f);
            htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHead);
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    return true;
                }
                if (!token.isStartTag() || !token.asStartTag().name().equals(a.f7333f)) {
                    if (token.isEndTag() && StringUtil.in(token.asEndTag().name(), "head", "body", a.f7333f, "br")) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    if (!token.isEndTag()) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.insert(token.asStartTag());
                htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHead);
            }
            return true;
        }
    },
    BeforeHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.3
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (token.isStartTag() && token.asStartTag().name().equals(a.f7333f)) {
                    return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                }
                if (!token.isStartTag() || !token.asStartTag().name().equals("head")) {
                    if (token.isEndTag() && StringUtil.in(token.asEndTag().name(), "head", "body", a.f7333f, "br")) {
                        htmlTreeBuilder.process(new Token.StartTag("head"));
                        return htmlTreeBuilder.process(token);
                    }
                    if (token.isEndTag()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.process(new Token.StartTag("head"));
                    return htmlTreeBuilder.process(token);
                }
                htmlTreeBuilder.setHeadElement(htmlTreeBuilder.insert(token.asStartTag()));
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InHead);
            }
            return true;
        }
    },
    InHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.4
        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            treeBuilder.process(new Token.EndTag("head"));
            return treeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int i10 = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i10 == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (i10 == 2) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (i10 == 3) {
                    Token.StartTag startTagAsStartTag = token.asStartTag();
                    String strName = startTagAsStartTag.name();
                    if (strName.equals(a.f7333f)) {
                        return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                    }
                    if (StringUtil.in(strName, "base", "basefont", "bgsound", "command", "link")) {
                        Element elementInsertEmpty = htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                        if (strName.equals("base") && elementInsertEmpty.hasAttr("href")) {
                            htmlTreeBuilder.maybeSetBaseUri(elementInsertEmpty);
                        }
                    } else if (strName.equals(g0.f24873q)) {
                        htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                    } else if (strName.equals("title")) {
                        HtmlTreeBuilderState.handleRcData(startTagAsStartTag, htmlTreeBuilder);
                    } else if (StringUtil.in(strName, "noframes", "style")) {
                        HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                    } else if (strName.equals("noscript")) {
                        htmlTreeBuilder.insert(startTagAsStartTag);
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InHeadNoscript);
                    } else {
                        if (!strName.equals("script")) {
                            if (!strName.equals("head")) {
                                return anythingElse(token, htmlTreeBuilder);
                            }
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.insert(startTagAsStartTag);
                        htmlTreeBuilder.tokeniser.transition(TokeniserState.ScriptData);
                        htmlTreeBuilder.markInsertionMode();
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.Text);
                    }
                } else {
                    if (i10 != 4) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    String strName2 = token.asEndTag().name();
                    if (!strName2.equals("head")) {
                        if (StringUtil.in(strName2, "body", a.f7333f, "br")) {
                            return anythingElse(token, htmlTreeBuilder);
                        }
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterHead);
                }
            }
            return true;
        }
    },
    InHeadNoscript { // from class: org.jsoup.parser.HtmlTreeBuilderState.5
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.process(new Token.EndTag("noscript"));
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return true;
            }
            if (token.isStartTag() && token.asStartTag().name().equals(a.f7333f)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEndTag() && token.asEndTag().name().equals("noscript")) {
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InHead);
                return true;
            }
            if (HtmlTreeBuilderState.isWhitespace(token) || token.isComment() || (token.isStartTag() && StringUtil.in(token.asStartTag().name(), "basefont", "bgsound", "link", g0.f24873q, "noframes", "style"))) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
            }
            if (token.isEndTag() && token.asEndTag().name().equals("br")) {
                return anythingElse(token, htmlTreeBuilder);
            }
            if ((!token.isStartTag() || !StringUtil.in(token.asStartTag().name(), "head", "noscript")) && !token.isEndTag()) {
                return anythingElse(token, htmlTreeBuilder);
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    AfterHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.6
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.process(new Token.StartTag("body"));
            htmlTreeBuilder.framesetOk(true);
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return true;
            }
            if (!token.isStartTag()) {
                if (!token.isEndTag()) {
                    anythingElse(token, htmlTreeBuilder);
                    return true;
                }
                if (StringUtil.in(token.asEndTag().name(), "body", a.f7333f)) {
                    anythingElse(token, htmlTreeBuilder);
                    return true;
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            Token.StartTag startTagAsStartTag = token.asStartTag();
            String strName = startTagAsStartTag.name();
            if (strName.equals(a.f7333f)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (strName.equals("body")) {
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.framesetOk(false);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
                return true;
            }
            if (strName.equals("frameset")) {
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InFrameset);
                return true;
            }
            if (!StringUtil.in(strName, "base", "basefont", "bgsound", "link", g0.f24873q, "noframes", "script", "style", "title")) {
                if (strName.equals("head")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                anythingElse(token, htmlTreeBuilder);
                return true;
            }
            htmlTreeBuilder.error(this);
            Element headElement = htmlTreeBuilder.getHeadElement();
            htmlTreeBuilder.push(headElement);
            htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
            htmlTreeBuilder.removeFromStack(headElement);
            return true;
        }
    },
    InBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.7
        boolean anyOtherEndTag(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            String strName = token.asEndTag().name();
            Iterator<Element> itDescendingIterator = htmlTreeBuilder.getStack().descendingIterator();
            while (itDescendingIterator.hasNext()) {
                Element next = itDescendingIterator.next();
                if (next.nodeName().equals(strName)) {
                    htmlTreeBuilder.generateImpliedEndTags(strName);
                    if (!strName.equals(htmlTreeBuilder.currentElement().nodeName())) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strName);
                    return true;
                }
                if (htmlTreeBuilder.isSpecial(next)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
            }
            return true;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            Element element;
            int i10 = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            boolean z10 = true;
            if (i10 == 1) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (i10 == 2) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        return true;
                    }
                    Token.Character characterAsCharacter = token.asCharacter();
                    if (characterAsCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    if (HtmlTreeBuilderState.isWhitespace(characterAsCharacter)) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(characterAsCharacter);
                        return true;
                    }
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(characterAsCharacter);
                    htmlTreeBuilder.framesetOk(false);
                    return true;
                }
                Token.EndTag endTagAsEndTag = token.asEndTag();
                String strName = endTagAsEndTag.name();
                if (strName.equals("body")) {
                    if (htmlTreeBuilder.inScope("body")) {
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterBody);
                        return true;
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (strName.equals(a.f7333f)) {
                    if (htmlTreeBuilder.process(new Token.EndTag("body"))) {
                        return htmlTreeBuilder.process(endTagAsEndTag);
                    }
                    return true;
                }
                if (StringUtil.in(strName, "address", "article", "aside", "blockquote", "button", "center", BaseConstants.MARKET_URI_AUTHORITY_DETAIL, "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul")) {
                    if (!htmlTreeBuilder.inScope(strName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags();
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(strName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strName);
                    return true;
                }
                Element element2 = null;
                if (strName.equals(c.f97427c)) {
                    Element formElement = htmlTreeBuilder.getFormElement();
                    htmlTreeBuilder.setFormElement(null);
                    if (formElement == null || !htmlTreeBuilder.inScope(strName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags();
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(strName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.removeFromStack(formElement);
                    return true;
                }
                if (strName.equals("p")) {
                    if (!htmlTreeBuilder.inButtonScope(strName)) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.process(new Token.StartTag(strName));
                        return htmlTreeBuilder.process(endTagAsEndTag);
                    }
                    htmlTreeBuilder.generateImpliedEndTags(strName);
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(strName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strName);
                    return true;
                }
                if (strName.equals("li")) {
                    if (!htmlTreeBuilder.inListItemScope(strName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags(strName);
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(strName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strName);
                    return true;
                }
                if (StringUtil.in(strName, "dd", "dt")) {
                    if (!htmlTreeBuilder.inScope(strName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags(strName);
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(strName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strName);
                    return true;
                }
                if (StringUtil.in(strName, "h1", ApplicationProtocolNames.HTTP_2, "h3", "h4", "h5", "h6")) {
                    if (!htmlTreeBuilder.inScope(new String[]{"h1", ApplicationProtocolNames.HTTP_2, "h3", "h4", "h5", "h6"})) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags(strName);
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(strName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose("h1", ApplicationProtocolNames.HTTP_2, "h3", "h4", "h5", "h6");
                    return true;
                }
                if (strName.equals("sarcasm")) {
                    return anyOtherEndTag(token, htmlTreeBuilder);
                }
                if (!StringUtil.in(strName, "a", t.f74887l, "big", "code", "em", "font", "i", "nobr", "s", "small", "strike", "strong", "tt", "u")) {
                    if (!StringUtil.in(strName, "applet", "marquee", "object")) {
                        if (!strName.equals("br")) {
                            return anyOtherEndTag(token, htmlTreeBuilder);
                        }
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.process(new Token.StartTag("br"));
                        return false;
                    }
                    if (htmlTreeBuilder.inScope("name")) {
                        return true;
                    }
                    if (!htmlTreeBuilder.inScope(strName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags();
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(strName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strName);
                    htmlTreeBuilder.clearFormattingElementsToLastMarker();
                    return true;
                }
                int i11 = 0;
                while (i11 < 8) {
                    Element activeFormattingElement = htmlTreeBuilder.getActiveFormattingElement(strName);
                    if (activeFormattingElement == null) {
                        return anyOtherEndTag(token, htmlTreeBuilder);
                    }
                    if (!htmlTreeBuilder.onStack(activeFormattingElement)) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                        return z10;
                    }
                    if (!htmlTreeBuilder.inScope(activeFormattingElement.nodeName())) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    if (htmlTreeBuilder.currentElement() != activeFormattingElement) {
                        htmlTreeBuilder.error(this);
                    }
                    DescendableLinkedList<Element> stack = htmlTreeBuilder.getStack();
                    Element element3 = element2;
                    int i12 = 0;
                    boolean z11 = false;
                    while (true) {
                        if (i12 >= stack.size() || i12 >= 64) {
                            element = element2;
                            break;
                        }
                        element = stack.get(i12);
                        if (element != activeFormattingElement) {
                            if (z11 && htmlTreeBuilder.isSpecial(element)) {
                                break;
                            }
                        } else {
                            element3 = stack.get(i12 - 1);
                            z11 = true;
                        }
                        i12++;
                    }
                    if (element == null) {
                        htmlTreeBuilder.popStackToClose(activeFormattingElement.nodeName());
                        htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                        return z10;
                    }
                    Element elementAboveOnStack = element;
                    Node node = elementAboveOnStack;
                    int i13 = 0;
                    for (int i14 = 3; i13 < i14; i14 = 3) {
                        if (htmlTreeBuilder.onStack(elementAboveOnStack)) {
                            elementAboveOnStack = htmlTreeBuilder.aboveOnStack(elementAboveOnStack);
                        }
                        if (!htmlTreeBuilder.isInActiveFormattingElements(elementAboveOnStack)) {
                            htmlTreeBuilder.removeFromStack(elementAboveOnStack);
                        } else {
                            if (elementAboveOnStack == activeFormattingElement) {
                                break;
                            }
                            Element element4 = new Element(Tag.valueOf(elementAboveOnStack.nodeName()), htmlTreeBuilder.getBaseUri());
                            htmlTreeBuilder.replaceActiveFormattingElement(elementAboveOnStack, element4);
                            htmlTreeBuilder.replaceOnStack(elementAboveOnStack, element4);
                            if (node.parent() != null) {
                                node.remove();
                            }
                            element4.appendChild(node);
                            elementAboveOnStack = element4;
                            node = elementAboveOnStack;
                        }
                        i13++;
                    }
                    if (StringUtil.in(element3.nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                        if (node.parent() != null) {
                            node.remove();
                        }
                        htmlTreeBuilder.insertInFosterParent(node);
                    } else {
                        if (node.parent() != null) {
                            node.remove();
                        }
                        element3.appendChild(node);
                    }
                    Element element5 = new Element(Tag.valueOf(strName), htmlTreeBuilder.getBaseUri());
                    for (Node node2 : (Node[]) element.childNodes().toArray(new Node[element.childNodeSize()])) {
                        element5.appendChild(node2);
                    }
                    element.appendChild(element5);
                    htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                    htmlTreeBuilder.removeFromStack(activeFormattingElement);
                    htmlTreeBuilder.insertOnStackAfter(element, element5);
                    i11++;
                    z10 = true;
                    element2 = null;
                }
                return true;
            }
            Token.StartTag startTagAsStartTag = token.asStartTag();
            String strName2 = startTagAsStartTag.name();
            if (strName2.equals(a.f7333f)) {
                htmlTreeBuilder.error(this);
                Element first = htmlTreeBuilder.getStack().getFirst();
                for (Attribute attribute : startTagAsStartTag.getAttributes()) {
                    if (!first.hasAttr(attribute.getKey())) {
                        first.attributes().put(attribute);
                    }
                }
                return true;
            }
            if (StringUtil.in(strName2, "base", "basefont", "bgsound", "command", "link", g0.f24873q, "noframes", "script", "style", "title")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
            }
            if (strName2.equals("body")) {
                htmlTreeBuilder.error(this);
                DescendableLinkedList<Element> stack2 = htmlTreeBuilder.getStack();
                if (stack2.size() == 1 || (stack2.size() > 2 && !stack2.get(1).nodeName().equals("body"))) {
                    return false;
                }
                htmlTreeBuilder.framesetOk(false);
                Element element6 = stack2.get(1);
                for (Attribute attribute2 : startTagAsStartTag.getAttributes()) {
                    if (!element6.hasAttr(attribute2.getKey())) {
                        element6.attributes().put(attribute2);
                    }
                }
                return true;
            }
            if (strName2.equals("frameset")) {
                htmlTreeBuilder.error(this);
                DescendableLinkedList<Element> stack3 = htmlTreeBuilder.getStack();
                if (stack3.size() == 1 || ((stack3.size() > 2 && !stack3.get(1).nodeName().equals("body")) || !htmlTreeBuilder.framesetOk())) {
                    return false;
                }
                Element element7 = stack3.get(1);
                if (element7.parent() != null) {
                    element7.remove();
                }
                for (int i15 = 1; stack3.size() > i15; i15 = 1) {
                    stack3.removeLast();
                }
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InFrameset);
                return true;
            }
            if (StringUtil.in(strName2, "address", "article", "aside", "blockquote", "center", BaseConstants.MARKET_URI_AUTHORITY_DETAIL, "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", "p", "section", "summary", "ul")) {
                if (htmlTreeBuilder.inButtonScope("p")) {
                    htmlTreeBuilder.process(new Token.EndTag("p"));
                }
                htmlTreeBuilder.insert(startTagAsStartTag);
                return true;
            }
            if (StringUtil.in(strName2, "h1", ApplicationProtocolNames.HTTP_2, "h3", "h4", "h5", "h6")) {
                if (htmlTreeBuilder.inButtonScope("p")) {
                    htmlTreeBuilder.process(new Token.EndTag("p"));
                }
                if (StringUtil.in(htmlTreeBuilder.currentElement().nodeName(), "h1", ApplicationProtocolNames.HTTP_2, "h3", "h4", "h5", "h6")) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.pop();
                }
                htmlTreeBuilder.insert(startTagAsStartTag);
                return true;
            }
            if (StringUtil.in(strName2, "pre", "listing")) {
                if (htmlTreeBuilder.inButtonScope("p")) {
                    htmlTreeBuilder.process(new Token.EndTag("p"));
                }
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.framesetOk(false);
                return true;
            }
            if (strName2.equals(c.f97427c)) {
                if (htmlTreeBuilder.getFormElement() != null) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (htmlTreeBuilder.inButtonScope("p")) {
                    htmlTreeBuilder.process(new Token.EndTag("p"));
                }
                htmlTreeBuilder.setFormElement(htmlTreeBuilder.insert(startTagAsStartTag));
                return true;
            }
            if (strName2.equals("li")) {
                htmlTreeBuilder.framesetOk(false);
                DescendableLinkedList<Element> stack4 = htmlTreeBuilder.getStack();
                for (int size = stack4.size() - 1; size > 0; size--) {
                    Element element8 = stack4.get(size);
                    if (element8.nodeName().equals("li")) {
                        htmlTreeBuilder.process(new Token.EndTag("li"));
                        break;
                    }
                    if (htmlTreeBuilder.isSpecial(element8) && !StringUtil.in(element8.nodeName(), "address", "div", "p")) {
                        break;
                    }
                }
                if (htmlTreeBuilder.inButtonScope("p")) {
                    htmlTreeBuilder.process(new Token.EndTag("p"));
                }
                htmlTreeBuilder.insert(startTagAsStartTag);
                return true;
            }
            if (StringUtil.in(strName2, "dd", "dt")) {
                htmlTreeBuilder.framesetOk(false);
                DescendableLinkedList<Element> stack5 = htmlTreeBuilder.getStack();
                for (int size2 = stack5.size() - 1; size2 > 0; size2--) {
                    Element element9 = stack5.get(size2);
                    if (StringUtil.in(element9.nodeName(), "dd", "dt")) {
                        htmlTreeBuilder.process(new Token.EndTag(element9.nodeName()));
                        break;
                    }
                    if (htmlTreeBuilder.isSpecial(element9) && !StringUtil.in(element9.nodeName(), "address", "div", "p")) {
                        break;
                    }
                }
                if (htmlTreeBuilder.inButtonScope("p")) {
                    htmlTreeBuilder.process(new Token.EndTag("p"));
                }
                htmlTreeBuilder.insert(startTagAsStartTag);
                return true;
            }
            if (strName2.equals("plaintext")) {
                if (htmlTreeBuilder.inButtonScope("p")) {
                    htmlTreeBuilder.process(new Token.EndTag("p"));
                }
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.tokeniser.transition(TokeniserState.PLAINTEXT);
                return true;
            }
            if (strName2.equals("button")) {
                if (htmlTreeBuilder.inButtonScope("button")) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.process(new Token.EndTag("button"));
                    htmlTreeBuilder.process(startTagAsStartTag);
                    return true;
                }
                htmlTreeBuilder.reconstructFormattingElements();
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.framesetOk(false);
                return true;
            }
            if (strName2.equals("a")) {
                if (htmlTreeBuilder.getActiveFormattingElement("a") != null) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.process(new Token.EndTag("a"));
                    Element fromStack = htmlTreeBuilder.getFromStack("a");
                    if (fromStack != null) {
                        htmlTreeBuilder.removeFromActiveFormattingElements(fromStack);
                        htmlTreeBuilder.removeFromStack(fromStack);
                    }
                }
                htmlTreeBuilder.reconstructFormattingElements();
                htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                return true;
            }
            if (StringUtil.in(strName2, t.f74887l, "big", "code", "em", "font", "i", "s", "small", "strike", "strong", "tt", "u")) {
                htmlTreeBuilder.reconstructFormattingElements();
                htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                return true;
            }
            if (strName2.equals("nobr")) {
                htmlTreeBuilder.reconstructFormattingElements();
                if (htmlTreeBuilder.inScope("nobr")) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.process(new Token.EndTag("nobr"));
                    htmlTreeBuilder.reconstructFormattingElements();
                }
                htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                return true;
            }
            if (StringUtil.in(strName2, "applet", "marquee", "object")) {
                htmlTreeBuilder.reconstructFormattingElements();
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.insertMarkerToFormattingElements();
                htmlTreeBuilder.framesetOk(false);
                return true;
            }
            if (strName2.equals("table")) {
                if (htmlTreeBuilder.getDocument().quirksMode() != Document.QuirksMode.quirks && htmlTreeBuilder.inButtonScope("p")) {
                    htmlTreeBuilder.process(new Token.EndTag("p"));
                }
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.framesetOk(false);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
                return true;
            }
            if (StringUtil.in(strName2, "area", "br", "embed", "img", "keygen", "wbr")) {
                htmlTreeBuilder.reconstructFormattingElements();
                htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                htmlTreeBuilder.framesetOk(false);
                return true;
            }
            if (strName2.equals("input")) {
                htmlTreeBuilder.reconstructFormattingElements();
                if (htmlTreeBuilder.insertEmpty(startTagAsStartTag).attr("type").equalsIgnoreCase("hidden")) {
                    return true;
                }
                htmlTreeBuilder.framesetOk(false);
                return true;
            }
            if (StringUtil.in(strName2, com.alipay.sdk.authjs.a.f7127l, "source", "track")) {
                htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                return true;
            }
            if (strName2.equals("hr")) {
                if (htmlTreeBuilder.inButtonScope("p")) {
                    htmlTreeBuilder.process(new Token.EndTag("p"));
                }
                htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                htmlTreeBuilder.framesetOk(false);
                return true;
            }
            if (strName2.equals("image")) {
                startTagAsStartTag.name("img");
                return htmlTreeBuilder.process(startTagAsStartTag);
            }
            if (strName2.equals("isindex")) {
                htmlTreeBuilder.error(this);
                if (htmlTreeBuilder.getFormElement() != null) {
                    return false;
                }
                htmlTreeBuilder.tokeniser.acknowledgeSelfClosingFlag();
                htmlTreeBuilder.process(new Token.StartTag(c.f97427c));
                if (startTagAsStartTag.attributes.hasKey("action")) {
                    htmlTreeBuilder.getFormElement().attr("action", startTagAsStartTag.attributes.get("action"));
                }
                htmlTreeBuilder.process(new Token.StartTag("hr"));
                htmlTreeBuilder.process(new Token.StartTag(PostingActivity_.LABEL_EXTRA));
                htmlTreeBuilder.process(new Token.Character(startTagAsStartTag.attributes.hasKey("prompt") ? startTagAsStartTag.attributes.get("prompt") : "This is a searchable index. Enter search keywords: "));
                Attributes attributes = new Attributes();
                for (Attribute attribute3 : startTagAsStartTag.attributes) {
                    if (!StringUtil.in(attribute3.getKey(), "name", "action", "prompt")) {
                        attributes.put(attribute3);
                    }
                }
                attributes.put("name", "isindex");
                htmlTreeBuilder.process(new Token.StartTag("input", attributes));
                htmlTreeBuilder.process(new Token.EndTag(PostingActivity_.LABEL_EXTRA));
                htmlTreeBuilder.process(new Token.StartTag("hr"));
                htmlTreeBuilder.process(new Token.EndTag(c.f97427c));
                return true;
            }
            if (strName2.equals("textarea")) {
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
                htmlTreeBuilder.markInsertionMode();
                htmlTreeBuilder.framesetOk(false);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.Text);
                return true;
            }
            if (strName2.equals("xmp")) {
                if (htmlTreeBuilder.inButtonScope("p")) {
                    htmlTreeBuilder.process(new Token.EndTag("p"));
                }
                htmlTreeBuilder.reconstructFormattingElements();
                htmlTreeBuilder.framesetOk(false);
                HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                return true;
            }
            if (strName2.equals("iframe")) {
                htmlTreeBuilder.framesetOk(false);
                HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                return true;
            }
            if (strName2.equals("noembed")) {
                HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                return true;
            }
            if (strName2.equals("select")) {
                htmlTreeBuilder.reconstructFormattingElements();
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.framesetOk(false);
                HtmlTreeBuilderState htmlTreeBuilderStateState = htmlTreeBuilder.state();
                if (htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InTable) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InCaption) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InTableBody) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InRow) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InCell)) {
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InSelectInTable);
                    return true;
                }
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InSelect);
                return true;
            }
            if (StringUtil.in("optgroup", "option")) {
                if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                    htmlTreeBuilder.process(new Token.EndTag("option"));
                }
                htmlTreeBuilder.reconstructFormattingElements();
                htmlTreeBuilder.insert(startTagAsStartTag);
                return true;
            }
            if (StringUtil.in("rp", "rt")) {
                if (!htmlTreeBuilder.inScope("ruby")) {
                    return true;
                }
                htmlTreeBuilder.generateImpliedEndTags();
                if (!htmlTreeBuilder.currentElement().nodeName().equals("ruby")) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.popStackToBefore("ruby");
                }
                htmlTreeBuilder.insert(startTagAsStartTag);
                return true;
            }
            if (strName2.equals("math")) {
                htmlTreeBuilder.reconstructFormattingElements();
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.tokeniser.acknowledgeSelfClosingFlag();
                return true;
            }
            if (strName2.equals("svg")) {
                htmlTreeBuilder.reconstructFormattingElements();
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.tokeniser.acknowledgeSelfClosingFlag();
                return true;
            }
            if (StringUtil.in(strName2, "caption", "col", "colgroup", TypedValues.AttributesType.S_FRAME, "head", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                htmlTreeBuilder.error(this);
                return false;
            }
            htmlTreeBuilder.reconstructFormattingElements();
            htmlTreeBuilder.insert(startTagAsStartTag);
            return true;
        }
    },
    Text { // from class: org.jsoup.parser.HtmlTreeBuilderState.8
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isCharacter()) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isEOF()) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
                return htmlTreeBuilder.process(token);
            }
            if (!token.isEndTag()) {
                return true;
            }
            htmlTreeBuilder.pop();
            htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
            return true;
        }
    },
    InTable { // from class: org.jsoup.parser.HtmlTreeBuilderState.9
        boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            if (!StringUtil.in(htmlTreeBuilder.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            htmlTreeBuilder.setFosterInserts(true);
            boolean zProcess = htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            htmlTreeBuilder.setFosterInserts(false);
            return zProcess;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isCharacter()) {
                htmlTreeBuilder.newPendingTableCharacters();
                htmlTreeBuilder.markInsertionMode();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableText);
                return htmlTreeBuilder.process(token);
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag()) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strName = startTagAsStartTag.name();
                if (strName.equals("caption")) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.insertMarkerToFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InCaption);
                } else if (strName.equals("colgroup")) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InColumnGroup);
                } else {
                    if (strName.equals("col")) {
                        htmlTreeBuilder.process(new Token.StartTag("colgroup"));
                        return htmlTreeBuilder.process(token);
                    }
                    if (StringUtil.in(strName, "tbody", "tfoot", "thead")) {
                        htmlTreeBuilder.clearStackToTableContext();
                        htmlTreeBuilder.insert(startTagAsStartTag);
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableBody);
                    } else {
                        if (StringUtil.in(strName, "td", "th", "tr")) {
                            htmlTreeBuilder.process(new Token.StartTag("tbody"));
                            return htmlTreeBuilder.process(token);
                        }
                        if (strName.equals("table")) {
                            htmlTreeBuilder.error(this);
                            if (htmlTreeBuilder.process(new Token.EndTag("table"))) {
                                return htmlTreeBuilder.process(token);
                            }
                        } else {
                            if (StringUtil.in(strName, "style", "script")) {
                                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                            }
                            if (strName.equals("input")) {
                                if (!startTagAsStartTag.attributes.get("type").equalsIgnoreCase("hidden")) {
                                    return anythingElse(token, htmlTreeBuilder);
                                }
                                htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                            } else {
                                if (!strName.equals(c.f97427c)) {
                                    return anythingElse(token, htmlTreeBuilder);
                                }
                                htmlTreeBuilder.error(this);
                                if (htmlTreeBuilder.getFormElement() != null) {
                                    return false;
                                }
                                htmlTreeBuilder.setFormElement(htmlTreeBuilder.insertEmpty(startTagAsStartTag));
                            }
                        }
                    }
                }
            } else if (token.isEndTag()) {
                String strName2 = token.asEndTag().name();
                if (!strName2.equals("table")) {
                    if (!StringUtil.in(strName2, "body", "caption", "col", "colgroup", a.f7333f, "tbody", "td", "tfoot", "th", "thead", "tr")) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!htmlTreeBuilder.inTableScope(strName2)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.popStackToClose("table");
                htmlTreeBuilder.resetInsertionMode();
            } else if (token.isEOF()) {
                if (htmlTreeBuilder.currentElement().nodeName().equals(a.f7333f)) {
                    htmlTreeBuilder.error(this);
                }
                return true;
            }
            return anythingElse(token, htmlTreeBuilder);
        }
    },
    InTableText { // from class: org.jsoup.parser.HtmlTreeBuilderState.10
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()] == 5) {
                Token.Character characterAsCharacter = token.asCharacter();
                if (characterAsCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.getPendingTableCharacters().add(characterAsCharacter);
                return true;
            }
            if (htmlTreeBuilder.getPendingTableCharacters().size() > 0) {
                for (Token.Character character : htmlTreeBuilder.getPendingTableCharacters()) {
                    if (HtmlTreeBuilderState.isWhitespace(character)) {
                        htmlTreeBuilder.insert(character);
                    } else {
                        htmlTreeBuilder.error(this);
                        if (StringUtil.in(htmlTreeBuilder.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                            htmlTreeBuilder.setFosterInserts(true);
                            htmlTreeBuilder.process(character, HtmlTreeBuilderState.InBody);
                            htmlTreeBuilder.setFosterInserts(false);
                        } else {
                            htmlTreeBuilder.process(character, HtmlTreeBuilderState.InBody);
                        }
                    }
                }
                htmlTreeBuilder.newPendingTableCharacters();
            }
            htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
            return htmlTreeBuilder.process(token);
        }
    },
    InCaption { // from class: org.jsoup.parser.HtmlTreeBuilderState.11
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isEndTag() && token.asEndTag().name().equals("caption")) {
                if (!htmlTreeBuilder.inTableScope(token.asEndTag().name())) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.generateImpliedEndTags();
                if (!htmlTreeBuilder.currentElement().nodeName().equals("caption")) {
                    htmlTreeBuilder.error(this);
                }
                htmlTreeBuilder.popStackToClose("caption");
                htmlTreeBuilder.clearFormattingElementsToLastMarker();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
                return true;
            }
            if ((token.isStartTag() && StringUtil.in(token.asStartTag().name(), "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) || (token.isEndTag() && token.asEndTag().name().equals("table"))) {
                htmlTreeBuilder.error(this);
                if (htmlTreeBuilder.process(new Token.EndTag("caption"))) {
                    return htmlTreeBuilder.process(token);
                }
                return true;
            }
            if (!token.isEndTag() || !StringUtil.in(token.asEndTag().name(), "body", "col", "colgroup", a.f7333f, "tbody", "td", "tfoot", "th", "thead", "tr")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    InColumnGroup { // from class: org.jsoup.parser.HtmlTreeBuilderState.12
        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.process(new Token.EndTag("colgroup"))) {
                return treeBuilder.process(token);
            }
            return true;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int i10 = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i10 == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (i10 == 2) {
                htmlTreeBuilder.error(this);
            } else if (i10 == 3) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strName = startTagAsStartTag.name();
                if (strName.equals(a.f7333f)) {
                    return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
                }
                if (!strName.equals("col")) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.insertEmpty(startTagAsStartTag);
            } else {
                if (i10 != 4) {
                    if (i10 != 6) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    if (htmlTreeBuilder.currentElement().nodeName().equals(a.f7333f)) {
                        return true;
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
                if (!token.asEndTag().name().equals("colgroup")) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                if (htmlTreeBuilder.currentElement().nodeName().equals(a.f7333f)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
            }
            return true;
        }
    },
    InTableBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.13
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InTable);
        }

        private boolean exitTableBody(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (!htmlTreeBuilder.inTableScope("tbody") && !htmlTreeBuilder.inTableScope("thead") && !htmlTreeBuilder.inScope("tfoot")) {
                htmlTreeBuilder.error(this);
                return false;
            }
            htmlTreeBuilder.clearStackToTableBodyContext();
            htmlTreeBuilder.process(new Token.EndTag(htmlTreeBuilder.currentElement().nodeName()));
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            int i10 = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i10 == 3) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strName = startTagAsStartTag.name();
                if (strName.equals("tr")) {
                    htmlTreeBuilder.clearStackToTableBodyContext();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InRow);
                    return true;
                }
                if (!StringUtil.in(strName, "th", "td")) {
                    return StringUtil.in(strName, "caption", "col", "colgroup", "tbody", "tfoot", "thead") ? exitTableBody(token, htmlTreeBuilder) : anythingElse(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.process(new Token.StartTag("tr"));
                return htmlTreeBuilder.process(startTagAsStartTag);
            }
            if (i10 != 4) {
                return anythingElse(token, htmlTreeBuilder);
            }
            String strName2 = token.asEndTag().name();
            if (!StringUtil.in(strName2, "tbody", "tfoot", "thead")) {
                if (strName2.equals("table")) {
                    return exitTableBody(token, htmlTreeBuilder);
                }
                if (!StringUtil.in(strName2, "body", "caption", "col", "colgroup", a.f7333f, "td", "th", "tr")) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            if (!htmlTreeBuilder.inTableScope(strName2)) {
                htmlTreeBuilder.error(this);
                return false;
            }
            htmlTreeBuilder.clearStackToTableBodyContext();
            htmlTreeBuilder.pop();
            htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
            return true;
        }
    },
    InRow { // from class: org.jsoup.parser.HtmlTreeBuilderState.14
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InTable);
        }

        private boolean handleMissingTr(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.process(new Token.EndTag("tr"))) {
                return treeBuilder.process(token);
            }
            return false;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag()) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strName = startTagAsStartTag.name();
                if (!StringUtil.in(strName, "th", "td")) {
                    return StringUtil.in(strName, "caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr") ? handleMissingTr(token, htmlTreeBuilder) : anythingElse(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.clearStackToTableRowContext();
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InCell);
                htmlTreeBuilder.insertMarkerToFormattingElements();
                return true;
            }
            if (!token.isEndTag()) {
                return anythingElse(token, htmlTreeBuilder);
            }
            String strName2 = token.asEndTag().name();
            if (strName2.equals("tr")) {
                if (!htmlTreeBuilder.inTableScope(strName2)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.clearStackToTableRowContext();
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableBody);
                return true;
            }
            if (strName2.equals("table")) {
                return handleMissingTr(token, htmlTreeBuilder);
            }
            if (!StringUtil.in(strName2, "tbody", "tfoot", "thead")) {
                if (!StringUtil.in(strName2, "body", "caption", "col", "colgroup", a.f7333f, "td", "th")) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            if (htmlTreeBuilder.inTableScope(strName2)) {
                htmlTreeBuilder.process(new Token.EndTag("tr"));
                return htmlTreeBuilder.process(token);
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    InCell { // from class: org.jsoup.parser.HtmlTreeBuilderState.15
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
        }

        private void closeCell(HtmlTreeBuilder htmlTreeBuilder) {
            if (htmlTreeBuilder.inTableScope("td")) {
                htmlTreeBuilder.process(new Token.EndTag("td"));
            } else {
                htmlTreeBuilder.process(new Token.EndTag("th"));
            }
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (!token.isEndTag()) {
                if (!token.isStartTag() || !StringUtil.in(token.asStartTag().name(), "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                if (htmlTreeBuilder.inTableScope("td") || htmlTreeBuilder.inTableScope("th")) {
                    closeCell(htmlTreeBuilder);
                    return htmlTreeBuilder.process(token);
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            String strName = token.asEndTag().name();
            if (!StringUtil.in(strName, "td", "th")) {
                if (StringUtil.in(strName, "body", "caption", "col", "colgroup", a.f7333f)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!StringUtil.in(strName, "table", "tbody", "tfoot", "thead", "tr")) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                if (htmlTreeBuilder.inTableScope(strName)) {
                    closeCell(htmlTreeBuilder);
                    return htmlTreeBuilder.process(token);
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            if (!htmlTreeBuilder.inTableScope(strName)) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InRow);
                return false;
            }
            htmlTreeBuilder.generateImpliedEndTags();
            if (!htmlTreeBuilder.currentElement().nodeName().equals(strName)) {
                htmlTreeBuilder.error(this);
            }
            htmlTreeBuilder.popStackToClose(strName);
            htmlTreeBuilder.clearFormattingElementsToLastMarker();
            htmlTreeBuilder.transition(HtmlTreeBuilderState.InRow);
            return true;
        }
    },
    InSelect { // from class: org.jsoup.parser.HtmlTreeBuilderState.16
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            return false;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            switch (AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()]) {
                case 1:
                    htmlTreeBuilder.insert(token.asComment());
                    return true;
                case 2:
                    htmlTreeBuilder.error(this);
                    return false;
                case 3:
                    Token.StartTag startTagAsStartTag = token.asStartTag();
                    String strName = startTagAsStartTag.name();
                    if (strName.equals(a.f7333f)) {
                        return htmlTreeBuilder.process(startTagAsStartTag, HtmlTreeBuilderState.InBody);
                    }
                    if (strName.equals("option")) {
                        htmlTreeBuilder.process(new Token.EndTag("option"));
                        htmlTreeBuilder.insert(startTagAsStartTag);
                        return true;
                    }
                    if (strName.equals("optgroup")) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                            htmlTreeBuilder.process(new Token.EndTag("option"));
                        } else if (htmlTreeBuilder.currentElement().nodeName().equals("optgroup")) {
                            htmlTreeBuilder.process(new Token.EndTag("optgroup"));
                        }
                        htmlTreeBuilder.insert(startTagAsStartTag);
                        return true;
                    }
                    if (strName.equals("select")) {
                        htmlTreeBuilder.error(this);
                        return htmlTreeBuilder.process(new Token.EndTag("select"));
                    }
                    if (!StringUtil.in(strName, "input", "keygen", "textarea")) {
                        return strName.equals("script") ? htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead) : anythingElse(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    if (!htmlTreeBuilder.inSelectScope("select")) {
                        return false;
                    }
                    htmlTreeBuilder.process(new Token.EndTag("select"));
                    return htmlTreeBuilder.process(startTagAsStartTag);
                case 4:
                    String strName2 = token.asEndTag().name();
                    if (strName2.equals("optgroup")) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option") && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()) != null && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()).nodeName().equals("optgroup")) {
                            htmlTreeBuilder.process(new Token.EndTag("option"));
                        }
                        if (htmlTreeBuilder.currentElement().nodeName().equals("optgroup")) {
                            htmlTreeBuilder.pop();
                            return true;
                        }
                        htmlTreeBuilder.error(this);
                        return true;
                    }
                    if (strName2.equals("option")) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                            htmlTreeBuilder.pop();
                            return true;
                        }
                        htmlTreeBuilder.error(this);
                        return true;
                    }
                    if (!strName2.equals("select")) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    if (!htmlTreeBuilder.inSelectScope(strName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.popStackToClose(strName2);
                    htmlTreeBuilder.resetInsertionMode();
                    return true;
                case 5:
                    Token.Character characterAsCharacter = token.asCharacter();
                    if (characterAsCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.insert(characterAsCharacter);
                    return true;
                case 6:
                    if (htmlTreeBuilder.currentElement().nodeName().equals(a.f7333f)) {
                        return true;
                    }
                    htmlTreeBuilder.error(this);
                    return true;
                default:
                    return anythingElse(token, htmlTreeBuilder);
            }
        }
    },
    InSelectInTable { // from class: org.jsoup.parser.HtmlTreeBuilderState.17
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag() && StringUtil.in(token.asStartTag().name(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.process(new Token.EndTag("select"));
                return htmlTreeBuilder.process(token);
            }
            if (!token.isEndTag() || !StringUtil.in(token.asEndTag().name(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InSelect);
            }
            htmlTreeBuilder.error(this);
            if (!htmlTreeBuilder.inTableScope(token.asEndTag().name())) {
                return false;
            }
            htmlTreeBuilder.process(new Token.EndTag("select"));
            return htmlTreeBuilder.process(token);
        }
    },
    AfterBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.18
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag() && token.asStartTag().name().equals(a.f7333f)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEndTag() && token.asEndTag().name().equals(a.f7333f)) {
                if (htmlTreeBuilder.isFragmentParsing()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterAfterBody);
                return true;
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
            return htmlTreeBuilder.process(token);
        }
    },
    InFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.19
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
            } else if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (token.isStartTag()) {
                    Token.StartTag startTagAsStartTag = token.asStartTag();
                    String strName = startTagAsStartTag.name();
                    if (strName.equals(a.f7333f)) {
                        return htmlTreeBuilder.process(startTagAsStartTag, HtmlTreeBuilderState.InBody);
                    }
                    if (strName.equals("frameset")) {
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    } else {
                        if (!strName.equals(TypedValues.AttributesType.S_FRAME)) {
                            if (strName.equals("noframes")) {
                                return htmlTreeBuilder.process(startTagAsStartTag, HtmlTreeBuilderState.InHead);
                            }
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                    }
                } else if (token.isEndTag() && token.asEndTag().name().equals("frameset")) {
                    if (htmlTreeBuilder.currentElement().nodeName().equals(a.f7333f)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.pop();
                    if (!htmlTreeBuilder.isFragmentParsing() && !htmlTreeBuilder.currentElement().nodeName().equals("frameset")) {
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterFrameset);
                    }
                } else {
                    if (!token.isEOF()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(a.f7333f)) {
                        htmlTreeBuilder.error(this);
                    }
                }
            }
            return true;
        }
    },
    AfterFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.20
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag() && token.asStartTag().name().equals(a.f7333f)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEndTag() && token.asEndTag().name().equals(a.f7333f)) {
                htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterAfterFrameset);
                return true;
            }
            if (token.isStartTag() && token.asStartTag().name().equals("noframes")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    AfterAfterBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.21
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype() || HtmlTreeBuilderState.isWhitespace(token) || (token.isStartTag() && token.asStartTag().name().equals(a.f7333f))) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
            return htmlTreeBuilder.process(token);
        }
    },
    AfterAfterFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.22
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype() || HtmlTreeBuilderState.isWhitespace(token) || (token.isStartTag() && token.asStartTag().name().equals(a.f7333f))) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEOF()) {
                return true;
            }
            if (token.isStartTag() && token.asStartTag().name().equals("noframes")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    ForeignContent { // from class: org.jsoup.parser.HtmlTreeBuilderState.23
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return true;
        }
    };

    private static String nullString = String.valueOf((char) 0);

    /* JADX INFO: renamed from: org.jsoup.parser.HtmlTreeBuilderState$24, reason: invalid class name */
    static /* synthetic */ class AnonymousClass24 {
        static final /* synthetic */ int[] $SwitchMap$org$jsoup$parser$Token$TokenType;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            $SwitchMap$org$jsoup$parser$Token$TokenType = iArr;
            try {
                iArr[Token.TokenType.Comment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Doctype.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.StartTag.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EndTag.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Character.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRawtext(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.insert(startTag);
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rawtext);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRcData(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.insert(startTag);
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(Token token) {
        if (!token.isCharacter()) {
            return false;
        }
        String data = token.asCharacter().getData();
        for (int i10 = 0; i10 < data.length(); i10++) {
            if (!StringUtil.isWhitespace(data.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    abstract boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder);
}
