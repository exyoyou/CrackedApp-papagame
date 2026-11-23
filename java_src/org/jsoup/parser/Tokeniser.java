package org.jsoup.parser;

import kotlin.text.Typography;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Entities;

/* JADX INFO: loaded from: classes10.dex */
class Tokeniser {
    static final char replacementChar = 65533;
    Token.Comment commentPending;
    StringBuilder dataBuffer;
    Token.Doctype doctypePending;
    private Token emitPending;
    private ParseErrorList errors;
    private Token.StartTag lastStartTag;
    private CharacterReader reader;
    Token.Tag tagPending;
    private TokeniserState state = TokeniserState.Data;
    private boolean isEmitPending = false;
    private StringBuilder charBuffer = new StringBuilder();
    private boolean selfClosingFlagAcknowledged = true;

    Tokeniser(CharacterReader characterReader, ParseErrorList parseErrorList) {
        this.reader = characterReader;
        this.errors = parseErrorList;
    }

    private void characterReferenceError(String str) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Invalid character reference: %s", str));
        }
    }

    void acknowledgeSelfClosingFlag() {
        this.selfClosingFlagAcknowledged = true;
    }

    void advanceTransition(TokeniserState tokeniserState) {
        this.reader.advance();
        this.state = tokeniserState;
    }

    String appropriateEndTagName() {
        return this.lastStartTag.tagName;
    }

    char[] consumeCharacterReference(Character ch, boolean z10) {
        int iIntValue;
        if (this.reader.isEmpty()) {
            return null;
        }
        if ((ch != null && ch.charValue() == this.reader.current()) || this.reader.matchesAny('\t', '\n', '\r', '\f', ' ', Typography.less, Typography.amp)) {
            return null;
        }
        this.reader.mark();
        if (!this.reader.matchConsume("#")) {
            String strConsumeLetterThenDigitSequence = this.reader.consumeLetterThenDigitSequence();
            boolean zMatches = this.reader.matches(';');
            if (!(Entities.isBaseNamedEntity(strConsumeLetterThenDigitSequence) || (Entities.isNamedEntity(strConsumeLetterThenDigitSequence) && zMatches))) {
                this.reader.rewindToMark();
                if (zMatches) {
                    characterReferenceError(String.format("invalid named referenece '%s'", strConsumeLetterThenDigitSequence));
                }
                return null;
            }
            if (z10 && (this.reader.matchesLetter() || this.reader.matchesDigit() || this.reader.matchesAny('=', '-', '_'))) {
                this.reader.rewindToMark();
                return null;
            }
            if (!this.reader.matchConsume(";")) {
                characterReferenceError("missing semicolon");
            }
            return new char[]{Entities.getCharacterByName(strConsumeLetterThenDigitSequence).charValue()};
        }
        boolean zMatchConsumeIgnoreCase = this.reader.matchConsumeIgnoreCase("X");
        CharacterReader characterReader = this.reader;
        String strConsumeHexSequence = zMatchConsumeIgnoreCase ? characterReader.consumeHexSequence() : characterReader.consumeDigitSequence();
        if (strConsumeHexSequence.length() == 0) {
            characterReferenceError("numeric reference with no numerals");
            this.reader.rewindToMark();
            return null;
        }
        if (!this.reader.matchConsume(";")) {
            characterReferenceError("missing semicolon");
        }
        try {
            iIntValue = Integer.valueOf(strConsumeHexSequence, zMatchConsumeIgnoreCase ? 16 : 10).intValue();
        } catch (NumberFormatException unused) {
            iIntValue = -1;
        }
        if (iIntValue != -1 && ((iIntValue < 55296 || iIntValue > 57343) && iIntValue <= 1114111)) {
            return Character.toChars(iIntValue);
        }
        characterReferenceError("character outside of valid range");
        return new char[]{65533};
    }

    void createCommentPending() {
        this.commentPending = new Token.Comment();
    }

    void createDoctypePending() {
        this.doctypePending = new Token.Doctype();
    }

    Token.Tag createTagPending(boolean z10) {
        Token.Tag startTag = z10 ? new Token.StartTag() : new Token.EndTag();
        this.tagPending = startTag;
        return startTag;
    }

    void createTempBuffer() {
        this.dataBuffer = new StringBuilder();
    }

    boolean currentNodeInHtmlNS() {
        return true;
    }

    void emit(Token token) {
        Validate.isFalse(this.isEmitPending, "There is an unread token pending!");
        this.emitPending = token;
        this.isEmitPending = true;
        Token.TokenType tokenType = token.type;
        if (tokenType != Token.TokenType.StartTag) {
            if (tokenType != Token.TokenType.EndTag || ((Token.EndTag) token).attributes == null) {
                return;
            }
            error("Attributes incorrectly present on end tag");
            return;
        }
        Token.StartTag startTag = (Token.StartTag) token;
        this.lastStartTag = startTag;
        if (startTag.selfClosing) {
            this.selfClosingFlagAcknowledged = false;
        }
    }

    void emitCommentPending() {
        emit(this.commentPending);
    }

    void emitDoctypePending() {
        emit(this.doctypePending);
    }

    void emitTagPending() {
        this.tagPending.finaliseTag();
        emit(this.tagPending);
    }

    void eofError(TokeniserState tokeniserState) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Unexpectedly reached end of file (EOF) in input state [%s]", tokeniserState));
        }
    }

    void error(TokeniserState tokeniserState) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Unexpected character '%s' in input state [%s]", Character.valueOf(this.reader.current()), tokeniserState));
        }
    }

    TokeniserState getState() {
        return this.state;
    }

    boolean isAppropriateEndTagToken() {
        Token.StartTag startTag = this.lastStartTag;
        if (startTag == null) {
            return false;
        }
        return this.tagPending.tagName.equals(startTag.tagName);
    }

    Token read() {
        if (!this.selfClosingFlagAcknowledged) {
            error("Self closing flag not acknowledged");
            this.selfClosingFlagAcknowledged = true;
        }
        while (!this.isEmitPending) {
            this.state.read(this, this.reader);
        }
        if (this.charBuffer.length() <= 0) {
            this.isEmitPending = false;
            return this.emitPending;
        }
        String string = this.charBuffer.toString();
        StringBuilder sb2 = this.charBuffer;
        sb2.delete(0, sb2.length());
        return new Token.Character(string);
    }

    void transition(TokeniserState tokeniserState) {
        this.state = tokeniserState;
    }

    String unescapeEntities(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        while (!this.reader.isEmpty()) {
            sb2.append(this.reader.consumeTo(Typography.amp));
            if (this.reader.matches(Typography.amp)) {
                this.reader.consume();
                char[] cArrConsumeCharacterReference = consumeCharacterReference(null, z10);
                if (cArrConsumeCharacterReference == null || cArrConsumeCharacterReference.length == 0) {
                    sb2.append(Typography.amp);
                } else {
                    sb2.append(cArrConsumeCharacterReference);
                }
            }
        }
        return sb2.toString();
    }

    private void error(String str) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), str));
        }
    }

    void emit(String str) {
        this.charBuffer.append(str);
    }

    void emit(char[] cArr) {
        this.charBuffer.append(cArr);
    }

    void emit(char c10) {
        this.charBuffer.append(c10);
    }
}
