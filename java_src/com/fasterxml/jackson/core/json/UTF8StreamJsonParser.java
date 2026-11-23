package com.fasterxml.jackson.core.json;

import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.base.ParserMinimalBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.JacksonFeatureSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import okio.Utf8;

/* JADX INFO: loaded from: classes9.dex */
public class UTF8StreamJsonParser extends ParserBase {
    static final byte BYTE_LF = 10;
    protected boolean _bufferRecyclable;
    protected byte[] _inputBuffer;
    protected InputStream _inputStream;
    protected int _nameStartCol;
    protected int _nameStartOffset;
    protected int _nameStartRow;
    protected ObjectCodec _objectCodec;
    private int _quad1;
    protected int[] _quadBuffer;
    protected final ByteQuadsCanonicalizer _symbols;
    protected boolean _tokenIncomplete;
    private static final int FEAT_MASK_TRAILING_COMMA = JsonParser.Feature.ALLOW_TRAILING_COMMA.getMask();
    private static final int FEAT_MASK_LEADING_ZEROS = JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS.getMask();
    private static final int FEAT_MASK_NON_NUM_NUMBERS = JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS.getMask();
    private static final int FEAT_MASK_ALLOW_MISSING = JsonParser.Feature.ALLOW_MISSING_VALUES.getMask();
    private static final int FEAT_MASK_ALLOW_SINGLE_QUOTES = JsonParser.Feature.ALLOW_SINGLE_QUOTES.getMask();
    private static final int FEAT_MASK_ALLOW_UNQUOTED_NAMES = JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES.getMask();
    private static final int FEAT_MASK_ALLOW_JAVA_COMMENTS = JsonParser.Feature.ALLOW_COMMENTS.getMask();
    private static final int FEAT_MASK_ALLOW_YAML_COMMENTS = JsonParser.Feature.ALLOW_YAML_COMMENTS.getMask();
    private static final int[] _icUTF8 = CharTypes.getInputCodeUtf8();
    protected static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();

    @Deprecated
    public UTF8StreamJsonParser(IOContext iOContext, int i10, InputStream inputStream, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, byte[] bArr, int i11, int i12, boolean z10) {
        this(iOContext, i10, inputStream, objectCodec, byteQuadsCanonicalizer, bArr, i11, i12, 0, z10);
    }

    private final void _checkMatchEnd(String str, int i10, int i11) throws IOException {
        if (Character.isJavaIdentifierPart((char) _decodeCharForError(i11))) {
            _reportInvalidToken(str.substring(0, i10));
        }
    }

    private final void _closeArrayScope() throws JsonParseException {
        _updateLocation();
        if (!this._parsingContext.inArray()) {
            _reportMismatchedEndMarker(93, '}');
        }
        this._parsingContext = this._parsingContext.clearAndGetParent();
    }

    private final void _closeObjectScope() throws JsonParseException {
        _updateLocation();
        if (!this._parsingContext.inObject()) {
            _reportMismatchedEndMarker(125, ']');
        }
        this._parsingContext = this._parsingContext.clearAndGetParent();
    }

    private final JsonToken _closeScope(int i10) throws JsonParseException {
        if (i10 == 125) {
            _closeObjectScope();
            JsonToken jsonToken = JsonToken.END_OBJECT;
            this._currToken = jsonToken;
            return jsonToken;
        }
        _closeArrayScope();
        JsonToken jsonToken2 = JsonToken.END_ARRAY;
        this._currToken = jsonToken2;
        return jsonToken2;
    }

    private final int _decodeUtf8_2(int i10) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i11 = this._inputPtr;
        int i12 = i11 + 1;
        this._inputPtr = i12;
        byte b10 = bArr[i11];
        if ((b10 & 192) != 128) {
            _reportInvalidOther(b10 & 255, i12);
        }
        return ((i10 & 31) << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
    }

    private final int _decodeUtf8_3(int i10) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        int i11 = i10 & 15;
        byte[] bArr = this._inputBuffer;
        int i12 = this._inputPtr;
        int i13 = i12 + 1;
        this._inputPtr = i13;
        byte b10 = bArr[i12];
        if ((b10 & 192) != 128) {
            _reportInvalidOther(b10 & 255, i13);
        }
        int i14 = (i11 << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i15 = this._inputPtr;
        int i16 = i15 + 1;
        this._inputPtr = i16;
        byte b11 = bArr2[i15];
        if ((b11 & 192) != 128) {
            _reportInvalidOther(b11 & 255, i16);
        }
        return (i14 << 6) | (b11 & Utf8.REPLACEMENT_BYTE);
    }

    private final int _decodeUtf8_3fast(int i10) throws IOException {
        int i11 = i10 & 15;
        byte[] bArr = this._inputBuffer;
        int i12 = this._inputPtr;
        int i13 = i12 + 1;
        this._inputPtr = i13;
        byte b10 = bArr[i12];
        if ((b10 & 192) != 128) {
            _reportInvalidOther(b10 & 255, i13);
        }
        int i14 = (i11 << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
        byte[] bArr2 = this._inputBuffer;
        int i15 = this._inputPtr;
        int i16 = i15 + 1;
        this._inputPtr = i16;
        byte b11 = bArr2[i15];
        if ((b11 & 192) != 128) {
            _reportInvalidOther(b11 & 255, i16);
        }
        return (i14 << 6) | (b11 & Utf8.REPLACEMENT_BYTE);
    }

    private final int _decodeUtf8_4(int i10) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i11 = this._inputPtr;
        int i12 = i11 + 1;
        this._inputPtr = i12;
        byte b10 = bArr[i11];
        if ((b10 & 192) != 128) {
            _reportInvalidOther(b10 & 255, i12);
        }
        int i13 = ((i10 & 7) << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i14 = this._inputPtr;
        int i15 = i14 + 1;
        this._inputPtr = i15;
        byte b11 = bArr2[i14];
        if ((b11 & 192) != 128) {
            _reportInvalidOther(b11 & 255, i15);
        }
        int i16 = (i13 << 6) | (b11 & Utf8.REPLACEMENT_BYTE);
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i17 = this._inputPtr;
        int i18 = i17 + 1;
        this._inputPtr = i18;
        byte b12 = bArr3[i17];
        if ((b12 & 192) != 128) {
            _reportInvalidOther(b12 & 255, i18);
        }
        return ((i16 << 6) | (b12 & Utf8.REPLACEMENT_BYTE)) - 65536;
    }

    private final void _finishString2(char[] cArr, int i10) throws IOException {
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i11 = this._inputPtr;
            if (i11 >= this._inputEnd) {
                _loadMoreGuaranteed();
                i11 = this._inputPtr;
            }
            int i12 = 0;
            if (i10 >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i10 = 0;
            }
            int iMin = Math.min(this._inputEnd, (cArr.length - i10) + i11);
            while (true) {
                if (i11 >= iMin) {
                    this._inputPtr = i11;
                    break;
                }
                int i13 = i11 + 1;
                int i_decodeEscaped = bArr[i11] & 255;
                int i14 = iArr[i_decodeEscaped];
                if (i14 != 0) {
                    this._inputPtr = i13;
                    if (i_decodeEscaped != 34) {
                        if (i14 == 1) {
                            i_decodeEscaped = _decodeEscaped();
                        } else if (i14 == 2) {
                            i_decodeEscaped = _decodeUtf8_2(i_decodeEscaped);
                        } else if (i14 == 3) {
                            i_decodeEscaped = this._inputEnd - i13 >= 2 ? _decodeUtf8_3fast(i_decodeEscaped) : _decodeUtf8_3(i_decodeEscaped);
                        } else if (i14 == 4) {
                            int i_decodeUtf8_4 = _decodeUtf8_4(i_decodeEscaped);
                            int i15 = i10 + 1;
                            cArr[i10] = (char) ((i_decodeUtf8_4 >> 10) | GeneratorBase.SURR1_FIRST);
                            if (i15 >= cArr.length) {
                                cArr = this._textBuffer.finishCurrentSegment();
                                i10 = 0;
                            } else {
                                i10 = i15;
                            }
                            i_decodeEscaped = (i_decodeUtf8_4 & 1023) | 56320;
                        } else if (i_decodeEscaped < 32) {
                            _throwUnquotedSpace(i_decodeEscaped, "string value");
                        } else {
                            _reportInvalidChar(i_decodeEscaped);
                        }
                        if (i10 >= cArr.length) {
                            cArr = this._textBuffer.finishCurrentSegment();
                        } else {
                            i12 = i10;
                        }
                        i10 = i12 + 1;
                        cArr[i12] = (char) i_decodeEscaped;
                        break;
                    }
                    this._textBuffer.setCurrentLength(i10);
                    return;
                }
                cArr[i10] = (char) i_decodeEscaped;
                i11 = i13;
                i10++;
            }
        }
    }

    private final boolean _isNextTokenNameMaybe(int i10, SerializableString serializableString) throws IOException {
        JsonToken jsonToken_parseNegNumber;
        String str_parseName = _parseName(i10);
        this._parsingContext.setCurrentName(str_parseName);
        boolean zEquals = str_parseName.equals(serializableString.getValue());
        this._currToken = JsonToken.FIELD_NAME;
        int i_skipColon = _skipColon();
        _updateLocation();
        if (i_skipColon == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
            return zEquals;
        }
        if (i_skipColon == 45) {
            jsonToken_parseNegNumber = _parseNegNumber();
        } else if (i_skipColon == 46) {
            jsonToken_parseNegNumber = _parseFloatThatStartsWithPeriod();
        } else if (i_skipColon == 91) {
            jsonToken_parseNegNumber = JsonToken.START_ARRAY;
        } else if (i_skipColon == 102) {
            _matchFalse();
            jsonToken_parseNegNumber = JsonToken.VALUE_FALSE;
        } else if (i_skipColon == 110) {
            _matchNull();
            jsonToken_parseNegNumber = JsonToken.VALUE_NULL;
        } else if (i_skipColon == 116) {
            _matchTrue();
            jsonToken_parseNegNumber = JsonToken.VALUE_TRUE;
        } else if (i_skipColon != 123) {
            switch (i_skipColon) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    jsonToken_parseNegNumber = _parsePosNumber(i_skipColon);
                    break;
                default:
                    jsonToken_parseNegNumber = _handleUnexpectedValue(i_skipColon);
                    break;
            }
        } else {
            jsonToken_parseNegNumber = JsonToken.START_OBJECT;
        }
        this._nextToken = jsonToken_parseNegNumber;
        return zEquals;
    }

    private final void _isNextTokenNameYes(int i10) throws IOException {
        this._currToken = JsonToken.FIELD_NAME;
        _updateLocation();
        if (i10 == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
            return;
        }
        if (i10 == 91) {
            this._nextToken = JsonToken.START_ARRAY;
            return;
        }
        if (i10 == 102) {
            _matchFalse();
            this._nextToken = JsonToken.VALUE_FALSE;
            return;
        }
        if (i10 == 110) {
            _matchNull();
            this._nextToken = JsonToken.VALUE_NULL;
            return;
        }
        if (i10 == 116) {
            _matchTrue();
            this._nextToken = JsonToken.VALUE_TRUE;
            return;
        }
        if (i10 == 123) {
            this._nextToken = JsonToken.START_OBJECT;
            return;
        }
        if (i10 == 45) {
            this._nextToken = _parseNegNumber();
            return;
        }
        if (i10 == 46) {
            this._nextToken = _parseFloatThatStartsWithPeriod();
            return;
        }
        switch (i10) {
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
                this._nextToken = _parsePosNumber(i10);
                break;
            default:
                this._nextToken = _handleUnexpectedValue(i10);
                break;
        }
    }

    private final void _matchToken2(String str, int i10) throws IOException {
        int i11;
        int i12;
        int length = str.length();
        do {
            if ((this._inputPtr >= this._inputEnd && !_loadMore()) || this._inputBuffer[this._inputPtr] != str.charAt(i10)) {
                _reportInvalidToken(str.substring(0, i10));
            }
            i11 = this._inputPtr + 1;
            this._inputPtr = i11;
            i10++;
        } while (i10 < length);
        if ((i11 < this._inputEnd || _loadMore()) && (i12 = this._inputBuffer[this._inputPtr] & 255) >= 48 && i12 != 93 && i12 != 125) {
            _checkMatchEnd(str, i10, i12);
        }
    }

    private final JsonToken _nextAfterName() {
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        this._currToken = jsonToken;
        return jsonToken;
    }

    private final JsonToken _nextTokenNotInObject(int i10) throws IOException {
        if (i10 == 34) {
            this._tokenIncomplete = true;
            JsonToken jsonToken = JsonToken.VALUE_STRING;
            this._currToken = jsonToken;
            return jsonToken;
        }
        if (i10 == 45) {
            JsonToken jsonToken_parseNegNumber = _parseNegNumber();
            this._currToken = jsonToken_parseNegNumber;
            return jsonToken_parseNegNumber;
        }
        if (i10 == 46) {
            JsonToken jsonToken_parseFloatThatStartsWithPeriod = _parseFloatThatStartsWithPeriod();
            this._currToken = jsonToken_parseFloatThatStartsWithPeriod;
            return jsonToken_parseFloatThatStartsWithPeriod;
        }
        if (i10 == 91) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            JsonToken jsonToken2 = JsonToken.START_ARRAY;
            this._currToken = jsonToken2;
            return jsonToken2;
        }
        if (i10 == 102) {
            _matchFalse();
            JsonToken jsonToken3 = JsonToken.VALUE_FALSE;
            this._currToken = jsonToken3;
            return jsonToken3;
        }
        if (i10 == 110) {
            _matchNull();
            JsonToken jsonToken4 = JsonToken.VALUE_NULL;
            this._currToken = jsonToken4;
            return jsonToken4;
        }
        if (i10 == 116) {
            _matchTrue();
            JsonToken jsonToken5 = JsonToken.VALUE_TRUE;
            this._currToken = jsonToken5;
            return jsonToken5;
        }
        if (i10 == 123) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            JsonToken jsonToken6 = JsonToken.START_OBJECT;
            this._currToken = jsonToken6;
            return jsonToken6;
        }
        switch (i10) {
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
                JsonToken jsonToken_parsePosNumber = _parsePosNumber(i10);
                this._currToken = jsonToken_parsePosNumber;
                return jsonToken_parsePosNumber;
            default:
                JsonToken jsonToken_handleUnexpectedValue = _handleUnexpectedValue(i10);
                this._currToken = jsonToken_handleUnexpectedValue;
                return jsonToken_handleUnexpectedValue;
        }
    }

    private static final int _padLastQuad(int i10, int i11) {
        return i11 == 4 ? i10 : i10 | ((-1) << (i11 << 3));
    }

    private final JsonToken _parseFloat(char[] cArr, int i10, int i11, boolean z10, int i12) throws IOException {
        int i13;
        boolean z11;
        int i14 = 0;
        if (i11 == 46) {
            if (i10 >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i10 = 0;
            }
            cArr[i10] = (char) i11;
            i10++;
            i13 = 0;
            while (true) {
                if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                    z11 = true;
                    break;
                }
                byte[] bArr = this._inputBuffer;
                int i15 = this._inputPtr;
                this._inputPtr = i15 + 1;
                i11 = bArr[i15] & 255;
                if (i11 < 48 || i11 > 57) {
                    z11 = false;
                    break;
                }
                i13++;
                if (i10 >= cArr.length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    i10 = 0;
                }
                cArr[i10] = (char) i11;
                i10++;
            }
            if (i13 == 0) {
                reportUnexpectedNumberChar(i11, "Decimal point not followed by a digit");
            }
        } else {
            i13 = 0;
            z11 = false;
        }
        if (i11 == 101 || i11 == 69) {
            if (i10 >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i10 = 0;
            }
            int i16 = i10 + 1;
            cArr[i10] = (char) i11;
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            byte[] bArr2 = this._inputBuffer;
            int i17 = this._inputPtr;
            this._inputPtr = i17 + 1;
            int i18 = bArr2[i17] & 255;
            if (i18 == 45 || i18 == 43) {
                if (i16 >= cArr.length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    i16 = 0;
                }
                int i19 = i16 + 1;
                cArr[i16] = (char) i18;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i20 = this._inputPtr;
                this._inputPtr = i20 + 1;
                i18 = bArr3[i20] & 255;
                i16 = i19;
            }
            i11 = i18;
            int i21 = 0;
            while (true) {
                if (i11 >= 48 && i11 <= 57) {
                    i21++;
                    if (i16 >= cArr.length) {
                        cArr = this._textBuffer.finishCurrentSegment();
                        i16 = 0;
                    }
                    int i22 = i16 + 1;
                    cArr[i16] = (char) i11;
                    if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                        i14 = i21;
                        i10 = i22;
                        z11 = true;
                        break;
                    }
                    byte[] bArr4 = this._inputBuffer;
                    int i23 = this._inputPtr;
                    this._inputPtr = i23 + 1;
                    i11 = bArr4[i23] & 255;
                    i16 = i22;
                } else {
                    i14 = i21;
                    i10 = i16;
                    break;
                }
            }
            if (i14 == 0) {
                reportUnexpectedNumberChar(i11, "Exponent indicator not followed by a digit");
            }
        }
        if (!z11) {
            this._inputPtr--;
            if (this._parsingContext.inRoot()) {
                _verifyRootSpace(i11);
            }
        }
        this._textBuffer.setCurrentLength(i10);
        return resetFloat(z10, i12, i13, i14);
    }

    private final JsonToken _parseNumber2(char[] cArr, int i10, boolean z10, int i11) throws IOException {
        char[] cArrFinishCurrentSegment = cArr;
        int i12 = i10;
        int i13 = i11;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                this._textBuffer.setCurrentLength(i12);
                return resetInt(z10, i13);
            }
            byte[] bArr = this._inputBuffer;
            int i14 = this._inputPtr;
            int i15 = i14 + 1;
            this._inputPtr = i15;
            int i16 = bArr[i14] & 255;
            if (i16 > 57 || i16 < 48) {
                if (i16 == 46 || i16 == 101 || i16 == 69) {
                    return _parseFloat(cArrFinishCurrentSegment, i12, i16, z10, i13);
                }
                this._inputPtr = i15 - 1;
                this._textBuffer.setCurrentLength(i12);
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(this._inputBuffer[this._inputPtr] & 255);
                }
                return resetInt(z10, i13);
            }
            if (i12 >= cArrFinishCurrentSegment.length) {
                i12 = 0;
                cArrFinishCurrentSegment = this._textBuffer.finishCurrentSegment();
            }
            cArrFinishCurrentSegment[i12] = (char) i16;
            i13++;
            i12++;
        }
    }

    private final void _skipCComment() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                break;
            }
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            int i12 = bArr[i10] & 255;
            int i13 = inputCodeComment[i12];
            if (i13 != 0) {
                if (i13 == 2) {
                    _skipUtf8_2();
                } else if (i13 == 3) {
                    _skipUtf8_3();
                } else if (i13 == 4) {
                    _skipUtf8_4(i12);
                } else if (i13 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i11;
                } else if (i13 == 13) {
                    _skipCR();
                } else if (i13 == 42) {
                    if (i11 >= this._inputEnd && !_loadMore()) {
                        break;
                    }
                    byte[] bArr2 = this._inputBuffer;
                    int i14 = this._inputPtr;
                    if (bArr2[i14] == 47) {
                        this._inputPtr = i14 + 1;
                        return;
                    }
                } else {
                    _reportInvalidChar(i12);
                }
            }
        }
        _reportInvalidEOF(" in a comment", null);
    }

    private final int _skipColon() throws IOException {
        int i10 = this._inputPtr;
        if (i10 + 4 >= this._inputEnd) {
            return _skipColon2(false);
        }
        byte[] bArr = this._inputBuffer;
        byte b10 = bArr[i10];
        if (b10 == 58) {
            int i11 = i10 + 1;
            this._inputPtr = i11;
            byte b11 = bArr[i11];
            if (b11 > 32) {
                if (b11 == 47 || b11 == 35) {
                    return _skipColon2(true);
                }
                this._inputPtr = i11 + 1;
                return b11;
            }
            if (b11 == 32 || b11 == 9) {
                int i12 = i11 + 1;
                this._inputPtr = i12;
                byte b12 = bArr[i12];
                if (b12 > 32) {
                    if (b12 == 47 || b12 == 35) {
                        return _skipColon2(true);
                    }
                    this._inputPtr = i12 + 1;
                    return b12;
                }
            }
            return _skipColon2(true);
        }
        if (b10 == 32 || b10 == 9) {
            int i13 = i10 + 1;
            this._inputPtr = i13;
            b10 = bArr[i13];
        }
        if (b10 != 58) {
            return _skipColon2(false);
        }
        int i14 = this._inputPtr + 1;
        this._inputPtr = i14;
        byte b13 = bArr[i14];
        if (b13 > 32) {
            if (b13 == 47 || b13 == 35) {
                return _skipColon2(true);
            }
            this._inputPtr = i14 + 1;
            return b13;
        }
        if (b13 == 32 || b13 == 9) {
            int i15 = i14 + 1;
            this._inputPtr = i15;
            byte b14 = bArr[i15];
            if (b14 > 32) {
                if (b14 == 47 || b14 == 35) {
                    return _skipColon2(true);
                }
                this._inputPtr = i15 + 1;
                return b14;
            }
        }
        return _skipColon2(true);
    }

    private final int _skipColon2(boolean z10) throws IOException {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" within/between " + this._parsingContext.typeDesc() + " entries", null);
                return -1;
            }
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            int i12 = bArr[i10] & 255;
            if (i12 > 32) {
                if (i12 == 47) {
                    _skipComment();
                } else if (i12 != 35 || !_skipYAMLComment()) {
                    if (z10) {
                        return i12;
                    }
                    if (i12 != 58) {
                        _reportUnexpectedChar(i12, "was expecting a colon to separate field name and value");
                    }
                    z10 = true;
                }
            } else if (i12 != 32) {
                if (i12 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i11;
                } else if (i12 == 13) {
                    _skipCR();
                } else if (i12 != 9) {
                    _throwInvalidSpace(i12);
                }
            }
        }
    }

    private final int _skipColonFast(int i10) throws IOException {
        byte[] bArr = this._inputBuffer;
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 == 58) {
            int i12 = i11 + 1;
            byte b11 = bArr[i11];
            if (b11 > 32) {
                if (b11 != 47 && b11 != 35) {
                    this._inputPtr = i12;
                    return b11;
                }
            } else if (b11 == 32 || b11 == 9) {
                int i13 = i12 + 1;
                byte b12 = bArr[i12];
                if (b12 > 32 && b12 != 47 && b12 != 35) {
                    this._inputPtr = i13;
                    return b12;
                }
                i12 = i13;
            }
            this._inputPtr = i12 - 1;
            return _skipColon2(true);
        }
        if (b10 == 32 || b10 == 9) {
            int i14 = i11 + 1;
            byte b13 = bArr[i11];
            i11 = i14;
            b10 = b13;
        }
        if (b10 != 58) {
            this._inputPtr = i11 - 1;
            return _skipColon2(false);
        }
        int i15 = i11 + 1;
        byte b14 = bArr[i11];
        if (b14 > 32) {
            if (b14 != 47 && b14 != 35) {
                this._inputPtr = i15;
                return b14;
            }
        } else if (b14 == 32 || b14 == 9) {
            int i16 = i15 + 1;
            byte b15 = bArr[i15];
            if (b15 > 32 && b15 != 47 && b15 != 35) {
                this._inputPtr = i16;
                return b15;
            }
            i15 = i16;
        }
        this._inputPtr = i15 - 1;
        return _skipColon2(true);
    }

    private final void _skipComment() throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_JAVA_COMMENTS) == 0) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(" in a comment", null);
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        int i11 = bArr[i10] & 255;
        if (i11 == 47) {
            _skipLine();
        } else if (i11 == 42) {
            _skipCComment();
        } else {
            _reportUnexpectedChar(i11, "was expecting either '*' or '/' for a comment");
        }
    }

    private final void _skipLine() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                return;
            }
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            int i12 = bArr[i10] & 255;
            int i13 = inputCodeComment[i12];
            if (i13 != 0) {
                if (i13 == 2) {
                    _skipUtf8_2();
                } else if (i13 == 3) {
                    _skipUtf8_3();
                } else if (i13 == 4) {
                    _skipUtf8_4(i12);
                } else if (i13 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i11;
                    return;
                } else if (i13 == 13) {
                    _skipCR();
                    return;
                } else if (i13 != 42 && i13 < 0) {
                    _reportInvalidChar(i12);
                }
            }
        }
    }

    private final void _skipUtf8_2() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        int i11 = i10 + 1;
        this._inputPtr = i11;
        byte b10 = bArr[i10];
        if ((b10 & 192) != 128) {
            _reportInvalidOther(b10 & 255, i11);
        }
    }

    private final void _skipUtf8_3() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        int i11 = i10 + 1;
        this._inputPtr = i11;
        byte b10 = bArr[i10];
        if ((b10 & 192) != 128) {
            _reportInvalidOther(b10 & 255, i11);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i12 = this._inputPtr;
        int i13 = i12 + 1;
        this._inputPtr = i13;
        byte b11 = bArr2[i12];
        if ((b11 & 192) != 128) {
            _reportInvalidOther(b11 & 255, i13);
        }
    }

    private final void _skipUtf8_4(int i10) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i11 = this._inputPtr;
        int i12 = i11 + 1;
        this._inputPtr = i12;
        byte b10 = bArr[i11];
        if ((b10 & 192) != 128) {
            _reportInvalidOther(b10 & 255, i12);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i13 = this._inputPtr;
        int i14 = i13 + 1;
        this._inputPtr = i14;
        byte b11 = bArr2[i13];
        if ((b11 & 192) != 128) {
            _reportInvalidOther(b11 & 255, i14);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i15 = this._inputPtr;
        int i16 = i15 + 1;
        this._inputPtr = i16;
        byte b12 = bArr3[i15];
        if ((b12 & 192) != 128) {
            _reportInvalidOther(b12 & 255, i16);
        }
    }

    private final int _skipWS() throws IOException {
        while (true) {
            int i10 = this._inputPtr;
            if (i10 >= this._inputEnd) {
                return _skipWS2();
            }
            byte[] bArr = this._inputBuffer;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            int i12 = bArr[i10] & 255;
            if (i12 > 32) {
                if (i12 != 47 && i12 != 35) {
                    return i12;
                }
                this._inputPtr = i11 - 1;
                return _skipWS2();
            }
            if (i12 != 32) {
                if (i12 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i11;
                } else if (i12 == 13) {
                    _skipCR();
                } else if (i12 != 9) {
                    _throwInvalidSpace(i12);
                }
            }
        }
    }

    private final int _skipWS2() throws IOException {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.typeDesc() + " entries");
            }
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            int i12 = bArr[i10] & 255;
            if (i12 > 32) {
                if (i12 == 47) {
                    _skipComment();
                } else if (i12 != 35 || !_skipYAMLComment()) {
                    return i12;
                }
            } else if (i12 != 32) {
                if (i12 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i11;
                } else if (i12 == 13) {
                    _skipCR();
                } else if (i12 != 9) {
                    _throwInvalidSpace(i12);
                }
            }
        }
    }

    private final int _skipWSOrEnd() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            return _eofAsNextChar();
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        int i11 = i10 + 1;
        this._inputPtr = i11;
        int i12 = bArr[i10] & 255;
        if (i12 > 32) {
            if (i12 != 47 && i12 != 35) {
                return i12;
            }
            this._inputPtr = i11 - 1;
            return _skipWSOrEnd2();
        }
        if (i12 != 32) {
            if (i12 == 10) {
                this._currInputRow++;
                this._currInputRowStart = i11;
            } else if (i12 == 13) {
                _skipCR();
            } else if (i12 != 9) {
                _throwInvalidSpace(i12);
            }
        }
        while (true) {
            int i13 = this._inputPtr;
            if (i13 >= this._inputEnd) {
                return _skipWSOrEnd2();
            }
            byte[] bArr2 = this._inputBuffer;
            int i14 = i13 + 1;
            this._inputPtr = i14;
            int i15 = bArr2[i13] & 255;
            if (i15 > 32) {
                if (i15 != 47 && i15 != 35) {
                    return i15;
                }
                this._inputPtr = i14 - 1;
                return _skipWSOrEnd2();
            }
            if (i15 != 32) {
                if (i15 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i14;
                } else if (i15 == 13) {
                    _skipCR();
                } else if (i15 != 9) {
                    _throwInvalidSpace(i15);
                }
            }
        }
    }

    private final int _skipWSOrEnd2() throws IOException {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                return _eofAsNextChar();
            }
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            int i12 = bArr[i10] & 255;
            if (i12 > 32) {
                if (i12 == 47) {
                    _skipComment();
                } else if (i12 != 35 || !_skipYAMLComment()) {
                    return i12;
                }
            } else if (i12 != 32) {
                if (i12 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i11;
                } else if (i12 == 13) {
                    _skipCR();
                } else if (i12 != 9) {
                    _throwInvalidSpace(i12);
                }
            }
        }
    }

    private final boolean _skipYAMLComment() throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_YAML_COMMENTS) == 0) {
            return false;
        }
        _skipLine();
        return true;
    }

    private final void _updateLocation() {
        this._tokenInputRow = this._currInputRow;
        int i10 = this._inputPtr;
        this._tokenInputTotal = this._currInputProcessed + ((long) i10);
        this._tokenInputCol = i10 - this._currInputRowStart;
    }

    private final void _updateNameLocation() {
        this._nameStartRow = this._currInputRow;
        int i10 = this._inputPtr;
        this._nameStartOffset = i10;
        this._nameStartCol = i10 - this._currInputRowStart;
    }

    private final int _verifyNoLeadingZeroes() throws IOException {
        int i10;
        if ((this._inputPtr >= this._inputEnd && !_loadMore()) || (i10 = this._inputBuffer[this._inputPtr] & 255) < 48 || i10 > 57) {
            return 48;
        }
        if ((this._features & FEAT_MASK_LEADING_ZEROS) == 0) {
            reportInvalidNumber("Leading zeroes not allowed");
        }
        this._inputPtr++;
        if (i10 == 48) {
            do {
                if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                    break;
                }
                byte[] bArr = this._inputBuffer;
                int i11 = this._inputPtr;
                i10 = bArr[i11] & 255;
                if (i10 < 48 || i10 > 57) {
                    return 48;
                }
                this._inputPtr = i11 + 1;
            } while (i10 == 48);
        }
        return i10;
    }

    private final void _verifyRootSpace(int i10) throws IOException {
        int i11 = this._inputPtr + 1;
        this._inputPtr = i11;
        if (i10 != 9) {
            if (i10 == 10) {
                this._currInputRow++;
                this._currInputRowStart = i11;
            } else if (i10 == 13) {
                _skipCR();
            } else if (i10 != 32) {
                _reportMissingRootWS(i10);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0061  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0084  */
    /* JADX WARN: Code duplicated, block: B:31:0x0094  */
    /* JADX WARN: Code duplicated, block: B:34:0x009f  */
    /* JADX WARN: Code duplicated, block: B:36:0x00af  */
    /* JADX WARN: Code duplicated, block: B:38:0x00bb A[PHI: r6 r10
      0x00bb: PHI (r6v6 int) = (r6v5 int), (r6v12 int) binds: [B:28:0x0082, B:33:0x009d] A[DONT_GENERATE, DONT_INLINE]
      0x00bb: PHI (r10v5 int) = (r10v4 int), (r10v7 int) binds: [B:28:0x0082, B:33:0x009d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:41:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c5  */
    private final String addName(int[] iArr, int i10, int i11) throws JsonParseException {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19 = ((i10 << 2) - 4) + i11;
        if (i11 < 4) {
            int i20 = i10 - 1;
            i12 = iArr[i20];
            iArr[i20] = i12 << ((4 - i11) << 3);
        } else {
            i12 = 0;
        }
        char[] cArrEmptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int i21 = 0;
        int i22 = 0;
        while (i21 < i19) {
            int i23 = (iArr[i21 >> 2] >> ((3 - (i21 & 3)) << 3)) & 255;
            i21++;
            if (i23 > 127) {
                if ((i23 & Opcodes.SHL_INT_LIT8) == 192) {
                    i13 = i23 & 31;
                } else {
                    if ((i23 & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) == 224) {
                        i13 = i23 & 15;
                        i14 = 2;
                    } else if ((i23 & 248) == 240) {
                        i13 = i23 & 7;
                        i14 = 3;
                    } else {
                        _reportInvalidInitial(i23);
                        i13 = 1;
                    }
                    if (i21 + i14 > i19) {
                        _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
                    }
                    i15 = iArr[i21 >> 2] >> ((3 - (i21 & 3)) << 3);
                    i21++;
                    if ((i15 & 192) != 128) {
                        _reportInvalidOther(i15);
                    }
                    i16 = (i15 & 63) | (i13 << 6);
                    if (i14 > 1) {
                        i17 = iArr[i21 >> 2] >> ((3 - (i21 & 3)) << 3);
                        i21++;
                        if ((i17 & 192) != 128) {
                            _reportInvalidOther(i17);
                        }
                        i16 = (i16 << 6) | (i17 & 63);
                        if (i14 > 2) {
                            i18 = iArr[i21 >> 2] >> ((3 - (i21 & 3)) << 3);
                            i21++;
                            if ((i18 & 192) != 128) {
                                _reportInvalidOther(i18 & 255);
                            }
                            i23 = (i16 << 6) | (i18 & 63);
                        } else {
                            i23 = i16;
                        }
                    } else {
                        i23 = i16;
                    }
                    if (i14 > 2) {
                        int i24 = i23 - 65536;
                        if (i22 >= cArrEmptyAndGetCurrentSegment.length) {
                            cArrEmptyAndGetCurrentSegment = this._textBuffer.expandCurrentSegment();
                        }
                        cArrEmptyAndGetCurrentSegment[i22] = (char) ((i24 >> 10) + GeneratorBase.SURR1_FIRST);
                        i23 = (i24 & 1023) | 56320;
                        i22++;
                    }
                }
                i14 = 1;
                if (i21 + i14 > i19) {
                    _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
                }
                i15 = iArr[i21 >> 2] >> ((3 - (i21 & 3)) << 3);
                i21++;
                if ((i15 & 192) != 128) {
                    _reportInvalidOther(i15);
                }
                i16 = (i15 & 63) | (i13 << 6);
                if (i14 > 1) {
                    i17 = iArr[i21 >> 2] >> ((3 - (i21 & 3)) << 3);
                    i21++;
                    if ((i17 & 192) != 128) {
                        _reportInvalidOther(i17);
                    }
                    i16 = (i16 << 6) | (i17 & 63);
                    if (i14 > 2) {
                        i18 = iArr[i21 >> 2] >> ((3 - (i21 & 3)) << 3);
                        i21++;
                        if ((i18 & 192) != 128) {
                            _reportInvalidOther(i18 & 255);
                        }
                        i23 = (i16 << 6) | (i18 & 63);
                    } else {
                        i23 = i16;
                    }
                } else {
                    i23 = i16;
                }
                if (i14 > 2) {
                    int i25 = i23 - 65536;
                    if (i22 >= cArrEmptyAndGetCurrentSegment.length) {
                        cArrEmptyAndGetCurrentSegment = this._textBuffer.expandCurrentSegment();
                    }
                    cArrEmptyAndGetCurrentSegment[i22] = (char) ((i25 >> 10) + GeneratorBase.SURR1_FIRST);
                    i23 = (i25 & 1023) | 56320;
                    i22++;
                }
            }
            if (i22 >= cArrEmptyAndGetCurrentSegment.length) {
                cArrEmptyAndGetCurrentSegment = this._textBuffer.expandCurrentSegment();
            }
            cArrEmptyAndGetCurrentSegment[i22] = (char) i23;
            i22++;
        }
        String str = new String(cArrEmptyAndGetCurrentSegment, 0, i22);
        if (i11 < 4) {
            iArr[i10 - 1] = i12;
        }
        return this._symbols.addName(str, iArr, i10);
    }

    private final String findName(int i10, int i11) throws JsonParseException {
        int i_padLastQuad = _padLastQuad(i10, i11);
        String strFindName = this._symbols.findName(i_padLastQuad);
        if (strFindName != null) {
            return strFindName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i_padLastQuad;
        return addName(iArr, 1, i11);
    }

    private int nextByte() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        return bArr[i10] & 255;
    }

    private final String parseName(int i10, int i11, int i12) throws IOException {
        return parseEscapedName(this._quadBuffer, 0, i10, i11, i12);
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _closeInput() throws IOException {
        if (this._inputStream != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE)) {
                this._inputStream.close();
            }
            this._inputStream = null;
        }
    }

    protected final byte[] _decodeBase64(Base64Variant base64Variant) throws IOException {
        ByteArrayBuilder byteArrayBuilder_getByteArrayBuilder = _getByteArrayBuilder();
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            this._inputPtr = i10 + 1;
            int i11 = bArr[i10] & 255;
            if (i11 > 32) {
                int iDecodeBase64Char = base64Variant.decodeBase64Char(i11);
                if (iDecodeBase64Char < 0) {
                    if (i11 == 34) {
                        return byteArrayBuilder_getByteArrayBuilder.toByteArray();
                    }
                    iDecodeBase64Char = _decodeBase64Escape(base64Variant, i11, 0);
                    if (iDecodeBase64Char < 0) {
                        continue;
                    }
                }
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr2 = this._inputBuffer;
                int i12 = this._inputPtr;
                this._inputPtr = i12 + 1;
                int i13 = bArr2[i12] & 255;
                int iDecodeBase64Char2 = base64Variant.decodeBase64Char(i13);
                if (iDecodeBase64Char2 < 0) {
                    iDecodeBase64Char2 = _decodeBase64Escape(base64Variant, i13, 1);
                }
                int i14 = (iDecodeBase64Char << 6) | iDecodeBase64Char2;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i15 = this._inputPtr;
                this._inputPtr = i15 + 1;
                int i16 = bArr3[i15] & 255;
                int iDecodeBase64Char3 = base64Variant.decodeBase64Char(i16);
                if (iDecodeBase64Char3 < 0) {
                    if (iDecodeBase64Char3 != -2) {
                        if (i16 == 34) {
                            byteArrayBuilder_getByteArrayBuilder.append(i14 >> 4);
                            if (base64Variant.usesPadding()) {
                                this._inputPtr--;
                                _handleBase64MissingPadding(base64Variant);
                            }
                            return byteArrayBuilder_getByteArrayBuilder.toByteArray();
                        }
                        iDecodeBase64Char3 = _decodeBase64Escape(base64Variant, i16, 2);
                    }
                    if (iDecodeBase64Char3 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            _loadMoreGuaranteed();
                        }
                        byte[] bArr4 = this._inputBuffer;
                        int i17 = this._inputPtr;
                        this._inputPtr = i17 + 1;
                        int i18 = bArr4[i17] & 255;
                        if (!base64Variant.usesPaddingChar(i18) && _decodeBase64Escape(base64Variant, i18, 3) != -2) {
                            throw reportInvalidBase64Char(base64Variant, i18, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        byteArrayBuilder_getByteArrayBuilder.append(i14 >> 4);
                    }
                }
                int i19 = (i14 << 6) | iDecodeBase64Char3;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr5 = this._inputBuffer;
                int i20 = this._inputPtr;
                this._inputPtr = i20 + 1;
                int i21 = bArr5[i20] & 255;
                int iDecodeBase64Char4 = base64Variant.decodeBase64Char(i21);
                if (iDecodeBase64Char4 < 0) {
                    if (iDecodeBase64Char4 != -2) {
                        if (i21 == 34) {
                            byteArrayBuilder_getByteArrayBuilder.appendTwoBytes(i19 >> 2);
                            if (base64Variant.usesPadding()) {
                                this._inputPtr--;
                                _handleBase64MissingPadding(base64Variant);
                            }
                            return byteArrayBuilder_getByteArrayBuilder.toByteArray();
                        }
                        iDecodeBase64Char4 = _decodeBase64Escape(base64Variant, i21, 3);
                    }
                    if (iDecodeBase64Char4 == -2) {
                        byteArrayBuilder_getByteArrayBuilder.appendTwoBytes(i19 >> 2);
                    }
                }
                byteArrayBuilder_getByteArrayBuilder.appendThreeBytes((i19 << 6) | iDecodeBase64Char4);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0036  */
    /* JADX WARN: Code duplicated, block: B:20:0x0042  */
    /* JADX WARN: Code duplicated, block: B:22:0x004a  */
    /* JADX WARN: Code duplicated, block: B:25:0x0056  */
    /* JADX WARN: Code duplicated, block: B:27:0x005e  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    protected int _decodeCharForError(int i10) throws IOException {
        char c10;
        int iNextByte;
        int i11;
        int iNextByte2;
        int i12;
        int iNextByte3;
        int i13 = i10 & 255;
        if (i13 <= 127) {
            return i13;
        }
        if ((i13 & Opcodes.SHL_INT_LIT8) != 192) {
            if ((i13 & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) == 224) {
                i13 &= 15;
                c10 = 2;
            } else if ((i13 & 248) == 240) {
                i13 &= 7;
                c10 = 3;
            } else {
                _reportInvalidInitial(i13 & 255);
            }
            iNextByte = nextByte();
            if ((iNextByte & 192) != 128) {
                _reportInvalidOther(iNextByte & 255);
            }
            i11 = (i13 << 6) | (iNextByte & 63);
            if (c10 > 1) {
                return i11;
            }
            iNextByte2 = nextByte();
            if ((iNextByte2 & 192) != 128) {
                _reportInvalidOther(iNextByte2 & 255);
            }
            i12 = (i11 << 6) | (iNextByte2 & 63);
            if (c10 > 2) {
                return i12;
            }
            iNextByte3 = nextByte();
            if ((iNextByte3 & 192) != 128) {
                _reportInvalidOther(iNextByte3 & 255);
            }
            return (i12 << 6) | (iNextByte3 & 63);
        }
        i13 &= 31;
        c10 = 1;
        iNextByte = nextByte();
        if ((iNextByte & 192) != 128) {
            _reportInvalidOther(iNextByte & 255);
        }
        i11 = (i13 << 6) | (iNextByte & 63);
        if (c10 > 1) {
            return i11;
        }
        iNextByte2 = nextByte();
        if ((iNextByte2 & 192) != 128) {
            _reportInvalidOther(iNextByte2 & 255);
        }
        i12 = (i11 << 6) | (iNextByte2 & 63);
        if (c10 > 2) {
            return i12;
        }
        iNextByte3 = nextByte();
        if ((iNextByte3 & 192) != 128) {
            _reportInvalidOther(iNextByte3 & 255);
        }
        return (i12 << 6) | (iNextByte3 & 63);
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected char _decodeEscaped() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(" in character escape sequence", JsonToken.VALUE_STRING);
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 == 34 || b10 == 47 || b10 == 92) {
            return (char) b10;
        }
        if (b10 == 98) {
            return '\b';
        }
        if (b10 == 102) {
            return '\f';
        }
        if (b10 == 110) {
            return '\n';
        }
        if (b10 == 114) {
            return '\r';
        }
        if (b10 == 116) {
            return '\t';
        }
        if (b10 != 117) {
            return _handleUnrecognizedCharacterEscape((char) _decodeCharForError(b10));
        }
        int i11 = 0;
        for (int i12 = 0; i12 < 4; i12++) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" in character escape sequence", JsonToken.VALUE_STRING);
            }
            byte[] bArr2 = this._inputBuffer;
            int i13 = this._inputPtr;
            this._inputPtr = i13 + 1;
            byte b11 = bArr2[i13];
            int iCharToHex = CharTypes.charToHex(b11);
            if (iCharToHex < 0) {
                _reportUnexpectedChar(b11 & 255, "expected a hex-digit for character escape sequence");
            }
            i11 = (i11 << 4) | iCharToHex;
        }
        return (char) i11;
    }

    protected String _finishAndReturnString() throws IOException {
        int i10 = this._inputPtr;
        if (i10 >= this._inputEnd) {
            _loadMoreGuaranteed();
            i10 = this._inputPtr;
        }
        char[] cArrEmptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int iMin = Math.min(this._inputEnd, cArrEmptyAndGetCurrentSegment.length + i10);
        byte[] bArr = this._inputBuffer;
        int i11 = 0;
        while (i10 < iMin) {
            int i12 = bArr[i10] & 255;
            if (iArr[i12] != 0) {
                if (i12 != 34) {
                    break;
                }
                this._inputPtr = i10 + 1;
                return this._textBuffer.setCurrentAndReturn(i11);
            }
            i10++;
            cArrEmptyAndGetCurrentSegment[i11] = (char) i12;
            i11++;
        }
        this._inputPtr = i10;
        _finishString2(cArrEmptyAndGetCurrentSegment, i11);
        return this._textBuffer.contentsAsString();
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _finishString() throws IOException {
        int i10 = this._inputPtr;
        if (i10 >= this._inputEnd) {
            _loadMoreGuaranteed();
            i10 = this._inputPtr;
        }
        char[] cArrEmptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int iMin = Math.min(this._inputEnd, cArrEmptyAndGetCurrentSegment.length + i10);
        byte[] bArr = this._inputBuffer;
        int i11 = 0;
        while (i10 < iMin) {
            int i12 = bArr[i10] & 255;
            if (iArr[i12] != 0) {
                if (i12 != 34) {
                    break;
                }
                this._inputPtr = i10 + 1;
                this._textBuffer.setCurrentLength(i11);
                return;
            }
            i10++;
            cArrEmptyAndGetCurrentSegment[i11] = (char) i12;
            i11++;
        }
        this._inputPtr = i10;
        _finishString2(cArrEmptyAndGetCurrentSegment, i11);
    }

    protected final String _getText2(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        int iId = jsonToken.id();
        if (iId != 5) {
            return (iId == 6 || iId == 7 || iId == 8) ? this._textBuffer.contentsAsString() : jsonToken.asString();
        }
        return this._parsingContext.getCurrentName();
    }

    protected JsonToken _handleApos() throws IOException {
        char[] cArrEmptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        int i10 = 0;
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            if (i10 >= cArrEmptyAndGetCurrentSegment.length) {
                cArrEmptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                i10 = 0;
            }
            int i11 = this._inputEnd;
            int length = this._inputPtr + (cArrEmptyAndGetCurrentSegment.length - i10);
            if (length < i11) {
                i11 = length;
            }
            while (true) {
                int i12 = this._inputPtr;
                if (i12 >= i11) {
                    break;
                }
                int i13 = i12 + 1;
                this._inputPtr = i13;
                int i_decodeEscaped = bArr[i12] & 255;
                if (i_decodeEscaped == 39 || iArr[i_decodeEscaped] != 0) {
                    if (i_decodeEscaped != 39) {
                        int i14 = iArr[i_decodeEscaped];
                        if (i14 == 1) {
                            i_decodeEscaped = _decodeEscaped();
                        } else if (i14 == 2) {
                            i_decodeEscaped = _decodeUtf8_2(i_decodeEscaped);
                        } else if (i14 == 3) {
                            i_decodeEscaped = this._inputEnd - i13 >= 2 ? _decodeUtf8_3fast(i_decodeEscaped) : _decodeUtf8_3(i_decodeEscaped);
                        } else if (i14 != 4) {
                            if (i_decodeEscaped < 32) {
                                _throwUnquotedSpace(i_decodeEscaped, "string value");
                            }
                            _reportInvalidChar(i_decodeEscaped);
                        } else {
                            int i_decodeUtf8_4 = _decodeUtf8_4(i_decodeEscaped);
                            int i15 = i10 + 1;
                            cArrEmptyAndGetCurrentSegment[i10] = (char) ((i_decodeUtf8_4 >> 10) | GeneratorBase.SURR1_FIRST);
                            if (i15 >= cArrEmptyAndGetCurrentSegment.length) {
                                cArrEmptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                                i10 = 0;
                            } else {
                                i10 = i15;
                            }
                            i_decodeEscaped = 56320 | (i_decodeUtf8_4 & 1023);
                        }
                        if (i10 >= cArrEmptyAndGetCurrentSegment.length) {
                            cArrEmptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                            i10 = 0;
                        }
                        cArrEmptyAndGetCurrentSegment[i10] = (char) i_decodeEscaped;
                        i10++;
                        break;
                    }
                    this._textBuffer.setCurrentLength(i10);
                    return JsonToken.VALUE_STRING;
                }
                cArrEmptyAndGetCurrentSegment[i10] = (char) i_decodeEscaped;
                i10++;
            }
        }
    }

    protected JsonToken _handleInvalidNumberStart(int i10, boolean z10) throws IOException {
        String str;
        while (i10 == 73) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOFInValue(JsonToken.VALUE_NUMBER_FLOAT);
            }
            byte[] bArr = this._inputBuffer;
            int i11 = this._inputPtr;
            this._inputPtr = i11 + 1;
            i10 = bArr[i11];
            if (i10 != 78) {
                if (i10 != 110) {
                    break;
                }
                str = z10 ? "-Infinity" : "+Infinity";
            } else {
                str = z10 ? "-INF" : "+INF";
            }
            _matchToken(str, 3);
            if ((this._features & FEAT_MASK_NON_NUM_NUMBERS) != 0) {
                return resetAsNaN(str, z10 ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY);
            }
            _reportError("Non-standard token '%s': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow", str);
        }
        reportUnexpectedNumberChar(i10, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }

    protected String _handleOddName(int i10) throws IOException {
        if (i10 == 39 && (this._features & FEAT_MASK_ALLOW_SINGLE_QUOTES) != 0) {
            return _parseAposName();
        }
        if ((this._features & FEAT_MASK_ALLOW_UNQUOTED_NAMES) == 0) {
            _reportUnexpectedChar((char) _decodeCharForError(i10), "was expecting double-quote to start field name");
        }
        int[] inputCodeUtf8JsNames = CharTypes.getInputCodeUtf8JsNames();
        if (inputCodeUtf8JsNames[i10] != 0) {
            _reportUnexpectedChar(i10, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int[] iArrGrowArrayBy = this._quadBuffer;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i11 < 4) {
                i11++;
                i13 = i10 | (i13 << 8);
            } else {
                if (i12 >= iArrGrowArrayBy.length) {
                    iArrGrowArrayBy = ParserBase.growArrayBy(iArrGrowArrayBy, iArrGrowArrayBy.length);
                    this._quadBuffer = iArrGrowArrayBy;
                }
                iArrGrowArrayBy[i12] = i13;
                i13 = i10;
                i12++;
                i11 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
            }
            byte[] bArr = this._inputBuffer;
            int i14 = this._inputPtr;
            i10 = bArr[i14] & 255;
            if (inputCodeUtf8JsNames[i10] != 0) {
                break;
            }
            this._inputPtr = i14 + 1;
        }
        if (i11 > 0) {
            if (i12 >= iArrGrowArrayBy.length) {
                int[] iArrGrowArrayBy2 = ParserBase.growArrayBy(iArrGrowArrayBy, iArrGrowArrayBy.length);
                this._quadBuffer = iArrGrowArrayBy2;
                iArrGrowArrayBy = iArrGrowArrayBy2;
            }
            iArrGrowArrayBy[i12] = i13;
            i12++;
        }
        String strFindName = this._symbols.findName(iArrGrowArrayBy, i12);
        return strFindName == null ? addName(iArrGrowArrayBy, i12, i11) : strFindName;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00a1  */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x001b, code lost:
    
        if (r4 != 44) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0048, code lost:
    
        if (r3._parsingContext.inArray() == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0051, code lost:
    
        if (r3._parsingContext.inRoot() != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0058, code lost:
    
        if ((r3._features & com.fasterxml.jackson.core.json.UTF8StreamJsonParser.FEAT_MASK_ALLOW_MISSING) == 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005a, code lost:
    
        r3._inputPtr--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0061, code lost:
    
        return com.fasterxml.jackson.core.JsonToken.VALUE_NULL;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.core.JsonToken _handleUnexpectedValue(int r4) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._handleUnexpectedValue(int):com.fasterxml.jackson.core.JsonToken");
    }

    protected final boolean _loadMore() throws IOException {
        byte[] bArr;
        int length;
        InputStream inputStream = this._inputStream;
        if (inputStream == null || (length = (bArr = this._inputBuffer).length) == 0) {
            return false;
        }
        int i10 = inputStream.read(bArr, 0, length);
        if (i10 > 0) {
            int i11 = this._inputEnd;
            this._currInputProcessed += (long) i11;
            this._currInputRowStart -= i11;
            this._nameStartOffset -= i11;
            this._inputPtr = 0;
            this._inputEnd = i10;
            return true;
        }
        _closeInput();
        if (i10 == 0) {
            throw new IOException("InputStream.read() returned 0 characters when trying to read " + this._inputBuffer.length + " bytes");
        }
        return false;
    }

    protected void _loadMoreGuaranteed() throws IOException {
        if (_loadMore()) {
            return;
        }
        _reportInvalidEOF();
    }

    protected final void _matchFalse() throws IOException {
        int i10;
        int i11 = this._inputPtr;
        if (i11 + 4 < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i12 = i11 + 1;
            if (bArr[i11] == 97) {
                int i13 = i12 + 1;
                if (bArr[i12] == 108) {
                    int i14 = i13 + 1;
                    if (bArr[i13] == 115) {
                        int i15 = i14 + 1;
                        if (bArr[i14] == 101 && ((i10 = bArr[i15] & 255) < 48 || i10 == 93 || i10 == 125)) {
                            this._inputPtr = i15;
                            return;
                        }
                    }
                }
            }
        }
        _matchToken2("false", 1);
    }

    protected final void _matchNull() throws IOException {
        int i10;
        int i11 = this._inputPtr;
        if (i11 + 3 < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i12 = i11 + 1;
            if (bArr[i11] == 117) {
                int i13 = i12 + 1;
                if (bArr[i12] == 108) {
                    int i14 = i13 + 1;
                    if (bArr[i13] == 108 && ((i10 = bArr[i14] & 255) < 48 || i10 == 93 || i10 == 125)) {
                        this._inputPtr = i14;
                        return;
                    }
                }
            }
        }
        _matchToken2("null", 1);
    }

    protected final void _matchToken(String str, int i10) throws IOException {
        int i11;
        int length = str.length();
        if (this._inputPtr + length >= this._inputEnd) {
            _matchToken2(str, i10);
            return;
        }
        do {
            if (this._inputBuffer[this._inputPtr] != str.charAt(i10)) {
                _reportInvalidToken(str.substring(0, i10));
            }
            i11 = this._inputPtr + 1;
            this._inputPtr = i11;
            i10++;
        } while (i10 < length);
        int i12 = this._inputBuffer[i11] & 255;
        if (i12 < 48 || i12 == 93 || i12 == 125) {
            return;
        }
        _checkMatchEnd(str, i10, i12);
    }

    protected final void _matchTrue() throws IOException {
        int i10;
        int i11 = this._inputPtr;
        if (i11 + 3 < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i12 = i11 + 1;
            if (bArr[i11] == 114) {
                int i13 = i12 + 1;
                if (bArr[i12] == 117) {
                    int i14 = i13 + 1;
                    if (bArr[i13] == 101 && ((i10 = bArr[i14] & 255) < 48 || i10 == 93 || i10 == 125)) {
                        this._inputPtr = i14;
                        return;
                    }
                }
            }
        }
        _matchToken2("true", 1);
    }

    protected String _parseAposName() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(": was expecting closing ''' for field name", JsonToken.FIELD_NAME);
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        int i_decodeEscaped = bArr[i10] & 255;
        if (i_decodeEscaped == 39) {
            return "";
        }
        int[] iArrGrowArrayBy = this._quadBuffer;
        int[] iArr = _icLatin1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i_decodeEscaped != 39) {
            if (iArr[i_decodeEscaped] != 0 && i_decodeEscaped != 34) {
                if (i_decodeEscaped != 92) {
                    _throwUnquotedSpace(i_decodeEscaped, "name");
                } else {
                    i_decodeEscaped = _decodeEscaped();
                }
                if (i_decodeEscaped > 127) {
                    if (i11 >= 4) {
                        if (i12 >= iArrGrowArrayBy.length) {
                            iArrGrowArrayBy = ParserBase.growArrayBy(iArrGrowArrayBy, iArrGrowArrayBy.length);
                            this._quadBuffer = iArrGrowArrayBy;
                        }
                        iArrGrowArrayBy[i12] = i13;
                        i12++;
                        i11 = 0;
                        i13 = 0;
                    }
                    if (i_decodeEscaped < 2048) {
                        i13 = (i13 << 8) | (i_decodeEscaped >> 6) | 192;
                        i11++;
                    } else {
                        int i14 = (i13 << 8) | (i_decodeEscaped >> 12) | Opcodes.SHL_INT_LIT8;
                        int i15 = i11 + 1;
                        if (i15 >= 4) {
                            if (i12 >= iArrGrowArrayBy.length) {
                                iArrGrowArrayBy = ParserBase.growArrayBy(iArrGrowArrayBy, iArrGrowArrayBy.length);
                                this._quadBuffer = iArrGrowArrayBy;
                            }
                            iArrGrowArrayBy[i12] = i14;
                            i12++;
                            i15 = 0;
                            i14 = 0;
                        }
                        i13 = (i14 << 8) | ((i_decodeEscaped >> 6) & 63) | 128;
                        i11 = i15 + 1;
                    }
                    i_decodeEscaped = (i_decodeEscaped & 63) | 128;
                }
            }
            if (i11 < 4) {
                i11++;
                i13 = i_decodeEscaped | (i13 << 8);
            } else {
                if (i12 >= iArrGrowArrayBy.length) {
                    iArrGrowArrayBy = ParserBase.growArrayBy(iArrGrowArrayBy, iArrGrowArrayBy.length);
                    this._quadBuffer = iArrGrowArrayBy;
                }
                iArrGrowArrayBy[i12] = i13;
                i13 = i_decodeEscaped;
                i12++;
                i11 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
            }
            byte[] bArr2 = this._inputBuffer;
            int i16 = this._inputPtr;
            this._inputPtr = i16 + 1;
            i_decodeEscaped = bArr2[i16] & 255;
        }
        if (i11 > 0) {
            if (i12 >= iArrGrowArrayBy.length) {
                int[] iArrGrowArrayBy2 = ParserBase.growArrayBy(iArrGrowArrayBy, iArrGrowArrayBy.length);
                this._quadBuffer = iArrGrowArrayBy2;
                iArrGrowArrayBy = iArrGrowArrayBy2;
            }
            iArrGrowArrayBy[i12] = _padLastQuad(i13, i11);
            i12++;
        }
        String strFindName = this._symbols.findName(iArrGrowArrayBy, i12);
        return strFindName == null ? addName(iArrGrowArrayBy, i12, i11) : strFindName;
    }

    protected final JsonToken _parseFloatThatStartsWithPeriod() throws IOException {
        return !isEnabled(JsonReadFeature.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS.mappedFeature()) ? _handleUnexpectedValue(46) : _parseFloat(this._textBuffer.emptyAndGetCurrentSegment(), 0, 46, false, 0);
    }

    protected final String _parseName(int i10) throws IOException {
        if (i10 != 34) {
            return _handleOddName(i10);
        }
        int i11 = this._inputPtr;
        if (i11 + 13 > this._inputEnd) {
            return slowParseName();
        }
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i12 = i11 + 1;
        this._inputPtr = i12;
        int i13 = bArr[i11] & 255;
        if (iArr[i13] != 0) {
            return i13 == 34 ? "" : parseName(0, i13, 0);
        }
        int i14 = i12 + 1;
        this._inputPtr = i14;
        int i15 = bArr[i12] & 255;
        if (iArr[i15] != 0) {
            return i15 == 34 ? findName(i13, 1) : parseName(i13, i15, 1);
        }
        int i16 = (i13 << 8) | i15;
        int i17 = i14 + 1;
        this._inputPtr = i17;
        int i18 = bArr[i14] & 255;
        if (iArr[i18] != 0) {
            return i18 == 34 ? findName(i16, 2) : parseName(i16, i18, 2);
        }
        int i19 = (i16 << 8) | i18;
        int i20 = i17 + 1;
        this._inputPtr = i20;
        int i21 = bArr[i17] & 255;
        if (iArr[i21] != 0) {
            return i21 == 34 ? findName(i19, 3) : parseName(i19, i21, 3);
        }
        int i22 = (i19 << 8) | i21;
        this._inputPtr = i20 + 1;
        int i23 = bArr[i20] & 255;
        if (iArr[i23] != 0) {
            return i23 == 34 ? findName(i22, 4) : parseName(i22, i23, 4);
        }
        this._quad1 = i22;
        return parseMediumName(i23);
    }

    protected JsonToken _parseNegNumber() throws IOException {
        char[] cArrEmptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        cArrEmptyAndGetCurrentSegment[0] = '-';
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        int i_verifyNoLeadingZeroes = bArr[i10] & 255;
        if (i_verifyNoLeadingZeroes <= 48) {
            if (i_verifyNoLeadingZeroes != 48) {
                return _handleInvalidNumberStart(i_verifyNoLeadingZeroes, true);
            }
            i_verifyNoLeadingZeroes = _verifyNoLeadingZeroes();
        } else if (i_verifyNoLeadingZeroes > 57) {
            return _handleInvalidNumberStart(i_verifyNoLeadingZeroes, true);
        }
        cArrEmptyAndGetCurrentSegment[1] = (char) i_verifyNoLeadingZeroes;
        int i11 = 2;
        int iMin = Math.min(this._inputEnd, (this._inputPtr + cArrEmptyAndGetCurrentSegment.length) - 2);
        int i12 = 1;
        while (true) {
            int i13 = this._inputPtr;
            if (i13 >= iMin) {
                return _parseNumber2(cArrEmptyAndGetCurrentSegment, i11, true, i12);
            }
            byte[] bArr2 = this._inputBuffer;
            int i14 = i13 + 1;
            this._inputPtr = i14;
            int i15 = bArr2[i13] & 255;
            if (i15 < 48 || i15 > 57) {
                if (i15 == 46 || i15 == 101 || i15 == 69) {
                    return _parseFloat(cArrEmptyAndGetCurrentSegment, i11, i15, true, i12);
                }
                this._inputPtr = i14 - 1;
                this._textBuffer.setCurrentLength(i11);
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(i15);
                }
                return resetInt(true, i12);
            }
            i12++;
            cArrEmptyAndGetCurrentSegment[i11] = (char) i15;
            i11++;
        }
    }

    protected JsonToken _parsePosNumber(int i10) throws IOException {
        char[] cArrEmptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        if (i10 == 48) {
            i10 = _verifyNoLeadingZeroes();
        }
        cArrEmptyAndGetCurrentSegment[0] = (char) i10;
        int iMin = Math.min(this._inputEnd, (this._inputPtr + cArrEmptyAndGetCurrentSegment.length) - 1);
        int i11 = 1;
        int i12 = 1;
        while (true) {
            int i13 = this._inputPtr;
            if (i13 >= iMin) {
                return _parseNumber2(cArrEmptyAndGetCurrentSegment, i11, false, i12);
            }
            byte[] bArr = this._inputBuffer;
            int i14 = i13 + 1;
            this._inputPtr = i14;
            int i15 = bArr[i13] & 255;
            if (i15 < 48 || i15 > 57) {
                if (i15 == 46 || i15 == 101 || i15 == 69) {
                    return _parseFloat(cArrEmptyAndGetCurrentSegment, i11, i15, false, i12);
                }
                this._inputPtr = i14 - 1;
                this._textBuffer.setCurrentLength(i11);
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(i15);
                }
                return resetInt(false, i12);
            }
            i12++;
            cArrEmptyAndGetCurrentSegment[i11] = (char) i15;
            i11++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003b A[DONT_INVERT, PHI: r10
      0x003b: PHI (r10v4 int) = (r10v3 int), (r10v27 int) binds: [B:9:0x002d, B:13:0x0037] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    /* JADX WARN: Code duplicated, block: B:19:0x0048  */
    /* JADX WARN: Code duplicated, block: B:22:0x005e  */
    /* JADX WARN: Code duplicated, block: B:25:0x006b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0082  */
    /* JADX WARN: Code duplicated, block: B:29:0x0084 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0093  */
    /* JADX WARN: Code duplicated, block: B:34:0x009e  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:52:0x010e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0110 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x0126 A[EDGE_INSN: B:56:0x0126->B:57:0x012e BREAK  A[LOOP:0: B:3:0x000e->B:78:0x000e]] */
    /* JADX WARN: Code duplicated, block: B:61:0x0137  */
    /* JADX WARN: Code duplicated, block: B:62:0x013e  */
    /* JADX WARN: Code duplicated, block: B:64:0x0141  */
    /* JADX WARN: Code duplicated, block: B:65:0x0150  */
    /* JADX WARN: Code duplicated, block: B:72:0x00f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x0086 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x00f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x0112 A[SYNTHETIC] */
    protected int _readBinary(Base64Variant base64Variant, OutputStream outputStream, byte[] bArr) throws IOException {
        int i10;
        int iDecodeBase64Char;
        int i11;
        int i12;
        int iDecodeBase64Char2;
        int i13;
        int i14;
        int iDecodeBase64Char3;
        int i15;
        int i16 = 3;
        int length = bArr.length - 3;
        int i17 = 0;
        int i18 = 0;
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            byte[] bArr2 = this._inputBuffer;
            int i19 = this._inputPtr;
            this._inputPtr = i19 + 1;
            int i20 = bArr2[i19] & 255;
            if (i20 > 32) {
                int iDecodeBase64Char4 = base64Variant.decodeBase64Char(i20);
                if (iDecodeBase64Char4 < 0) {
                    if (i20 == 34) {
                        break;
                    }
                    iDecodeBase64Char4 = _decodeBase64Escape(base64Variant, i20, 0);
                    if (iDecodeBase64Char4 >= 0) {
                        if (i17 > length) {
                            i18 += i17;
                            outputStream.write(bArr, 0, i17);
                            i17 = 0;
                        }
                        if (this._inputPtr >= this._inputEnd) {
                            _loadMoreGuaranteed();
                        }
                        byte[] bArr3 = this._inputBuffer;
                        int i21 = this._inputPtr;
                        this._inputPtr = i21 + 1;
                        i10 = bArr3[i21] & 255;
                        iDecodeBase64Char = base64Variant.decodeBase64Char(i10);
                        if (iDecodeBase64Char < 0) {
                            iDecodeBase64Char = _decodeBase64Escape(base64Variant, i10, 1);
                        }
                        i11 = (iDecodeBase64Char4 << 6) | iDecodeBase64Char;
                        if (this._inputPtr >= this._inputEnd) {
                            _loadMoreGuaranteed();
                        }
                        byte[] bArr4 = this._inputBuffer;
                        int i22 = this._inputPtr;
                        this._inputPtr = i22 + 1;
                        i12 = bArr4[i22] & 255;
                        iDecodeBase64Char2 = base64Variant.decodeBase64Char(i12);
                        if (iDecodeBase64Char2 >= 0) {
                            if (iDecodeBase64Char2 != -2) {
                                if (i12 == 34) {
                                    int i23 = i17 + 1;
                                    bArr[i17] = (byte) (i11 >> 4);
                                    if (base64Variant.usesPadding()) {
                                        this._inputPtr--;
                                        _handleBase64MissingPadding(base64Variant);
                                    }
                                    i17 = i23;
                                    break;
                                }
                                iDecodeBase64Char2 = _decodeBase64Escape(base64Variant, i12, 2);
                            }
                            if (iDecodeBase64Char2 == -2) {
                                if (this._inputPtr >= this._inputEnd) {
                                    _loadMoreGuaranteed();
                                }
                                byte[] bArr5 = this._inputBuffer;
                                int i24 = this._inputPtr;
                                this._inputPtr = i24 + 1;
                                i15 = bArr5[i24] & 255;
                                if (base64Variant.usesPaddingChar(i15)) {
                                }
                                bArr[i17] = (byte) (i11 >> 4);
                                i17++;
                            }
                        }
                        i13 = (i11 << 6) | iDecodeBase64Char2;
                        if (this._inputPtr >= this._inputEnd) {
                            _loadMoreGuaranteed();
                        }
                        byte[] bArr6 = this._inputBuffer;
                        int i25 = this._inputPtr;
                        this._inputPtr = i25 + 1;
                        i14 = bArr6[i25] & 255;
                        iDecodeBase64Char3 = base64Variant.decodeBase64Char(i14);
                        if (iDecodeBase64Char3 >= 0) {
                            if (iDecodeBase64Char3 == -2) {
                                if (i14 == 34) {
                                    int i26 = i13 >> 2;
                                    int i27 = i17 + 1;
                                    bArr[i17] = (byte) (i26 >> 8);
                                    i17 = i27 + 1;
                                    bArr[i27] = (byte) i26;
                                    if (base64Variant.usesPadding()) {
                                        break;
                                    }
                                    this._inputPtr--;
                                    _handleBase64MissingPadding(base64Variant);
                                    break;
                                }
                                iDecodeBase64Char3 = _decodeBase64Escape(base64Variant, i14, 3);
                            }
                            if (iDecodeBase64Char3 == -2) {
                                int i28 = i13 >> 2;
                                int i29 = i17 + 1;
                                bArr[i17] = (byte) (i28 >> 8);
                                i17 = i29 + 1;
                                bArr[i29] = (byte) i28;
                            }
                            i16 = 3;
                        }
                        int i30 = (i13 << 6) | iDecodeBase64Char3;
                        int i31 = i17 + 1;
                        bArr[i17] = (byte) (i30 >> 16);
                        int i32 = i31 + 1;
                        bArr[i31] = (byte) (i30 >> 8);
                        bArr[i32] = (byte) i30;
                        i17 = i32 + 1;
                        i16 = 3;
                    }
                } else {
                    if (i17 > length) {
                        i18 += i17;
                        outputStream.write(bArr, 0, i17);
                        i17 = 0;
                    }
                    if (this._inputPtr >= this._inputEnd) {
                        _loadMoreGuaranteed();
                    }
                    byte[] bArr7 = this._inputBuffer;
                    int i210 = this._inputPtr;
                    this._inputPtr = i210 + 1;
                    i10 = bArr7[i210] & 255;
                    iDecodeBase64Char = base64Variant.decodeBase64Char(i10);
                    if (iDecodeBase64Char < 0) {
                        iDecodeBase64Char = _decodeBase64Escape(base64Variant, i10, 1);
                    }
                    i11 = (iDecodeBase64Char4 << 6) | iDecodeBase64Char;
                    if (this._inputPtr >= this._inputEnd) {
                        _loadMoreGuaranteed();
                    }
                    byte[] bArr8 = this._inputBuffer;
                    int i211 = this._inputPtr;
                    this._inputPtr = i211 + 1;
                    i12 = bArr8[i211] & 255;
                    iDecodeBase64Char2 = base64Variant.decodeBase64Char(i12);
                    if (iDecodeBase64Char2 >= 0) {
                        if (iDecodeBase64Char2 != -2) {
                            if (i12 == 34) {
                                int i212 = i17 + 1;
                                bArr[i17] = (byte) (i11 >> 4);
                                if (base64Variant.usesPadding()) {
                                    this._inputPtr--;
                                    _handleBase64MissingPadding(base64Variant);
                                }
                                i17 = i212;
                                break;
                            }
                            iDecodeBase64Char2 = _decodeBase64Escape(base64Variant, i12, 2);
                        }
                        if (iDecodeBase64Char2 == -2) {
                            if (this._inputPtr >= this._inputEnd) {
                                _loadMoreGuaranteed();
                            }
                            byte[] bArr9 = this._inputBuffer;
                            int i213 = this._inputPtr;
                            this._inputPtr = i213 + 1;
                            i15 = bArr9[i213] & 255;
                            if (base64Variant.usesPaddingChar(i15) && _decodeBase64Escape(base64Variant, i15, i16) != -2) {
                                throw reportInvalidBase64Char(base64Variant, i15, i16, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                            }
                            bArr[i17] = (byte) (i11 >> 4);
                            i17++;
                        }
                    }
                    i13 = (i11 << 6) | iDecodeBase64Char2;
                    if (this._inputPtr >= this._inputEnd) {
                        _loadMoreGuaranteed();
                    }
                    byte[] bArr10 = this._inputBuffer;
                    int i214 = this._inputPtr;
                    this._inputPtr = i214 + 1;
                    i14 = bArr10[i214] & 255;
                    iDecodeBase64Char3 = base64Variant.decodeBase64Char(i14);
                    if (iDecodeBase64Char3 >= 0) {
                        if (iDecodeBase64Char3 == -2) {
                            if (i14 == 34) {
                                int i215 = i13 >> 2;
                                int i216 = i17 + 1;
                                bArr[i17] = (byte) (i215 >> 8);
                                i17 = i216 + 1;
                                bArr[i216] = (byte) i215;
                                if (base64Variant.usesPadding()) {
                                    break;
                                }
                                this._inputPtr--;
                                _handleBase64MissingPadding(base64Variant);
                                break;
                            }
                            iDecodeBase64Char3 = _decodeBase64Escape(base64Variant, i14, 3);
                        }
                        if (iDecodeBase64Char3 == -2) {
                            int i217 = i13 >> 2;
                            int i218 = i17 + 1;
                            bArr[i17] = (byte) (i217 >> 8);
                            i17 = i218 + 1;
                            bArr[i218] = (byte) i217;
                        }
                        i16 = 3;
                    }
                    int i33 = (i13 << 6) | iDecodeBase64Char3;
                    int i34 = i17 + 1;
                    bArr[i17] = (byte) (i33 >> 16);
                    int i35 = i34 + 1;
                    bArr[i34] = (byte) (i33 >> 8);
                    bArr[i35] = (byte) i33;
                    i17 = i35 + 1;
                    i16 = 3;
                }
            }
            i16 = 3;
        }
        this._tokenIncomplete = false;
        if (i17 <= 0) {
            return i18;
        }
        int i36 = i18 + i17;
        outputStream.write(bArr, 0, i17);
        return i36;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _releaseBuffers() throws IOException {
        byte[] bArr;
        byte[] bArr2;
        super._releaseBuffers();
        this._symbols.release();
        if (!this._bufferRecyclable || (bArr = this._inputBuffer) == null || bArr == (bArr2 = ParserMinimalBase.NO_BYTES)) {
            return;
        }
        this._inputBuffer = bArr2;
        this._ioContext.releaseReadIOBuffer(bArr);
    }

    protected void _reportInvalidChar(int i10) throws JsonParseException {
        if (i10 < 32) {
            _throwInvalidSpace(i10);
        }
        _reportInvalidInitial(i10);
    }

    protected void _reportInvalidInitial(int i10) throws JsonParseException {
        _reportError("Invalid UTF-8 start byte 0x" + Integer.toHexString(i10));
    }

    protected void _reportInvalidOther(int i10) throws JsonParseException {
        _reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i10));
    }

    protected void _reportInvalidToken(String str, int i10) throws IOException {
        this._inputPtr = i10;
        _reportInvalidToken(str, _validJsonTokenList());
    }

    protected final void _skipCR() throws IOException {
        if (this._inputPtr < this._inputEnd || _loadMore()) {
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            if (bArr[i10] == 10) {
                this._inputPtr = i10 + 1;
            }
        }
        this._currInputRow++;
        this._currInputRowStart = this._inputPtr;
    }

    protected void _skipString() throws IOException {
        this._tokenIncomplete = false;
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i10 = this._inputPtr;
            int i11 = this._inputEnd;
            if (i10 >= i11) {
                _loadMoreGuaranteed();
                i10 = this._inputPtr;
                i11 = this._inputEnd;
            }
            while (true) {
                if (i10 >= i11) {
                    this._inputPtr = i10;
                    break;
                }
                int i12 = i10 + 1;
                int i13 = bArr[i10] & 255;
                int i14 = iArr[i13];
                if (i14 != 0) {
                    this._inputPtr = i12;
                    if (i13 != 34) {
                        if (i14 == 1) {
                            _decodeEscaped();
                            break;
                        }
                        if (i14 == 2) {
                            _skipUtf8_2();
                            break;
                        }
                        if (i14 == 3) {
                            _skipUtf8_3();
                            break;
                        }
                        if (i14 == 4) {
                            _skipUtf8_4(i13);
                            break;
                        } else if (i13 >= 32) {
                            _reportInvalidChar(i13);
                            break;
                        } else {
                            _throwUnquotedSpace(i13, "string value");
                            break;
                        }
                    }
                    return;
                }
                i10 = i12;
            }
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void finishToken() throws IOException {
        if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_STRING && (jsonToken != JsonToken.VALUE_EMBEDDED_OBJECT || this._binaryValue == null)) {
            _reportError("Current token (" + this._currToken + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
        }
        if (this._tokenIncomplete) {
            try {
                this._binaryValue = _decodeBase64(base64Variant);
                this._tokenIncomplete = false;
            } catch (IllegalArgumentException e10) {
                throw _constructError("Failed to decode VALUE_STRING as base64 (" + base64Variant + "): " + e10.getMessage());
            }
        } else if (this._binaryValue == null) {
            ByteArrayBuilder byteArrayBuilder_getByteArrayBuilder = _getByteArrayBuilder();
            _decodeBase64(getText(), byteArrayBuilder_getByteArrayBuilder, base64Variant);
            this._binaryValue = byteArrayBuilder_getByteArrayBuilder.toByteArray();
        }
        return this._binaryValue;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public ObjectCodec getCodec() {
        return this._objectCodec;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getCurrentLocation() {
        return new JsonLocation(_getSourceReference(), this._currInputProcessed + ((long) this._inputPtr), -1L, this._currInputRow, (this._inputPtr - this._currInputRowStart) + 1);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getInputSource() {
        return this._inputStream;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JacksonFeatureSet<StreamReadCapability> getReadCapabilities() {
        return ParserBase.JSON_READ_CAPABILITIES;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getText() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_STRING) {
            return _getText2(jsonToken);
        }
        if (!this._tokenIncomplete) {
            return this._textBuffer.contentsAsString();
        }
        this._tokenIncomplete = false;
        return _finishAndReturnString();
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public char[] getTextCharacters() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null) {
            return null;
        }
        int iId = jsonToken.id();
        if (iId != 5) {
            if (iId != 6) {
                if (iId != 7 && iId != 8) {
                    return this._currToken.asCharArray();
                }
            } else if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.getTextBuffer();
        }
        if (!this._nameCopied) {
            String currentName = this._parsingContext.getCurrentName();
            int length = currentName.length();
            char[] cArr = this._nameCopyBuffer;
            if (cArr == null) {
                this._nameCopyBuffer = this._ioContext.allocNameCopyBuffer(length);
            } else if (cArr.length < length) {
                this._nameCopyBuffer = new char[length];
            }
            currentName.getChars(0, length, this._nameCopyBuffer, 0);
            this._nameCopied = true;
        }
        return this._nameCopyBuffer;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getTextLength() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null) {
            return 0;
        }
        int iId = jsonToken.id();
        if (iId == 5) {
            return this._parsingContext.getCurrentName().length();
        }
        if (iId != 6) {
            if (iId != 7 && iId != 8) {
                return this._currToken.asCharArray().length;
            }
        } else if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
        return this._textBuffer.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0011, code lost:
    
        if (r0 != 8) goto L16;
     */
    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getTextOffset() throws java.io.IOException {
        /*
            r3 = this;
            com.fasterxml.jackson.core.JsonToken r0 = r3._currToken
            r1 = 0
            if (r0 == 0) goto L24
            int r0 = r0.id()
            r2 = 6
            if (r0 == r2) goto L14
            r2 = 7
            if (r0 == r2) goto L1d
            r2 = 8
            if (r0 == r2) goto L1d
            goto L24
        L14:
            boolean r0 = r3._tokenIncomplete
            if (r0 == 0) goto L1d
            r3._tokenIncomplete = r1
            r3._finishString()
        L1d:
            com.fasterxml.jackson.core.util.TextBuffer r0 = r3._textBuffer
            int r0 = r0.getTextOffset()
            return r0
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser.getTextOffset():int");
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getTokenLocation() {
        if (this._currToken != JsonToken.FIELD_NAME) {
            return new JsonLocation(_getSourceReference(), this._tokenInputTotal - 1, -1L, this._tokenInputRow, this._tokenInputCol);
        }
        return new JsonLocation(_getSourceReference(), this._currInputProcessed + ((long) (this._nameStartOffset - 1)), -1L, this._nameStartRow, this._nameStartCol);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT && jsonToken != JsonToken.VALUE_NUMBER_FLOAT) {
            return super.getValueAsInt(0);
        }
        int i10 = this._numTypesValid;
        if ((i10 & 1) == 0) {
            if (i10 == 0) {
                return _parseIntValue();
            }
            if ((i10 & 1) == 0) {
                convertNumberToInt();
            }
        }
        return this._numberInt;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getValueAsString() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_STRING) {
            return jsonToken == JsonToken.FIELD_NAME ? getCurrentName() : super.getValueAsString(null);
        }
        if (!this._tokenIncomplete) {
            return this._textBuffer.contentsAsString();
        }
        this._tokenIncomplete = false;
        return _finishAndReturnString();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Boolean nextBooleanValue() throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            JsonToken jsonTokenNextToken = nextToken();
            if (jsonTokenNextToken == JsonToken.VALUE_TRUE) {
                return Boolean.TRUE;
            }
            if (jsonTokenNextToken == JsonToken.VALUE_FALSE) {
                return Boolean.FALSE;
            }
            return null;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (jsonToken == JsonToken.VALUE_FALSE) {
            return Boolean.FALSE;
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean nextFieldName(SerializableString serializableString) throws IOException {
        int i10 = 0;
        this._numTypesValid = 0;
        if (this._currToken == JsonToken.FIELD_NAME) {
            _nextAfterName();
            return false;
        }
        if (this._tokenIncomplete) {
            _skipString();
        }
        int i_skipWSOrEnd = _skipWSOrEnd();
        if (i_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return false;
        }
        this._binaryValue = null;
        if (i_skipWSOrEnd == 93) {
            _closeArrayScope();
            this._currToken = JsonToken.END_ARRAY;
            return false;
        }
        if (i_skipWSOrEnd == 125) {
            _closeObjectScope();
            this._currToken = JsonToken.END_OBJECT;
            return false;
        }
        if (this._parsingContext.expectComma()) {
            if (i_skipWSOrEnd != 44) {
                _reportUnexpectedChar(i_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
            }
            i_skipWSOrEnd = _skipWS();
            if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0 && (i_skipWSOrEnd == 93 || i_skipWSOrEnd == 125)) {
                _closeScope(i_skipWSOrEnd);
                return false;
            }
        }
        if (!this._parsingContext.inObject()) {
            _updateLocation();
            _nextTokenNotInObject(i_skipWSOrEnd);
            return false;
        }
        _updateNameLocation();
        if (i_skipWSOrEnd == 34) {
            byte[] bArrAsQuotedUTF8 = serializableString.asQuotedUTF8();
            int length = bArrAsQuotedUTF8.length;
            int i11 = this._inputPtr;
            if (i11 + length + 4 < this._inputEnd) {
                int i12 = length + i11;
                if (this._inputBuffer[i12] == 34) {
                    while (i11 != i12) {
                        if (bArrAsQuotedUTF8[i10] == this._inputBuffer[i11]) {
                            i10++;
                            i11++;
                        }
                    }
                    this._parsingContext.setCurrentName(serializableString.getValue());
                    _isNextTokenNameYes(_skipColonFast(i11 + 1));
                    return true;
                }
            }
        }
        return _isNextTokenNameMaybe(i_skipWSOrEnd, serializableString);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int nextIntValue(int i10) throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            return nextToken() == JsonToken.VALUE_NUMBER_INT ? getIntValue() : i10;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return getIntValue();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        return i10;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long nextLongValue(long j10) throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            return nextToken() == JsonToken.VALUE_NUMBER_INT ? getLongValue() : j10;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return getLongValue();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        return j10;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String nextTextValue() throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            if (nextToken() == JsonToken.VALUE_STRING) {
                return getText();
            }
            return null;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (!this._tokenIncomplete) {
                return this._textBuffer.contentsAsString();
            }
            this._tokenIncomplete = false;
            return _finishAndReturnString();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public JsonToken nextToken() throws IOException {
        JsonToken jsonToken_parseNegNumber;
        JsonToken jsonToken = this._currToken;
        JsonToken jsonToken2 = JsonToken.FIELD_NAME;
        if (jsonToken == jsonToken2) {
            return _nextAfterName();
        }
        this._numTypesValid = 0;
        if (this._tokenIncomplete) {
            _skipString();
        }
        int i_skipWSOrEnd = _skipWSOrEnd();
        if (i_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return null;
        }
        this._binaryValue = null;
        if (i_skipWSOrEnd == 93) {
            _closeArrayScope();
            JsonToken jsonToken3 = JsonToken.END_ARRAY;
            this._currToken = jsonToken3;
            return jsonToken3;
        }
        if (i_skipWSOrEnd == 125) {
            _closeObjectScope();
            JsonToken jsonToken4 = JsonToken.END_OBJECT;
            this._currToken = jsonToken4;
            return jsonToken4;
        }
        if (this._parsingContext.expectComma()) {
            if (i_skipWSOrEnd != 44) {
                _reportUnexpectedChar(i_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
            }
            i_skipWSOrEnd = _skipWS();
            if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0 && (i_skipWSOrEnd == 93 || i_skipWSOrEnd == 125)) {
                return _closeScope(i_skipWSOrEnd);
            }
        }
        if (!this._parsingContext.inObject()) {
            _updateLocation();
            return _nextTokenNotInObject(i_skipWSOrEnd);
        }
        _updateNameLocation();
        this._parsingContext.setCurrentName(_parseName(i_skipWSOrEnd));
        this._currToken = jsonToken2;
        int i_skipColon = _skipColon();
        _updateLocation();
        if (i_skipColon == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
            return this._currToken;
        }
        if (i_skipColon == 45) {
            jsonToken_parseNegNumber = _parseNegNumber();
        } else if (i_skipColon == 46) {
            jsonToken_parseNegNumber = _parseFloatThatStartsWithPeriod();
        } else if (i_skipColon == 91) {
            jsonToken_parseNegNumber = JsonToken.START_ARRAY;
        } else if (i_skipColon == 102) {
            _matchFalse();
            jsonToken_parseNegNumber = JsonToken.VALUE_FALSE;
        } else if (i_skipColon == 110) {
            _matchNull();
            jsonToken_parseNegNumber = JsonToken.VALUE_NULL;
        } else if (i_skipColon == 116) {
            _matchTrue();
            jsonToken_parseNegNumber = JsonToken.VALUE_TRUE;
        } else if (i_skipColon != 123) {
            switch (i_skipColon) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    jsonToken_parseNegNumber = _parsePosNumber(i_skipColon);
                    break;
                default:
                    jsonToken_parseNegNumber = _handleUnexpectedValue(i_skipColon);
                    break;
            }
        } else {
            jsonToken_parseNegNumber = JsonToken.START_OBJECT;
        }
        this._nextToken = jsonToken_parseNegNumber;
        return this._currToken;
    }

    protected final String parseEscapedName(int[] iArr, int i10, int i11, int i12, int i13) throws IOException {
        int[] iArr2 = _icLatin1;
        while (true) {
            if (iArr2[i12] != 0) {
                if (i12 == 34) {
                    break;
                }
                if (i12 != 92) {
                    _throwUnquotedSpace(i12, "name");
                } else {
                    i12 = _decodeEscaped();
                }
                if (i12 > 127) {
                    int i14 = 0;
                    if (i13 >= 4) {
                        if (i10 >= iArr.length) {
                            iArr = ParserBase.growArrayBy(iArr, iArr.length);
                            this._quadBuffer = iArr;
                        }
                        iArr[i10] = i11;
                        i10++;
                        i11 = 0;
                        i13 = 0;
                    }
                    if (i12 < 2048) {
                        i11 = (i11 << 8) | (i12 >> 6) | 192;
                        i13++;
                    } else {
                        int i15 = (i11 << 8) | (i12 >> 12) | Opcodes.SHL_INT_LIT8;
                        int i16 = i13 + 1;
                        if (i16 >= 4) {
                            if (i10 >= iArr.length) {
                                iArr = ParserBase.growArrayBy(iArr, iArr.length);
                                this._quadBuffer = iArr;
                            }
                            iArr[i10] = i15;
                            i10++;
                            i16 = 0;
                        } else {
                            i14 = i15;
                        }
                        i11 = (i14 << 8) | ((i12 >> 6) & 63) | 128;
                        i13 = i16 + 1;
                    }
                    i12 = (i12 & 63) | 128;
                }
            }
            if (i13 < 4) {
                i13++;
                i11 = (i11 << 8) | i12;
            } else {
                if (i10 >= iArr.length) {
                    iArr = ParserBase.growArrayBy(iArr, iArr.length);
                    this._quadBuffer = iArr;
                }
                iArr[i10] = i11;
                i11 = i12;
                i10++;
                i13 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
            }
            byte[] bArr = this._inputBuffer;
            int i17 = this._inputPtr;
            this._inputPtr = i17 + 1;
            i12 = bArr[i17] & 255;
        }
        if (i13 > 0) {
            if (i10 >= iArr.length) {
                iArr = ParserBase.growArrayBy(iArr, iArr.length);
                this._quadBuffer = iArr;
            }
            iArr[i10] = _padLastQuad(i11, i13);
            i10++;
        }
        String strFindName = this._symbols.findName(iArr, i10);
        return strFindName == null ? addName(iArr, i10, i13) : strFindName;
    }

    protected final String parseLongName(int i10, int i11, int i12) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = this._quad1;
        iArr[1] = i11;
        iArr[2] = i12;
        byte[] bArr = this._inputBuffer;
        int[] iArr2 = _icLatin1;
        int i13 = i10;
        int i14 = 3;
        while (true) {
            int i15 = this._inputPtr;
            if (i15 + 4 > this._inputEnd) {
                return parseEscapedName(this._quadBuffer, i14, 0, i13, 0);
            }
            int i16 = i15 + 1;
            this._inputPtr = i16;
            int i17 = bArr[i15] & 255;
            if (iArr2[i17] != 0) {
                return i17 == 34 ? findName(this._quadBuffer, i14, i13, 1) : parseEscapedName(this._quadBuffer, i14, i13, i17, 1);
            }
            int i18 = (i13 << 8) | i17;
            int i19 = i16 + 1;
            this._inputPtr = i19;
            int i20 = bArr[i16] & 255;
            if (iArr2[i20] != 0) {
                return i20 == 34 ? findName(this._quadBuffer, i14, i18, 2) : parseEscapedName(this._quadBuffer, i14, i18, i20, 2);
            }
            int i21 = (i18 << 8) | i20;
            int i22 = i19 + 1;
            this._inputPtr = i22;
            int i23 = bArr[i19] & 255;
            if (iArr2[i23] != 0) {
                return i23 == 34 ? findName(this._quadBuffer, i14, i21, 3) : parseEscapedName(this._quadBuffer, i14, i21, i23, 3);
            }
            int i24 = (i21 << 8) | i23;
            this._inputPtr = i22 + 1;
            int i25 = bArr[i22] & 255;
            if (iArr2[i25] != 0) {
                return i25 == 34 ? findName(this._quadBuffer, i14, i24, 4) : parseEscapedName(this._quadBuffer, i14, i24, i25, 4);
            }
            int[] iArr3 = this._quadBuffer;
            if (i14 >= iArr3.length) {
                this._quadBuffer = ParserBase.growArrayBy(iArr3, i14);
            }
            this._quadBuffer[i14] = i24;
            i13 = i25;
            i14++;
        }
    }

    protected final String parseMediumName(int i10) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i11 = this._inputPtr;
        int i12 = i11 + 1;
        this._inputPtr = i12;
        int i13 = bArr[i11] & 255;
        if (iArr[i13] != 0) {
            return i13 == 34 ? findName(this._quad1, i10, 1) : parseName(this._quad1, i10, i13, 1);
        }
        int i14 = (i10 << 8) | i13;
        int i15 = i12 + 1;
        this._inputPtr = i15;
        int i16 = bArr[i12] & 255;
        if (iArr[i16] != 0) {
            return i16 == 34 ? findName(this._quad1, i14, 2) : parseName(this._quad1, i14, i16, 2);
        }
        int i17 = (i14 << 8) | i16;
        int i18 = i15 + 1;
        this._inputPtr = i18;
        int i19 = bArr[i15] & 255;
        if (iArr[i19] != 0) {
            return i19 == 34 ? findName(this._quad1, i17, 3) : parseName(this._quad1, i17, i19, 3);
        }
        int i20 = (i17 << 8) | i19;
        this._inputPtr = i18 + 1;
        int i21 = bArr[i18] & 255;
        if (iArr[i21] != 0) {
            return i21 == 34 ? findName(this._quad1, i20, 4) : parseName(this._quad1, i20, i21, 4);
        }
        return parseMediumName2(i21, i20);
    }

    protected final String parseMediumName2(int i10, int i11) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i12 = this._inputPtr;
        int i13 = i12 + 1;
        this._inputPtr = i13;
        int i14 = bArr[i12] & 255;
        if (iArr[i14] != 0) {
            return i14 == 34 ? findName(this._quad1, i11, i10, 1) : parseName(this._quad1, i11, i10, i14, 1);
        }
        int i15 = (i10 << 8) | i14;
        int i16 = i13 + 1;
        this._inputPtr = i16;
        int i17 = bArr[i13] & 255;
        if (iArr[i17] != 0) {
            return i17 == 34 ? findName(this._quad1, i11, i15, 2) : parseName(this._quad1, i11, i15, i17, 2);
        }
        int i18 = (i15 << 8) | i17;
        int i19 = i16 + 1;
        this._inputPtr = i19;
        int i20 = bArr[i16] & 255;
        if (iArr[i20] != 0) {
            return i20 == 34 ? findName(this._quad1, i11, i18, 3) : parseName(this._quad1, i11, i18, i20, 3);
        }
        int i21 = (i18 << 8) | i20;
        this._inputPtr = i19 + 1;
        int i22 = bArr[i19] & 255;
        if (iArr[i22] != 0) {
            return i22 == 34 ? findName(this._quad1, i11, i21, 4) : parseName(this._quad1, i11, i21, i22, 4);
        }
        return parseLongName(i22, i11, i21);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        if (!this._tokenIncomplete || this._currToken != JsonToken.VALUE_STRING) {
            byte[] binaryValue = getBinaryValue(base64Variant);
            outputStream.write(binaryValue);
            return binaryValue.length;
        }
        byte[] bArrAllocBase64Buffer = this._ioContext.allocBase64Buffer();
        try {
            return _readBinary(base64Variant, outputStream, bArrAllocBase64Buffer);
        } finally {
            this._ioContext.releaseBase64Buffer(bArrAllocBase64Buffer);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int releaseBuffered(OutputStream outputStream) throws IOException {
        int i10 = this._inputEnd;
        int i11 = this._inputPtr;
        int i12 = i10 - i11;
        if (i12 < 1) {
            return 0;
        }
        this._inputPtr = i11 + i12;
        outputStream.write(this._inputBuffer, i11, i12);
        return i12;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }

    protected String slowParseName() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(": was expecting closing '\"' for name", JsonToken.FIELD_NAME);
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        int i11 = bArr[i10] & 255;
        return i11 == 34 ? "" : parseEscapedName(this._quadBuffer, 0, 0, i11, 0);
    }

    public UTF8StreamJsonParser(IOContext iOContext, int i10, InputStream inputStream, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, byte[] bArr, int i11, int i12, int i13, boolean z10) {
        super(iOContext, i10);
        this._quadBuffer = new int[16];
        this._inputStream = inputStream;
        this._objectCodec = objectCodec;
        this._symbols = byteQuadsCanonicalizer;
        this._inputBuffer = bArr;
        this._inputPtr = i11;
        this._inputEnd = i12;
        this._currInputRowStart = i11 - i13;
        this._currInputProcessed = (-i11) + i13;
        this._bufferRecyclable = z10;
    }

    private final String parseName(int i10, int i11, int i12, int i13) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = i10;
        return parseEscapedName(iArr, 1, i11, i12, i13);
    }

    protected void _reportInvalidOther(int i10, int i11) throws JsonParseException {
        this._inputPtr = i11;
        _reportInvalidOther(i10);
    }

    protected void _reportInvalidToken(String str) throws IOException {
        _reportInvalidToken(str, _validJsonTokenList());
    }

    private final String parseName(int i10, int i11, int i12, int i13, int i14) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = i10;
        iArr[1] = i11;
        return parseEscapedName(iArr, 2, i12, i13, i14);
    }

    protected void _reportInvalidToken(String str, String str2) throws IOException {
        StringBuilder sb2 = new StringBuilder(str);
        do {
            if (this._inputPtr < this._inputEnd || _loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i10 = this._inputPtr;
                this._inputPtr = i10 + 1;
                char c_decodeCharForError = (char) _decodeCharForError(bArr[i10]);
                if (Character.isJavaIdentifierPart(c_decodeCharForError)) {
                    sb2.append(c_decodeCharForError);
                }
            }
            _reportError("Unrecognized token '%s': was expecting %s", sb2, str2);
        } while (sb2.length() < 256);
        sb2.append("...");
        _reportError("Unrecognized token '%s': was expecting %s", sb2, str2);
    }

    private final String findName(int i10, int i11, int i12) throws JsonParseException {
        int i_padLastQuad = _padLastQuad(i11, i12);
        String strFindName = this._symbols.findName(i10, i_padLastQuad);
        if (strFindName != null) {
            return strFindName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i10;
        iArr[1] = i_padLastQuad;
        return addName(iArr, 2, i12);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int getText(Writer writer) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.contentsToWriter(writer);
        }
        if (jsonToken == JsonToken.FIELD_NAME) {
            String currentName = this._parsingContext.getCurrentName();
            writer.write(currentName);
            return currentName.length();
        }
        if (jsonToken == null) {
            return 0;
        }
        if (jsonToken.isNumeric()) {
            return this._textBuffer.contentsToWriter(writer);
        }
        char[] cArrAsCharArray = jsonToken.asCharArray();
        writer.write(cArrAsCharArray);
        return cArrAsCharArray.length;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt(int i10) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT && jsonToken != JsonToken.VALUE_NUMBER_FLOAT) {
            return super.getValueAsInt(i10);
        }
        int i11 = this._numTypesValid;
        if ((i11 & 1) == 0) {
            if (i11 == 0) {
                return _parseIntValue();
            }
            if ((i11 & 1) == 0) {
                convertNumberToInt();
            }
        }
        return this._numberInt;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getValueAsString(String str) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                return _finishAndReturnString();
            }
            return this._textBuffer.contentsAsString();
        }
        if (jsonToken == JsonToken.FIELD_NAME) {
            return getCurrentName();
        }
        return super.getValueAsString(str);
    }

    private final String findName(int i10, int i11, int i12, int i13) throws JsonParseException {
        int i_padLastQuad = _padLastQuad(i12, i13);
        String strFindName = this._symbols.findName(i10, i11, i_padLastQuad);
        if (strFindName != null) {
            return strFindName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i10;
        iArr[1] = i11;
        iArr[2] = _padLastQuad(i_padLastQuad, i13);
        return addName(iArr, 3, i13);
    }

    private final String findName(int[] iArr, int i10, int i11, int i12) throws JsonParseException {
        if (i10 >= iArr.length) {
            iArr = ParserBase.growArrayBy(iArr, iArr.length);
            this._quadBuffer = iArr;
        }
        int i13 = i10 + 1;
        iArr[i10] = _padLastQuad(i11, i12);
        String strFindName = this._symbols.findName(iArr, i13);
        return strFindName == null ? addName(iArr, i13, i12) : strFindName;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String nextFieldName() throws IOException {
        JsonToken jsonToken_parseNegNumber;
        this._numTypesValid = 0;
        JsonToken jsonToken = this._currToken;
        JsonToken jsonToken2 = JsonToken.FIELD_NAME;
        if (jsonToken == jsonToken2) {
            _nextAfterName();
            return null;
        }
        if (this._tokenIncomplete) {
            _skipString();
        }
        int i_skipWSOrEnd = _skipWSOrEnd();
        if (i_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return null;
        }
        this._binaryValue = null;
        if (i_skipWSOrEnd == 93) {
            _closeArrayScope();
            this._currToken = JsonToken.END_ARRAY;
            return null;
        }
        if (i_skipWSOrEnd == 125) {
            _closeObjectScope();
            this._currToken = JsonToken.END_OBJECT;
            return null;
        }
        if (this._parsingContext.expectComma()) {
            if (i_skipWSOrEnd != 44) {
                _reportUnexpectedChar(i_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
            }
            i_skipWSOrEnd = _skipWS();
            if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0 && (i_skipWSOrEnd == 93 || i_skipWSOrEnd == 125)) {
                _closeScope(i_skipWSOrEnd);
                return null;
            }
        }
        if (!this._parsingContext.inObject()) {
            _updateLocation();
            _nextTokenNotInObject(i_skipWSOrEnd);
            return null;
        }
        _updateNameLocation();
        String str_parseName = _parseName(i_skipWSOrEnd);
        this._parsingContext.setCurrentName(str_parseName);
        this._currToken = jsonToken2;
        int i_skipColon = _skipColon();
        _updateLocation();
        if (i_skipColon == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
            return str_parseName;
        }
        if (i_skipColon == 45) {
            jsonToken_parseNegNumber = _parseNegNumber();
        } else if (i_skipColon == 46) {
            jsonToken_parseNegNumber = _parseFloatThatStartsWithPeriod();
        } else if (i_skipColon == 91) {
            jsonToken_parseNegNumber = JsonToken.START_ARRAY;
        } else if (i_skipColon == 102) {
            _matchFalse();
            jsonToken_parseNegNumber = JsonToken.VALUE_FALSE;
        } else if (i_skipColon == 110) {
            _matchNull();
            jsonToken_parseNegNumber = JsonToken.VALUE_NULL;
        } else if (i_skipColon == 116) {
            _matchTrue();
            jsonToken_parseNegNumber = JsonToken.VALUE_TRUE;
        } else if (i_skipColon != 123) {
            switch (i_skipColon) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    jsonToken_parseNegNumber = _parsePosNumber(i_skipColon);
                    break;
                default:
                    jsonToken_parseNegNumber = _handleUnexpectedValue(i_skipColon);
                    break;
            }
        } else {
            jsonToken_parseNegNumber = JsonToken.START_OBJECT;
        }
        this._nextToken = jsonToken_parseNegNumber;
        return str_parseName;
    }
}
