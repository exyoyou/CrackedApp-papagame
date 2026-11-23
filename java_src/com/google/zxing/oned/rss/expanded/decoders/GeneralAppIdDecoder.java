package com.google.zxing.oned.rss.expanded.decoders;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
import com.haima.hmcp.Constants;
import external.org.apache.commons.lang3.d;
import io.netty.util.internal.StringUtil;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes5.dex */
final class GeneralAppIdDecoder {
    private final BitArray information;
    private final CurrentParsingState current = new CurrentParsingState();
    private final StringBuilder buffer = new StringBuilder();

    GeneralAppIdDecoder(BitArray bitArray) {
        this.information = bitArray;
    }

    private DecodedChar decodeAlphanumeric(int i10) {
        char c10;
        int iExtractNumericValueFromBitArray = extractNumericValueFromBitArray(i10, 5);
        if (iExtractNumericValueFromBitArray == 15) {
            return new DecodedChar(i10 + 5, '$');
        }
        if (iExtractNumericValueFromBitArray >= 5 && iExtractNumericValueFromBitArray < 15) {
            return new DecodedChar(i10 + 5, (char) ((iExtractNumericValueFromBitArray + 48) - 5));
        }
        int iExtractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i10, 6);
        if (iExtractNumericValueFromBitArray2 >= 32 && iExtractNumericValueFromBitArray2 < 58) {
            return new DecodedChar(i10 + 6, (char) (iExtractNumericValueFromBitArray2 + 33));
        }
        switch (iExtractNumericValueFromBitArray2) {
            case 58:
                c10 = '*';
                break;
            case 59:
                c10 = StringUtil.COMMA;
                break;
            case 60:
                c10 = '-';
                break;
            case 61:
                c10 = d.f90941a;
                break;
            case 62:
                c10 = '/';
                break;
            default:
                throw new IllegalStateException("Decoding invalid alphanumeric value: " + iExtractNumericValueFromBitArray2);
        }
        return new DecodedChar(i10 + 6, c10);
    }

    private DecodedChar decodeIsoIec646(int i10) {
        char c10;
        int iExtractNumericValueFromBitArray = extractNumericValueFromBitArray(i10, 5);
        if (iExtractNumericValueFromBitArray == 15) {
            return new DecodedChar(i10 + 5, '$');
        }
        if (iExtractNumericValueFromBitArray >= 5 && iExtractNumericValueFromBitArray < 15) {
            return new DecodedChar(i10 + 5, (char) ((iExtractNumericValueFromBitArray + 48) - 5));
        }
        int iExtractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i10, 7);
        if (iExtractNumericValueFromBitArray2 >= 64 && iExtractNumericValueFromBitArray2 < 90) {
            return new DecodedChar(i10 + 7, (char) (iExtractNumericValueFromBitArray2 + 1));
        }
        if (iExtractNumericValueFromBitArray2 >= 90 && iExtractNumericValueFromBitArray2 < 116) {
            return new DecodedChar(i10 + 7, (char) (iExtractNumericValueFromBitArray2 + 7));
        }
        int iExtractNumericValueFromBitArray3 = extractNumericValueFromBitArray(i10, 8);
        switch (iExtractNumericValueFromBitArray3) {
            case 232:
                c10 = '!';
                break;
            case 233:
                c10 = '\"';
                break;
            case 234:
                c10 = '%';
                break;
            case Constants.UPDATE_INSTANCE_TIME /* 235 */:
                c10 = Typography.amp;
                break;
            case Constants.START_STREAMING_REQUEST /* 236 */:
                c10 = '\'';
                break;
            case Constants.SET_STREAMING_MODE_REQUEST /* 237 */:
                c10 = '(';
                break;
            case 238:
                c10 = ')';
                break;
            case 239:
                c10 = '*';
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA /* 240 */:
                c10 = '+';
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_INDEX_CACHE /* 241 */:
                c10 = StringUtil.COMMA;
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE /* 242 */:
                c10 = '-';
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_SIZE /* 243 */:
                c10 = d.f90941a;
                break;
            case 244:
                c10 = '/';
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR /* 245 */:
                c10 = ':';
                break;
            case 246:
                c10 = ';';
                break;
            case 247:
                c10 = Typography.less;
                break;
            case 248:
                c10 = '=';
                break;
            case 249:
                c10 = Typography.greater;
                break;
            case 250:
                c10 = '?';
                break;
            case 251:
                c10 = '_';
                break;
            case 252:
                c10 = ' ';
                break;
            default:
                throw new IllegalArgumentException("Decoding invalid ISO/IEC 646 value: " + iExtractNumericValueFromBitArray3);
        }
        return new DecodedChar(i10 + 8, c10);
    }

    private DecodedNumeric decodeNumeric(int i10) {
        int i11 = i10 + 7;
        if (i11 > this.information.getSize()) {
            int iExtractNumericValueFromBitArray = extractNumericValueFromBitArray(i10, 4);
            return iExtractNumericValueFromBitArray == 0 ? new DecodedNumeric(this.information.getSize(), 10, 10) : new DecodedNumeric(this.information.getSize(), iExtractNumericValueFromBitArray - 1, 10);
        }
        int iExtractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i10, 7) - 8;
        return new DecodedNumeric(i11, iExtractNumericValueFromBitArray2 / 11, iExtractNumericValueFromBitArray2 % 11);
    }

    private boolean isAlphaOr646ToNumericLatch(int i10) {
        int i11 = i10 + 3;
        if (i11 > this.information.getSize()) {
            return false;
        }
        while (i10 < i11) {
            if (this.information.get(i10)) {
                return false;
            }
            i10++;
        }
        return true;
    }

    private boolean isAlphaTo646ToAlphaLatch(int i10) {
        int i11;
        if (i10 + 1 > this.information.getSize()) {
            return false;
        }
        for (int i12 = 0; i12 < 5 && (i11 = i12 + i10) < this.information.getSize(); i12++) {
            if (i12 == 2) {
                if (!this.information.get(i10 + 2)) {
                    return false;
                }
            } else if (this.information.get(i11)) {
                return false;
            }
        }
        return true;
    }

    private boolean isNumericToAlphaNumericLatch(int i10) {
        int i11;
        if (i10 + 1 > this.information.getSize()) {
            return false;
        }
        for (int i12 = 0; i12 < 4 && (i11 = i12 + i10) < this.information.getSize(); i12++) {
            if (this.information.get(i11)) {
                return false;
            }
        }
        return true;
    }

    private boolean isStillAlpha(int i10) {
        int iExtractNumericValueFromBitArray;
        if (i10 + 5 > this.information.getSize()) {
            return false;
        }
        int iExtractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i10, 5);
        if (iExtractNumericValueFromBitArray2 < 5 || iExtractNumericValueFromBitArray2 >= 16) {
            return i10 + 6 <= this.information.getSize() && (iExtractNumericValueFromBitArray = extractNumericValueFromBitArray(i10, 6)) >= 16 && iExtractNumericValueFromBitArray < 63;
        }
        return true;
    }

    private boolean isStillIsoIec646(int i10) {
        int iExtractNumericValueFromBitArray;
        if (i10 + 5 > this.information.getSize()) {
            return false;
        }
        int iExtractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i10, 5);
        if (iExtractNumericValueFromBitArray2 >= 5 && iExtractNumericValueFromBitArray2 < 16) {
            return true;
        }
        if (i10 + 7 > this.information.getSize()) {
            return false;
        }
        int iExtractNumericValueFromBitArray3 = extractNumericValueFromBitArray(i10, 7);
        if (iExtractNumericValueFromBitArray3 < 64 || iExtractNumericValueFromBitArray3 >= 116) {
            return i10 + 8 <= this.information.getSize() && (iExtractNumericValueFromBitArray = extractNumericValueFromBitArray(i10, 8)) >= 232 && iExtractNumericValueFromBitArray < 253;
        }
        return true;
    }

    private boolean isStillNumeric(int i10) {
        if (i10 + 7 > this.information.getSize()) {
            return i10 + 4 <= this.information.getSize();
        }
        int i11 = i10;
        while (true) {
            int i12 = i10 + 3;
            if (i11 >= i12) {
                return this.information.get(i12);
            }
            if (this.information.get(i11)) {
                return true;
            }
            i11++;
        }
    }

    private BlockParsedResult parseAlphaBlock() {
        while (isStillAlpha(this.current.getPosition())) {
            DecodedChar decodedCharDecodeAlphanumeric = decodeAlphanumeric(this.current.getPosition());
            this.current.setPosition(decodedCharDecodeAlphanumeric.getNewPosition());
            if (decodedCharDecodeAlphanumeric.isFNC1()) {
                return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
            }
            this.buffer.append(decodedCharDecodeAlphanumeric.getValue());
        }
        if (isAlphaOr646ToNumericLatch(this.current.getPosition())) {
            this.current.incrementPosition(3);
            this.current.setNumeric();
        } else if (isAlphaTo646ToAlphaLatch(this.current.getPosition())) {
            if (this.current.getPosition() + 5 < this.information.getSize()) {
                this.current.incrementPosition(5);
            } else {
                this.current.setPosition(this.information.getSize());
            }
            this.current.setIsoIec646();
        }
        return new BlockParsedResult(false);
    }

    private DecodedInformation parseBlocks() {
        BlockParsedResult numericBlock;
        boolean zIsFinished;
        do {
            int position = this.current.getPosition();
            if (this.current.isAlpha()) {
                numericBlock = parseAlphaBlock();
                zIsFinished = numericBlock.isFinished();
            } else if (this.current.isIsoIec646()) {
                numericBlock = parseIsoIec646Block();
                zIsFinished = numericBlock.isFinished();
            } else {
                numericBlock = parseNumericBlock();
                zIsFinished = numericBlock.isFinished();
            }
            if (!(position != this.current.getPosition()) && !zIsFinished) {
                break;
            }
        } while (!zIsFinished);
        return numericBlock.getDecodedInformation();
    }

    private BlockParsedResult parseIsoIec646Block() {
        while (isStillIsoIec646(this.current.getPosition())) {
            DecodedChar decodedCharDecodeIsoIec646 = decodeIsoIec646(this.current.getPosition());
            this.current.setPosition(decodedCharDecodeIsoIec646.getNewPosition());
            if (decodedCharDecodeIsoIec646.isFNC1()) {
                return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
            }
            this.buffer.append(decodedCharDecodeIsoIec646.getValue());
        }
        if (isAlphaOr646ToNumericLatch(this.current.getPosition())) {
            this.current.incrementPosition(3);
            this.current.setNumeric();
        } else if (isAlphaTo646ToAlphaLatch(this.current.getPosition())) {
            if (this.current.getPosition() + 5 < this.information.getSize()) {
                this.current.incrementPosition(5);
            } else {
                this.current.setPosition(this.information.getSize());
            }
            this.current.setAlpha();
        }
        return new BlockParsedResult(false);
    }

    private BlockParsedResult parseNumericBlock() {
        while (isStillNumeric(this.current.getPosition())) {
            DecodedNumeric decodedNumericDecodeNumeric = decodeNumeric(this.current.getPosition());
            this.current.setPosition(decodedNumericDecodeNumeric.getNewPosition());
            if (decodedNumericDecodeNumeric.isFirstDigitFNC1()) {
                return new BlockParsedResult(decodedNumericDecodeNumeric.isSecondDigitFNC1() ? new DecodedInformation(this.current.getPosition(), this.buffer.toString()) : new DecodedInformation(this.current.getPosition(), this.buffer.toString(), decodedNumericDecodeNumeric.getSecondDigit()), true);
            }
            this.buffer.append(decodedNumericDecodeNumeric.getFirstDigit());
            if (decodedNumericDecodeNumeric.isSecondDigitFNC1()) {
                return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
            }
            this.buffer.append(decodedNumericDecodeNumeric.getSecondDigit());
        }
        if (isNumericToAlphaNumericLatch(this.current.getPosition())) {
            this.current.setAlpha();
            this.current.incrementPosition(4);
        }
        return new BlockParsedResult(false);
    }

    String decodeAllCodes(StringBuilder sb2, int i10) throws NotFoundException {
        String str = null;
        while (true) {
            DecodedInformation decodedInformationDecodeGeneralPurposeField = decodeGeneralPurposeField(i10, str);
            String fieldsInGeneralPurpose = FieldParser.parseFieldsInGeneralPurpose(decodedInformationDecodeGeneralPurposeField.getNewString());
            if (fieldsInGeneralPurpose != null) {
                sb2.append(fieldsInGeneralPurpose);
            }
            String strValueOf = decodedInformationDecodeGeneralPurposeField.isRemaining() ? String.valueOf(decodedInformationDecodeGeneralPurposeField.getRemainingValue()) : null;
            if (i10 == decodedInformationDecodeGeneralPurposeField.getNewPosition()) {
                return sb2.toString();
            }
            i10 = decodedInformationDecodeGeneralPurposeField.getNewPosition();
            str = strValueOf;
        }
    }

    DecodedInformation decodeGeneralPurposeField(int i10, String str) {
        this.buffer.setLength(0);
        if (str != null) {
            this.buffer.append(str);
        }
        this.current.setPosition(i10);
        DecodedInformation blocks = parseBlocks();
        return (blocks == null || !blocks.isRemaining()) ? new DecodedInformation(this.current.getPosition(), this.buffer.toString()) : new DecodedInformation(this.current.getPosition(), this.buffer.toString(), blocks.getRemainingValue());
    }

    int extractNumericValueFromBitArray(int i10, int i11) {
        return extractNumericValueFromBitArray(this.information, i10, i11);
    }

    static int extractNumericValueFromBitArray(BitArray bitArray, int i10, int i11) {
        if (i11 > 32) {
            throw new IllegalArgumentException("extractNumberValueFromBitArray can't handle more than 32 bits");
        }
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            if (bitArray.get(i10 + i13)) {
                i12 |= 1 << ((i11 - i13) - 1);
            }
        }
        return i12;
    }
}
