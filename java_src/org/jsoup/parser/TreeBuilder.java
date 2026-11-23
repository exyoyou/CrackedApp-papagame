package org.jsoup.parser;

import org.jsoup.helper.DescendableLinkedList;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes10.dex */
abstract class TreeBuilder {
    protected String baseUri;
    protected Token currentToken;
    protected Document doc;
    protected ParseErrorList errors;
    CharacterReader reader;
    protected DescendableLinkedList<Element> stack;
    Tokeniser tokeniser;

    TreeBuilder() {
    }

    protected Element currentElement() {
        return this.stack.getLast();
    }

    protected void initialiseParse(String str, String str2, ParseErrorList parseErrorList) {
        Validate.notNull(str, "String input must not be null");
        Validate.notNull(str2, "BaseURI must not be null");
        this.doc = new Document(str2);
        CharacterReader characterReader = new CharacterReader(str);
        this.reader = characterReader;
        this.errors = parseErrorList;
        this.tokeniser = new Tokeniser(characterReader, parseErrorList);
        this.stack = new DescendableLinkedList<>();
        this.baseUri = str2;
    }

    Document parse(String str, String str2) {
        return parse(str, str2, ParseErrorList.noTracking());
    }

    protected abstract boolean process(Token token);

    protected void runParser() {
        Token token;
        do {
            token = this.tokeniser.read();
            process(token);
        } while (token.type != Token.TokenType.EOF);
    }

    Document parse(String str, String str2, ParseErrorList parseErrorList) {
        initialiseParse(str, str2, parseErrorList);
        runParser();
        return this.doc;
    }
}
