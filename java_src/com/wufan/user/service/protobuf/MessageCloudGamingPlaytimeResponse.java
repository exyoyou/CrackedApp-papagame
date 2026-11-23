package com.wufan.user.service.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.RepeatedFieldBuilderV3;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import com.wufan.user.service.protobuf.enumeration.PlaytimeType;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class MessageCloudGamingPlaytimeResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f87993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f87995c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87996d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Descriptors.Descriptor f87997e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87998f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Descriptors.Descriptor f87999g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88000h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Descriptors.Descriptor f88001i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88002j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Descriptors.Descriptor f88003k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88004l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Descriptors.Descriptor f88005m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88006n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Descriptors.Descriptor f88007o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88008p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Descriptors.Descriptor f88009q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88010r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88011s = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n*proto/cloud_gaming_playtime_response.proto\u001a#proto/enumeration/enumeration.proto\"\u008a\u0001\n+MessageCloudGamingPlaytimeLogResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u001a\n\u0004data\u0018\u0002 \u0003(\u000b2\f.PlaytimeLog\u0012\u001e\n\u0004info\u0018\u0003 \u0001(\u000b2\u0010.PlaytimeSummary\u0012\u0010\n\berrorMsg\u0018\u0004 \u0001(\t\"r\n/MessageCloudGamingPlaytimeSummaryResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0010\n\berrorMsg\u0018\u0002 \u0001(\t\u0012\u001e\n\u0004into\u0018\u0003 \u0001(\u000b2\u0010.PlaytimeSummary\"t\n.MessageCloudGamingPlaytimeSignInResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0010\n\berrorMsg\u0018\u0002 \u0001(\t\u0012!\n\u0004into\u0018\u0003 \u0001(\u000b2\u0013.PlaytimeSignInInfo\"v\n/MessageCloudGamingPlaytimeVipDaysResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0010\n\berrorMsg\u0018\u0002 \u0001(\t\u0012\"\n\u0004into\u0018\u0003 \u0001(\u000b2\u0014.PlaytimeVipDaysInfo\"z\n3MessageCloudGamingPlaytimeVipBirthdayResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0010\n\berrorMsg\u0018\u0002 \u0001(\t\u0012\"\n\u0004into\u0018\u0003 \u0001(\u000b2\u0014.PlaytimeVipDaysInfo\"(\n\u0013PlaytimeVipDaysInfo\u0012\u0011\n\ttotalTime\u0018\u0001 \u0001(\t\"J\n\u0012PlaytimeSignInInfo\u0012\u0010\n\bfreeTime\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007vipTime\u0018\u0002 \u0001(\t\u0012\u0011\n\ttotalTime\u0018\u0003 \u0001(\t\"\u008d\u0001\n\u000fPlaytimeSummary\u0012\u0011\n\ttotalTime\u0018\u0001 \u0001(\t\u0012\u0010\n\bfreeTime\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007vipTime\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007diamond\u0018\u0004 \u0001(\t\u0012\f\n\u0004coin\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bdiamondTime\u0018\u0006 \u0001(\t\u0012\u0010\n\bcoinTime\u0018\u0007 \u0001(\t\"r\n\u000bPlaytimeLog\u0012/\n\fplaytimeType\u0018\u0001 \u0001(\u000e2\u0019.enumeration.PlaytimeType\u0012\r\n\u0005title\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007addTime\u0018\u0003 \u0001(\t\u0012\u0012\n\nchangeTime\u0018\u0004 \u0001(\tBE\n\u001fcom.wufan.user.service.protobufB\"MessageCloudGamingPlaytimeResponseb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.wufan.user.service.protobuf.enumeration.a.b()});

    public static final class MessageCloudGamingPlaytimeLogResponseResult extends GeneratedMessageV3 implements b {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int ERRORMSG_FIELD_NUMBER = 4;
        public static final int ERROR_FIELD_NUMBER = 1;
        public static final int INFO_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private List<PlaytimeLog> data_;
        private volatile Object errorMsg_;
        private int error_;
        private PlaytimeSummary info_;
        private byte memoizedIsInitialized;
        private static final MessageCloudGamingPlaytimeLogResponseResult DEFAULT_INSTANCE = new MessageCloudGamingPlaytimeLogResponseResult();
        private static final Parser<MessageCloudGamingPlaytimeLogResponseResult> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingPlaytimeLogResponseResult> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPlaytimeLogResponseResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPlaytimeLogResponseResult(input, extensionRegistry);
            }
        }

        public static MessageCloudGamingPlaytimeLogResponseResult getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPlaytimeResponse.f87993a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPlaytimeLogResponseResult parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeLogResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeLogResponseResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPlaytimeLogResponseResult> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPlaytimeLogResponseResult)) {
                return super.equals(obj);
            }
            MessageCloudGamingPlaytimeLogResponseResult messageCloudGamingPlaytimeLogResponseResult = (MessageCloudGamingPlaytimeLogResponseResult) obj;
            if (getError() == messageCloudGamingPlaytimeLogResponseResult.getError() && getDataList().equals(messageCloudGamingPlaytimeLogResponseResult.getDataList()) && hasInfo() == messageCloudGamingPlaytimeLogResponseResult.hasInfo()) {
                return (!hasInfo() || getInfo().equals(messageCloudGamingPlaytimeLogResponseResult.getInfo())) && getErrorMsg().equals(messageCloudGamingPlaytimeLogResponseResult.getErrorMsg()) && this.unknownFields.equals(messageCloudGamingPlaytimeLogResponseResult.unknownFields);
            }
            return false;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
        public PlaytimeLog getData(int index) {
            return this.data_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
        public int getDataCount() {
            return this.data_.size();
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
        public List<PlaytimeLog> getDataList() {
            return this.data_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
        public g getDataOrBuilder(int index) {
            return this.data_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
        public List<? extends g> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
        public PlaytimeSummary getInfo() {
            PlaytimeSummary playtimeSummary = this.info_;
            return playtimeSummary == null ? PlaytimeSummary.getDefaultInstance() : playtimeSummary;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
        public i getInfoOrBuilder() {
            return getInfo();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPlaytimeLogResponseResult> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = this.error_;
            int iComputeInt32Size = i11 != 0 ? CodedOutputStream.computeInt32Size(1, i11) + 0 : 0;
            for (int i12 = 0; i12 < this.data_.size(); i12++) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(2, this.data_.get(i12));
            }
            if (this.info_ != null) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(3, getInfo());
            }
            if (!getErrorMsgBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(4, this.errorMsg_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
        public boolean hasInfo() {
            return this.info_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError();
            if (getDataCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDataList().hashCode();
            }
            if (hasInfo()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getInfo().hashCode();
            }
            int iHashCode2 = (((((iHashCode * 37) + 4) * 53) + getErrorMsg().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPlaytimeResponse.f87994b.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeLogResponseResult.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unused) {
            return new MessageCloudGamingPlaytimeLogResponseResult();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            int i10 = this.error_;
            if (i10 != 0) {
                output.writeInt32(1, i10);
            }
            for (int i11 = 0; i11 < this.data_.size(); i11++) {
                output.writeMessage(2, this.data_.get(i11));
            }
            if (this.info_ != null) {
                output.writeMessage(3, getInfo());
            }
            if (!getErrorMsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.errorMsg_);
            }
            this.unknownFields.writeTo(output);
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private int bitField0_;
            private RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> dataBuilder_;
            private List<PlaytimeLog> data_;
            private Object errorMsg_;
            private int error_;
            private SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> infoBuilder_;
            private PlaytimeSummary info_;

            private void ensureDataIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.data_ = new ArrayList(this.data_);
                    this.bitField0_ |= 1;
                }
            }

            private RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new RepeatedFieldBuilderV3<>(this.data_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPlaytimeResponse.f87993a;
            }

            private SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> getInfoFieldBuilder() {
                if (this.infoBuilder_ == null) {
                    this.infoBuilder_ = new SingleFieldBuilderV3<>(getInfo(), getParentForChildren(), isClean());
                    this.info_ = null;
                }
                return this.infoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                }
            }

            public b addAllData(Iterable<? extends PlaytimeLog> values) {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.data_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(values);
                }
                return this;
            }

            public b addData(PlaytimeLog value) {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensureDataIsMutable();
                    this.data_.add(value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(value);
                }
                return this;
            }

            public PlaytimeLog.b addDataBuilder() {
                return (PlaytimeLog.b) getDataFieldBuilder().addBuilder(PlaytimeLog.getDefaultInstance());
            }

            public b clearData() {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.data_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public b clearError() {
                this.error_ = 0;
                onChanged();
                return this;
            }

            public b clearErrorMsg() {
                this.errorMsg_ = MessageCloudGamingPlaytimeLogResponseResult.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            public b clearInfo() {
                if (this.infoBuilder_ == null) {
                    this.info_ = null;
                    onChanged();
                } else {
                    this.info_ = null;
                    this.infoBuilder_ = null;
                }
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
            public PlaytimeLog getData(int index) {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.get(index) : (PlaytimeLog) repeatedFieldBuilderV3.getMessage(index);
            }

            public PlaytimeLog.b getDataBuilder(int index) {
                return (PlaytimeLog.b) getDataFieldBuilder().getBuilder(index);
            }

            public List<PlaytimeLog.b> getDataBuilderList() {
                return getDataFieldBuilder().getBuilderList();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
            public int getDataCount() {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
            public List<PlaytimeLog> getDataList() {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.data_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
            public g getDataOrBuilder(int index) {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.get(index) : (g) repeatedFieldBuilderV3.getMessageOrBuilder(index);
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
            public List<? extends g> getDataOrBuilderList() {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.data_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPlaytimeResponse.f87993a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
            public PlaytimeSummary getInfo() {
                SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> singleFieldBuilderV3 = this.infoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (PlaytimeSummary) singleFieldBuilderV3.getMessage();
                }
                PlaytimeSummary playtimeSummary = this.info_;
                return playtimeSummary == null ? PlaytimeSummary.getDefaultInstance() : playtimeSummary;
            }

            public PlaytimeSummary.b getInfoBuilder() {
                onChanged();
                return (PlaytimeSummary.b) getInfoFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
            public i getInfoOrBuilder() {
                SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> singleFieldBuilderV3 = this.infoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (i) singleFieldBuilderV3.getMessageOrBuilder();
                }
                PlaytimeSummary playtimeSummary = this.info_;
                return playtimeSummary == null ? PlaytimeSummary.getDefaultInstance() : playtimeSummary;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.b
            public boolean hasInfo() {
                return (this.infoBuilder_ == null && this.info_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPlaytimeResponse.f87994b.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeLogResponseResult.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b mergeInfo(PlaytimeSummary value) {
                SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> singleFieldBuilderV3 = this.infoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    PlaytimeSummary playtimeSummary = this.info_;
                    if (playtimeSummary != null) {
                        this.info_ = PlaytimeSummary.newBuilder(playtimeSummary).mergeFrom(value).buildPartial();
                    } else {
                        this.info_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b removeData(int index) {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.remove(index);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(index);
                }
                return this;
            }

            public b setData(int index, PlaytimeLog value) {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensureDataIsMutable();
                    this.data_.set(index, value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, value);
                }
                return this;
            }

            public b setError(int value) {
                this.error_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsg(String value) {
                value.getClass();
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsgBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            public b setInfo(PlaytimeSummary value) {
                SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> singleFieldBuilderV3 = this.infoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.getClass();
                    this.info_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            private b() {
                this.data_ = Collections.emptyList();
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeLogResponseResult build() {
                MessageCloudGamingPlaytimeLogResponseResult messageCloudGamingPlaytimeLogResponseResultBuildPartial = buildPartial();
                if (messageCloudGamingPlaytimeLogResponseResultBuildPartial.isInitialized()) {
                    return messageCloudGamingPlaytimeLogResponseResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPlaytimeLogResponseResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeLogResponseResult buildPartial() {
                MessageCloudGamingPlaytimeLogResponseResult messageCloudGamingPlaytimeLogResponseResult = new MessageCloudGamingPlaytimeLogResponseResult(this);
                messageCloudGamingPlaytimeLogResponseResult.error_ = this.error_;
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    messageCloudGamingPlaytimeLogResponseResult.data_ = repeatedFieldBuilderV3.build();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -2;
                    }
                    messageCloudGamingPlaytimeLogResponseResult.data_ = this.data_;
                }
                SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> singleFieldBuilderV3 = this.infoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    messageCloudGamingPlaytimeLogResponseResult.info_ = this.info_;
                } else {
                    messageCloudGamingPlaytimeLogResponseResult.info_ = (PlaytimeSummary) singleFieldBuilderV3.build();
                }
                messageCloudGamingPlaytimeLogResponseResult.errorMsg_ = this.errorMsg_;
                onBuilt();
                return messageCloudGamingPlaytimeLogResponseResult;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPlaytimeLogResponseResult getDefaultInstanceForType() {
                return MessageCloudGamingPlaytimeLogResponseResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (b) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final b setUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.setUnknownFields(unknownFields);
            }

            public PlaytimeLog.b addDataBuilder(int index) {
                return (PlaytimeLog.b) getDataFieldBuilder().addBuilder(index, PlaytimeLog.getDefaultInstance());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b clearOneof(Descriptors.OneofDescriptor oneof) {
                return (b) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final b mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.mergeUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b clear() {
                super.clear();
                this.error_ = 0;
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.data_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                if (this.infoBuilder_ == null) {
                    this.info_ = null;
                } else {
                    this.info_ = null;
                    this.infoBuilder_ = null;
                }
                this.errorMsg_ = "";
                return this;
            }

            public b setInfo(PlaytimeSummary.b builderForValue) {
                SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> singleFieldBuilderV3 = this.infoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.info_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.data_ = Collections.emptyList();
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            public b addData(int index, PlaytimeLog value) {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensureDataIsMutable();
                    this.data_.add(index, value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(index, value);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingPlaytimeLogResponseResult) {
                    return mergeFrom((MessageCloudGamingPlaytimeLogResponseResult) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b setData(int index, PlaytimeLog.b builderForValue) {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.set(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
                }
                return this;
            }

            public b mergeFrom(MessageCloudGamingPlaytimeLogResponseResult other) {
                if (other == MessageCloudGamingPlaytimeLogResponseResult.getDefaultInstance()) {
                    return this;
                }
                if (other.getError() != 0) {
                    setError(other.getError());
                }
                if (this.dataBuilder_ == null) {
                    if (!other.data_.isEmpty()) {
                        if (this.data_.isEmpty()) {
                            this.data_ = other.data_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureDataIsMutable();
                            this.data_.addAll(other.data_);
                        }
                        onChanged();
                    }
                } else if (!other.data_.isEmpty()) {
                    if (!this.dataBuilder_.isEmpty()) {
                        this.dataBuilder_.addAllMessages(other.data_);
                    } else {
                        this.dataBuilder_.dispose();
                        this.dataBuilder_ = null;
                        this.data_ = other.data_;
                        this.bitField0_ &= -2;
                        this.dataBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                    }
                }
                if (other.hasInfo()) {
                    mergeInfo(other.getInfo());
                }
                if (!other.getErrorMsg().isEmpty()) {
                    this.errorMsg_ = other.errorMsg_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            public b addData(PlaytimeLog.b builderForValue) {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.add(builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builderForValue.build());
                }
                return this;
            }

            public b addData(int index, PlaytimeLog.b builderForValue) {
                RepeatedFieldBuilderV3<PlaytimeLog, PlaytimeLog.b, g> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.add(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
                }
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingPlaytimeLogResponseResult messageCloudGamingPlaytimeLogResponseResult = null;
                try {
                    try {
                        MessageCloudGamingPlaytimeLogResponseResult messageCloudGamingPlaytimeLogResponseResult2 = (MessageCloudGamingPlaytimeLogResponseResult) MessageCloudGamingPlaytimeLogResponseResult.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPlaytimeLogResponseResult2 != null) {
                            mergeFrom(messageCloudGamingPlaytimeLogResponseResult2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPlaytimeLogResponseResult messageCloudGamingPlaytimeLogResponseResult3 = (MessageCloudGamingPlaytimeLogResponseResult) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPlaytimeLogResponseResult = messageCloudGamingPlaytimeLogResponseResult3;
                            if (messageCloudGamingPlaytimeLogResponseResult != null) {
                                mergeFrom(messageCloudGamingPlaytimeLogResponseResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPlaytimeLogResponseResult != null) {
                        mergeFrom(messageCloudGamingPlaytimeLogResponseResult);
                    }
                    throw th;
                }
            }
        }

        public static b newBuilder(MessageCloudGamingPlaytimeLogResponseResult prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPlaytimeLogResponseResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingPlaytimeLogResponseResult(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPlaytimeLogResponseResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeLogResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeLogResponseResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPlaytimeLogResponseResult getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().mergeFrom(this);
        }

        public static MessageCloudGamingPlaytimeLogResponseResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPlaytimeLogResponseResult() {
            this.memoizedIsInitialized = (byte) -1;
            this.data_ = Collections.emptyList();
            this.errorMsg_ = "";
        }

        public static MessageCloudGamingPlaytimeLogResponseResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent);
        }

        public static MessageCloudGamingPlaytimeLogResponseResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeLogResponseResult parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeLogResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingPlaytimeLogResponseResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.error_ = input.readInt32();
                            } else if (tag == 18) {
                                if (!(z11 & true)) {
                                    this.data_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.data_.add((PlaytimeLog) input.readMessage(PlaytimeLog.parser(), extensionRegistry));
                            } else if (tag == 26) {
                                PlaytimeSummary playtimeSummary = this.info_;
                                PlaytimeSummary.b builder = playtimeSummary != null ? playtimeSummary.toBuilder() : null;
                                PlaytimeSummary playtimeSummary2 = (PlaytimeSummary) input.readMessage(PlaytimeSummary.parser(), extensionRegistry);
                                this.info_ = playtimeSummary2;
                                if (builder != null) {
                                    builder.mergeFrom(playtimeSummary2);
                                    this.info_ = builder.buildPartial();
                                }
                            } else if (tag != 34) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.errorMsg_ = input.readStringRequireUtf8();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if (z11 & true) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z11 & true) {
                this.data_ = Collections.unmodifiableList(this.data_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static MessageCloudGamingPlaytimeLogResponseResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeLogResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeLogResponseResult parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeLogResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeLogResponseResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeLogResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingPlaytimeSignInResponseResult extends GeneratedMessageV3 implements c {
        public static final int ERRORMSG_FIELD_NUMBER = 2;
        public static final int ERROR_FIELD_NUMBER = 1;
        public static final int INTO_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object errorMsg_;
        private int error_;
        private PlaytimeSignInInfo into_;
        private byte memoizedIsInitialized;
        private static final MessageCloudGamingPlaytimeSignInResponseResult DEFAULT_INSTANCE = new MessageCloudGamingPlaytimeSignInResponseResult();
        private static final Parser<MessageCloudGamingPlaytimeSignInResponseResult> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingPlaytimeSignInResponseResult> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPlaytimeSignInResponseResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPlaytimeSignInResponseResult(input, extensionRegistry);
            }
        }

        public static MessageCloudGamingPlaytimeSignInResponseResult getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPlaytimeResponse.f87997e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPlaytimeSignInResponseResult parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeSignInResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeSignInResponseResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPlaytimeSignInResponseResult> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPlaytimeSignInResponseResult)) {
                return super.equals(obj);
            }
            MessageCloudGamingPlaytimeSignInResponseResult messageCloudGamingPlaytimeSignInResponseResult = (MessageCloudGamingPlaytimeSignInResponseResult) obj;
            if (getError() == messageCloudGamingPlaytimeSignInResponseResult.getError() && getErrorMsg().equals(messageCloudGamingPlaytimeSignInResponseResult.getErrorMsg()) && hasInto() == messageCloudGamingPlaytimeSignInResponseResult.hasInto()) {
                return (!hasInto() || getInto().equals(messageCloudGamingPlaytimeSignInResponseResult.getInto())) && this.unknownFields.equals(messageCloudGamingPlaytimeSignInResponseResult.unknownFields);
            }
            return false;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.c
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.c
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.c
        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.c
        public PlaytimeSignInInfo getInto() {
            PlaytimeSignInInfo playtimeSignInInfo = this.into_;
            return playtimeSignInInfo == null ? PlaytimeSignInInfo.getDefaultInstance() : playtimeSignInInfo;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.c
        public h getIntoOrBuilder() {
            return getInto();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPlaytimeSignInResponseResult> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = this.error_;
            int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
            if (!getErrorMsgBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.errorMsg_);
            }
            if (this.into_ != null) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(3, getInto());
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.c
        public boolean hasInto() {
            return this.into_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError()) * 37) + 2) * 53) + getErrorMsg().hashCode();
            if (hasInto()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getInto().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPlaytimeResponse.f87998f.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeSignInResponseResult.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unused) {
            return new MessageCloudGamingPlaytimeSignInResponseResult();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            int i10 = this.error_;
            if (i10 != 0) {
                output.writeInt32(1, i10);
            }
            if (!getErrorMsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.errorMsg_);
            }
            if (this.into_ != null) {
                output.writeMessage(3, getInto());
            }
            this.unknownFields.writeTo(output);
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements c {
            private Object errorMsg_;
            private int error_;
            private SingleFieldBuilderV3<PlaytimeSignInInfo, PlaytimeSignInInfo.b, h> intoBuilder_;
            private PlaytimeSignInInfo into_;

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPlaytimeResponse.f87997e;
            }

            private SingleFieldBuilderV3<PlaytimeSignInInfo, PlaytimeSignInInfo.b, h> getIntoFieldBuilder() {
                if (this.intoBuilder_ == null) {
                    this.intoBuilder_ = new SingleFieldBuilderV3<>(getInto(), getParentForChildren(), isClean());
                    this.into_ = null;
                }
                return this.intoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearError() {
                this.error_ = 0;
                onChanged();
                return this;
            }

            public b clearErrorMsg() {
                this.errorMsg_ = MessageCloudGamingPlaytimeSignInResponseResult.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            public b clearInto() {
                if (this.intoBuilder_ == null) {
                    this.into_ = null;
                    onChanged();
                } else {
                    this.into_ = null;
                    this.intoBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPlaytimeResponse.f87997e;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.c
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.c
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.c
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.c
            public PlaytimeSignInInfo getInto() {
                SingleFieldBuilderV3<PlaytimeSignInInfo, PlaytimeSignInInfo.b, h> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (PlaytimeSignInInfo) singleFieldBuilderV3.getMessage();
                }
                PlaytimeSignInInfo playtimeSignInInfo = this.into_;
                return playtimeSignInInfo == null ? PlaytimeSignInInfo.getDefaultInstance() : playtimeSignInInfo;
            }

            public PlaytimeSignInInfo.b getIntoBuilder() {
                onChanged();
                return (PlaytimeSignInInfo.b) getIntoFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.c
            public h getIntoOrBuilder() {
                SingleFieldBuilderV3<PlaytimeSignInInfo, PlaytimeSignInInfo.b, h> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (h) singleFieldBuilderV3.getMessageOrBuilder();
                }
                PlaytimeSignInInfo playtimeSignInInfo = this.into_;
                return playtimeSignInInfo == null ? PlaytimeSignInInfo.getDefaultInstance() : playtimeSignInInfo;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.c
            public boolean hasInto() {
                return (this.intoBuilder_ == null && this.into_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPlaytimeResponse.f87998f.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeSignInResponseResult.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b mergeInto(PlaytimeSignInInfo value) {
                SingleFieldBuilderV3<PlaytimeSignInInfo, PlaytimeSignInInfo.b, h> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    PlaytimeSignInInfo playtimeSignInInfo = this.into_;
                    if (playtimeSignInInfo != null) {
                        this.into_ = PlaytimeSignInInfo.newBuilder(playtimeSignInInfo).mergeFrom(value).buildPartial();
                    } else {
                        this.into_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b setError(int value) {
                this.error_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsg(String value) {
                value.getClass();
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsgBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            public b setInto(PlaytimeSignInInfo value) {
                SingleFieldBuilderV3<PlaytimeSignInInfo, PlaytimeSignInInfo.b, h> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.getClass();
                    this.into_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            private b() {
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeSignInResponseResult build() {
                MessageCloudGamingPlaytimeSignInResponseResult messageCloudGamingPlaytimeSignInResponseResultBuildPartial = buildPartial();
                if (messageCloudGamingPlaytimeSignInResponseResultBuildPartial.isInitialized()) {
                    return messageCloudGamingPlaytimeSignInResponseResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPlaytimeSignInResponseResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeSignInResponseResult buildPartial() {
                MessageCloudGamingPlaytimeSignInResponseResult messageCloudGamingPlaytimeSignInResponseResult = new MessageCloudGamingPlaytimeSignInResponseResult(this);
                messageCloudGamingPlaytimeSignInResponseResult.error_ = this.error_;
                messageCloudGamingPlaytimeSignInResponseResult.errorMsg_ = this.errorMsg_;
                SingleFieldBuilderV3<PlaytimeSignInInfo, PlaytimeSignInInfo.b, h> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    messageCloudGamingPlaytimeSignInResponseResult.into_ = this.into_;
                } else {
                    messageCloudGamingPlaytimeSignInResponseResult.into_ = (PlaytimeSignInInfo) singleFieldBuilderV3.build();
                }
                onBuilt();
                return messageCloudGamingPlaytimeSignInResponseResult;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPlaytimeSignInResponseResult getDefaultInstanceForType() {
                return MessageCloudGamingPlaytimeSignInResponseResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (b) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final b setUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.setUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b clearOneof(Descriptors.OneofDescriptor oneof) {
                return (b) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final b mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.mergeUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b clear() {
                super.clear();
                this.error_ = 0;
                this.errorMsg_ = "";
                if (this.intoBuilder_ == null) {
                    this.into_ = null;
                } else {
                    this.into_ = null;
                    this.intoBuilder_ = null;
                }
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            public b setInto(PlaytimeSignInInfo.b builderForValue) {
                SingleFieldBuilderV3<PlaytimeSignInInfo, PlaytimeSignInInfo.b, h> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.into_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingPlaytimeSignInResponseResult) {
                    return mergeFrom((MessageCloudGamingPlaytimeSignInResponseResult) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(MessageCloudGamingPlaytimeSignInResponseResult other) {
                if (other == MessageCloudGamingPlaytimeSignInResponseResult.getDefaultInstance()) {
                    return this;
                }
                if (other.getError() != 0) {
                    setError(other.getError());
                }
                if (!other.getErrorMsg().isEmpty()) {
                    this.errorMsg_ = other.errorMsg_;
                    onChanged();
                }
                if (other.hasInto()) {
                    mergeInto(other.getInto());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingPlaytimeSignInResponseResult messageCloudGamingPlaytimeSignInResponseResult = null;
                try {
                    try {
                        MessageCloudGamingPlaytimeSignInResponseResult messageCloudGamingPlaytimeSignInResponseResult2 = (MessageCloudGamingPlaytimeSignInResponseResult) MessageCloudGamingPlaytimeSignInResponseResult.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPlaytimeSignInResponseResult2 != null) {
                            mergeFrom(messageCloudGamingPlaytimeSignInResponseResult2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPlaytimeSignInResponseResult messageCloudGamingPlaytimeSignInResponseResult3 = (MessageCloudGamingPlaytimeSignInResponseResult) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPlaytimeSignInResponseResult = messageCloudGamingPlaytimeSignInResponseResult3;
                            if (messageCloudGamingPlaytimeSignInResponseResult != null) {
                                mergeFrom(messageCloudGamingPlaytimeSignInResponseResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPlaytimeSignInResponseResult != null) {
                        mergeFrom(messageCloudGamingPlaytimeSignInResponseResult);
                    }
                    throw th;
                }
            }
        }

        public static b newBuilder(MessageCloudGamingPlaytimeSignInResponseResult prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPlaytimeSignInResponseResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingPlaytimeSignInResponseResult(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPlaytimeSignInResponseResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeSignInResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeSignInResponseResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPlaytimeSignInResponseResult getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().mergeFrom(this);
        }

        public static MessageCloudGamingPlaytimeSignInResponseResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPlaytimeSignInResponseResult() {
            this.memoizedIsInitialized = (byte) -1;
            this.errorMsg_ = "";
        }

        public static MessageCloudGamingPlaytimeSignInResponseResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent);
        }

        public static MessageCloudGamingPlaytimeSignInResponseResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeSignInResponseResult parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeSignInResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingPlaytimeSignInResponseResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.error_ = input.readInt32();
                            } else if (tag == 18) {
                                this.errorMsg_ = input.readStringRequireUtf8();
                            } else if (tag != 26) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                PlaytimeSignInInfo playtimeSignInInfo = this.into_;
                                PlaytimeSignInInfo.b builder = playtimeSignInInfo != null ? playtimeSignInInfo.toBuilder() : null;
                                PlaytimeSignInInfo playtimeSignInInfo2 = (PlaytimeSignInInfo) input.readMessage(PlaytimeSignInInfo.parser(), extensionRegistry);
                                this.into_ = playtimeSignInInfo2;
                                if (builder != null) {
                                    builder.mergeFrom(playtimeSignInInfo2);
                                    this.into_ = builder.buildPartial();
                                }
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static MessageCloudGamingPlaytimeSignInResponseResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeSignInResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeSignInResponseResult parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeSignInResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeSignInResponseResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeSignInResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingPlaytimeSummaryResponseResult extends GeneratedMessageV3 implements d {
        public static final int ERRORMSG_FIELD_NUMBER = 2;
        public static final int ERROR_FIELD_NUMBER = 1;
        public static final int INTO_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object errorMsg_;
        private int error_;
        private PlaytimeSummary into_;
        private byte memoizedIsInitialized;
        private static final MessageCloudGamingPlaytimeSummaryResponseResult DEFAULT_INSTANCE = new MessageCloudGamingPlaytimeSummaryResponseResult();
        private static final Parser<MessageCloudGamingPlaytimeSummaryResponseResult> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingPlaytimeSummaryResponseResult> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPlaytimeSummaryResponseResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPlaytimeSummaryResponseResult(input, extensionRegistry);
            }
        }

        public static MessageCloudGamingPlaytimeSummaryResponseResult getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPlaytimeResponse.f87995c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPlaytimeSummaryResponseResult parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeSummaryResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeSummaryResponseResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPlaytimeSummaryResponseResult> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPlaytimeSummaryResponseResult)) {
                return super.equals(obj);
            }
            MessageCloudGamingPlaytimeSummaryResponseResult messageCloudGamingPlaytimeSummaryResponseResult = (MessageCloudGamingPlaytimeSummaryResponseResult) obj;
            if (getError() == messageCloudGamingPlaytimeSummaryResponseResult.getError() && getErrorMsg().equals(messageCloudGamingPlaytimeSummaryResponseResult.getErrorMsg()) && hasInto() == messageCloudGamingPlaytimeSummaryResponseResult.hasInto()) {
                return (!hasInto() || getInto().equals(messageCloudGamingPlaytimeSummaryResponseResult.getInto())) && this.unknownFields.equals(messageCloudGamingPlaytimeSummaryResponseResult.unknownFields);
            }
            return false;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.d
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.d
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.d
        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.d
        public PlaytimeSummary getInto() {
            PlaytimeSummary playtimeSummary = this.into_;
            return playtimeSummary == null ? PlaytimeSummary.getDefaultInstance() : playtimeSummary;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.d
        public i getIntoOrBuilder() {
            return getInto();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPlaytimeSummaryResponseResult> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = this.error_;
            int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
            if (!getErrorMsgBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.errorMsg_);
            }
            if (this.into_ != null) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(3, getInto());
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.d
        public boolean hasInto() {
            return this.into_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError()) * 37) + 2) * 53) + getErrorMsg().hashCode();
            if (hasInto()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getInto().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPlaytimeResponse.f87996d.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeSummaryResponseResult.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unused) {
            return new MessageCloudGamingPlaytimeSummaryResponseResult();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            int i10 = this.error_;
            if (i10 != 0) {
                output.writeInt32(1, i10);
            }
            if (!getErrorMsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.errorMsg_);
            }
            if (this.into_ != null) {
                output.writeMessage(3, getInto());
            }
            this.unknownFields.writeTo(output);
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements d {
            private Object errorMsg_;
            private int error_;
            private SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> intoBuilder_;
            private PlaytimeSummary into_;

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPlaytimeResponse.f87995c;
            }

            private SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> getIntoFieldBuilder() {
                if (this.intoBuilder_ == null) {
                    this.intoBuilder_ = new SingleFieldBuilderV3<>(getInto(), getParentForChildren(), isClean());
                    this.into_ = null;
                }
                return this.intoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearError() {
                this.error_ = 0;
                onChanged();
                return this;
            }

            public b clearErrorMsg() {
                this.errorMsg_ = MessageCloudGamingPlaytimeSummaryResponseResult.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            public b clearInto() {
                if (this.intoBuilder_ == null) {
                    this.into_ = null;
                    onChanged();
                } else {
                    this.into_ = null;
                    this.intoBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPlaytimeResponse.f87995c;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.d
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.d
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.d
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.d
            public PlaytimeSummary getInto() {
                SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (PlaytimeSummary) singleFieldBuilderV3.getMessage();
                }
                PlaytimeSummary playtimeSummary = this.into_;
                return playtimeSummary == null ? PlaytimeSummary.getDefaultInstance() : playtimeSummary;
            }

            public PlaytimeSummary.b getIntoBuilder() {
                onChanged();
                return (PlaytimeSummary.b) getIntoFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.d
            public i getIntoOrBuilder() {
                SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (i) singleFieldBuilderV3.getMessageOrBuilder();
                }
                PlaytimeSummary playtimeSummary = this.into_;
                return playtimeSummary == null ? PlaytimeSummary.getDefaultInstance() : playtimeSummary;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.d
            public boolean hasInto() {
                return (this.intoBuilder_ == null && this.into_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPlaytimeResponse.f87996d.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeSummaryResponseResult.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b mergeInto(PlaytimeSummary value) {
                SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    PlaytimeSummary playtimeSummary = this.into_;
                    if (playtimeSummary != null) {
                        this.into_ = PlaytimeSummary.newBuilder(playtimeSummary).mergeFrom(value).buildPartial();
                    } else {
                        this.into_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b setError(int value) {
                this.error_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsg(String value) {
                value.getClass();
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsgBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            public b setInto(PlaytimeSummary value) {
                SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.getClass();
                    this.into_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            private b() {
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeSummaryResponseResult build() {
                MessageCloudGamingPlaytimeSummaryResponseResult messageCloudGamingPlaytimeSummaryResponseResultBuildPartial = buildPartial();
                if (messageCloudGamingPlaytimeSummaryResponseResultBuildPartial.isInitialized()) {
                    return messageCloudGamingPlaytimeSummaryResponseResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPlaytimeSummaryResponseResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeSummaryResponseResult buildPartial() {
                MessageCloudGamingPlaytimeSummaryResponseResult messageCloudGamingPlaytimeSummaryResponseResult = new MessageCloudGamingPlaytimeSummaryResponseResult(this);
                messageCloudGamingPlaytimeSummaryResponseResult.error_ = this.error_;
                messageCloudGamingPlaytimeSummaryResponseResult.errorMsg_ = this.errorMsg_;
                SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    messageCloudGamingPlaytimeSummaryResponseResult.into_ = this.into_;
                } else {
                    messageCloudGamingPlaytimeSummaryResponseResult.into_ = (PlaytimeSummary) singleFieldBuilderV3.build();
                }
                onBuilt();
                return messageCloudGamingPlaytimeSummaryResponseResult;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPlaytimeSummaryResponseResult getDefaultInstanceForType() {
                return MessageCloudGamingPlaytimeSummaryResponseResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (b) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final b setUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.setUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b clearOneof(Descriptors.OneofDescriptor oneof) {
                return (b) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final b mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.mergeUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b clear() {
                super.clear();
                this.error_ = 0;
                this.errorMsg_ = "";
                if (this.intoBuilder_ == null) {
                    this.into_ = null;
                } else {
                    this.into_ = null;
                    this.intoBuilder_ = null;
                }
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            public b setInto(PlaytimeSummary.b builderForValue) {
                SingleFieldBuilderV3<PlaytimeSummary, PlaytimeSummary.b, i> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.into_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingPlaytimeSummaryResponseResult) {
                    return mergeFrom((MessageCloudGamingPlaytimeSummaryResponseResult) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(MessageCloudGamingPlaytimeSummaryResponseResult other) {
                if (other == MessageCloudGamingPlaytimeSummaryResponseResult.getDefaultInstance()) {
                    return this;
                }
                if (other.getError() != 0) {
                    setError(other.getError());
                }
                if (!other.getErrorMsg().isEmpty()) {
                    this.errorMsg_ = other.errorMsg_;
                    onChanged();
                }
                if (other.hasInto()) {
                    mergeInto(other.getInto());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingPlaytimeSummaryResponseResult messageCloudGamingPlaytimeSummaryResponseResult = null;
                try {
                    try {
                        MessageCloudGamingPlaytimeSummaryResponseResult messageCloudGamingPlaytimeSummaryResponseResult2 = (MessageCloudGamingPlaytimeSummaryResponseResult) MessageCloudGamingPlaytimeSummaryResponseResult.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPlaytimeSummaryResponseResult2 != null) {
                            mergeFrom(messageCloudGamingPlaytimeSummaryResponseResult2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPlaytimeSummaryResponseResult messageCloudGamingPlaytimeSummaryResponseResult3 = (MessageCloudGamingPlaytimeSummaryResponseResult) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPlaytimeSummaryResponseResult = messageCloudGamingPlaytimeSummaryResponseResult3;
                            if (messageCloudGamingPlaytimeSummaryResponseResult != null) {
                                mergeFrom(messageCloudGamingPlaytimeSummaryResponseResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPlaytimeSummaryResponseResult != null) {
                        mergeFrom(messageCloudGamingPlaytimeSummaryResponseResult);
                    }
                    throw th;
                }
            }
        }

        public static b newBuilder(MessageCloudGamingPlaytimeSummaryResponseResult prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPlaytimeSummaryResponseResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingPlaytimeSummaryResponseResult(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPlaytimeSummaryResponseResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeSummaryResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeSummaryResponseResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPlaytimeSummaryResponseResult getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().mergeFrom(this);
        }

        public static MessageCloudGamingPlaytimeSummaryResponseResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPlaytimeSummaryResponseResult() {
            this.memoizedIsInitialized = (byte) -1;
            this.errorMsg_ = "";
        }

        public static MessageCloudGamingPlaytimeSummaryResponseResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent);
        }

        public static MessageCloudGamingPlaytimeSummaryResponseResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeSummaryResponseResult parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeSummaryResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingPlaytimeSummaryResponseResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.error_ = input.readInt32();
                            } else if (tag == 18) {
                                this.errorMsg_ = input.readStringRequireUtf8();
                            } else if (tag != 26) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                PlaytimeSummary playtimeSummary = this.into_;
                                PlaytimeSummary.b builder = playtimeSummary != null ? playtimeSummary.toBuilder() : null;
                                PlaytimeSummary playtimeSummary2 = (PlaytimeSummary) input.readMessage(PlaytimeSummary.parser(), extensionRegistry);
                                this.into_ = playtimeSummary2;
                                if (builder != null) {
                                    builder.mergeFrom(playtimeSummary2);
                                    this.into_ = builder.buildPartial();
                                }
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static MessageCloudGamingPlaytimeSummaryResponseResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeSummaryResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeSummaryResponseResult parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeSummaryResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeSummaryResponseResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeSummaryResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingPlaytimeVipBirthdayResponseResult extends GeneratedMessageV3 implements e {
        public static final int ERRORMSG_FIELD_NUMBER = 2;
        public static final int ERROR_FIELD_NUMBER = 1;
        public static final int INTO_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object errorMsg_;
        private int error_;
        private PlaytimeVipDaysInfo into_;
        private byte memoizedIsInitialized;
        private static final MessageCloudGamingPlaytimeVipBirthdayResponseResult DEFAULT_INSTANCE = new MessageCloudGamingPlaytimeVipBirthdayResponseResult();
        private static final Parser<MessageCloudGamingPlaytimeVipBirthdayResponseResult> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingPlaytimeVipBirthdayResponseResult> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPlaytimeVipBirthdayResponseResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPlaytimeVipBirthdayResponseResult(input, extensionRegistry);
            }
        }

        public static MessageCloudGamingPlaytimeVipBirthdayResponseResult getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPlaytimeResponse.f88001i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPlaytimeVipBirthdayResponseResult parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeVipBirthdayResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeVipBirthdayResponseResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPlaytimeVipBirthdayResponseResult> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPlaytimeVipBirthdayResponseResult)) {
                return super.equals(obj);
            }
            MessageCloudGamingPlaytimeVipBirthdayResponseResult messageCloudGamingPlaytimeVipBirthdayResponseResult = (MessageCloudGamingPlaytimeVipBirthdayResponseResult) obj;
            if (getError() == messageCloudGamingPlaytimeVipBirthdayResponseResult.getError() && getErrorMsg().equals(messageCloudGamingPlaytimeVipBirthdayResponseResult.getErrorMsg()) && hasInto() == messageCloudGamingPlaytimeVipBirthdayResponseResult.hasInto()) {
                return (!hasInto() || getInto().equals(messageCloudGamingPlaytimeVipBirthdayResponseResult.getInto())) && this.unknownFields.equals(messageCloudGamingPlaytimeVipBirthdayResponseResult.unknownFields);
            }
            return false;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.e
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.e
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.e
        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.e
        public PlaytimeVipDaysInfo getInto() {
            PlaytimeVipDaysInfo playtimeVipDaysInfo = this.into_;
            return playtimeVipDaysInfo == null ? PlaytimeVipDaysInfo.getDefaultInstance() : playtimeVipDaysInfo;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.e
        public j getIntoOrBuilder() {
            return getInto();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPlaytimeVipBirthdayResponseResult> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = this.error_;
            int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
            if (!getErrorMsgBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.errorMsg_);
            }
            if (this.into_ != null) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(3, getInto());
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.e
        public boolean hasInto() {
            return this.into_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError()) * 37) + 2) * 53) + getErrorMsg().hashCode();
            if (hasInto()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getInto().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPlaytimeResponse.f88002j.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeVipBirthdayResponseResult.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unused) {
            return new MessageCloudGamingPlaytimeVipBirthdayResponseResult();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            int i10 = this.error_;
            if (i10 != 0) {
                output.writeInt32(1, i10);
            }
            if (!getErrorMsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.errorMsg_);
            }
            if (this.into_ != null) {
                output.writeMessage(3, getInto());
            }
            this.unknownFields.writeTo(output);
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements e {
            private Object errorMsg_;
            private int error_;
            private SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> intoBuilder_;
            private PlaytimeVipDaysInfo into_;

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPlaytimeResponse.f88001i;
            }

            private SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> getIntoFieldBuilder() {
                if (this.intoBuilder_ == null) {
                    this.intoBuilder_ = new SingleFieldBuilderV3<>(getInto(), getParentForChildren(), isClean());
                    this.into_ = null;
                }
                return this.intoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearError() {
                this.error_ = 0;
                onChanged();
                return this;
            }

            public b clearErrorMsg() {
                this.errorMsg_ = MessageCloudGamingPlaytimeVipBirthdayResponseResult.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            public b clearInto() {
                if (this.intoBuilder_ == null) {
                    this.into_ = null;
                    onChanged();
                } else {
                    this.into_ = null;
                    this.intoBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPlaytimeResponse.f88001i;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.e
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.e
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.e
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.e
            public PlaytimeVipDaysInfo getInto() {
                SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (PlaytimeVipDaysInfo) singleFieldBuilderV3.getMessage();
                }
                PlaytimeVipDaysInfo playtimeVipDaysInfo = this.into_;
                return playtimeVipDaysInfo == null ? PlaytimeVipDaysInfo.getDefaultInstance() : playtimeVipDaysInfo;
            }

            public PlaytimeVipDaysInfo.b getIntoBuilder() {
                onChanged();
                return (PlaytimeVipDaysInfo.b) getIntoFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.e
            public j getIntoOrBuilder() {
                SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (j) singleFieldBuilderV3.getMessageOrBuilder();
                }
                PlaytimeVipDaysInfo playtimeVipDaysInfo = this.into_;
                return playtimeVipDaysInfo == null ? PlaytimeVipDaysInfo.getDefaultInstance() : playtimeVipDaysInfo;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.e
            public boolean hasInto() {
                return (this.intoBuilder_ == null && this.into_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPlaytimeResponse.f88002j.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeVipBirthdayResponseResult.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b mergeInto(PlaytimeVipDaysInfo value) {
                SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    PlaytimeVipDaysInfo playtimeVipDaysInfo = this.into_;
                    if (playtimeVipDaysInfo != null) {
                        this.into_ = PlaytimeVipDaysInfo.newBuilder(playtimeVipDaysInfo).mergeFrom(value).buildPartial();
                    } else {
                        this.into_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b setError(int value) {
                this.error_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsg(String value) {
                value.getClass();
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsgBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            public b setInto(PlaytimeVipDaysInfo value) {
                SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.getClass();
                    this.into_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            private b() {
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeVipBirthdayResponseResult build() {
                MessageCloudGamingPlaytimeVipBirthdayResponseResult messageCloudGamingPlaytimeVipBirthdayResponseResultBuildPartial = buildPartial();
                if (messageCloudGamingPlaytimeVipBirthdayResponseResultBuildPartial.isInitialized()) {
                    return messageCloudGamingPlaytimeVipBirthdayResponseResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPlaytimeVipBirthdayResponseResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeVipBirthdayResponseResult buildPartial() {
                MessageCloudGamingPlaytimeVipBirthdayResponseResult messageCloudGamingPlaytimeVipBirthdayResponseResult = new MessageCloudGamingPlaytimeVipBirthdayResponseResult(this);
                messageCloudGamingPlaytimeVipBirthdayResponseResult.error_ = this.error_;
                messageCloudGamingPlaytimeVipBirthdayResponseResult.errorMsg_ = this.errorMsg_;
                SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    messageCloudGamingPlaytimeVipBirthdayResponseResult.into_ = this.into_;
                } else {
                    messageCloudGamingPlaytimeVipBirthdayResponseResult.into_ = (PlaytimeVipDaysInfo) singleFieldBuilderV3.build();
                }
                onBuilt();
                return messageCloudGamingPlaytimeVipBirthdayResponseResult;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPlaytimeVipBirthdayResponseResult getDefaultInstanceForType() {
                return MessageCloudGamingPlaytimeVipBirthdayResponseResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (b) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final b setUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.setUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b clearOneof(Descriptors.OneofDescriptor oneof) {
                return (b) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final b mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.mergeUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b clear() {
                super.clear();
                this.error_ = 0;
                this.errorMsg_ = "";
                if (this.intoBuilder_ == null) {
                    this.into_ = null;
                } else {
                    this.into_ = null;
                    this.intoBuilder_ = null;
                }
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            public b setInto(PlaytimeVipDaysInfo.b builderForValue) {
                SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.into_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingPlaytimeVipBirthdayResponseResult) {
                    return mergeFrom((MessageCloudGamingPlaytimeVipBirthdayResponseResult) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(MessageCloudGamingPlaytimeVipBirthdayResponseResult other) {
                if (other == MessageCloudGamingPlaytimeVipBirthdayResponseResult.getDefaultInstance()) {
                    return this;
                }
                if (other.getError() != 0) {
                    setError(other.getError());
                }
                if (!other.getErrorMsg().isEmpty()) {
                    this.errorMsg_ = other.errorMsg_;
                    onChanged();
                }
                if (other.hasInto()) {
                    mergeInto(other.getInto());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingPlaytimeVipBirthdayResponseResult messageCloudGamingPlaytimeVipBirthdayResponseResult = null;
                try {
                    try {
                        MessageCloudGamingPlaytimeVipBirthdayResponseResult messageCloudGamingPlaytimeVipBirthdayResponseResult2 = (MessageCloudGamingPlaytimeVipBirthdayResponseResult) MessageCloudGamingPlaytimeVipBirthdayResponseResult.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPlaytimeVipBirthdayResponseResult2 != null) {
                            mergeFrom(messageCloudGamingPlaytimeVipBirthdayResponseResult2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPlaytimeVipBirthdayResponseResult messageCloudGamingPlaytimeVipBirthdayResponseResult3 = (MessageCloudGamingPlaytimeVipBirthdayResponseResult) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPlaytimeVipBirthdayResponseResult = messageCloudGamingPlaytimeVipBirthdayResponseResult3;
                            if (messageCloudGamingPlaytimeVipBirthdayResponseResult != null) {
                                mergeFrom(messageCloudGamingPlaytimeVipBirthdayResponseResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPlaytimeVipBirthdayResponseResult != null) {
                        mergeFrom(messageCloudGamingPlaytimeVipBirthdayResponseResult);
                    }
                    throw th;
                }
            }
        }

        public static b newBuilder(MessageCloudGamingPlaytimeVipBirthdayResponseResult prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPlaytimeVipBirthdayResponseResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingPlaytimeVipBirthdayResponseResult(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPlaytimeVipBirthdayResponseResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeVipBirthdayResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeVipBirthdayResponseResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPlaytimeVipBirthdayResponseResult getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().mergeFrom(this);
        }

        public static MessageCloudGamingPlaytimeVipBirthdayResponseResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPlaytimeVipBirthdayResponseResult() {
            this.memoizedIsInitialized = (byte) -1;
            this.errorMsg_ = "";
        }

        public static MessageCloudGamingPlaytimeVipBirthdayResponseResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent);
        }

        public static MessageCloudGamingPlaytimeVipBirthdayResponseResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeVipBirthdayResponseResult parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeVipBirthdayResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingPlaytimeVipBirthdayResponseResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.error_ = input.readInt32();
                            } else if (tag == 18) {
                                this.errorMsg_ = input.readStringRequireUtf8();
                            } else if (tag != 26) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                PlaytimeVipDaysInfo playtimeVipDaysInfo = this.into_;
                                PlaytimeVipDaysInfo.b builder = playtimeVipDaysInfo != null ? playtimeVipDaysInfo.toBuilder() : null;
                                PlaytimeVipDaysInfo playtimeVipDaysInfo2 = (PlaytimeVipDaysInfo) input.readMessage(PlaytimeVipDaysInfo.parser(), extensionRegistry);
                                this.into_ = playtimeVipDaysInfo2;
                                if (builder != null) {
                                    builder.mergeFrom(playtimeVipDaysInfo2);
                                    this.into_ = builder.buildPartial();
                                }
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static MessageCloudGamingPlaytimeVipBirthdayResponseResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeVipBirthdayResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeVipBirthdayResponseResult parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeVipBirthdayResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeVipBirthdayResponseResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeVipBirthdayResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingPlaytimeVipDaysResponseResult extends GeneratedMessageV3 implements f {
        public static final int ERRORMSG_FIELD_NUMBER = 2;
        public static final int ERROR_FIELD_NUMBER = 1;
        public static final int INTO_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object errorMsg_;
        private int error_;
        private PlaytimeVipDaysInfo into_;
        private byte memoizedIsInitialized;
        private static final MessageCloudGamingPlaytimeVipDaysResponseResult DEFAULT_INSTANCE = new MessageCloudGamingPlaytimeVipDaysResponseResult();
        private static final Parser<MessageCloudGamingPlaytimeVipDaysResponseResult> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingPlaytimeVipDaysResponseResult> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPlaytimeVipDaysResponseResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPlaytimeVipDaysResponseResult(input, extensionRegistry);
            }
        }

        public static MessageCloudGamingPlaytimeVipDaysResponseResult getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPlaytimeResponse.f87999g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPlaytimeVipDaysResponseResult parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeVipDaysResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeVipDaysResponseResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPlaytimeVipDaysResponseResult> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPlaytimeVipDaysResponseResult)) {
                return super.equals(obj);
            }
            MessageCloudGamingPlaytimeVipDaysResponseResult messageCloudGamingPlaytimeVipDaysResponseResult = (MessageCloudGamingPlaytimeVipDaysResponseResult) obj;
            if (getError() == messageCloudGamingPlaytimeVipDaysResponseResult.getError() && getErrorMsg().equals(messageCloudGamingPlaytimeVipDaysResponseResult.getErrorMsg()) && hasInto() == messageCloudGamingPlaytimeVipDaysResponseResult.hasInto()) {
                return (!hasInto() || getInto().equals(messageCloudGamingPlaytimeVipDaysResponseResult.getInto())) && this.unknownFields.equals(messageCloudGamingPlaytimeVipDaysResponseResult.unknownFields);
            }
            return false;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.f
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.f
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.f
        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.f
        public PlaytimeVipDaysInfo getInto() {
            PlaytimeVipDaysInfo playtimeVipDaysInfo = this.into_;
            return playtimeVipDaysInfo == null ? PlaytimeVipDaysInfo.getDefaultInstance() : playtimeVipDaysInfo;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.f
        public j getIntoOrBuilder() {
            return getInto();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPlaytimeVipDaysResponseResult> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = this.error_;
            int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
            if (!getErrorMsgBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.errorMsg_);
            }
            if (this.into_ != null) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(3, getInto());
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.f
        public boolean hasInto() {
            return this.into_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError()) * 37) + 2) * 53) + getErrorMsg().hashCode();
            if (hasInto()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getInto().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPlaytimeResponse.f88000h.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeVipDaysResponseResult.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unused) {
            return new MessageCloudGamingPlaytimeVipDaysResponseResult();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            int i10 = this.error_;
            if (i10 != 0) {
                output.writeInt32(1, i10);
            }
            if (!getErrorMsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.errorMsg_);
            }
            if (this.into_ != null) {
                output.writeMessage(3, getInto());
            }
            this.unknownFields.writeTo(output);
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements f {
            private Object errorMsg_;
            private int error_;
            private SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> intoBuilder_;
            private PlaytimeVipDaysInfo into_;

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPlaytimeResponse.f87999g;
            }

            private SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> getIntoFieldBuilder() {
                if (this.intoBuilder_ == null) {
                    this.intoBuilder_ = new SingleFieldBuilderV3<>(getInto(), getParentForChildren(), isClean());
                    this.into_ = null;
                }
                return this.intoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearError() {
                this.error_ = 0;
                onChanged();
                return this;
            }

            public b clearErrorMsg() {
                this.errorMsg_ = MessageCloudGamingPlaytimeVipDaysResponseResult.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            public b clearInto() {
                if (this.intoBuilder_ == null) {
                    this.into_ = null;
                    onChanged();
                } else {
                    this.into_ = null;
                    this.intoBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPlaytimeResponse.f87999g;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.f
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.f
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.f
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.f
            public PlaytimeVipDaysInfo getInto() {
                SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (PlaytimeVipDaysInfo) singleFieldBuilderV3.getMessage();
                }
                PlaytimeVipDaysInfo playtimeVipDaysInfo = this.into_;
                return playtimeVipDaysInfo == null ? PlaytimeVipDaysInfo.getDefaultInstance() : playtimeVipDaysInfo;
            }

            public PlaytimeVipDaysInfo.b getIntoBuilder() {
                onChanged();
                return (PlaytimeVipDaysInfo.b) getIntoFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.f
            public j getIntoOrBuilder() {
                SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (j) singleFieldBuilderV3.getMessageOrBuilder();
                }
                PlaytimeVipDaysInfo playtimeVipDaysInfo = this.into_;
                return playtimeVipDaysInfo == null ? PlaytimeVipDaysInfo.getDefaultInstance() : playtimeVipDaysInfo;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.f
            public boolean hasInto() {
                return (this.intoBuilder_ == null && this.into_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPlaytimeResponse.f88000h.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeVipDaysResponseResult.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b mergeInto(PlaytimeVipDaysInfo value) {
                SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    PlaytimeVipDaysInfo playtimeVipDaysInfo = this.into_;
                    if (playtimeVipDaysInfo != null) {
                        this.into_ = PlaytimeVipDaysInfo.newBuilder(playtimeVipDaysInfo).mergeFrom(value).buildPartial();
                    } else {
                        this.into_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b setError(int value) {
                this.error_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsg(String value) {
                value.getClass();
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsgBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            public b setInto(PlaytimeVipDaysInfo value) {
                SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.getClass();
                    this.into_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            private b() {
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeVipDaysResponseResult build() {
                MessageCloudGamingPlaytimeVipDaysResponseResult messageCloudGamingPlaytimeVipDaysResponseResultBuildPartial = buildPartial();
                if (messageCloudGamingPlaytimeVipDaysResponseResultBuildPartial.isInitialized()) {
                    return messageCloudGamingPlaytimeVipDaysResponseResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPlaytimeVipDaysResponseResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeVipDaysResponseResult buildPartial() {
                MessageCloudGamingPlaytimeVipDaysResponseResult messageCloudGamingPlaytimeVipDaysResponseResult = new MessageCloudGamingPlaytimeVipDaysResponseResult(this);
                messageCloudGamingPlaytimeVipDaysResponseResult.error_ = this.error_;
                messageCloudGamingPlaytimeVipDaysResponseResult.errorMsg_ = this.errorMsg_;
                SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    messageCloudGamingPlaytimeVipDaysResponseResult.into_ = this.into_;
                } else {
                    messageCloudGamingPlaytimeVipDaysResponseResult.into_ = (PlaytimeVipDaysInfo) singleFieldBuilderV3.build();
                }
                onBuilt();
                return messageCloudGamingPlaytimeVipDaysResponseResult;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPlaytimeVipDaysResponseResult getDefaultInstanceForType() {
                return MessageCloudGamingPlaytimeVipDaysResponseResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (b) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final b setUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.setUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b clearOneof(Descriptors.OneofDescriptor oneof) {
                return (b) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final b mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.mergeUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b clear() {
                super.clear();
                this.error_ = 0;
                this.errorMsg_ = "";
                if (this.intoBuilder_ == null) {
                    this.into_ = null;
                } else {
                    this.into_ = null;
                    this.intoBuilder_ = null;
                }
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            public b setInto(PlaytimeVipDaysInfo.b builderForValue) {
                SingleFieldBuilderV3<PlaytimeVipDaysInfo, PlaytimeVipDaysInfo.b, j> singleFieldBuilderV3 = this.intoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.into_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingPlaytimeVipDaysResponseResult) {
                    return mergeFrom((MessageCloudGamingPlaytimeVipDaysResponseResult) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(MessageCloudGamingPlaytimeVipDaysResponseResult other) {
                if (other == MessageCloudGamingPlaytimeVipDaysResponseResult.getDefaultInstance()) {
                    return this;
                }
                if (other.getError() != 0) {
                    setError(other.getError());
                }
                if (!other.getErrorMsg().isEmpty()) {
                    this.errorMsg_ = other.errorMsg_;
                    onChanged();
                }
                if (other.hasInto()) {
                    mergeInto(other.getInto());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingPlaytimeVipDaysResponseResult messageCloudGamingPlaytimeVipDaysResponseResult = null;
                try {
                    try {
                        MessageCloudGamingPlaytimeVipDaysResponseResult messageCloudGamingPlaytimeVipDaysResponseResult2 = (MessageCloudGamingPlaytimeVipDaysResponseResult) MessageCloudGamingPlaytimeVipDaysResponseResult.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPlaytimeVipDaysResponseResult2 != null) {
                            mergeFrom(messageCloudGamingPlaytimeVipDaysResponseResult2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPlaytimeVipDaysResponseResult messageCloudGamingPlaytimeVipDaysResponseResult3 = (MessageCloudGamingPlaytimeVipDaysResponseResult) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPlaytimeVipDaysResponseResult = messageCloudGamingPlaytimeVipDaysResponseResult3;
                            if (messageCloudGamingPlaytimeVipDaysResponseResult != null) {
                                mergeFrom(messageCloudGamingPlaytimeVipDaysResponseResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPlaytimeVipDaysResponseResult != null) {
                        mergeFrom(messageCloudGamingPlaytimeVipDaysResponseResult);
                    }
                    throw th;
                }
            }
        }

        public static b newBuilder(MessageCloudGamingPlaytimeVipDaysResponseResult prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPlaytimeVipDaysResponseResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingPlaytimeVipDaysResponseResult(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPlaytimeVipDaysResponseResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeVipDaysResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeVipDaysResponseResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPlaytimeVipDaysResponseResult getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().mergeFrom(this);
        }

        public static MessageCloudGamingPlaytimeVipDaysResponseResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPlaytimeVipDaysResponseResult() {
            this.memoizedIsInitialized = (byte) -1;
            this.errorMsg_ = "";
        }

        public static MessageCloudGamingPlaytimeVipDaysResponseResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent);
        }

        public static MessageCloudGamingPlaytimeVipDaysResponseResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeVipDaysResponseResult parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeVipDaysResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingPlaytimeVipDaysResponseResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.error_ = input.readInt32();
                            } else if (tag == 18) {
                                this.errorMsg_ = input.readStringRequireUtf8();
                            } else if (tag != 26) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                PlaytimeVipDaysInfo playtimeVipDaysInfo = this.into_;
                                PlaytimeVipDaysInfo.b builder = playtimeVipDaysInfo != null ? playtimeVipDaysInfo.toBuilder() : null;
                                PlaytimeVipDaysInfo playtimeVipDaysInfo2 = (PlaytimeVipDaysInfo) input.readMessage(PlaytimeVipDaysInfo.parser(), extensionRegistry);
                                this.into_ = playtimeVipDaysInfo2;
                                if (builder != null) {
                                    builder.mergeFrom(playtimeVipDaysInfo2);
                                    this.into_ = builder.buildPartial();
                                }
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static MessageCloudGamingPlaytimeVipDaysResponseResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeVipDaysResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeVipDaysResponseResult parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeVipDaysResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeVipDaysResponseResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeVipDaysResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class PlaytimeLog extends GeneratedMessageV3 implements g {
        public static final int ADDTIME_FIELD_NUMBER = 3;
        public static final int CHANGETIME_FIELD_NUMBER = 4;
        private static final PlaytimeLog DEFAULT_INSTANCE = new PlaytimeLog();
        private static final Parser<PlaytimeLog> PARSER = new a();
        public static final int PLAYTIMETYPE_FIELD_NUMBER = 1;
        public static final int TITLE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private volatile Object addTime_;
        private volatile Object changeTime_;
        private byte memoizedIsInitialized;
        private int playtimeType_;
        private volatile Object title_;

        class a extends AbstractParser<PlaytimeLog> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PlaytimeLog parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new PlaytimeLog(input, extensionRegistry);
            }
        }

        public static PlaytimeLog getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPlaytimeResponse.f88009q;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PlaytimeLog parseDelimitedFrom(InputStream input) throws IOException {
            return (PlaytimeLog) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static PlaytimeLog parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<PlaytimeLog> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PlaytimeLog)) {
                return super.equals(obj);
            }
            PlaytimeLog playtimeLog = (PlaytimeLog) obj;
            return this.playtimeType_ == playtimeLog.playtimeType_ && getTitle().equals(playtimeLog.getTitle()) && getAddTime().equals(playtimeLog.getAddTime()) && getChangeTime().equals(playtimeLog.getChangeTime()) && this.unknownFields.equals(playtimeLog.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
        public String getAddTime() {
            Object obj = this.addTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.addTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
        public ByteString getAddTimeBytes() {
            Object obj = this.addTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.addTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
        public String getChangeTime() {
            Object obj = this.changeTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.changeTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
        public ByteString getChangeTimeBytes() {
            Object obj = this.changeTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.changeTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<PlaytimeLog> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
        public PlaytimeType getPlaytimeType() {
            PlaytimeType playtimeTypeValueOf = PlaytimeType.valueOf(this.playtimeType_);
            return playtimeTypeValueOf == null ? PlaytimeType.UNRECOGNIZED : playtimeTypeValueOf;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
        public int getPlaytimeTypeValue() {
            return this.playtimeType_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeEnumSize = this.playtimeType_ != PlaytimeType.VIP.getNumber() ? 0 + CodedOutputStream.computeEnumSize(1, this.playtimeType_) : 0;
            if (!getTitleBytes().isEmpty()) {
                iComputeEnumSize += GeneratedMessageV3.computeStringSize(2, this.title_);
            }
            if (!getAddTimeBytes().isEmpty()) {
                iComputeEnumSize += GeneratedMessageV3.computeStringSize(3, this.addTime_);
            }
            if (!getChangeTimeBytes().isEmpty()) {
                iComputeEnumSize += GeneratedMessageV3.computeStringSize(4, this.changeTime_);
            }
            int serializedSize = iComputeEnumSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + this.playtimeType_) * 37) + 2) * 53) + getTitle().hashCode()) * 37) + 3) * 53) + getAddTime().hashCode()) * 37) + 4) * 53) + getChangeTime().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPlaytimeResponse.f88010r.ensureFieldAccessorsInitialized(PlaytimeLog.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unused) {
            return new PlaytimeLog();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            if (this.playtimeType_ != PlaytimeType.VIP.getNumber()) {
                output.writeEnum(1, this.playtimeType_);
            }
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.title_);
            }
            if (!getAddTimeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.addTime_);
            }
            if (!getChangeTimeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.changeTime_);
            }
            this.unknownFields.writeTo(output);
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements g {
            private Object addTime_;
            private Object changeTime_;
            private int playtimeType_;
            private Object title_;

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPlaytimeResponse.f88009q;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAddTime() {
                this.addTime_ = PlaytimeLog.getDefaultInstance().getAddTime();
                onChanged();
                return this;
            }

            public b clearChangeTime() {
                this.changeTime_ = PlaytimeLog.getDefaultInstance().getChangeTime();
                onChanged();
                return this;
            }

            public b clearPlaytimeType() {
                this.playtimeType_ = 0;
                onChanged();
                return this;
            }

            public b clearTitle() {
                this.title_ = PlaytimeLog.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
            public String getAddTime() {
                Object obj = this.addTime_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.addTime_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
            public ByteString getAddTimeBytes() {
                Object obj = this.addTime_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.addTime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
            public String getChangeTime() {
                Object obj = this.changeTime_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.changeTime_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
            public ByteString getChangeTimeBytes() {
                Object obj = this.changeTime_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.changeTime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPlaytimeResponse.f88009q;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
            public PlaytimeType getPlaytimeType() {
                PlaytimeType playtimeTypeValueOf = PlaytimeType.valueOf(this.playtimeType_);
                return playtimeTypeValueOf == null ? PlaytimeType.UNRECOGNIZED : playtimeTypeValueOf;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
            public int getPlaytimeTypeValue() {
                return this.playtimeType_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
            public String getTitle() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.title_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.g
            public ByteString getTitleBytes() {
                Object obj = this.title_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.title_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPlaytimeResponse.f88010r.ensureFieldAccessorsInitialized(PlaytimeLog.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setAddTime(String value) {
                value.getClass();
                this.addTime_ = value;
                onChanged();
                return this;
            }

            public b setAddTimeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.addTime_ = value;
                onChanged();
                return this;
            }

            public b setChangeTime(String value) {
                value.getClass();
                this.changeTime_ = value;
                onChanged();
                return this;
            }

            public b setChangeTimeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.changeTime_ = value;
                onChanged();
                return this;
            }

            public b setPlaytimeType(PlaytimeType value) {
                value.getClass();
                this.playtimeType_ = value.getNumber();
                onChanged();
                return this;
            }

            public b setPlaytimeTypeValue(int value) {
                this.playtimeType_ = value;
                onChanged();
                return this;
            }

            public b setTitle(String value) {
                value.getClass();
                this.title_ = value;
                onChanged();
                return this;
            }

            public b setTitleBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.title_ = value;
                onChanged();
                return this;
            }

            private b() {
                this.playtimeType_ = 0;
                this.title_ = "";
                this.addTime_ = "";
                this.changeTime_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PlaytimeLog build() {
                PlaytimeLog playtimeLogBuildPartial = buildPartial();
                if (playtimeLogBuildPartial.isInitialized()) {
                    return playtimeLogBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) playtimeLogBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PlaytimeLog buildPartial() {
                PlaytimeLog playtimeLog = new PlaytimeLog(this);
                playtimeLog.playtimeType_ = this.playtimeType_;
                playtimeLog.title_ = this.title_;
                playtimeLog.addTime_ = this.addTime_;
                playtimeLog.changeTime_ = this.changeTime_;
                onBuilt();
                return playtimeLog;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PlaytimeLog getDefaultInstanceForType() {
                return PlaytimeLog.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (b) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final b setUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.setUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b clearOneof(Descriptors.OneofDescriptor oneof) {
                return (b) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final b mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.mergeUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b clear() {
                super.clear();
                this.playtimeType_ = 0;
                this.title_ = "";
                this.addTime_ = "";
                this.changeTime_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof PlaytimeLog) {
                    return mergeFrom((PlaytimeLog) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.playtimeType_ = 0;
                this.title_ = "";
                this.addTime_ = "";
                this.changeTime_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(PlaytimeLog other) {
                if (other == PlaytimeLog.getDefaultInstance()) {
                    return this;
                }
                if (other.playtimeType_ != 0) {
                    setPlaytimeTypeValue(other.getPlaytimeTypeValue());
                }
                if (!other.getTitle().isEmpty()) {
                    this.title_ = other.title_;
                    onChanged();
                }
                if (!other.getAddTime().isEmpty()) {
                    this.addTime_ = other.addTime_;
                    onChanged();
                }
                if (!other.getChangeTime().isEmpty()) {
                    this.changeTime_ = other.changeTime_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                PlaytimeLog playtimeLog = null;
                try {
                    try {
                        PlaytimeLog playtimeLog2 = (PlaytimeLog) PlaytimeLog.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (playtimeLog2 != null) {
                            mergeFrom(playtimeLog2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        PlaytimeLog playtimeLog3 = (PlaytimeLog) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            playtimeLog = playtimeLog3;
                            if (playtimeLog != null) {
                                mergeFrom(playtimeLog);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (playtimeLog != null) {
                        mergeFrom(playtimeLog);
                    }
                    throw th;
                }
            }
        }

        public static b newBuilder(PlaytimeLog prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static PlaytimeLog parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private PlaytimeLog(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PlaytimeLog parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PlaytimeLog) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static PlaytimeLog parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PlaytimeLog getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().mergeFrom(this);
        }

        public static PlaytimeLog parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private PlaytimeLog() {
            this.memoizedIsInitialized = (byte) -1;
            this.playtimeType_ = 0;
            this.title_ = "";
            this.addTime_ = "";
            this.changeTime_ = "";
        }

        public static PlaytimeLog parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent);
        }

        public static PlaytimeLog parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static PlaytimeLog parseFrom(InputStream input) throws IOException {
            return (PlaytimeLog) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static PlaytimeLog parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PlaytimeLog) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private PlaytimeLog(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.playtimeType_ = input.readEnum();
                            } else if (tag == 18) {
                                this.title_ = input.readStringRequireUtf8();
                            } else if (tag == 26) {
                                this.addTime_ = input.readStringRequireUtf8();
                            } else if (tag != 34) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.changeTime_ = input.readStringRequireUtf8();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static PlaytimeLog parseFrom(CodedInputStream input) throws IOException {
            return (PlaytimeLog) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static PlaytimeLog parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PlaytimeLog) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class PlaytimeSignInInfo extends GeneratedMessageV3 implements h {
        public static final int FREETIME_FIELD_NUMBER = 1;
        public static final int TOTALTIME_FIELD_NUMBER = 3;
        public static final int VIPTIME_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private volatile Object freeTime_;
        private byte memoizedIsInitialized;
        private volatile Object totalTime_;
        private volatile Object vipTime_;
        private static final PlaytimeSignInInfo DEFAULT_INSTANCE = new PlaytimeSignInInfo();
        private static final Parser<PlaytimeSignInInfo> PARSER = new a();

        class a extends AbstractParser<PlaytimeSignInInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PlaytimeSignInInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new PlaytimeSignInInfo(input, extensionRegistry);
            }
        }

        public static PlaytimeSignInInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPlaytimeResponse.f88005m;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PlaytimeSignInInfo parseDelimitedFrom(InputStream input) throws IOException {
            return (PlaytimeSignInInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static PlaytimeSignInInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<PlaytimeSignInInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PlaytimeSignInInfo)) {
                return super.equals(obj);
            }
            PlaytimeSignInInfo playtimeSignInInfo = (PlaytimeSignInInfo) obj;
            return getFreeTime().equals(playtimeSignInInfo.getFreeTime()) && getVipTime().equals(playtimeSignInInfo.getVipTime()) && getTotalTime().equals(playtimeSignInInfo.getTotalTime()) && this.unknownFields.equals(playtimeSignInInfo.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.h
        public String getFreeTime() {
            Object obj = this.freeTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.freeTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.h
        public ByteString getFreeTimeBytes() {
            Object obj = this.freeTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.freeTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<PlaytimeSignInInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = getFreeTimeBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.freeTime_);
            if (!getVipTimeBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.vipTime_);
            }
            if (!getTotalTimeBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(3, this.totalTime_);
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.h
        public String getTotalTime() {
            Object obj = this.totalTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.totalTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.h
        public ByteString getTotalTimeBytes() {
            Object obj = this.totalTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.totalTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.h
        public String getVipTime() {
            Object obj = this.vipTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.vipTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.h
        public ByteString getVipTimeBytes() {
            Object obj = this.vipTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.vipTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getFreeTime().hashCode()) * 37) + 2) * 53) + getVipTime().hashCode()) * 37) + 3) * 53) + getTotalTime().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPlaytimeResponse.f88006n.ensureFieldAccessorsInitialized(PlaytimeSignInInfo.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unused) {
            return new PlaytimeSignInInfo();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            if (!getFreeTimeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.freeTime_);
            }
            if (!getVipTimeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.vipTime_);
            }
            if (!getTotalTimeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.totalTime_);
            }
            this.unknownFields.writeTo(output);
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements h {
            private Object freeTime_;
            private Object totalTime_;
            private Object vipTime_;

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPlaytimeResponse.f88005m;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearFreeTime() {
                this.freeTime_ = PlaytimeSignInInfo.getDefaultInstance().getFreeTime();
                onChanged();
                return this;
            }

            public b clearTotalTime() {
                this.totalTime_ = PlaytimeSignInInfo.getDefaultInstance().getTotalTime();
                onChanged();
                return this;
            }

            public b clearVipTime() {
                this.vipTime_ = PlaytimeSignInInfo.getDefaultInstance().getVipTime();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPlaytimeResponse.f88005m;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.h
            public String getFreeTime() {
                Object obj = this.freeTime_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.freeTime_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.h
            public ByteString getFreeTimeBytes() {
                Object obj = this.freeTime_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.freeTime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.h
            public String getTotalTime() {
                Object obj = this.totalTime_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.totalTime_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.h
            public ByteString getTotalTimeBytes() {
                Object obj = this.totalTime_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.totalTime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.h
            public String getVipTime() {
                Object obj = this.vipTime_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.vipTime_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.h
            public ByteString getVipTimeBytes() {
                Object obj = this.vipTime_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.vipTime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPlaytimeResponse.f88006n.ensureFieldAccessorsInitialized(PlaytimeSignInInfo.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setFreeTime(String value) {
                value.getClass();
                this.freeTime_ = value;
                onChanged();
                return this;
            }

            public b setFreeTimeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.freeTime_ = value;
                onChanged();
                return this;
            }

            public b setTotalTime(String value) {
                value.getClass();
                this.totalTime_ = value;
                onChanged();
                return this;
            }

            public b setTotalTimeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.totalTime_ = value;
                onChanged();
                return this;
            }

            public b setVipTime(String value) {
                value.getClass();
                this.vipTime_ = value;
                onChanged();
                return this;
            }

            public b setVipTimeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.vipTime_ = value;
                onChanged();
                return this;
            }

            private b() {
                this.freeTime_ = "";
                this.vipTime_ = "";
                this.totalTime_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PlaytimeSignInInfo build() {
                PlaytimeSignInInfo playtimeSignInInfoBuildPartial = buildPartial();
                if (playtimeSignInInfoBuildPartial.isInitialized()) {
                    return playtimeSignInInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) playtimeSignInInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PlaytimeSignInInfo buildPartial() {
                PlaytimeSignInInfo playtimeSignInInfo = new PlaytimeSignInInfo(this);
                playtimeSignInInfo.freeTime_ = this.freeTime_;
                playtimeSignInInfo.vipTime_ = this.vipTime_;
                playtimeSignInInfo.totalTime_ = this.totalTime_;
                onBuilt();
                return playtimeSignInInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PlaytimeSignInInfo getDefaultInstanceForType() {
                return PlaytimeSignInInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (b) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final b setUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.setUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b clearOneof(Descriptors.OneofDescriptor oneof) {
                return (b) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final b mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.mergeUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b clear() {
                super.clear();
                this.freeTime_ = "";
                this.vipTime_ = "";
                this.totalTime_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof PlaytimeSignInInfo) {
                    return mergeFrom((PlaytimeSignInInfo) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.freeTime_ = "";
                this.vipTime_ = "";
                this.totalTime_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(PlaytimeSignInInfo other) {
                if (other == PlaytimeSignInInfo.getDefaultInstance()) {
                    return this;
                }
                if (!other.getFreeTime().isEmpty()) {
                    this.freeTime_ = other.freeTime_;
                    onChanged();
                }
                if (!other.getVipTime().isEmpty()) {
                    this.vipTime_ = other.vipTime_;
                    onChanged();
                }
                if (!other.getTotalTime().isEmpty()) {
                    this.totalTime_ = other.totalTime_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                PlaytimeSignInInfo playtimeSignInInfo = null;
                try {
                    try {
                        PlaytimeSignInInfo playtimeSignInInfo2 = (PlaytimeSignInInfo) PlaytimeSignInInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (playtimeSignInInfo2 != null) {
                            mergeFrom(playtimeSignInInfo2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        PlaytimeSignInInfo playtimeSignInInfo3 = (PlaytimeSignInInfo) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            playtimeSignInInfo = playtimeSignInInfo3;
                            if (playtimeSignInInfo != null) {
                                mergeFrom(playtimeSignInInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (playtimeSignInInfo != null) {
                        mergeFrom(playtimeSignInInfo);
                    }
                    throw th;
                }
            }
        }

        public static b newBuilder(PlaytimeSignInInfo prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static PlaytimeSignInInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private PlaytimeSignInInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PlaytimeSignInInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PlaytimeSignInInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static PlaytimeSignInInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PlaytimeSignInInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().mergeFrom(this);
        }

        public static PlaytimeSignInInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private PlaytimeSignInInfo() {
            this.memoizedIsInitialized = (byte) -1;
            this.freeTime_ = "";
            this.vipTime_ = "";
            this.totalTime_ = "";
        }

        public static PlaytimeSignInInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent);
        }

        public static PlaytimeSignInInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static PlaytimeSignInInfo parseFrom(InputStream input) throws IOException {
            return (PlaytimeSignInInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static PlaytimeSignInInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PlaytimeSignInInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private PlaytimeSignInInfo(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                this.freeTime_ = input.readStringRequireUtf8();
                            } else if (tag == 18) {
                                this.vipTime_ = input.readStringRequireUtf8();
                            } else if (tag != 26) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.totalTime_ = input.readStringRequireUtf8();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static PlaytimeSignInInfo parseFrom(CodedInputStream input) throws IOException {
            return (PlaytimeSignInInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static PlaytimeSignInInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PlaytimeSignInInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class PlaytimeSummary extends GeneratedMessageV3 implements i {
        public static final int COINTIME_FIELD_NUMBER = 7;
        public static final int COIN_FIELD_NUMBER = 5;
        public static final int DIAMONDTIME_FIELD_NUMBER = 6;
        public static final int DIAMOND_FIELD_NUMBER = 4;
        public static final int FREETIME_FIELD_NUMBER = 2;
        public static final int TOTALTIME_FIELD_NUMBER = 1;
        public static final int VIPTIME_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object coinTime_;
        private volatile Object coin_;
        private volatile Object diamondTime_;
        private volatile Object diamond_;
        private volatile Object freeTime_;
        private byte memoizedIsInitialized;
        private volatile Object totalTime_;
        private volatile Object vipTime_;
        private static final PlaytimeSummary DEFAULT_INSTANCE = new PlaytimeSummary();
        private static final Parser<PlaytimeSummary> PARSER = new a();

        class a extends AbstractParser<PlaytimeSummary> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PlaytimeSummary parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new PlaytimeSummary(input, extensionRegistry);
            }
        }

        public static PlaytimeSummary getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPlaytimeResponse.f88007o;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PlaytimeSummary parseDelimitedFrom(InputStream input) throws IOException {
            return (PlaytimeSummary) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static PlaytimeSummary parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<PlaytimeSummary> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PlaytimeSummary)) {
                return super.equals(obj);
            }
            PlaytimeSummary playtimeSummary = (PlaytimeSummary) obj;
            return getTotalTime().equals(playtimeSummary.getTotalTime()) && getFreeTime().equals(playtimeSummary.getFreeTime()) && getVipTime().equals(playtimeSummary.getVipTime()) && getDiamond().equals(playtimeSummary.getDiamond()) && getCoin().equals(playtimeSummary.getCoin()) && getDiamondTime().equals(playtimeSummary.getDiamondTime()) && getCoinTime().equals(playtimeSummary.getCoinTime()) && this.unknownFields.equals(playtimeSummary.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public String getCoin() {
            Object obj = this.coin_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.coin_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public ByteString getCoinBytes() {
            Object obj = this.coin_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.coin_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public String getCoinTime() {
            Object obj = this.coinTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.coinTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public ByteString getCoinTimeBytes() {
            Object obj = this.coinTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.coinTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public String getDiamond() {
            Object obj = this.diamond_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.diamond_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public ByteString getDiamondBytes() {
            Object obj = this.diamond_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.diamond_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public String getDiamondTime() {
            Object obj = this.diamondTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.diamondTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public ByteString getDiamondTimeBytes() {
            Object obj = this.diamondTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.diamondTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public String getFreeTime() {
            Object obj = this.freeTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.freeTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public ByteString getFreeTimeBytes() {
            Object obj = this.freeTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.freeTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<PlaytimeSummary> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = getTotalTimeBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.totalTime_);
            if (!getFreeTimeBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.freeTime_);
            }
            if (!getVipTimeBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(3, this.vipTime_);
            }
            if (!getDiamondBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(4, this.diamond_);
            }
            if (!getCoinBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(5, this.coin_);
            }
            if (!getDiamondTimeBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(6, this.diamondTime_);
            }
            if (!getCoinTimeBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(7, this.coinTime_);
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public String getTotalTime() {
            Object obj = this.totalTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.totalTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public ByteString getTotalTimeBytes() {
            Object obj = this.totalTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.totalTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public String getVipTime() {
            Object obj = this.vipTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.vipTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
        public ByteString getVipTimeBytes() {
            Object obj = this.vipTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.vipTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getTotalTime().hashCode()) * 37) + 2) * 53) + getFreeTime().hashCode()) * 37) + 3) * 53) + getVipTime().hashCode()) * 37) + 4) * 53) + getDiamond().hashCode()) * 37) + 5) * 53) + getCoin().hashCode()) * 37) + 6) * 53) + getDiamondTime().hashCode()) * 37) + 7) * 53) + getCoinTime().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPlaytimeResponse.f88008p.ensureFieldAccessorsInitialized(PlaytimeSummary.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unused) {
            return new PlaytimeSummary();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            if (!getTotalTimeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.totalTime_);
            }
            if (!getFreeTimeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.freeTime_);
            }
            if (!getVipTimeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.vipTime_);
            }
            if (!getDiamondBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.diamond_);
            }
            if (!getCoinBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 5, this.coin_);
            }
            if (!getDiamondTimeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.diamondTime_);
            }
            if (!getCoinTimeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 7, this.coinTime_);
            }
            this.unknownFields.writeTo(output);
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements i {
            private Object coinTime_;
            private Object coin_;
            private Object diamondTime_;
            private Object diamond_;
            private Object freeTime_;
            private Object totalTime_;
            private Object vipTime_;

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPlaytimeResponse.f88007o;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearCoin() {
                this.coin_ = PlaytimeSummary.getDefaultInstance().getCoin();
                onChanged();
                return this;
            }

            public b clearCoinTime() {
                this.coinTime_ = PlaytimeSummary.getDefaultInstance().getCoinTime();
                onChanged();
                return this;
            }

            public b clearDiamond() {
                this.diamond_ = PlaytimeSummary.getDefaultInstance().getDiamond();
                onChanged();
                return this;
            }

            public b clearDiamondTime() {
                this.diamondTime_ = PlaytimeSummary.getDefaultInstance().getDiamondTime();
                onChanged();
                return this;
            }

            public b clearFreeTime() {
                this.freeTime_ = PlaytimeSummary.getDefaultInstance().getFreeTime();
                onChanged();
                return this;
            }

            public b clearTotalTime() {
                this.totalTime_ = PlaytimeSummary.getDefaultInstance().getTotalTime();
                onChanged();
                return this;
            }

            public b clearVipTime() {
                this.vipTime_ = PlaytimeSummary.getDefaultInstance().getVipTime();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public String getCoin() {
                Object obj = this.coin_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.coin_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public ByteString getCoinBytes() {
                Object obj = this.coin_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.coin_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public String getCoinTime() {
                Object obj = this.coinTime_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.coinTime_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public ByteString getCoinTimeBytes() {
                Object obj = this.coinTime_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.coinTime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPlaytimeResponse.f88007o;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public String getDiamond() {
                Object obj = this.diamond_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.diamond_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public ByteString getDiamondBytes() {
                Object obj = this.diamond_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.diamond_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public String getDiamondTime() {
                Object obj = this.diamondTime_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.diamondTime_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public ByteString getDiamondTimeBytes() {
                Object obj = this.diamondTime_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.diamondTime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public String getFreeTime() {
                Object obj = this.freeTime_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.freeTime_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public ByteString getFreeTimeBytes() {
                Object obj = this.freeTime_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.freeTime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public String getTotalTime() {
                Object obj = this.totalTime_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.totalTime_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public ByteString getTotalTimeBytes() {
                Object obj = this.totalTime_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.totalTime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public String getVipTime() {
                Object obj = this.vipTime_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.vipTime_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.i
            public ByteString getVipTimeBytes() {
                Object obj = this.vipTime_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.vipTime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPlaytimeResponse.f88008p.ensureFieldAccessorsInitialized(PlaytimeSummary.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setCoin(String value) {
                value.getClass();
                this.coin_ = value;
                onChanged();
                return this;
            }

            public b setCoinBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.coin_ = value;
                onChanged();
                return this;
            }

            public b setCoinTime(String value) {
                value.getClass();
                this.coinTime_ = value;
                onChanged();
                return this;
            }

            public b setCoinTimeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.coinTime_ = value;
                onChanged();
                return this;
            }

            public b setDiamond(String value) {
                value.getClass();
                this.diamond_ = value;
                onChanged();
                return this;
            }

            public b setDiamondBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.diamond_ = value;
                onChanged();
                return this;
            }

            public b setDiamondTime(String value) {
                value.getClass();
                this.diamondTime_ = value;
                onChanged();
                return this;
            }

            public b setDiamondTimeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.diamondTime_ = value;
                onChanged();
                return this;
            }

            public b setFreeTime(String value) {
                value.getClass();
                this.freeTime_ = value;
                onChanged();
                return this;
            }

            public b setFreeTimeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.freeTime_ = value;
                onChanged();
                return this;
            }

            public b setTotalTime(String value) {
                value.getClass();
                this.totalTime_ = value;
                onChanged();
                return this;
            }

            public b setTotalTimeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.totalTime_ = value;
                onChanged();
                return this;
            }

            public b setVipTime(String value) {
                value.getClass();
                this.vipTime_ = value;
                onChanged();
                return this;
            }

            public b setVipTimeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.vipTime_ = value;
                onChanged();
                return this;
            }

            private b() {
                this.totalTime_ = "";
                this.freeTime_ = "";
                this.vipTime_ = "";
                this.diamond_ = "";
                this.coin_ = "";
                this.diamondTime_ = "";
                this.coinTime_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PlaytimeSummary build() {
                PlaytimeSummary playtimeSummaryBuildPartial = buildPartial();
                if (playtimeSummaryBuildPartial.isInitialized()) {
                    return playtimeSummaryBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) playtimeSummaryBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PlaytimeSummary buildPartial() {
                PlaytimeSummary playtimeSummary = new PlaytimeSummary(this);
                playtimeSummary.totalTime_ = this.totalTime_;
                playtimeSummary.freeTime_ = this.freeTime_;
                playtimeSummary.vipTime_ = this.vipTime_;
                playtimeSummary.diamond_ = this.diamond_;
                playtimeSummary.coin_ = this.coin_;
                playtimeSummary.diamondTime_ = this.diamondTime_;
                playtimeSummary.coinTime_ = this.coinTime_;
                onBuilt();
                return playtimeSummary;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PlaytimeSummary getDefaultInstanceForType() {
                return PlaytimeSummary.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (b) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final b setUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.setUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b clearOneof(Descriptors.OneofDescriptor oneof) {
                return (b) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final b mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.mergeUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b clear() {
                super.clear();
                this.totalTime_ = "";
                this.freeTime_ = "";
                this.vipTime_ = "";
                this.diamond_ = "";
                this.coin_ = "";
                this.diamondTime_ = "";
                this.coinTime_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof PlaytimeSummary) {
                    return mergeFrom((PlaytimeSummary) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(PlaytimeSummary other) {
                if (other == PlaytimeSummary.getDefaultInstance()) {
                    return this;
                }
                if (!other.getTotalTime().isEmpty()) {
                    this.totalTime_ = other.totalTime_;
                    onChanged();
                }
                if (!other.getFreeTime().isEmpty()) {
                    this.freeTime_ = other.freeTime_;
                    onChanged();
                }
                if (!other.getVipTime().isEmpty()) {
                    this.vipTime_ = other.vipTime_;
                    onChanged();
                }
                if (!other.getDiamond().isEmpty()) {
                    this.diamond_ = other.diamond_;
                    onChanged();
                }
                if (!other.getCoin().isEmpty()) {
                    this.coin_ = other.coin_;
                    onChanged();
                }
                if (!other.getDiamondTime().isEmpty()) {
                    this.diamondTime_ = other.diamondTime_;
                    onChanged();
                }
                if (!other.getCoinTime().isEmpty()) {
                    this.coinTime_ = other.coinTime_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.totalTime_ = "";
                this.freeTime_ = "";
                this.vipTime_ = "";
                this.diamond_ = "";
                this.coin_ = "";
                this.diamondTime_ = "";
                this.coinTime_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                PlaytimeSummary playtimeSummary = null;
                try {
                    try {
                        PlaytimeSummary playtimeSummary2 = (PlaytimeSummary) PlaytimeSummary.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (playtimeSummary2 != null) {
                            mergeFrom(playtimeSummary2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        PlaytimeSummary playtimeSummary3 = (PlaytimeSummary) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            playtimeSummary = playtimeSummary3;
                            if (playtimeSummary != null) {
                                mergeFrom(playtimeSummary);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (playtimeSummary != null) {
                        mergeFrom(playtimeSummary);
                    }
                    throw th;
                }
            }
        }

        public static b newBuilder(PlaytimeSummary prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static PlaytimeSummary parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private PlaytimeSummary(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PlaytimeSummary parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PlaytimeSummary) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static PlaytimeSummary parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PlaytimeSummary getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().mergeFrom(this);
        }

        public static PlaytimeSummary parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private PlaytimeSummary() {
            this.memoizedIsInitialized = (byte) -1;
            this.totalTime_ = "";
            this.freeTime_ = "";
            this.vipTime_ = "";
            this.diamond_ = "";
            this.coin_ = "";
            this.diamondTime_ = "";
            this.coinTime_ = "";
        }

        public static PlaytimeSummary parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent);
        }

        public static PlaytimeSummary parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static PlaytimeSummary parseFrom(InputStream input) throws IOException {
            return (PlaytimeSummary) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static PlaytimeSummary parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PlaytimeSummary) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static PlaytimeSummary parseFrom(CodedInputStream input) throws IOException {
            return (PlaytimeSummary) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static PlaytimeSummary parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PlaytimeSummary) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private PlaytimeSummary(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                this.totalTime_ = input.readStringRequireUtf8();
                            } else if (tag == 18) {
                                this.freeTime_ = input.readStringRequireUtf8();
                            } else if (tag == 26) {
                                this.vipTime_ = input.readStringRequireUtf8();
                            } else if (tag == 34) {
                                this.diamond_ = input.readStringRequireUtf8();
                            } else if (tag == 42) {
                                this.coin_ = input.readStringRequireUtf8();
                            } else if (tag == 50) {
                                this.diamondTime_ = input.readStringRequireUtf8();
                            } else if (tag != 58) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.coinTime_ = input.readStringRequireUtf8();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }
    }

    public static final class PlaytimeVipDaysInfo extends GeneratedMessageV3 implements j {
        private static final PlaytimeVipDaysInfo DEFAULT_INSTANCE = new PlaytimeVipDaysInfo();
        private static final Parser<PlaytimeVipDaysInfo> PARSER = new a();
        public static final int TOTALTIME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object totalTime_;

        class a extends AbstractParser<PlaytimeVipDaysInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PlaytimeVipDaysInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new PlaytimeVipDaysInfo(input, extensionRegistry);
            }
        }

        public static PlaytimeVipDaysInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPlaytimeResponse.f88003k;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PlaytimeVipDaysInfo parseDelimitedFrom(InputStream input) throws IOException {
            return (PlaytimeVipDaysInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static PlaytimeVipDaysInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<PlaytimeVipDaysInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PlaytimeVipDaysInfo)) {
                return super.equals(obj);
            }
            PlaytimeVipDaysInfo playtimeVipDaysInfo = (PlaytimeVipDaysInfo) obj;
            return getTotalTime().equals(playtimeVipDaysInfo.getTotalTime()) && this.unknownFields.equals(playtimeVipDaysInfo.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<PlaytimeVipDaysInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = (getTotalTimeBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.totalTime_)) + this.unknownFields.getSerializedSize();
            this.memoizedSize = iComputeStringSize;
            return iComputeStringSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.j
        public String getTotalTime() {
            Object obj = this.totalTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.totalTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.j
        public ByteString getTotalTimeBytes() {
            Object obj = this.totalTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.totalTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getTotalTime().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPlaytimeResponse.f88004l.ensureFieldAccessorsInitialized(PlaytimeVipDaysInfo.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unused) {
            return new PlaytimeVipDaysInfo();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            if (!getTotalTimeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.totalTime_);
            }
            this.unknownFields.writeTo(output);
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements j {
            private Object totalTime_;

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPlaytimeResponse.f88003k;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearTotalTime() {
                this.totalTime_ = PlaytimeVipDaysInfo.getDefaultInstance().getTotalTime();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPlaytimeResponse.f88003k;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.j
            public String getTotalTime() {
                Object obj = this.totalTime_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.totalTime_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse.j
            public ByteString getTotalTimeBytes() {
                Object obj = this.totalTime_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.totalTime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPlaytimeResponse.f88004l.ensureFieldAccessorsInitialized(PlaytimeVipDaysInfo.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setTotalTime(String value) {
                value.getClass();
                this.totalTime_ = value;
                onChanged();
                return this;
            }

            public b setTotalTimeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.totalTime_ = value;
                onChanged();
                return this;
            }

            private b() {
                this.totalTime_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PlaytimeVipDaysInfo build() {
                PlaytimeVipDaysInfo playtimeVipDaysInfoBuildPartial = buildPartial();
                if (playtimeVipDaysInfoBuildPartial.isInitialized()) {
                    return playtimeVipDaysInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) playtimeVipDaysInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PlaytimeVipDaysInfo buildPartial() {
                PlaytimeVipDaysInfo playtimeVipDaysInfo = new PlaytimeVipDaysInfo(this);
                playtimeVipDaysInfo.totalTime_ = this.totalTime_;
                onBuilt();
                return playtimeVipDaysInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PlaytimeVipDaysInfo getDefaultInstanceForType() {
                return PlaytimeVipDaysInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (b) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final b setUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.setUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b clearOneof(Descriptors.OneofDescriptor oneof) {
                return (b) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final b mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (b) super.mergeUnknownFields(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b clear() {
                super.clear();
                this.totalTime_ = "";
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.totalTime_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof PlaytimeVipDaysInfo) {
                    return mergeFrom((PlaytimeVipDaysInfo) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(PlaytimeVipDaysInfo other) {
                if (other == PlaytimeVipDaysInfo.getDefaultInstance()) {
                    return this;
                }
                if (!other.getTotalTime().isEmpty()) {
                    this.totalTime_ = other.totalTime_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                PlaytimeVipDaysInfo playtimeVipDaysInfo = null;
                try {
                    try {
                        PlaytimeVipDaysInfo playtimeVipDaysInfo2 = (PlaytimeVipDaysInfo) PlaytimeVipDaysInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (playtimeVipDaysInfo2 != null) {
                            mergeFrom(playtimeVipDaysInfo2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        PlaytimeVipDaysInfo playtimeVipDaysInfo3 = (PlaytimeVipDaysInfo) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            playtimeVipDaysInfo = playtimeVipDaysInfo3;
                            if (playtimeVipDaysInfo != null) {
                                mergeFrom(playtimeVipDaysInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (playtimeVipDaysInfo != null) {
                        mergeFrom(playtimeVipDaysInfo);
                    }
                    throw th;
                }
            }
        }

        public static b newBuilder(PlaytimeVipDaysInfo prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static PlaytimeVipDaysInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private PlaytimeVipDaysInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PlaytimeVipDaysInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PlaytimeVipDaysInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static PlaytimeVipDaysInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PlaytimeVipDaysInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().mergeFrom(this);
        }

        public static PlaytimeVipDaysInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private PlaytimeVipDaysInfo() {
            this.memoizedIsInitialized = (byte) -1;
            this.totalTime_ = "";
        }

        public static PlaytimeVipDaysInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent);
        }

        public static PlaytimeVipDaysInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static PlaytimeVipDaysInfo parseFrom(InputStream input) throws IOException {
            return (PlaytimeVipDaysInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private PlaytimeVipDaysInfo(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag != 10) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.totalTime_ = input.readStringRequireUtf8();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static PlaytimeVipDaysInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PlaytimeVipDaysInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static PlaytimeVipDaysInfo parseFrom(CodedInputStream input) throws IOException {
            return (PlaytimeVipDaysInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static PlaytimeVipDaysInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PlaytimeVipDaysInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public interface b extends MessageOrBuilder {
        PlaytimeLog getData(int index);

        int getDataCount();

        List<PlaytimeLog> getDataList();

        g getDataOrBuilder(int index);

        List<? extends g> getDataOrBuilderList();

        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        PlaytimeSummary getInfo();

        i getInfoOrBuilder();

        boolean hasInfo();
    }

    public interface c extends MessageOrBuilder {
        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        PlaytimeSignInInfo getInto();

        h getIntoOrBuilder();

        boolean hasInto();
    }

    public interface d extends MessageOrBuilder {
        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        PlaytimeSummary getInto();

        i getIntoOrBuilder();

        boolean hasInto();
    }

    public interface e extends MessageOrBuilder {
        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        PlaytimeVipDaysInfo getInto();

        j getIntoOrBuilder();

        boolean hasInto();
    }

    public interface f extends MessageOrBuilder {
        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        PlaytimeVipDaysInfo getInto();

        j getIntoOrBuilder();

        boolean hasInto();
    }

    public interface g extends MessageOrBuilder {
        String getAddTime();

        ByteString getAddTimeBytes();

        String getChangeTime();

        ByteString getChangeTimeBytes();

        PlaytimeType getPlaytimeType();

        int getPlaytimeTypeValue();

        String getTitle();

        ByteString getTitleBytes();
    }

    public interface h extends MessageOrBuilder {
        String getFreeTime();

        ByteString getFreeTimeBytes();

        String getTotalTime();

        ByteString getTotalTimeBytes();

        String getVipTime();

        ByteString getVipTimeBytes();
    }

    public interface i extends MessageOrBuilder {
        String getCoin();

        ByteString getCoinBytes();

        String getCoinTime();

        ByteString getCoinTimeBytes();

        String getDiamond();

        ByteString getDiamondBytes();

        String getDiamondTime();

        ByteString getDiamondTimeBytes();

        String getFreeTime();

        ByteString getFreeTimeBytes();

        String getTotalTime();

        ByteString getTotalTimeBytes();

        String getVipTime();

        ByteString getVipTimeBytes();
    }

    public interface j extends MessageOrBuilder {
        String getTotalTime();

        ByteString getTotalTimeBytes();
    }

    static {
        Descriptors.Descriptor descriptor = s().getMessageTypes().get(0);
        f87993a = descriptor;
        f87994b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Error", "Data", "Info", "ErrorMsg"});
        Descriptors.Descriptor descriptor2 = s().getMessageTypes().get(1);
        f87995c = descriptor2;
        f87996d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Error", "ErrorMsg", "Into"});
        Descriptors.Descriptor descriptor3 = s().getMessageTypes().get(2);
        f87997e = descriptor3;
        f87998f = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"Error", "ErrorMsg", "Into"});
        Descriptors.Descriptor descriptor4 = s().getMessageTypes().get(3);
        f87999g = descriptor4;
        f88000h = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"Error", "ErrorMsg", "Into"});
        Descriptors.Descriptor descriptor5 = s().getMessageTypes().get(4);
        f88001i = descriptor5;
        f88002j = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"Error", "ErrorMsg", "Into"});
        Descriptors.Descriptor descriptor6 = s().getMessageTypes().get(5);
        f88003k = descriptor6;
        f88004l = new GeneratedMessageV3.FieldAccessorTable(descriptor6, new String[]{"TotalTime"});
        Descriptors.Descriptor descriptor7 = s().getMessageTypes().get(6);
        f88005m = descriptor7;
        f88006n = new GeneratedMessageV3.FieldAccessorTable(descriptor7, new String[]{"FreeTime", "VipTime", "TotalTime"});
        Descriptors.Descriptor descriptor8 = s().getMessageTypes().get(7);
        f88007o = descriptor8;
        f88008p = new GeneratedMessageV3.FieldAccessorTable(descriptor8, new String[]{"TotalTime", "FreeTime", "VipTime", "Diamond", "Coin", "DiamondTime", "CoinTime"});
        Descriptors.Descriptor descriptor9 = s().getMessageTypes().get(8);
        f88009q = descriptor9;
        f88010r = new GeneratedMessageV3.FieldAccessorTable(descriptor9, new String[]{"PlaytimeType", "Title", "AddTime", "ChangeTime"});
        com.wufan.user.service.protobuf.enumeration.a.b();
    }

    private MessageCloudGamingPlaytimeResponse() {
    }

    public static Descriptors.FileDescriptor s() {
        return f88011s;
    }

    public static void t(ExtensionRegistry registry) {
        u(registry);
    }

    public static void u(ExtensionRegistryLite registry) {
    }
}
