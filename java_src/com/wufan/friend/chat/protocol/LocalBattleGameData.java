package com.wufan.friend.chat.protocol;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
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
public final class LocalBattleGameData extends GeneratedMessageV3 implements w {
    public static final int LOCALBATTLEGAMEINFO_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<LocalBattleGameInfo> localBattleGameInfo_;
    private byte memoizedIsInitialized;
    private static final LocalBattleGameData DEFAULT_INSTANCE = new LocalBattleGameData();
    private static final Parser<LocalBattleGameData> PARSER = new a();

    class a extends AbstractParser<LocalBattleGameData> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public LocalBattleGameData parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new LocalBattleGameData(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements w {
        private int bitField0_;
        private RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> localBattleGameInfoBuilder_;
        private List<LocalBattleGameInfo> localBattleGameInfo_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private void ensureLocalBattleGameInfoIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.localBattleGameInfo_ = new ArrayList(this.localBattleGameInfo_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.G;
        }

        private RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> getLocalBattleGameInfoFieldBuilder() {
            if (this.localBattleGameInfoBuilder_ == null) {
                this.localBattleGameInfoBuilder_ = new RepeatedFieldBuilderV3<>(this.localBattleGameInfo_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                this.localBattleGameInfo_ = null;
            }
            return this.localBattleGameInfoBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getLocalBattleGameInfoFieldBuilder();
            }
        }

        public b addAllLocalBattleGameInfo(Iterable<? extends LocalBattleGameInfo> values) {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureLocalBattleGameInfoIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.localBattleGameInfo_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public b addLocalBattleGameInfo(LocalBattleGameInfo value) {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureLocalBattleGameInfoIsMutable();
                this.localBattleGameInfo_.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public LocalBattleGameInfo.b addLocalBattleGameInfoBuilder() {
            return (LocalBattleGameInfo.b) getLocalBattleGameInfoFieldBuilder().addBuilder(LocalBattleGameInfo.getDefaultInstance());
        }

        public b clearLocalBattleGameInfo() {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.localBattleGameInfo_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.G;
        }

        @Override // com.wufan.friend.chat.protocol.w
        public LocalBattleGameInfo getLocalBattleGameInfo(int index) {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.localBattleGameInfo_.get(index) : (LocalBattleGameInfo) repeatedFieldBuilderV3.getMessage(index);
        }

        public LocalBattleGameInfo.b getLocalBattleGameInfoBuilder(int index) {
            return (LocalBattleGameInfo.b) getLocalBattleGameInfoFieldBuilder().getBuilder(index);
        }

        public List<LocalBattleGameInfo.b> getLocalBattleGameInfoBuilderList() {
            return getLocalBattleGameInfoFieldBuilder().getBuilderList();
        }

        @Override // com.wufan.friend.chat.protocol.w
        public int getLocalBattleGameInfoCount() {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.localBattleGameInfo_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.wufan.friend.chat.protocol.w
        public List<LocalBattleGameInfo> getLocalBattleGameInfoList() {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.localBattleGameInfo_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.wufan.friend.chat.protocol.w
        public x getLocalBattleGameInfoOrBuilder(int index) {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.localBattleGameInfo_.get(index) : (x) repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.wufan.friend.chat.protocol.w
        public List<? extends x> getLocalBattleGameInfoOrBuilderList() {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.localBattleGameInfo_);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.H.ensureFieldAccessorsInitialized(LocalBattleGameData.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b removeLocalBattleGameInfo(int index) {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureLocalBattleGameInfoIsMutable();
                this.localBattleGameInfo_.remove(index);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(index);
            }
            return this;
        }

        public b setLocalBattleGameInfo(int index, LocalBattleGameInfo value) {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureLocalBattleGameInfoIsMutable();
                this.localBattleGameInfo_.set(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, value);
            }
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.localBattleGameInfo_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public LocalBattleGameData build() {
            LocalBattleGameData localBattleGameDataBuildPartial = buildPartial();
            if (localBattleGameDataBuildPartial.isInitialized()) {
                return localBattleGameDataBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) localBattleGameDataBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public LocalBattleGameData buildPartial() {
            LocalBattleGameData localBattleGameData = new LocalBattleGameData(this, (a) null);
            int i10 = this.bitField0_;
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((i10 & 1) != 0) {
                    this.localBattleGameInfo_ = Collections.unmodifiableList(this.localBattleGameInfo_);
                    this.bitField0_ &= -2;
                }
                localBattleGameData.localBattleGameInfo_ = this.localBattleGameInfo_;
            } else {
                localBattleGameData.localBattleGameInfo_ = repeatedFieldBuilderV3.build();
            }
            onBuilt();
            return localBattleGameData;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LocalBattleGameData getDefaultInstanceForType() {
            return LocalBattleGameData.getDefaultInstance();
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

        public LocalBattleGameInfo.b addLocalBattleGameInfoBuilder(int index) {
            return (LocalBattleGameInfo.b) getLocalBattleGameInfoFieldBuilder().addBuilder(index, LocalBattleGameInfo.getDefaultInstance());
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
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.localBattleGameInfo_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.localBattleGameInfo_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        public b addLocalBattleGameInfo(int index, LocalBattleGameInfo value) {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureLocalBattleGameInfoIsMutable();
                this.localBattleGameInfo_.add(index, value);
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
            if (other instanceof LocalBattleGameData) {
                return mergeFrom((LocalBattleGameData) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b setLocalBattleGameInfo(int index, LocalBattleGameInfo.b builderForValue) {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureLocalBattleGameInfoIsMutable();
                this.localBattleGameInfo_.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public b mergeFrom(LocalBattleGameData other) {
            if (other == LocalBattleGameData.getDefaultInstance()) {
                return this;
            }
            if (this.localBattleGameInfoBuilder_ == null) {
                if (!other.localBattleGameInfo_.isEmpty()) {
                    if (this.localBattleGameInfo_.isEmpty()) {
                        this.localBattleGameInfo_ = other.localBattleGameInfo_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureLocalBattleGameInfoIsMutable();
                        this.localBattleGameInfo_.addAll(other.localBattleGameInfo_);
                    }
                    onChanged();
                }
            } else if (!other.localBattleGameInfo_.isEmpty()) {
                if (!this.localBattleGameInfoBuilder_.isEmpty()) {
                    this.localBattleGameInfoBuilder_.addAllMessages(other.localBattleGameInfo_);
                } else {
                    this.localBattleGameInfoBuilder_.dispose();
                    this.localBattleGameInfoBuilder_ = null;
                    this.localBattleGameInfo_ = other.localBattleGameInfo_;
                    this.bitField0_ &= -2;
                    this.localBattleGameInfoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getLocalBattleGameInfoFieldBuilder() : null;
                }
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        public b addLocalBattleGameInfo(LocalBattleGameInfo.b builderForValue) {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureLocalBattleGameInfoIsMutable();
                this.localBattleGameInfo_.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        public b addLocalBattleGameInfo(int index, LocalBattleGameInfo.b builderForValue) {
            RepeatedFieldBuilderV3<LocalBattleGameInfo, LocalBattleGameInfo.b, x> repeatedFieldBuilderV3 = this.localBattleGameInfoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureLocalBattleGameInfoIsMutable();
                this.localBattleGameInfo_.add(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
            }
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            LocalBattleGameData localBattleGameData = null;
            try {
                try {
                    LocalBattleGameData localBattleGameData2 = (LocalBattleGameData) LocalBattleGameData.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (localBattleGameData2 != null) {
                        mergeFrom(localBattleGameData2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    LocalBattleGameData localBattleGameData3 = (LocalBattleGameData) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        localBattleGameData = localBattleGameData3;
                        if (localBattleGameData != null) {
                            mergeFrom(localBattleGameData);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (localBattleGameData != null) {
                    mergeFrom(localBattleGameData);
                }
                throw th;
            }
        }
    }

    /* synthetic */ LocalBattleGameData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static LocalBattleGameData getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.G;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LocalBattleGameData parseDelimitedFrom(InputStream input) throws IOException {
        return (LocalBattleGameData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static LocalBattleGameData parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<LocalBattleGameData> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LocalBattleGameData)) {
            return super.equals(obj);
        }
        LocalBattleGameData localBattleGameData = (LocalBattleGameData) obj;
        return getLocalBattleGameInfoList().equals(localBattleGameData.getLocalBattleGameInfoList()) && this.unknownFields.equals(localBattleGameData.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.w
    public LocalBattleGameInfo getLocalBattleGameInfo(int index) {
        return this.localBattleGameInfo_.get(index);
    }

    @Override // com.wufan.friend.chat.protocol.w
    public int getLocalBattleGameInfoCount() {
        return this.localBattleGameInfo_.size();
    }

    @Override // com.wufan.friend.chat.protocol.w
    public List<LocalBattleGameInfo> getLocalBattleGameInfoList() {
        return this.localBattleGameInfo_;
    }

    @Override // com.wufan.friend.chat.protocol.w
    public x getLocalBattleGameInfoOrBuilder(int index) {
        return this.localBattleGameInfo_.get(index);
    }

    @Override // com.wufan.friend.chat.protocol.w
    public List<? extends x> getLocalBattleGameInfoOrBuilderList() {
        return this.localBattleGameInfo_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<LocalBattleGameData> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeMessageSize = 0;
        for (int i11 = 0; i11 < this.localBattleGameInfo_.size(); i11++) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.localBattleGameInfo_.get(i11));
        }
        int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
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
        int iHashCode = GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode();
        if (getLocalBattleGameInfoCount() > 0) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + getLocalBattleGameInfoList().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.H.ensureFieldAccessorsInitialized(LocalBattleGameData.class, b.class);
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
        for (int i10 = 0; i10 < this.localBattleGameInfo_.size(); i10++) {
            output.writeMessage(1, this.localBattleGameInfo_.get(i10));
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ LocalBattleGameData(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(LocalBattleGameData prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static LocalBattleGameData parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private LocalBattleGameData(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LocalBattleGameData parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LocalBattleGameData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static LocalBattleGameData parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public LocalBattleGameData getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static LocalBattleGameData parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private LocalBattleGameData() {
        this.memoizedIsInitialized = (byte) -1;
        this.localBattleGameInfo_ = Collections.emptyList();
    }

    public static LocalBattleGameData parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static LocalBattleGameData parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static LocalBattleGameData parseFrom(InputStream input) throws IOException {
        return (LocalBattleGameData) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private LocalBattleGameData(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                        if (tag != 10) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.localBattleGameInfo_ = new ArrayList();
                                z11 |= true;
                            }
                            this.localBattleGameInfo_.add((LocalBattleGameInfo) input.readMessage(LocalBattleGameInfo.parser(), extensionRegistry));
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
                    this.localBattleGameInfo_ = Collections.unmodifiableList(this.localBattleGameInfo_);
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if (z11 & true) {
            this.localBattleGameInfo_ = Collections.unmodifiableList(this.localBattleGameInfo_);
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }

    public static LocalBattleGameData parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LocalBattleGameData) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static LocalBattleGameData parseFrom(CodedInputStream input) throws IOException {
        return (LocalBattleGameData) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static LocalBattleGameData parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LocalBattleGameData) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
