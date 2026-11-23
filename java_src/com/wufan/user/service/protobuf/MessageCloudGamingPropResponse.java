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
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.RepeatedFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class MessageCloudGamingPropResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f88019c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88020d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Descriptors.Descriptor f88021e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88022f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Descriptors.Descriptor f88023g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88024h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Descriptors.Descriptor f88025i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88026j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88027k;

    public static final class MessageCloudGamingPropCardResponse extends GeneratedMessageV3 implements b {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int ERRORMSG_FIELD_NUMBER = 3;
        public static final int ERROR_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private List<PropCard> data_;
        private volatile Object errorMsg_;
        private int error_;
        private byte memoizedIsInitialized;
        private static final MessageCloudGamingPropCardResponse DEFAULT_INSTANCE = new MessageCloudGamingPropCardResponse();
        private static final Parser<MessageCloudGamingPropCardResponse> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingPropCardResponse> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPropCardResponse parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPropCardResponse(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private int bitField0_;
            private RepeatedFieldBuilderV3<PropCard, PropCard.b, e> dataBuilder_;
            private List<PropCard> data_;
            private Object errorMsg_;
            private int error_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            private void ensureDataIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.data_ = new ArrayList(this.data_);
                    this.bitField0_ |= 4;
                }
            }

            private RepeatedFieldBuilderV3<PropCard, PropCard.b, e> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new RepeatedFieldBuilderV3<>(this.data_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPropResponse.f88019c;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                }
            }

            public b addAllData(Iterable<? extends PropCard> values) {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.data_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(values);
                }
                return this;
            }

            public b addData(PropCard value) {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
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

            public PropCard.b addDataBuilder() {
                return (PropCard.b) getDataFieldBuilder().addBuilder(PropCard.getDefaultInstance());
            }

            public b clearData() {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.data_ = Collections.emptyList();
                    this.bitField0_ &= -5;
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
                this.errorMsg_ = MessageCloudGamingPropCardResponse.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
            public PropCard getData(int index) {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.get(index) : (PropCard) repeatedFieldBuilderV3.getMessage(index);
            }

            public PropCard.b getDataBuilder(int index) {
                return (PropCard.b) getDataFieldBuilder().getBuilder(index);
            }

            public List<PropCard.b> getDataBuilderList() {
                return getDataFieldBuilder().getBuilderList();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
            public int getDataCount() {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
            public List<PropCard> getDataList() {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.data_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
            public e getDataOrBuilder(int index) {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.get(index) : (e) repeatedFieldBuilderV3.getMessageOrBuilder(index);
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
            public List<? extends e> getDataOrBuilderList() {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.data_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPropResponse.f88019c;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPropResponse.f88020d.ensureFieldAccessorsInitialized(MessageCloudGamingPropCardResponse.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b removeData(int index) {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.remove(index);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(index);
                }
                return this;
            }

            public b setData(int index, PropCard value) {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
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

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.errorMsg_ = "";
                this.data_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPropCardResponse build() {
                MessageCloudGamingPropCardResponse messageCloudGamingPropCardResponseBuildPartial = buildPartial();
                if (messageCloudGamingPropCardResponseBuildPartial.isInitialized()) {
                    return messageCloudGamingPropCardResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPropCardResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPropCardResponse buildPartial() {
                MessageCloudGamingPropCardResponse messageCloudGamingPropCardResponse = new MessageCloudGamingPropCardResponse(this, (a) null);
                messageCloudGamingPropCardResponse.error_ = this.error_;
                messageCloudGamingPropCardResponse.errorMsg_ = this.errorMsg_;
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    messageCloudGamingPropCardResponse.data_ = repeatedFieldBuilderV3.build();
                } else {
                    if ((this.bitField0_ & 4) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -5;
                    }
                    messageCloudGamingPropCardResponse.data_ = this.data_;
                }
                messageCloudGamingPropCardResponse.bitField0_ = 0;
                onBuilt();
                return messageCloudGamingPropCardResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPropCardResponse getDefaultInstanceForType() {
                return MessageCloudGamingPropCardResponse.getDefaultInstance();
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

            public PropCard.b addDataBuilder(int index) {
                return (PropCard.b) getDataFieldBuilder().addBuilder(index, PropCard.getDefaultInstance());
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
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.data_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.errorMsg_ = "";
                this.data_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public b addData(int index, PropCard value) {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
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
                if (other instanceof MessageCloudGamingPropCardResponse) {
                    return mergeFrom((MessageCloudGamingPropCardResponse) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b setData(int index, PropCard.b builderForValue) {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.set(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
                }
                return this;
            }

            public b mergeFrom(MessageCloudGamingPropCardResponse other) {
                if (other == MessageCloudGamingPropCardResponse.getDefaultInstance()) {
                    return this;
                }
                if (other.getError() != 0) {
                    setError(other.getError());
                }
                if (!other.getErrorMsg().isEmpty()) {
                    this.errorMsg_ = other.errorMsg_;
                    onChanged();
                }
                if (this.dataBuilder_ == null) {
                    if (!other.data_.isEmpty()) {
                        if (this.data_.isEmpty()) {
                            this.data_ = other.data_;
                            this.bitField0_ &= -5;
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
                        this.bitField0_ &= -5;
                        this.dataBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            public b addData(PropCard.b builderForValue) {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.add(builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builderForValue.build());
                }
                return this;
            }

            public b addData(int index, PropCard.b builderForValue) {
                RepeatedFieldBuilderV3<PropCard, PropCard.b, e> repeatedFieldBuilderV3 = this.dataBuilder_;
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
                MessageCloudGamingPropCardResponse messageCloudGamingPropCardResponse = null;
                try {
                    try {
                        MessageCloudGamingPropCardResponse messageCloudGamingPropCardResponse2 = (MessageCloudGamingPropCardResponse) MessageCloudGamingPropCardResponse.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPropCardResponse2 != null) {
                            mergeFrom(messageCloudGamingPropCardResponse2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPropCardResponse messageCloudGamingPropCardResponse3 = (MessageCloudGamingPropCardResponse) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPropCardResponse = messageCloudGamingPropCardResponse3;
                            if (messageCloudGamingPropCardResponse != null) {
                                mergeFrom(messageCloudGamingPropCardResponse);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPropCardResponse != null) {
                        mergeFrom(messageCloudGamingPropCardResponse);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingPropCardResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingPropCardResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPropResponse.f88019c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPropCardResponse parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPropCardResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropCardResponse parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPropCardResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPropCardResponse)) {
                return super.equals(obj);
            }
            MessageCloudGamingPropCardResponse messageCloudGamingPropCardResponse = (MessageCloudGamingPropCardResponse) obj;
            return getError() == messageCloudGamingPropCardResponse.getError() && getErrorMsg().equals(messageCloudGamingPropCardResponse.getErrorMsg()) && getDataList().equals(messageCloudGamingPropCardResponse.getDataList()) && this.unknownFields.equals(messageCloudGamingPropCardResponse.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
        public PropCard getData(int index) {
            return this.data_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
        public int getDataCount() {
            return this.data_.size();
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
        public List<PropCard> getDataList() {
            return this.data_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
        public e getDataOrBuilder(int index) {
            return this.data_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
        public List<? extends e> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.b
        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPropCardResponse> getParserForType() {
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
            if (!getErrorMsgBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.errorMsg_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
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
            int iHashCode = ((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError()) * 37) + 3) * 53) + getErrorMsg().hashCode();
            if (getDataCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDataList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPropResponse.f88020d.ensureFieldAccessorsInitialized(MessageCloudGamingPropCardResponse.class, b.class);
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

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            int i10 = this.error_;
            if (i10 != 0) {
                output.writeInt32(1, i10);
            }
            for (int i11 = 0; i11 < this.data_.size(); i11++) {
                output.writeMessage(2, this.data_.get(i11));
            }
            if (!getErrorMsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.errorMsg_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingPropCardResponse(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingPropCardResponse prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPropCardResponse parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingPropCardResponse(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPropCardResponse parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropCardResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPropCardResponse parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPropCardResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingPropCardResponse parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPropCardResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.errorMsg_ = "";
            this.data_ = Collections.emptyList();
        }

        public static MessageCloudGamingPropCardResponse parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingPropCardResponse parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPropCardResponse parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPropCardResponse) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingPropCardResponse(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            int i10 = 0;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.error_ = input.readInt32();
                            } else if (tag == 18) {
                                if ((i10 & 4) == 0) {
                                    this.data_ = new ArrayList();
                                    i10 |= 4;
                                }
                                this.data_.add((PropCard) input.readMessage(PropCard.parser(), extensionRegistry));
                            } else if (tag != 26) {
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
                    if ((i10 & 4) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if ((i10 & 4) != 0) {
                this.data_ = Collections.unmodifiableList(this.data_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static MessageCloudGamingPropCardResponse parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropCardResponse) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPropCardResponse parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPropCardResponse) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropCardResponse parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropCardResponse) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingPropLogResponseResult extends GeneratedMessageV3 implements c {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int ERRORMSG_FIELD_NUMBER = 3;
        public static final int ERROR_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private List<PropLog> data_;
        private volatile Object errorMsg_;
        private int error_;
        private byte memoizedIsInitialized;
        private static final MessageCloudGamingPropLogResponseResult DEFAULT_INSTANCE = new MessageCloudGamingPropLogResponseResult();
        private static final Parser<MessageCloudGamingPropLogResponseResult> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingPropLogResponseResult> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPropLogResponseResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPropLogResponseResult(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements c {
            private int bitField0_;
            private RepeatedFieldBuilderV3<PropLog, PropLog.b, f> dataBuilder_;
            private List<PropLog> data_;
            private Object errorMsg_;
            private int error_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            private void ensureDataIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.data_ = new ArrayList(this.data_);
                    this.bitField0_ |= 2;
                }
            }

            private RepeatedFieldBuilderV3<PropLog, PropLog.b, f> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new RepeatedFieldBuilderV3<>(this.data_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPropResponse.f88021e;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                }
            }

            public b addAllData(Iterable<? extends PropLog> values) {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.data_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(values);
                }
                return this;
            }

            public b addData(PropLog value) {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
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

            public PropLog.b addDataBuilder() {
                return (PropLog.b) getDataFieldBuilder().addBuilder(PropLog.getDefaultInstance());
            }

            public b clearData() {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.data_ = Collections.emptyList();
                    this.bitField0_ &= -3;
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
                this.errorMsg_ = MessageCloudGamingPropLogResponseResult.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
            public PropLog getData(int index) {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.get(index) : (PropLog) repeatedFieldBuilderV3.getMessage(index);
            }

            public PropLog.b getDataBuilder(int index) {
                return (PropLog.b) getDataFieldBuilder().getBuilder(index);
            }

            public List<PropLog.b> getDataBuilderList() {
                return getDataFieldBuilder().getBuilderList();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
            public int getDataCount() {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
            public List<PropLog> getDataList() {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.data_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
            public f getDataOrBuilder(int index) {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.get(index) : (f) repeatedFieldBuilderV3.getMessageOrBuilder(index);
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
            public List<? extends f> getDataOrBuilderList() {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.data_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPropResponse.f88021e;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPropResponse.f88022f.ensureFieldAccessorsInitialized(MessageCloudGamingPropLogResponseResult.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b removeData(int index) {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.remove(index);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(index);
                }
                return this;
            }

            public b setData(int index, PropLog value) {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
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

            /* synthetic */ b(a aVar) {
                this();
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
            public MessageCloudGamingPropLogResponseResult build() {
                MessageCloudGamingPropLogResponseResult messageCloudGamingPropLogResponseResultBuildPartial = buildPartial();
                if (messageCloudGamingPropLogResponseResultBuildPartial.isInitialized()) {
                    return messageCloudGamingPropLogResponseResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPropLogResponseResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPropLogResponseResult buildPartial() {
                MessageCloudGamingPropLogResponseResult messageCloudGamingPropLogResponseResult = new MessageCloudGamingPropLogResponseResult(this, (a) null);
                messageCloudGamingPropLogResponseResult.error_ = this.error_;
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    messageCloudGamingPropLogResponseResult.data_ = repeatedFieldBuilderV3.build();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -3;
                    }
                    messageCloudGamingPropLogResponseResult.data_ = this.data_;
                }
                messageCloudGamingPropLogResponseResult.errorMsg_ = this.errorMsg_;
                messageCloudGamingPropLogResponseResult.bitField0_ = 0;
                onBuilt();
                return messageCloudGamingPropLogResponseResult;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPropLogResponseResult getDefaultInstanceForType() {
                return MessageCloudGamingPropLogResponseResult.getDefaultInstance();
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

            public PropLog.b addDataBuilder(int index) {
                return (PropLog.b) getDataFieldBuilder().addBuilder(index, PropLog.getDefaultInstance());
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
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.data_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                this.errorMsg_ = "";
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.data_ = Collections.emptyList();
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            public b addData(int index, PropLog value) {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
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
                if (other instanceof MessageCloudGamingPropLogResponseResult) {
                    return mergeFrom((MessageCloudGamingPropLogResponseResult) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b setData(int index, PropLog.b builderForValue) {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.set(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
                }
                return this;
            }

            public b mergeFrom(MessageCloudGamingPropLogResponseResult other) {
                if (other == MessageCloudGamingPropLogResponseResult.getDefaultInstance()) {
                    return this;
                }
                if (other.getError() != 0) {
                    setError(other.getError());
                }
                if (this.dataBuilder_ == null) {
                    if (!other.data_.isEmpty()) {
                        if (this.data_.isEmpty()) {
                            this.data_ = other.data_;
                            this.bitField0_ &= -3;
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
                        this.bitField0_ &= -3;
                        this.dataBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                    }
                }
                if (!other.getErrorMsg().isEmpty()) {
                    this.errorMsg_ = other.errorMsg_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            public b addData(PropLog.b builderForValue) {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.add(builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builderForValue.build());
                }
                return this;
            }

            public b addData(int index, PropLog.b builderForValue) {
                RepeatedFieldBuilderV3<PropLog, PropLog.b, f> repeatedFieldBuilderV3 = this.dataBuilder_;
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
                MessageCloudGamingPropLogResponseResult messageCloudGamingPropLogResponseResult = null;
                try {
                    try {
                        MessageCloudGamingPropLogResponseResult messageCloudGamingPropLogResponseResult2 = (MessageCloudGamingPropLogResponseResult) MessageCloudGamingPropLogResponseResult.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPropLogResponseResult2 != null) {
                            mergeFrom(messageCloudGamingPropLogResponseResult2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPropLogResponseResult messageCloudGamingPropLogResponseResult3 = (MessageCloudGamingPropLogResponseResult) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPropLogResponseResult = messageCloudGamingPropLogResponseResult3;
                            if (messageCloudGamingPropLogResponseResult != null) {
                                mergeFrom(messageCloudGamingPropLogResponseResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPropLogResponseResult != null) {
                        mergeFrom(messageCloudGamingPropLogResponseResult);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingPropLogResponseResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingPropLogResponseResult getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPropResponse.f88021e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPropLogResponseResult parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPropLogResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropLogResponseResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPropLogResponseResult> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPropLogResponseResult)) {
                return super.equals(obj);
            }
            MessageCloudGamingPropLogResponseResult messageCloudGamingPropLogResponseResult = (MessageCloudGamingPropLogResponseResult) obj;
            return getError() == messageCloudGamingPropLogResponseResult.getError() && getDataList().equals(messageCloudGamingPropLogResponseResult.getDataList()) && getErrorMsg().equals(messageCloudGamingPropLogResponseResult.getErrorMsg()) && this.unknownFields.equals(messageCloudGamingPropLogResponseResult.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
        public PropLog getData(int index) {
            return this.data_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
        public int getDataCount() {
            return this.data_.size();
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
        public List<PropLog> getDataList() {
            return this.data_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
        public f getDataOrBuilder(int index) {
            return this.data_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
        public List<? extends f> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.c
        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPropLogResponseResult> getParserForType() {
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
            if (!getErrorMsgBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.errorMsg_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
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
            int iHashCode = ((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError();
            if (getDataCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDataList().hashCode();
            }
            int iHashCode2 = (((((iHashCode * 37) + 3) * 53) + getErrorMsg().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPropResponse.f88022f.ensureFieldAccessorsInitialized(MessageCloudGamingPropLogResponseResult.class, b.class);
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

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            int i10 = this.error_;
            if (i10 != 0) {
                output.writeInt32(1, i10);
            }
            for (int i11 = 0; i11 < this.data_.size(); i11++) {
                output.writeMessage(2, this.data_.get(i11));
            }
            if (!getErrorMsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.errorMsg_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingPropLogResponseResult(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingPropLogResponseResult prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPropLogResponseResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingPropLogResponseResult(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPropLogResponseResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropLogResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPropLogResponseResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPropLogResponseResult getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingPropLogResponseResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPropLogResponseResult() {
            this.memoizedIsInitialized = (byte) -1;
            this.data_ = Collections.emptyList();
            this.errorMsg_ = "";
        }

        public static MessageCloudGamingPropLogResponseResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingPropLogResponseResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPropLogResponseResult parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPropLogResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingPropLogResponseResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            int i10 = 0;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.error_ = input.readInt32();
                            } else if (tag == 18) {
                                if ((i10 & 2) == 0) {
                                    this.data_ = new ArrayList();
                                    i10 |= 2;
                                }
                                this.data_.add((PropLog) input.readMessage(PropLog.parser(), extensionRegistry));
                            } else if (tag != 26) {
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
                    if ((i10 & 2) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if ((i10 & 2) != 0) {
                this.data_ = Collections.unmodifiableList(this.data_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static MessageCloudGamingPropLogResponseResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropLogResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPropLogResponseResult parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPropLogResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropLogResponseResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropLogResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingPropUseResponse extends GeneratedMessageV3 implements d {
        public static final int ERRORMSG_FIELD_NUMBER = 3;
        public static final int ERROR_FIELD_NUMBER = 1;
        public static final int STATUS_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private volatile Object errorMsg_;
        private int error_;
        private byte memoizedIsInitialized;
        private boolean status_;
        private static final MessageCloudGamingPropUseResponse DEFAULT_INSTANCE = new MessageCloudGamingPropUseResponse();
        private static final Parser<MessageCloudGamingPropUseResponse> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingPropUseResponse> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPropUseResponse parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPropUseResponse(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements d {
            private Object errorMsg_;
            private int error_;
            private boolean status_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPropResponse.f88017a;
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
                this.errorMsg_ = MessageCloudGamingPropUseResponse.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            public b clearStatus() {
                this.status_ = false;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPropResponse.f88017a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.d
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.d
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.d
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.d
            public boolean getStatus() {
                return this.status_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPropResponse.f88018b.ensureFieldAccessorsInitialized(MessageCloudGamingPropUseResponse.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
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

            public b setStatus(boolean value) {
                this.status_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
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
            public MessageCloudGamingPropUseResponse build() {
                MessageCloudGamingPropUseResponse messageCloudGamingPropUseResponseBuildPartial = buildPartial();
                if (messageCloudGamingPropUseResponseBuildPartial.isInitialized()) {
                    return messageCloudGamingPropUseResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPropUseResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPropUseResponse buildPartial() {
                MessageCloudGamingPropUseResponse messageCloudGamingPropUseResponse = new MessageCloudGamingPropUseResponse(this, (a) null);
                messageCloudGamingPropUseResponse.error_ = this.error_;
                messageCloudGamingPropUseResponse.status_ = this.status_;
                messageCloudGamingPropUseResponse.errorMsg_ = this.errorMsg_;
                onBuilt();
                return messageCloudGamingPropUseResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPropUseResponse getDefaultInstanceForType() {
                return MessageCloudGamingPropUseResponse.getDefaultInstance();
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
                this.status_ = false;
                this.errorMsg_ = "";
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingPropUseResponse) {
                    return mergeFrom((MessageCloudGamingPropUseResponse) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(MessageCloudGamingPropUseResponse other) {
                if (other == MessageCloudGamingPropUseResponse.getDefaultInstance()) {
                    return this;
                }
                if (other.getError() != 0) {
                    setError(other.getError());
                }
                if (other.getStatus()) {
                    setStatus(other.getStatus());
                }
                if (!other.getErrorMsg().isEmpty()) {
                    this.errorMsg_ = other.errorMsg_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingPropUseResponse messageCloudGamingPropUseResponse = null;
                try {
                    try {
                        MessageCloudGamingPropUseResponse messageCloudGamingPropUseResponse2 = (MessageCloudGamingPropUseResponse) MessageCloudGamingPropUseResponse.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPropUseResponse2 != null) {
                            mergeFrom(messageCloudGamingPropUseResponse2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPropUseResponse messageCloudGamingPropUseResponse3 = (MessageCloudGamingPropUseResponse) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPropUseResponse = messageCloudGamingPropUseResponse3;
                            if (messageCloudGamingPropUseResponse != null) {
                                mergeFrom(messageCloudGamingPropUseResponse);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPropUseResponse != null) {
                        mergeFrom(messageCloudGamingPropUseResponse);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingPropUseResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingPropUseResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPropResponse.f88017a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPropUseResponse parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPropUseResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropUseResponse parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPropUseResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPropUseResponse)) {
                return super.equals(obj);
            }
            MessageCloudGamingPropUseResponse messageCloudGamingPropUseResponse = (MessageCloudGamingPropUseResponse) obj;
            return getError() == messageCloudGamingPropUseResponse.getError() && getStatus() == messageCloudGamingPropUseResponse.getStatus() && getErrorMsg().equals(messageCloudGamingPropUseResponse.getErrorMsg()) && this.unknownFields.equals(messageCloudGamingPropUseResponse.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.d
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.d
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.d
        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPropUseResponse> getParserForType() {
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
            boolean z10 = this.status_;
            if (z10) {
                iComputeInt32Size += CodedOutputStream.computeBoolSize(2, z10);
            }
            if (!getErrorMsgBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.errorMsg_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.d
        public boolean getStatus() {
            return this.status_;
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
            int iHashCode = ((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError()) * 37) + 2) * 53) + Internal.hashBoolean(getStatus())) * 37) + 3) * 53) + getErrorMsg().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPropResponse.f88018b.ensureFieldAccessorsInitialized(MessageCloudGamingPropUseResponse.class, b.class);
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

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            int i10 = this.error_;
            if (i10 != 0) {
                output.writeInt32(1, i10);
            }
            boolean z10 = this.status_;
            if (z10) {
                output.writeBool(2, z10);
            }
            if (!getErrorMsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.errorMsg_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingPropUseResponse(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingPropUseResponse prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPropUseResponse parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingPropUseResponse(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPropUseResponse parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropUseResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPropUseResponse parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPropUseResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingPropUseResponse parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPropUseResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.errorMsg_ = "";
        }

        public static MessageCloudGamingPropUseResponse parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingPropUseResponse parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPropUseResponse parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPropUseResponse) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingPropUseResponse(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            } else if (tag == 16) {
                                this.status_ = input.readBool();
                            } else if (tag != 26) {
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
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static MessageCloudGamingPropUseResponse parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropUseResponse) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPropUseResponse parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPropUseResponse) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropUseResponse parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropUseResponse) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class PropCard extends GeneratedMessageV3 implements e {
        public static final int CARDID_FIELD_NUMBER = 1;
        public static final int COUNT_FIELD_NUMBER = 3;
        private static final PropCard DEFAULT_INSTANCE = new PropCard();
        private static final Parser<PropCard> PARSER = new a();
        public static final int TITLE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private volatile Object cardId_;
        private int count_;
        private byte memoizedIsInitialized;
        private volatile Object title_;

        class a extends AbstractParser<PropCard> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PropCard parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new PropCard(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements e {
            private Object cardId_;
            private int count_;
            private Object title_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPropResponse.f88025i;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearCardId() {
                this.cardId_ = PropCard.getDefaultInstance().getCardId();
                onChanged();
                return this;
            }

            public b clearCount() {
                this.count_ = 0;
                onChanged();
                return this;
            }

            public b clearTitle() {
                this.title_ = PropCard.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.e
            public String getCardId() {
                Object obj = this.cardId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.cardId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.e
            public ByteString getCardIdBytes() {
                Object obj = this.cardId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cardId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.e
            public int getCount() {
                return this.count_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPropResponse.f88025i;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.e
            public String getTitle() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.title_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.e
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
                return MessageCloudGamingPropResponse.f88026j.ensureFieldAccessorsInitialized(PropCard.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setCardId(String value) {
                value.getClass();
                this.cardId_ = value;
                onChanged();
                return this;
            }

            public b setCardIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.cardId_ = value;
                onChanged();
                return this;
            }

            public b setCount(int value) {
                this.count_ = value;
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

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.cardId_ = "";
                this.title_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PropCard build() {
                PropCard propCardBuildPartial = buildPartial();
                if (propCardBuildPartial.isInitialized()) {
                    return propCardBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) propCardBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PropCard buildPartial() {
                PropCard propCard = new PropCard(this, (a) null);
                propCard.cardId_ = this.cardId_;
                propCard.title_ = this.title_;
                propCard.count_ = this.count_;
                onBuilt();
                return propCard;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PropCard getDefaultInstanceForType() {
                return PropCard.getDefaultInstance();
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
                this.cardId_ = "";
                this.title_ = "";
                this.count_ = 0;
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.cardId_ = "";
                this.title_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof PropCard) {
                    return mergeFrom((PropCard) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(PropCard other) {
                if (other == PropCard.getDefaultInstance()) {
                    return this;
                }
                if (!other.getCardId().isEmpty()) {
                    this.cardId_ = other.cardId_;
                    onChanged();
                }
                if (!other.getTitle().isEmpty()) {
                    this.title_ = other.title_;
                    onChanged();
                }
                if (other.getCount() != 0) {
                    setCount(other.getCount());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                PropCard propCard = null;
                try {
                    try {
                        PropCard propCard2 = (PropCard) PropCard.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (propCard2 != null) {
                            mergeFrom(propCard2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        PropCard propCard3 = (PropCard) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            propCard = propCard3;
                            if (propCard != null) {
                                mergeFrom(propCard);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (propCard != null) {
                        mergeFrom(propCard);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ PropCard(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static PropCard getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPropResponse.f88025i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PropCard parseDelimitedFrom(InputStream input) throws IOException {
            return (PropCard) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static PropCard parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<PropCard> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PropCard)) {
                return super.equals(obj);
            }
            PropCard propCard = (PropCard) obj;
            return getCardId().equals(propCard.getCardId()) && getTitle().equals(propCard.getTitle()) && getCount() == propCard.getCount() && this.unknownFields.equals(propCard.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.e
        public String getCardId() {
            Object obj = this.cardId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cardId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.e
        public ByteString getCardIdBytes() {
            Object obj = this.cardId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cardId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.e
        public int getCount() {
            return this.count_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<PropCard> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = getCardIdBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.cardId_);
            if (!getTitleBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.title_);
            }
            int i11 = this.count_;
            if (i11 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(3, i11);
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.e
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.e
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
            int iHashCode = ((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getCardId().hashCode()) * 37) + 2) * 53) + getTitle().hashCode()) * 37) + 3) * 53) + getCount()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPropResponse.f88026j.ensureFieldAccessorsInitialized(PropCard.class, b.class);
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

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            if (!getCardIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.cardId_);
            }
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.title_);
            }
            int i10 = this.count_;
            if (i10 != 0) {
                output.writeInt32(3, i10);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ PropCard(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(PropCard prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static PropCard parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private PropCard(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PropCard parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PropCard) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static PropCard parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PropCard getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static PropCard parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private PropCard() {
            this.memoizedIsInitialized = (byte) -1;
            this.cardId_ = "";
            this.title_ = "";
        }

        public static PropCard parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static PropCard parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static PropCard parseFrom(InputStream input) throws IOException {
            return (PropCard) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private PropCard(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.cardId_ = input.readStringRequireUtf8();
                            } else if (tag == 18) {
                                this.title_ = input.readStringRequireUtf8();
                            } else if (tag != 24) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.count_ = input.readInt32();
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

        public static PropCard parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PropCard) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static PropCard parseFrom(CodedInputStream input) throws IOException {
            return (PropCard) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static PropCard parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PropCard) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class PropLog extends GeneratedMessageV3 implements f {
        public static final int CARDID_FIELD_NUMBER = 1;
        public static final int CARDNO_FIELD_NUMBER = 7;
        public static final int ICON_FIELD_NUMBER = 3;
        public static final int STATUS_FIELD_NUMBER = 5;
        public static final int TITLE_FIELD_NUMBER = 2;
        public static final int USEDESC_FIELD_NUMBER = 6;
        public static final int USETIME_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private volatile Object cardId_;
        private int cardNo_;
        private volatile Object icon_;
        private byte memoizedIsInitialized;
        private int status_;
        private volatile Object title_;
        private volatile Object useDesc_;
        private volatile Object useTime_;
        private static final PropLog DEFAULT_INSTANCE = new PropLog();
        private static final Parser<PropLog> PARSER = new a();

        class a extends AbstractParser<PropLog> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PropLog parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new PropLog(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements f {
            private Object cardId_;
            private int cardNo_;
            private Object icon_;
            private int status_;
            private Object title_;
            private Object useDesc_;
            private Object useTime_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPropResponse.f88023g;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearCardId() {
                this.cardId_ = PropLog.getDefaultInstance().getCardId();
                onChanged();
                return this;
            }

            public b clearCardNo() {
                this.cardNo_ = 0;
                onChanged();
                return this;
            }

            public b clearIcon() {
                this.icon_ = PropLog.getDefaultInstance().getIcon();
                onChanged();
                return this;
            }

            public b clearStatus() {
                this.status_ = 0;
                onChanged();
                return this;
            }

            public b clearTitle() {
                this.title_ = PropLog.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            public b clearUseDesc() {
                this.useDesc_ = PropLog.getDefaultInstance().getUseDesc();
                onChanged();
                return this;
            }

            public b clearUseTime() {
                this.useTime_ = PropLog.getDefaultInstance().getUseTime();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
            public String getCardId() {
                Object obj = this.cardId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.cardId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
            public ByteString getCardIdBytes() {
                Object obj = this.cardId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cardId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
            public int getCardNo() {
                return this.cardNo_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPropResponse.f88023g;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
            public String getIcon() {
                Object obj = this.icon_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.icon_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
            public ByteString getIconBytes() {
                Object obj = this.icon_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.icon_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
            public int getStatus() {
                return this.status_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
            public String getTitle() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.title_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
            public ByteString getTitleBytes() {
                Object obj = this.title_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.title_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
            public String getUseDesc() {
                Object obj = this.useDesc_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.useDesc_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
            public ByteString getUseDescBytes() {
                Object obj = this.useDesc_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.useDesc_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
            public String getUseTime() {
                Object obj = this.useTime_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.useTime_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
            public ByteString getUseTimeBytes() {
                Object obj = this.useTime_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.useTime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPropResponse.f88024h.ensureFieldAccessorsInitialized(PropLog.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setCardId(String value) {
                value.getClass();
                this.cardId_ = value;
                onChanged();
                return this;
            }

            public b setCardIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.cardId_ = value;
                onChanged();
                return this;
            }

            public b setCardNo(int value) {
                this.cardNo_ = value;
                onChanged();
                return this;
            }

            public b setIcon(String value) {
                value.getClass();
                this.icon_ = value;
                onChanged();
                return this;
            }

            public b setIconBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.icon_ = value;
                onChanged();
                return this;
            }

            public b setStatus(int value) {
                this.status_ = value;
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

            public b setUseDesc(String value) {
                value.getClass();
                this.useDesc_ = value;
                onChanged();
                return this;
            }

            public b setUseDescBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.useDesc_ = value;
                onChanged();
                return this;
            }

            public b setUseTime(String value) {
                value.getClass();
                this.useTime_ = value;
                onChanged();
                return this;
            }

            public b setUseTimeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.useTime_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.cardId_ = "";
                this.title_ = "";
                this.icon_ = "";
                this.useTime_ = "";
                this.useDesc_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PropLog build() {
                PropLog propLogBuildPartial = buildPartial();
                if (propLogBuildPartial.isInitialized()) {
                    return propLogBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) propLogBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PropLog buildPartial() {
                PropLog propLog = new PropLog(this, (a) null);
                propLog.cardId_ = this.cardId_;
                propLog.title_ = this.title_;
                propLog.icon_ = this.icon_;
                propLog.useTime_ = this.useTime_;
                propLog.status_ = this.status_;
                propLog.useDesc_ = this.useDesc_;
                propLog.cardNo_ = this.cardNo_;
                onBuilt();
                return propLog;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PropLog getDefaultInstanceForType() {
                return PropLog.getDefaultInstance();
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
                this.cardId_ = "";
                this.title_ = "";
                this.icon_ = "";
                this.useTime_ = "";
                this.status_ = 0;
                this.useDesc_ = "";
                this.cardNo_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof PropLog) {
                    return mergeFrom((PropLog) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.cardId_ = "";
                this.title_ = "";
                this.icon_ = "";
                this.useTime_ = "";
                this.useDesc_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(PropLog other) {
                if (other == PropLog.getDefaultInstance()) {
                    return this;
                }
                if (!other.getCardId().isEmpty()) {
                    this.cardId_ = other.cardId_;
                    onChanged();
                }
                if (!other.getTitle().isEmpty()) {
                    this.title_ = other.title_;
                    onChanged();
                }
                if (!other.getIcon().isEmpty()) {
                    this.icon_ = other.icon_;
                    onChanged();
                }
                if (!other.getUseTime().isEmpty()) {
                    this.useTime_ = other.useTime_;
                    onChanged();
                }
                if (other.getStatus() != 0) {
                    setStatus(other.getStatus());
                }
                if (!other.getUseDesc().isEmpty()) {
                    this.useDesc_ = other.useDesc_;
                    onChanged();
                }
                if (other.getCardNo() != 0) {
                    setCardNo(other.getCardNo());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                PropLog propLog = null;
                try {
                    try {
                        PropLog propLog2 = (PropLog) PropLog.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (propLog2 != null) {
                            mergeFrom(propLog2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        PropLog propLog3 = (PropLog) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            propLog = propLog3;
                            if (propLog != null) {
                                mergeFrom(propLog);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (propLog != null) {
                        mergeFrom(propLog);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ PropLog(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static PropLog getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPropResponse.f88023g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PropLog parseDelimitedFrom(InputStream input) throws IOException {
            return (PropLog) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static PropLog parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<PropLog> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PropLog)) {
                return super.equals(obj);
            }
            PropLog propLog = (PropLog) obj;
            return getCardId().equals(propLog.getCardId()) && getTitle().equals(propLog.getTitle()) && getIcon().equals(propLog.getIcon()) && getUseTime().equals(propLog.getUseTime()) && getStatus() == propLog.getStatus() && getUseDesc().equals(propLog.getUseDesc()) && getCardNo() == propLog.getCardNo() && this.unknownFields.equals(propLog.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
        public String getCardId() {
            Object obj = this.cardId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cardId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
        public ByteString getCardIdBytes() {
            Object obj = this.cardId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cardId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
        public int getCardNo() {
            return this.cardNo_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
        public String getIcon() {
            Object obj = this.icon_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.icon_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
        public ByteString getIconBytes() {
            Object obj = this.icon_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.icon_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<PropLog> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = getCardIdBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.cardId_);
            if (!getTitleBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.title_);
            }
            if (!getIconBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(3, this.icon_);
            }
            if (!getUseTimeBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(4, this.useTime_);
            }
            int i11 = this.status_;
            if (i11 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(5, i11);
            }
            if (!getUseDescBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(6, this.useDesc_);
            }
            int i12 = this.cardNo_;
            if (i12 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(7, i12);
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
        public int getStatus() {
            return this.status_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
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

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
        public String getUseDesc() {
            Object obj = this.useDesc_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.useDesc_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
        public ByteString getUseDescBytes() {
            Object obj = this.useDesc_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.useDesc_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
        public String getUseTime() {
            Object obj = this.useTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.useTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropResponse.f
        public ByteString getUseTimeBytes() {
            Object obj = this.useTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.useTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getCardId().hashCode()) * 37) + 2) * 53) + getTitle().hashCode()) * 37) + 3) * 53) + getIcon().hashCode()) * 37) + 4) * 53) + getUseTime().hashCode()) * 37) + 5) * 53) + getStatus()) * 37) + 6) * 53) + getUseDesc().hashCode()) * 37) + 7) * 53) + getCardNo()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPropResponse.f88024h.ensureFieldAccessorsInitialized(PropLog.class, b.class);
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

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            if (!getCardIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.cardId_);
            }
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.title_);
            }
            if (!getIconBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.icon_);
            }
            if (!getUseTimeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.useTime_);
            }
            int i10 = this.status_;
            if (i10 != 0) {
                output.writeInt32(5, i10);
            }
            if (!getUseDescBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.useDesc_);
            }
            int i11 = this.cardNo_;
            if (i11 != 0) {
                output.writeInt32(7, i11);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ PropLog(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(PropLog prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static PropLog parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private PropLog(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PropLog parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PropLog) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static PropLog parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PropLog getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static PropLog parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private PropLog() {
            this.memoizedIsInitialized = (byte) -1;
            this.cardId_ = "";
            this.title_ = "";
            this.icon_ = "";
            this.useTime_ = "";
            this.useDesc_ = "";
        }

        public static PropLog parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static PropLog parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static PropLog parseFrom(InputStream input) throws IOException {
            return (PropLog) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static PropLog parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PropLog) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static PropLog parseFrom(CodedInputStream input) throws IOException {
            return (PropLog) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private PropLog(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.cardId_ = input.readStringRequireUtf8();
                            } else if (tag == 18) {
                                this.title_ = input.readStringRequireUtf8();
                            } else if (tag == 26) {
                                this.icon_ = input.readStringRequireUtf8();
                            } else if (tag == 34) {
                                this.useTime_ = input.readStringRequireUtf8();
                            } else if (tag == 40) {
                                this.status_ = input.readInt32();
                            } else if (tag == 50) {
                                this.useDesc_ = input.readStringRequireUtf8();
                            } else if (tag != 56) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.cardNo_ = input.readInt32();
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

        public static PropLog parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PropLog) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageCloudGamingPropResponse.f88027k = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        PropCard getData(int index);

        int getDataCount();

        List<PropCard> getDataList();

        e getDataOrBuilder(int index);

        List<? extends e> getDataOrBuilderList();

        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();
    }

    public interface c extends MessageOrBuilder {
        PropLog getData(int index);

        int getDataCount();

        List<PropLog> getDataList();

        f getDataOrBuilder(int index);

        List<? extends f> getDataOrBuilderList();

        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();
    }

    public interface d extends MessageOrBuilder {
        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        boolean getStatus();
    }

    public interface e extends MessageOrBuilder {
        String getCardId();

        ByteString getCardIdBytes();

        int getCount();

        String getTitle();

        ByteString getTitleBytes();
    }

    public interface f extends MessageOrBuilder {
        String getCardId();

        ByteString getCardIdBytes();

        int getCardNo();

        String getIcon();

        ByteString getIconBytes();

        int getStatus();

        String getTitle();

        ByteString getTitleBytes();

        String getUseDesc();

        ByteString getUseDescBytes();

        String getUseTime();

        ByteString getUseTimeBytes();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n cloud_gaming_prop_response.proto\"T\n!MessageCloudGamingPropUseResponse\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006status\u0018\u0002 \u0001(\b\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\t\"^\n\"MessageCloudGamingPropCardResponse\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\t\u0012\u0017\n\u0004data\u0018\u0002 \u0003(\u000b2\t.PropCard\"b\n'MessageCloudGamingPropLogResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0016\n\u0004data\u0018\u0002 \u0003(\u000b2\b.PropLog\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\t\"x\n\u0007PropLog\u0012\u000e\n\u0006cardId\u0018\u0001 \u0001(\t\u0012\r\n\u0005title\u0018\u0002 \u0001(\t\u0012\f\n\u0004icon\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007useTime\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006status\u0018\u0005 \u0001(\u0005\u0012\u000f\n\u0007useDesc\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006cardNo\u0018\u0007 \u0001(\u0005\"8\n\bPropCard\u0012\u000e\n\u0006cardId\u0018\u0001 \u0001(\t\u0012\r\n\u0005title\u0018\u0002 \u0001(\t\u0012\r\n\u0005count\u0018\u0003 \u0001(\u0005BA\n\u001fcom.wufan.user.service.protobufB\u001eMessageCloudGamingPropResponseb\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = l().getMessageTypes().get(0);
        f88017a = descriptor;
        f88018b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Error", "Status", "ErrorMsg"});
        Descriptors.Descriptor descriptor2 = l().getMessageTypes().get(1);
        f88019c = descriptor2;
        f88020d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Error", "ErrorMsg", "Data"});
        Descriptors.Descriptor descriptor3 = l().getMessageTypes().get(2);
        f88021e = descriptor3;
        f88022f = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"Error", "Data", "ErrorMsg"});
        Descriptors.Descriptor descriptor4 = l().getMessageTypes().get(3);
        f88023g = descriptor4;
        f88024h = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"CardId", "Title", "Icon", "UseTime", "Status", "UseDesc", "CardNo"});
        Descriptors.Descriptor descriptor5 = l().getMessageTypes().get(4);
        f88025i = descriptor5;
        f88026j = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"CardId", "Title", "Count"});
    }

    private MessageCloudGamingPropResponse() {
    }

    public static Descriptors.FileDescriptor l() {
        return f88027k;
    }

    public static void m(ExtensionRegistry registry) {
        n(registry);
    }

    public static void n(ExtensionRegistryLite registry) {
    }
}
