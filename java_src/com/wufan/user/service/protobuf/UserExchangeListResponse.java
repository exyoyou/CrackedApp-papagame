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
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class UserExchangeListResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f88105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88107e;

    public static final class ExchangeList extends GeneratedMessageV3 implements b {
        public static final int CARMINE_FIELD_NUMBER = 3;
        public static final int CREATETIME_FIELD_NUMBER = 6;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int SKUNAME_FIELD_NUMBER = 4;
        public static final int STATUS_FIELD_NUMBER = 5;
        public static final int UID_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private volatile Object carmine_;
        private volatile Object createTime_;
        private int id_;
        private byte memoizedIsInitialized;
        private volatile Object skuName_;
        private int status_;
        private int uid_;
        private static final ExchangeList DEFAULT_INSTANCE = new ExchangeList();
        private static final Parser<ExchangeList> PARSER = new a();

        class a extends AbstractParser<ExchangeList> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ExchangeList parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new ExchangeList(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object carmine_;
            private Object createTime_;
            private int id_;
            private Object skuName_;
            private int status_;
            private int uid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UserExchangeListResponse.f88105c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearCarmine() {
                this.carmine_ = ExchangeList.getDefaultInstance().getCarmine();
                onChanged();
                return this;
            }

            public b clearCreateTime() {
                this.createTime_ = ExchangeList.getDefaultInstance().getCreateTime();
                onChanged();
                return this;
            }

            public b clearId() {
                this.id_ = 0;
                onChanged();
                return this;
            }

            public b clearSkuName() {
                this.skuName_ = ExchangeList.getDefaultInstance().getSkuName();
                onChanged();
                return this;
            }

            public b clearStatus() {
                this.status_ = 0;
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
            public String getCarmine() {
                Object obj = this.carmine_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.carmine_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
            public ByteString getCarmineBytes() {
                Object obj = this.carmine_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.carmine_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
            public String getCreateTime() {
                Object obj = this.createTime_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.createTime_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
            public ByteString getCreateTimeBytes() {
                Object obj = this.createTime_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.createTime_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return UserExchangeListResponse.f88105c;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
            public int getId() {
                return this.id_;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
            public String getSkuName() {
                Object obj = this.skuName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.skuName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
            public ByteString getSkuNameBytes() {
                Object obj = this.skuName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.skuName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
            public int getStatus() {
                return this.status_;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return UserExchangeListResponse.f88106d.ensureFieldAccessorsInitialized(ExchangeList.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setCarmine(String value) {
                value.getClass();
                this.carmine_ = value;
                onChanged();
                return this;
            }

            public b setCarmineBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.carmine_ = value;
                onChanged();
                return this;
            }

            public b setCreateTime(String value) {
                value.getClass();
                this.createTime_ = value;
                onChanged();
                return this;
            }

            public b setCreateTimeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.createTime_ = value;
                onChanged();
                return this;
            }

            public b setId(int value) {
                this.id_ = value;
                onChanged();
                return this;
            }

            public b setSkuName(String value) {
                value.getClass();
                this.skuName_ = value;
                onChanged();
                return this;
            }

            public b setSkuNameBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.skuName_ = value;
                onChanged();
                return this;
            }

            public b setStatus(int value) {
                this.status_ = value;
                onChanged();
                return this;
            }

            public b setUid(int value) {
                this.uid_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.carmine_ = "";
                this.skuName_ = "";
                this.createTime_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ExchangeList build() {
                ExchangeList exchangeListBuildPartial = buildPartial();
                if (exchangeListBuildPartial.isInitialized()) {
                    return exchangeListBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) exchangeListBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ExchangeList buildPartial() {
                ExchangeList exchangeList = new ExchangeList(this, (a) null);
                exchangeList.id_ = this.id_;
                exchangeList.uid_ = this.uid_;
                exchangeList.carmine_ = this.carmine_;
                exchangeList.skuName_ = this.skuName_;
                exchangeList.status_ = this.status_;
                exchangeList.createTime_ = this.createTime_;
                onBuilt();
                return exchangeList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ExchangeList getDefaultInstanceForType() {
                return ExchangeList.getDefaultInstance();
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
                this.id_ = 0;
                this.uid_ = 0;
                this.carmine_ = "";
                this.skuName_ = "";
                this.status_ = 0;
                this.createTime_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof ExchangeList) {
                    return mergeFrom((ExchangeList) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.carmine_ = "";
                this.skuName_ = "";
                this.createTime_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(ExchangeList other) {
                if (other == ExchangeList.getDefaultInstance()) {
                    return this;
                }
                if (other.getId() != 0) {
                    setId(other.getId());
                }
                if (other.getUid() != 0) {
                    setUid(other.getUid());
                }
                if (!other.getCarmine().isEmpty()) {
                    this.carmine_ = other.carmine_;
                    onChanged();
                }
                if (!other.getSkuName().isEmpty()) {
                    this.skuName_ = other.skuName_;
                    onChanged();
                }
                if (other.getStatus() != 0) {
                    setStatus(other.getStatus());
                }
                if (!other.getCreateTime().isEmpty()) {
                    this.createTime_ = other.createTime_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                ExchangeList exchangeList = null;
                try {
                    try {
                        ExchangeList exchangeList2 = (ExchangeList) ExchangeList.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (exchangeList2 != null) {
                            mergeFrom(exchangeList2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        ExchangeList exchangeList3 = (ExchangeList) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            exchangeList = exchangeList3;
                            if (exchangeList != null) {
                                mergeFrom(exchangeList);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (exchangeList != null) {
                        mergeFrom(exchangeList);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ ExchangeList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ExchangeList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return UserExchangeListResponse.f88105c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ExchangeList parseDelimitedFrom(InputStream input) throws IOException {
            return (ExchangeList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static ExchangeList parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<ExchangeList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ExchangeList)) {
                return super.equals(obj);
            }
            ExchangeList exchangeList = (ExchangeList) obj;
            return getId() == exchangeList.getId() && getUid() == exchangeList.getUid() && getCarmine().equals(exchangeList.getCarmine()) && getSkuName().equals(exchangeList.getSkuName()) && getStatus() == exchangeList.getStatus() && getCreateTime().equals(exchangeList.getCreateTime()) && this.unknownFields.equals(exchangeList.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
        public String getCarmine() {
            Object obj = this.carmine_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.carmine_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
        public ByteString getCarmineBytes() {
            Object obj = this.carmine_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.carmine_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
        public String getCreateTime() {
            Object obj = this.createTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.createTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
        public ByteString getCreateTimeBytes() {
            Object obj = this.createTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.createTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
        public int getId() {
            return this.id_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ExchangeList> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = this.id_;
            int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
            int i12 = this.uid_;
            if (i12 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, i12);
            }
            if (!getCarmineBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.carmine_);
            }
            if (!getSkuNameBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(4, this.skuName_);
            }
            int i13 = this.status_;
            if (i13 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(5, i13);
            }
            if (!getCreateTimeBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.createTime_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
        public String getSkuName() {
            Object obj = this.skuName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.skuName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
        public ByteString getSkuNameBytes() {
            Object obj = this.skuName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.skuName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
        public int getStatus() {
            return this.status_;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.b
        public int getUid() {
            return this.uid_;
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
            int iHashCode = ((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getId()) * 37) + 2) * 53) + getUid()) * 37) + 3) * 53) + getCarmine().hashCode()) * 37) + 4) * 53) + getSkuName().hashCode()) * 37) + 5) * 53) + getStatus()) * 37) + 6) * 53) + getCreateTime().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return UserExchangeListResponse.f88106d.ensureFieldAccessorsInitialized(ExchangeList.class, b.class);
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
            int i10 = this.id_;
            if (i10 != 0) {
                output.writeInt32(1, i10);
            }
            int i11 = this.uid_;
            if (i11 != 0) {
                output.writeInt32(2, i11);
            }
            if (!getCarmineBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.carmine_);
            }
            if (!getSkuNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.skuName_);
            }
            int i12 = this.status_;
            if (i12 != 0) {
                output.writeInt32(5, i12);
            }
            if (!getCreateTimeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.createTime_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ ExchangeList(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(ExchangeList prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static ExchangeList parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private ExchangeList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ExchangeList parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ExchangeList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static ExchangeList parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ExchangeList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static ExchangeList parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private ExchangeList() {
            this.memoizedIsInitialized = (byte) -1;
            this.carmine_ = "";
            this.skuName_ = "";
            this.createTime_ = "";
        }

        public static ExchangeList parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static ExchangeList parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static ExchangeList parseFrom(InputStream input) throws IOException {
            return (ExchangeList) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static ExchangeList parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ExchangeList) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private ExchangeList(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.id_ = input.readInt32();
                            } else if (tag == 16) {
                                this.uid_ = input.readInt32();
                            } else if (tag == 26) {
                                this.carmine_ = input.readStringRequireUtf8();
                            } else if (tag == 34) {
                                this.skuName_ = input.readStringRequireUtf8();
                            } else if (tag == 40) {
                                this.status_ = input.readInt32();
                            } else if (tag != 50) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.createTime_ = input.readStringRequireUtf8();
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

        public static ExchangeList parseFrom(CodedInputStream input) throws IOException {
            return (ExchangeList) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static ExchangeList parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ExchangeList) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class ExchangeListResult extends GeneratedMessageV3 implements c {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int ERRORMSG_FIELD_NUMBER = 3;
        public static final int ERROR_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private List<ExchangeList> data_;
        private volatile Object errorMsg_;
        private int error_;
        private byte memoizedIsInitialized;
        private static final ExchangeListResult DEFAULT_INSTANCE = new ExchangeListResult();
        private static final Parser<ExchangeListResult> PARSER = new a();

        class a extends AbstractParser<ExchangeListResult> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ExchangeListResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new ExchangeListResult(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements c {
            private int bitField0_;
            private RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> dataBuilder_;
            private List<ExchangeList> data_;
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

            private RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new RepeatedFieldBuilderV3<>(this.data_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UserExchangeListResponse.f88103a;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                }
            }

            public b addAllData(Iterable<? extends ExchangeList> values) {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.data_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(values);
                }
                return this;
            }

            public b addData(ExchangeList value) {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
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

            public ExchangeList.b addDataBuilder() {
                return (ExchangeList.b) getDataFieldBuilder().addBuilder(ExchangeList.getDefaultInstance());
            }

            public b clearData() {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
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
                this.errorMsg_ = ExchangeListResult.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
            public ExchangeList getData(int index) {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.get(index) : (ExchangeList) repeatedFieldBuilderV3.getMessage(index);
            }

            public ExchangeList.b getDataBuilder(int index) {
                return (ExchangeList.b) getDataFieldBuilder().getBuilder(index);
            }

            public List<ExchangeList.b> getDataBuilderList() {
                return getDataFieldBuilder().getBuilderList();
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
            public int getDataCount() {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
            public List<ExchangeList> getDataList() {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.data_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
            public b getDataOrBuilder(int index) {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.get(index) : (b) repeatedFieldBuilderV3.getMessageOrBuilder(index);
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
            public List<? extends b> getDataOrBuilderList() {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.data_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return UserExchangeListResponse.f88103a;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
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
                return UserExchangeListResponse.f88104b.ensureFieldAccessorsInitialized(ExchangeListResult.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b removeData(int index) {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.remove(index);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(index);
                }
                return this;
            }

            public b setData(int index, ExchangeList value) {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
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
            public ExchangeListResult build() {
                ExchangeListResult exchangeListResultBuildPartial = buildPartial();
                if (exchangeListResultBuildPartial.isInitialized()) {
                    return exchangeListResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) exchangeListResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ExchangeListResult buildPartial() {
                ExchangeListResult exchangeListResult = new ExchangeListResult(this, (a) null);
                exchangeListResult.error_ = this.error_;
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    exchangeListResult.data_ = repeatedFieldBuilderV3.build();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -3;
                    }
                    exchangeListResult.data_ = this.data_;
                }
                exchangeListResult.errorMsg_ = this.errorMsg_;
                exchangeListResult.bitField0_ = 0;
                onBuilt();
                return exchangeListResult;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ExchangeListResult getDefaultInstanceForType() {
                return ExchangeListResult.getDefaultInstance();
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

            public ExchangeList.b addDataBuilder(int index) {
                return (ExchangeList.b) getDataFieldBuilder().addBuilder(index, ExchangeList.getDefaultInstance());
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
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
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

            public b addData(int index, ExchangeList value) {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
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
                if (other instanceof ExchangeListResult) {
                    return mergeFrom((ExchangeListResult) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b setData(int index, ExchangeList.b builderForValue) {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.set(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
                }
                return this;
            }

            public b mergeFrom(ExchangeListResult other) {
                if (other == ExchangeListResult.getDefaultInstance()) {
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

            public b addData(ExchangeList.b builderForValue) {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.add(builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builderForValue.build());
                }
                return this;
            }

            public b addData(int index, ExchangeList.b builderForValue) {
                RepeatedFieldBuilderV3<ExchangeList, ExchangeList.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
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
                ExchangeListResult exchangeListResult = null;
                try {
                    try {
                        ExchangeListResult exchangeListResult2 = (ExchangeListResult) ExchangeListResult.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (exchangeListResult2 != null) {
                            mergeFrom(exchangeListResult2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        ExchangeListResult exchangeListResult3 = (ExchangeListResult) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            exchangeListResult = exchangeListResult3;
                            if (exchangeListResult != null) {
                                mergeFrom(exchangeListResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (exchangeListResult != null) {
                        mergeFrom(exchangeListResult);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ ExchangeListResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ExchangeListResult getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return UserExchangeListResponse.f88103a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ExchangeListResult parseDelimitedFrom(InputStream input) throws IOException {
            return (ExchangeListResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static ExchangeListResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<ExchangeListResult> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ExchangeListResult)) {
                return super.equals(obj);
            }
            ExchangeListResult exchangeListResult = (ExchangeListResult) obj;
            return getError() == exchangeListResult.getError() && getDataList().equals(exchangeListResult.getDataList()) && getErrorMsg().equals(exchangeListResult.getErrorMsg()) && this.unknownFields.equals(exchangeListResult.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
        public ExchangeList getData(int index) {
            return this.data_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
        public int getDataCount() {
            return this.data_.size();
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
        public List<ExchangeList> getDataList() {
            return this.data_;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
        public b getDataOrBuilder(int index) {
            return this.data_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
        public List<? extends b> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeListResponse.c
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
        public Parser<ExchangeListResult> getParserForType() {
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
            return UserExchangeListResponse.f88104b.ensureFieldAccessorsInitialized(ExchangeListResult.class, b.class);
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

        /* synthetic */ ExchangeListResult(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(ExchangeListResult prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static ExchangeListResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private ExchangeListResult(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ExchangeListResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ExchangeListResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static ExchangeListResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ExchangeListResult getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static ExchangeListResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private ExchangeListResult() {
            this.memoizedIsInitialized = (byte) -1;
            this.data_ = Collections.emptyList();
            this.errorMsg_ = "";
        }

        public static ExchangeListResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static ExchangeListResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static ExchangeListResult parseFrom(InputStream input) throws IOException {
            return (ExchangeListResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private ExchangeListResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.data_.add((ExchangeList) input.readMessage(ExchangeList.parser(), extensionRegistry));
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

        public static ExchangeListResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ExchangeListResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static ExchangeListResult parseFrom(CodedInputStream input) throws IOException {
            return (ExchangeListResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static ExchangeListResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ExchangeListResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = UserExchangeListResponse.f88107e = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getCarmine();

        ByteString getCarmineBytes();

        String getCreateTime();

        ByteString getCreateTimeBytes();

        int getId();

        String getSkuName();

        ByteString getSkuNameBytes();

        int getStatus();

        int getUid();
    }

    public interface c extends MessageOrBuilder {
        ExchangeList getData(int index);

        int getDataCount();

        List<ExchangeList> getDataList();

        b getDataOrBuilder(int index);

        List<? extends b> getDataOrBuilderList();

        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n%user_exchange_sku_list_response.proto\"R\n\u0012ExchangeListResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u001b\n\u0004data\u0018\u0002 \u0003(\u000b2\r.ExchangeList\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\t\"m\n\fExchangeList\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003uid\u0018\u0002 \u0001(\u0005\u0012\u000f\n\u0007carmine\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007skuName\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006status\u0018\u0005 \u0001(\u0005\u0012\u0012\n\ncreateTime\u0018\u0006 \u0001(\tB;\n\u001fcom.wufan.user.service.protobufB\u0018UserExchangeListResponseb\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = f().getMessageTypes().get(0);
        f88103a = descriptor;
        f88104b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Error", "Data", "ErrorMsg"});
        Descriptors.Descriptor descriptor2 = f().getMessageTypes().get(1);
        f88105c = descriptor2;
        f88106d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Id", "Uid", "Carmine", "SkuName", "Status", "CreateTime"});
    }

    private UserExchangeListResponse() {
    }

    public static Descriptors.FileDescriptor f() {
        return f88107e;
    }

    public static void g(ExtensionRegistry registry) {
        h(registry);
    }

    public static void h(ExtensionRegistryLite registry) {
    }
}
