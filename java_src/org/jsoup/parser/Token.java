package org.jsoup.parser;

import com.j256.ormlite.stmt.query.SimpleComparison;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;

/* JADX INFO: loaded from: classes10.dex */
abstract class Token {
    TokenType type;

    static class Character extends Token {
        private final String data;

        Character(String str) {
            super();
            this.type = TokenType.Character;
            this.data = str;
        }

        String getData() {
            return this.data;
        }

        public String toString() {
            return getData();
        }
    }

    static class Comment extends Token {
        boolean bogus;
        final StringBuilder data;

        Comment() {
            super();
            this.data = new StringBuilder();
            this.bogus = false;
            this.type = TokenType.Comment;
        }

        String getData() {
            return this.data.toString();
        }

        public String toString() {
            return "<!--" + getData() + "-->";
        }
    }

    static class Doctype extends Token {
        boolean forceQuirks;
        final StringBuilder name;
        final StringBuilder publicIdentifier;
        final StringBuilder systemIdentifier;

        Doctype() {
            super();
            this.name = new StringBuilder();
            this.publicIdentifier = new StringBuilder();
            this.systemIdentifier = new StringBuilder();
            this.forceQuirks = false;
            this.type = TokenType.Doctype;
        }

        String getName() {
            return this.name.toString();
        }

        String getPublicIdentifier() {
            return this.publicIdentifier.toString();
        }

        public String getSystemIdentifier() {
            return this.systemIdentifier.toString();
        }

        public boolean isForceQuirks() {
            return this.forceQuirks;
        }
    }

    static class EOF extends Token {
        EOF() {
            super();
            this.type = TokenType.EOF;
        }
    }

    static abstract class Tag extends Token {
        Attributes attributes;
        private String pendingAttributeName;
        private StringBuilder pendingAttributeValue;
        boolean selfClosing;
        protected String tagName;

        Tag() {
            super();
            this.selfClosing = false;
        }

        private final void ensureAttributeValue() {
            if (this.pendingAttributeValue == null) {
                this.pendingAttributeValue = new StringBuilder();
            }
        }

        void appendAttributeName(String str) {
            String str2 = this.pendingAttributeName;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.pendingAttributeName = str;
        }

        void appendAttributeValue(String str) {
            ensureAttributeValue();
            this.pendingAttributeValue.append(str);
        }

        void appendTagName(String str) {
            String str2 = this.tagName;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.tagName = str;
        }

        void finaliseTag() {
            if (this.pendingAttributeName != null) {
                newAttribute();
            }
        }

        Attributes getAttributes() {
            return this.attributes;
        }

        boolean isSelfClosing() {
            return this.selfClosing;
        }

        String name() {
            Validate.isFalse(this.tagName.length() == 0);
            return this.tagName;
        }

        void newAttribute() {
            if (this.attributes == null) {
                this.attributes = new Attributes();
            }
            String str = this.pendingAttributeName;
            if (str != null) {
                StringBuilder sb2 = this.pendingAttributeValue;
                this.attributes.put(sb2 == null ? new Attribute(str, "") : new Attribute(str, sb2.toString()));
            }
            this.pendingAttributeName = null;
            StringBuilder sb3 = this.pendingAttributeValue;
            if (sb3 != null) {
                sb3.delete(0, sb3.length());
            }
        }

        void appendAttributeName(char c10) {
            appendAttributeName(String.valueOf(c10));
        }

        void appendTagName(char c10) {
            appendTagName(String.valueOf(c10));
        }

        void appendAttributeValue(char c10) {
            ensureAttributeValue();
            this.pendingAttributeValue.append(c10);
        }

        Tag name(String str) {
            this.tagName = str;
            return this;
        }

        void appendAttributeValue(char[] cArr) {
            ensureAttributeValue();
            this.pendingAttributeValue.append(cArr);
        }
    }

    enum TokenType {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    Character asCharacter() {
        return (Character) this;
    }

    Comment asComment() {
        return (Comment) this;
    }

    Doctype asDoctype() {
        return (Doctype) this;
    }

    EndTag asEndTag() {
        return (EndTag) this;
    }

    StartTag asStartTag() {
        return (StartTag) this;
    }

    boolean isCharacter() {
        return this.type == TokenType.Character;
    }

    boolean isComment() {
        return this.type == TokenType.Comment;
    }

    boolean isDoctype() {
        return this.type == TokenType.Doctype;
    }

    boolean isEOF() {
        return this.type == TokenType.EOF;
    }

    boolean isEndTag() {
        return this.type == TokenType.EndTag;
    }

    boolean isStartTag() {
        return this.type == TokenType.StartTag;
    }

    String tokenType() {
        return getClass().getSimpleName();
    }

    static class EndTag extends Tag {
        EndTag() {
            this.type = TokenType.EndTag;
        }

        public String toString() {
            return "</" + name() + SimpleComparison.GREATER_THAN_OPERATION;
        }

        EndTag(String str) {
            this();
            this.tagName = str;
        }
    }

    private Token() {
    }

    static class StartTag extends Tag {
        StartTag() {
            this.attributes = new Attributes();
            this.type = TokenType.StartTag;
        }

        public String toString() {
            Attributes attributes = this.attributes;
            if (attributes == null || attributes.size() <= 0) {
                return SimpleComparison.LESS_THAN_OPERATION + name() + SimpleComparison.GREATER_THAN_OPERATION;
            }
            return SimpleComparison.LESS_THAN_OPERATION + name() + " " + this.attributes.toString() + SimpleComparison.GREATER_THAN_OPERATION;
        }

        StartTag(String str) {
            this();
            this.tagName = str;
        }

        StartTag(String str, Attributes attributes) {
            this();
            this.tagName = str;
            this.attributes = attributes;
        }
    }
}
