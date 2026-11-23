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
public final class MessageCloudGamingArchivingCfgResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f87941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f87943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Descriptors.FileDescriptor f87945e;

    public static final class CfgInfo extends GeneratedMessageV3 implements b {
        public static final int ARCHIVETIME_FIELD_NUMBER = 2;
        public static final int GAMEID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private long archiveTime_;
        private long gameId_;
        private byte memoizedIsInitialized;
        private static final CfgInfo DEFAULT_INSTANCE = new CfgInfo();
        private static final Parser<CfgInfo> PARSER = new a();

        class a extends AbstractParser<CfgInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public CfgInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new CfgInfo(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private long archiveTime_;
            private long gameId_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingArchivingCfgResponse.f87943c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearArchiveTime() {
                this.archiveTime_ = 0L;
                onChanged();
                return this;
            }

            public b clearGameId() {
                this.gameId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.b
            public long getArchiveTime() {
                return this.archiveTime_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingArchivingCfgResponse.f87943c;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.b
            public long getGameId() {
                return this.gameId_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingArchivingCfgResponse.f87944d.ensureFieldAccessorsInitialized(CfgInfo.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setArchiveTime(long value) {
                this.archiveTime_ = value;
                onChanged();
                return this;
            }

            public b setGameId(long value) {
                this.gameId_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CfgInfo build() {
                CfgInfo cfgInfoBuildPartial = buildPartial();
                if (cfgInfoBuildPartial.isInitialized()) {
                    return cfgInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cfgInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CfgInfo buildPartial() {
                CfgInfo cfgInfo = new CfgInfo(this, (a) null);
                cfgInfo.gameId_ = this.gameId_;
                cfgInfo.archiveTime_ = this.archiveTime_;
                onBuilt();
                return cfgInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CfgInfo getDefaultInstanceForType() {
                return CfgInfo.getDefaultInstance();
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

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b clear() {
                super.clear();
                this.gameId_ = 0L;
                this.archiveTime_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof CfgInfo) {
                    return mergeFrom((CfgInfo) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(CfgInfo other) {
                if (other == CfgInfo.getDefaultInstance()) {
                    return this;
                }
                if (other.getGameId() != 0) {
                    setGameId(other.getGameId());
                }
                if (other.getArchiveTime() != 0) {
                    setArchiveTime(other.getArchiveTime());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                CfgInfo cfgInfo = null;
                try {
                    try {
                        CfgInfo cfgInfo2 = (CfgInfo) CfgInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (cfgInfo2 != null) {
                            mergeFrom(cfgInfo2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        CfgInfo cfgInfo3 = (CfgInfo) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            cfgInfo = cfgInfo3;
                            if (cfgInfo != null) {
                                mergeFrom(cfgInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cfgInfo != null) {
                        mergeFrom(cfgInfo);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ CfgInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static CfgInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingArchivingCfgResponse.f87943c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static CfgInfo parseDelimitedFrom(InputStream input) throws IOException {
            return (CfgInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static CfgInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<CfgInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CfgInfo)) {
                return super.equals(obj);
            }
            CfgInfo cfgInfo = (CfgInfo) obj;
            return getGameId() == cfgInfo.getGameId() && getArchiveTime() == cfgInfo.getArchiveTime() && this.unknownFields.equals(cfgInfo.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.b
        public long getArchiveTime() {
            return this.archiveTime_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.b
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CfgInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            long j10 = this.gameId_;
            int iComputeInt64Size = j10 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j10) : 0;
            long j11 = this.archiveTime_;
            if (j11 != 0) {
                iComputeInt64Size += CodedOutputStream.computeInt64Size(2, j11);
            }
            int serializedSize = iComputeInt64Size + this.unknownFields.getSerializedSize();
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
            int iHashCode = ((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(getGameId())) * 37) + 2) * 53) + Internal.hashLong(getArchiveTime())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingArchivingCfgResponse.f87944d.ensureFieldAccessorsInitialized(CfgInfo.class, b.class);
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
            long j10 = this.gameId_;
            if (j10 != 0) {
                output.writeInt64(1, j10);
            }
            long j11 = this.archiveTime_;
            if (j11 != 0) {
                output.writeInt64(2, j11);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ CfgInfo(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(CfgInfo prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static CfgInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private CfgInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CfgInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CfgInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static CfgInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CfgInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static CfgInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private CfgInfo() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CfgInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static CfgInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private CfgInfo(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int tag = input.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.gameId_ = input.readInt64();
                                } else if (tag != 16) {
                                    if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                    }
                                } else {
                                    this.archiveTime_ = input.readInt64();
                                }
                            }
                            z10 = true;
                        } catch (IOException e10) {
                            throw new InvalidProtocolBufferException(e10).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e11) {
                        throw e11.setUnfinishedMessage(this);
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

        public static CfgInfo parseFrom(InputStream input) throws IOException {
            return (CfgInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static CfgInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CfgInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static CfgInfo parseFrom(CodedInputStream input) throws IOException {
            return (CfgInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static CfgInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CfgInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingArchivingCfgResponseResult extends GeneratedMessageV3 implements c {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int ERRORMSG_FIELD_NUMBER = 3;
        public static final int ERROR_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private List<CfgInfo> data_;
        private volatile Object errorMsg_;
        private int error_;
        private byte memoizedIsInitialized;
        private static final MessageCloudGamingArchivingCfgResponseResult DEFAULT_INSTANCE = new MessageCloudGamingArchivingCfgResponseResult();
        private static final Parser<MessageCloudGamingArchivingCfgResponseResult> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingArchivingCfgResponseResult> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingArchivingCfgResponseResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingArchivingCfgResponseResult(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements c {
            private int bitField0_;
            private RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> dataBuilder_;
            private List<CfgInfo> data_;
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

            private RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new RepeatedFieldBuilderV3<>(this.data_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingArchivingCfgResponse.f87941a;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                }
            }

            public b addAllData(Iterable<? extends CfgInfo> values) {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.data_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(values);
                }
                return this;
            }

            public b addData(CfgInfo value) {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
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

            public CfgInfo.b addDataBuilder() {
                return (CfgInfo.b) getDataFieldBuilder().addBuilder(CfgInfo.getDefaultInstance());
            }

            public b clearData() {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
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
                this.errorMsg_ = MessageCloudGamingArchivingCfgResponseResult.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
            public CfgInfo getData(int index) {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.get(index) : (CfgInfo) repeatedFieldBuilderV3.getMessage(index);
            }

            public CfgInfo.b getDataBuilder(int index) {
                return (CfgInfo.b) getDataFieldBuilder().getBuilder(index);
            }

            public List<CfgInfo.b> getDataBuilderList() {
                return getDataFieldBuilder().getBuilderList();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
            public int getDataCount() {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
            public List<CfgInfo> getDataList() {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.data_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
            public b getDataOrBuilder(int index) {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.get(index) : (b) repeatedFieldBuilderV3.getMessageOrBuilder(index);
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
            public List<? extends b> getDataOrBuilderList() {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.data_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingArchivingCfgResponse.f87941a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
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
                return MessageCloudGamingArchivingCfgResponse.f87942b.ensureFieldAccessorsInitialized(MessageCloudGamingArchivingCfgResponseResult.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b removeData(int index) {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.remove(index);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(index);
                }
                return this;
            }

            public b setData(int index, CfgInfo value) {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
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
            public MessageCloudGamingArchivingCfgResponseResult build() {
                MessageCloudGamingArchivingCfgResponseResult messageCloudGamingArchivingCfgResponseResultBuildPartial = buildPartial();
                if (messageCloudGamingArchivingCfgResponseResultBuildPartial.isInitialized()) {
                    return messageCloudGamingArchivingCfgResponseResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingArchivingCfgResponseResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingArchivingCfgResponseResult buildPartial() {
                MessageCloudGamingArchivingCfgResponseResult messageCloudGamingArchivingCfgResponseResult = new MessageCloudGamingArchivingCfgResponseResult(this, (a) null);
                messageCloudGamingArchivingCfgResponseResult.error_ = this.error_;
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    messageCloudGamingArchivingCfgResponseResult.data_ = repeatedFieldBuilderV3.build();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -3;
                    }
                    messageCloudGamingArchivingCfgResponseResult.data_ = this.data_;
                }
                messageCloudGamingArchivingCfgResponseResult.errorMsg_ = this.errorMsg_;
                messageCloudGamingArchivingCfgResponseResult.bitField0_ = 0;
                onBuilt();
                return messageCloudGamingArchivingCfgResponseResult;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingArchivingCfgResponseResult getDefaultInstanceForType() {
                return MessageCloudGamingArchivingCfgResponseResult.getDefaultInstance();
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

            public CfgInfo.b addDataBuilder(int index) {
                return (CfgInfo.b) getDataFieldBuilder().addBuilder(index, CfgInfo.getDefaultInstance());
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
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
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

            public b addData(int index, CfgInfo value) {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
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
                if (other instanceof MessageCloudGamingArchivingCfgResponseResult) {
                    return mergeFrom((MessageCloudGamingArchivingCfgResponseResult) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b setData(int index, CfgInfo.b builderForValue) {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.set(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
                }
                return this;
            }

            public b mergeFrom(MessageCloudGamingArchivingCfgResponseResult other) {
                if (other == MessageCloudGamingArchivingCfgResponseResult.getDefaultInstance()) {
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

            public b addData(CfgInfo.b builderForValue) {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.add(builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builderForValue.build());
                }
                return this;
            }

            public b addData(int index, CfgInfo.b builderForValue) {
                RepeatedFieldBuilderV3<CfgInfo, CfgInfo.b, b> repeatedFieldBuilderV3 = this.dataBuilder_;
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
                MessageCloudGamingArchivingCfgResponseResult messageCloudGamingArchivingCfgResponseResult = null;
                try {
                    try {
                        MessageCloudGamingArchivingCfgResponseResult messageCloudGamingArchivingCfgResponseResult2 = (MessageCloudGamingArchivingCfgResponseResult) MessageCloudGamingArchivingCfgResponseResult.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingArchivingCfgResponseResult2 != null) {
                            mergeFrom(messageCloudGamingArchivingCfgResponseResult2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingArchivingCfgResponseResult messageCloudGamingArchivingCfgResponseResult3 = (MessageCloudGamingArchivingCfgResponseResult) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingArchivingCfgResponseResult = messageCloudGamingArchivingCfgResponseResult3;
                            if (messageCloudGamingArchivingCfgResponseResult != null) {
                                mergeFrom(messageCloudGamingArchivingCfgResponseResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingArchivingCfgResponseResult != null) {
                        mergeFrom(messageCloudGamingArchivingCfgResponseResult);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingArchivingCfgResponseResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingArchivingCfgResponseResult getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingArchivingCfgResponse.f87941a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingArchivingCfgResponseResult parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingArchivingCfgResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingArchivingCfgResponseResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingArchivingCfgResponseResult> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingArchivingCfgResponseResult)) {
                return super.equals(obj);
            }
            MessageCloudGamingArchivingCfgResponseResult messageCloudGamingArchivingCfgResponseResult = (MessageCloudGamingArchivingCfgResponseResult) obj;
            return getError() == messageCloudGamingArchivingCfgResponseResult.getError() && getDataList().equals(messageCloudGamingArchivingCfgResponseResult.getDataList()) && getErrorMsg().equals(messageCloudGamingArchivingCfgResponseResult.getErrorMsg()) && this.unknownFields.equals(messageCloudGamingArchivingCfgResponseResult.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
        public CfgInfo getData(int index) {
            return this.data_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
        public int getDataCount() {
            return this.data_.size();
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
        public List<CfgInfo> getDataList() {
            return this.data_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
        public b getDataOrBuilder(int index) {
            return this.data_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
        public List<? extends b> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse.c
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
        public Parser<MessageCloudGamingArchivingCfgResponseResult> getParserForType() {
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
            return MessageCloudGamingArchivingCfgResponse.f87942b.ensureFieldAccessorsInitialized(MessageCloudGamingArchivingCfgResponseResult.class, b.class);
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

        /* synthetic */ MessageCloudGamingArchivingCfgResponseResult(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingArchivingCfgResponseResult prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingArchivingCfgResponseResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingArchivingCfgResponseResult(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingArchivingCfgResponseResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingArchivingCfgResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingArchivingCfgResponseResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingArchivingCfgResponseResult getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingArchivingCfgResponseResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingArchivingCfgResponseResult() {
            this.memoizedIsInitialized = (byte) -1;
            this.data_ = Collections.emptyList();
            this.errorMsg_ = "";
        }

        public static MessageCloudGamingArchivingCfgResponseResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingArchivingCfgResponseResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingArchivingCfgResponseResult parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingArchivingCfgResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingArchivingCfgResponseResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.data_.add((CfgInfo) input.readMessage(CfgInfo.parser(), extensionRegistry));
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

        public static MessageCloudGamingArchivingCfgResponseResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingArchivingCfgResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingArchivingCfgResponseResult parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingArchivingCfgResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingArchivingCfgResponseResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingArchivingCfgResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageCloudGamingArchivingCfgResponse.f87945e = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        long getArchiveTime();

        long getGameId();
    }

    public interface c extends MessageOrBuilder {
        CfgInfo getData(int index);

        int getDataCount();

        List<CfgInfo> getDataList();

        b getDataOrBuilder(int index);

        List<? extends b> getDataOrBuilderList();

        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n)cloud_gaming_archiving_cfg_response.proto\"g\n,MessageCloudGamingArchivingCfgResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0016\n\u0004data\u0018\u0002 \u0003(\u000b2\b.CfgInfo\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\t\".\n\u0007CfgInfo\u0012\u000e\n\u0006gameId\u0018\u0001 \u0001(\u0003\u0012\u0013\n\u000barchiveTime\u0018\u0002 \u0001(\u0003BI\n\u001fcom.wufan.user.service.protobufB&MessageCloudGamingArchivingCfgResponseb\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = f().getMessageTypes().get(0);
        f87941a = descriptor;
        f87942b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Error", "Data", "ErrorMsg"});
        Descriptors.Descriptor descriptor2 = f().getMessageTypes().get(1);
        f87943c = descriptor2;
        f87944d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"GameId", "ArchiveTime"});
    }

    private MessageCloudGamingArchivingCfgResponse() {
    }

    public static Descriptors.FileDescriptor f() {
        return f87945e;
    }

    public static void g(ExtensionRegistry registry) {
        h(registry);
    }

    public static void h(ExtensionRegistryLite registry) {
    }
}
