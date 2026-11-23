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
public final class RecommendPlayerData extends GeneratedMessageV3 implements i0 {
    private static final RecommendPlayerData DEFAULT_INSTANCE = new RecommendPlayerData();
    private static final Parser<RecommendPlayerData> PARSER = new a();
    public static final int RECOMMENDPLAYER_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<RecommendPlayer> recommendPlayer_;

    class a extends AbstractParser<RecommendPlayerData> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RecommendPlayerData parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new RecommendPlayerData(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements i0 {
        private int bitField0_;
        private RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> recommendPlayerBuilder_;
        private List<RecommendPlayer> recommendPlayer_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private void ensureRecommendPlayerIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.recommendPlayer_ = new ArrayList(this.recommendPlayer_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.C;
        }

        private RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> getRecommendPlayerFieldBuilder() {
            if (this.recommendPlayerBuilder_ == null) {
                this.recommendPlayerBuilder_ = new RepeatedFieldBuilderV3<>(this.recommendPlayer_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                this.recommendPlayer_ = null;
            }
            return this.recommendPlayerBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getRecommendPlayerFieldBuilder();
            }
        }

        public b addAllRecommendPlayer(Iterable<? extends RecommendPlayer> values) {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureRecommendPlayerIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.recommendPlayer_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public b addRecommendPlayer(RecommendPlayer value) {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureRecommendPlayerIsMutable();
                this.recommendPlayer_.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public RecommendPlayer.b addRecommendPlayerBuilder() {
            return (RecommendPlayer.b) getRecommendPlayerFieldBuilder().addBuilder(RecommendPlayer.getDefaultInstance());
        }

        public b clearRecommendPlayer() {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.recommendPlayer_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.C;
        }

        @Override // com.wufan.friend.chat.protocol.i0
        public RecommendPlayer getRecommendPlayer(int index) {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            return repeatedFieldBuilderV3 == null ? this.recommendPlayer_.get(index) : (RecommendPlayer) repeatedFieldBuilderV3.getMessage(index);
        }

        public RecommendPlayer.b getRecommendPlayerBuilder(int index) {
            return (RecommendPlayer.b) getRecommendPlayerFieldBuilder().getBuilder(index);
        }

        public List<RecommendPlayer.b> getRecommendPlayerBuilderList() {
            return getRecommendPlayerFieldBuilder().getBuilderList();
        }

        @Override // com.wufan.friend.chat.protocol.i0
        public int getRecommendPlayerCount() {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            return repeatedFieldBuilderV3 == null ? this.recommendPlayer_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.wufan.friend.chat.protocol.i0
        public List<RecommendPlayer> getRecommendPlayerList() {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.recommendPlayer_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.wufan.friend.chat.protocol.i0
        public j0 getRecommendPlayerOrBuilder(int index) {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            return repeatedFieldBuilderV3 == null ? this.recommendPlayer_.get(index) : (j0) repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.wufan.friend.chat.protocol.i0
        public List<? extends j0> getRecommendPlayerOrBuilderList() {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.recommendPlayer_);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.D.ensureFieldAccessorsInitialized(RecommendPlayerData.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b removeRecommendPlayer(int index) {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureRecommendPlayerIsMutable();
                this.recommendPlayer_.remove(index);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(index);
            }
            return this;
        }

        public b setRecommendPlayer(int index, RecommendPlayer value) {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureRecommendPlayerIsMutable();
                this.recommendPlayer_.set(index, value);
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
            this.recommendPlayer_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public RecommendPlayerData build() {
            RecommendPlayerData recommendPlayerDataBuildPartial = buildPartial();
            if (recommendPlayerDataBuildPartial.isInitialized()) {
                return recommendPlayerDataBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) recommendPlayerDataBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public RecommendPlayerData buildPartial() {
            RecommendPlayerData recommendPlayerData = new RecommendPlayerData(this, (a) null);
            int i10 = this.bitField0_;
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((i10 & 1) != 0) {
                    this.recommendPlayer_ = Collections.unmodifiableList(this.recommendPlayer_);
                    this.bitField0_ &= -2;
                }
                recommendPlayerData.recommendPlayer_ = this.recommendPlayer_;
            } else {
                recommendPlayerData.recommendPlayer_ = repeatedFieldBuilderV3.build();
            }
            onBuilt();
            return recommendPlayerData;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public RecommendPlayerData getDefaultInstanceForType() {
            return RecommendPlayerData.getDefaultInstance();
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

        public RecommendPlayer.b addRecommendPlayerBuilder(int index) {
            return (RecommendPlayer.b) getRecommendPlayerFieldBuilder().addBuilder(index, RecommendPlayer.getDefaultInstance());
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
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.recommendPlayer_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.recommendPlayer_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        public b addRecommendPlayer(int index, RecommendPlayer value) {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureRecommendPlayerIsMutable();
                this.recommendPlayer_.add(index, value);
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
            if (other instanceof RecommendPlayerData) {
                return mergeFrom((RecommendPlayerData) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b setRecommendPlayer(int index, RecommendPlayer.b builderForValue) {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureRecommendPlayerIsMutable();
                this.recommendPlayer_.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public b mergeFrom(RecommendPlayerData other) {
            if (other == RecommendPlayerData.getDefaultInstance()) {
                return this;
            }
            if (this.recommendPlayerBuilder_ == null) {
                if (!other.recommendPlayer_.isEmpty()) {
                    if (this.recommendPlayer_.isEmpty()) {
                        this.recommendPlayer_ = other.recommendPlayer_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureRecommendPlayerIsMutable();
                        this.recommendPlayer_.addAll(other.recommendPlayer_);
                    }
                    onChanged();
                }
            } else if (!other.recommendPlayer_.isEmpty()) {
                if (!this.recommendPlayerBuilder_.isEmpty()) {
                    this.recommendPlayerBuilder_.addAllMessages(other.recommendPlayer_);
                } else {
                    this.recommendPlayerBuilder_.dispose();
                    this.recommendPlayerBuilder_ = null;
                    this.recommendPlayer_ = other.recommendPlayer_;
                    this.bitField0_ &= -2;
                    this.recommendPlayerBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getRecommendPlayerFieldBuilder() : null;
                }
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        public b addRecommendPlayer(RecommendPlayer.b builderForValue) {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureRecommendPlayerIsMutable();
                this.recommendPlayer_.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        public b addRecommendPlayer(int index, RecommendPlayer.b builderForValue) {
            RepeatedFieldBuilderV3<RecommendPlayer, RecommendPlayer.b, j0> repeatedFieldBuilderV3 = this.recommendPlayerBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureRecommendPlayerIsMutable();
                this.recommendPlayer_.add(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
            }
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            RecommendPlayerData recommendPlayerData = null;
            try {
                try {
                    RecommendPlayerData recommendPlayerData2 = (RecommendPlayerData) RecommendPlayerData.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (recommendPlayerData2 != null) {
                        mergeFrom(recommendPlayerData2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    RecommendPlayerData recommendPlayerData3 = (RecommendPlayerData) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        recommendPlayerData = recommendPlayerData3;
                        if (recommendPlayerData != null) {
                            mergeFrom(recommendPlayerData);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (recommendPlayerData != null) {
                    mergeFrom(recommendPlayerData);
                }
                throw th;
            }
        }
    }

    /* synthetic */ RecommendPlayerData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static RecommendPlayerData getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.C;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RecommendPlayerData parseDelimitedFrom(InputStream input) throws IOException {
        return (RecommendPlayerData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static RecommendPlayerData parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<RecommendPlayerData> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RecommendPlayerData)) {
            return super.equals(obj);
        }
        RecommendPlayerData recommendPlayerData = (RecommendPlayerData) obj;
        return getRecommendPlayerList().equals(recommendPlayerData.getRecommendPlayerList()) && this.unknownFields.equals(recommendPlayerData.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<RecommendPlayerData> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.friend.chat.protocol.i0
    public RecommendPlayer getRecommendPlayer(int index) {
        return this.recommendPlayer_.get(index);
    }

    @Override // com.wufan.friend.chat.protocol.i0
    public int getRecommendPlayerCount() {
        return this.recommendPlayer_.size();
    }

    @Override // com.wufan.friend.chat.protocol.i0
    public List<RecommendPlayer> getRecommendPlayerList() {
        return this.recommendPlayer_;
    }

    @Override // com.wufan.friend.chat.protocol.i0
    public j0 getRecommendPlayerOrBuilder(int index) {
        return this.recommendPlayer_.get(index);
    }

    @Override // com.wufan.friend.chat.protocol.i0
    public List<? extends j0> getRecommendPlayerOrBuilderList() {
        return this.recommendPlayer_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeMessageSize = 0;
        for (int i11 = 0; i11 < this.recommendPlayer_.size(); i11++) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.recommendPlayer_.get(i11));
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
        if (getRecommendPlayerCount() > 0) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + getRecommendPlayerList().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.D.ensureFieldAccessorsInitialized(RecommendPlayerData.class, b.class);
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
        for (int i10 = 0; i10 < this.recommendPlayer_.size(); i10++) {
            output.writeMessage(1, this.recommendPlayer_.get(i10));
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ RecommendPlayerData(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(RecommendPlayerData prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static RecommendPlayerData parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private RecommendPlayerData(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RecommendPlayerData parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RecommendPlayerData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static RecommendPlayerData parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public RecommendPlayerData getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static RecommendPlayerData parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private RecommendPlayerData() {
        this.memoizedIsInitialized = (byte) -1;
        this.recommendPlayer_ = Collections.emptyList();
    }

    public static RecommendPlayerData parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static RecommendPlayerData parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static RecommendPlayerData parseFrom(InputStream input) throws IOException {
        return (RecommendPlayerData) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private RecommendPlayerData(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.recommendPlayer_ = new ArrayList();
                                z11 |= true;
                            }
                            this.recommendPlayer_.add((RecommendPlayer) input.readMessage(RecommendPlayer.parser(), extensionRegistry));
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
                    this.recommendPlayer_ = Collections.unmodifiableList(this.recommendPlayer_);
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if (z11 & true) {
            this.recommendPlayer_ = Collections.unmodifiableList(this.recommendPlayer_);
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }

    public static RecommendPlayerData parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RecommendPlayerData) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static RecommendPlayerData parseFrom(CodedInputStream input) throws IOException {
        return (RecommendPlayerData) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static RecommendPlayerData parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RecommendPlayerData) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
