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
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.Parser;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class PlayState extends GeneratedMessageV3 implements e0 {
    public static final int GAMEID_FIELD_NUMBER = 2;
    public static final int GAMENAME_FIELD_NUMBER = 3;
    public static final int LOBBYROOMID_FIELD_NUMBER = 4;
    public static final int PLAYTYPE_FIELD_NUMBER = 1;
    public static final int ROOMTYPE_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private long gameId_;
    private volatile Object gameName_;
    private long lobbyRoomId_;
    private byte memoizedIsInitialized;
    private int playType_;
    private int roomType_;
    private static final PlayState DEFAULT_INSTANCE = new PlayState();
    private static final Parser<PlayState> PARSER = new a();

    class a extends AbstractParser<PlayState> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlayState parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new PlayState(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements e0 {
        private long gameId_;
        private Object gameName_;
        private long lobbyRoomId_;
        private int playType_;
        private int roomType_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.M;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearGameId() {
            this.gameId_ = 0L;
            onChanged();
            return this;
        }

        public b clearGameName() {
            this.gameName_ = PlayState.getDefaultInstance().getGameName();
            onChanged();
            return this;
        }

        public b clearLobbyRoomId() {
            this.lobbyRoomId_ = 0L;
            onChanged();
            return this;
        }

        public b clearPlayType() {
            this.playType_ = 0;
            onChanged();
            return this;
        }

        public b clearRoomType() {
            this.roomType_ = 0;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.M;
        }

        @Override // com.wufan.friend.chat.protocol.e0
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.wufan.friend.chat.protocol.e0
        public String getGameName() {
            Object obj = this.gameName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.gameName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.e0
        public ByteString getGameNameBytes() {
            Object obj = this.gameName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gameName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.e0
        public long getLobbyRoomId() {
            return this.lobbyRoomId_;
        }

        @Override // com.wufan.friend.chat.protocol.e0
        public PlayType getPlayType() {
            PlayType playTypeValueOf = PlayType.valueOf(this.playType_);
            return playTypeValueOf == null ? PlayType.UNRECOGNIZED : playTypeValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.e0
        public int getPlayTypeValue() {
            return this.playType_;
        }

        @Override // com.wufan.friend.chat.protocol.e0
        public int getRoomType() {
            return this.roomType_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.N.ensureFieldAccessorsInitialized(PlayState.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setGameId(long value) {
            this.gameId_ = value;
            onChanged();
            return this;
        }

        public b setGameName(String value) {
            value.getClass();
            this.gameName_ = value;
            onChanged();
            return this;
        }

        public b setGameNameBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.gameName_ = value;
            onChanged();
            return this;
        }

        public b setLobbyRoomId(long value) {
            this.lobbyRoomId_ = value;
            onChanged();
            return this;
        }

        public b setPlayType(PlayType value) {
            value.getClass();
            this.playType_ = value.getNumber();
            onChanged();
            return this;
        }

        public b setPlayTypeValue(int value) {
            this.playType_ = value;
            onChanged();
            return this;
        }

        public b setRoomType(int value) {
            this.roomType_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.playType_ = 0;
            this.gameName_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public PlayState build() {
            PlayState playStateBuildPartial = buildPartial();
            if (playStateBuildPartial.isInitialized()) {
                return playStateBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) playStateBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public PlayState buildPartial() {
            PlayState playState = new PlayState(this, (a) null);
            playState.playType_ = this.playType_;
            playState.gameId_ = this.gameId_;
            playState.gameName_ = this.gameName_;
            playState.lobbyRoomId_ = this.lobbyRoomId_;
            playState.roomType_ = this.roomType_;
            onBuilt();
            return playState;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PlayState getDefaultInstanceForType() {
            return PlayState.getDefaultInstance();
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
            this.playType_ = 0;
            this.gameId_ = 0L;
            this.gameName_ = "";
            this.lobbyRoomId_ = 0L;
            this.roomType_ = 0;
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.playType_ = 0;
            this.gameName_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof PlayState) {
                return mergeFrom((PlayState) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(PlayState other) {
            if (other == PlayState.getDefaultInstance()) {
                return this;
            }
            if (other.playType_ != 0) {
                setPlayTypeValue(other.getPlayTypeValue());
            }
            if (other.getGameId() != 0) {
                setGameId(other.getGameId());
            }
            if (!other.getGameName().isEmpty()) {
                this.gameName_ = other.gameName_;
                onChanged();
            }
            if (other.getLobbyRoomId() != 0) {
                setLobbyRoomId(other.getLobbyRoomId());
            }
            if (other.getRoomType() != 0) {
                setRoomType(other.getRoomType());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            PlayState playState = null;
            try {
                try {
                    PlayState playState2 = (PlayState) PlayState.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (playState2 != null) {
                        mergeFrom(playState2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    PlayState playState3 = (PlayState) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        playState = playState3;
                        if (playState != null) {
                            mergeFrom(playState);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (playState != null) {
                    mergeFrom(playState);
                }
                throw th;
            }
        }
    }

    /* synthetic */ PlayState(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static PlayState getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.M;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static PlayState parseDelimitedFrom(InputStream input) throws IOException {
        return (PlayState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static PlayState parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<PlayState> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PlayState)) {
            return super.equals(obj);
        }
        PlayState playState = (PlayState) obj;
        return this.playType_ == playState.playType_ && getGameId() == playState.getGameId() && getGameName().equals(playState.getGameName()) && getLobbyRoomId() == playState.getLobbyRoomId() && getRoomType() == playState.getRoomType() && this.unknownFields.equals(playState.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.e0
    public long getGameId() {
        return this.gameId_;
    }

    @Override // com.wufan.friend.chat.protocol.e0
    public String getGameName() {
        Object obj = this.gameName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.gameName_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.e0
    public ByteString getGameNameBytes() {
        Object obj = this.gameName_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.gameName_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.e0
    public long getLobbyRoomId() {
        return this.lobbyRoomId_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<PlayState> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.friend.chat.protocol.e0
    public PlayType getPlayType() {
        PlayType playTypeValueOf = PlayType.valueOf(this.playType_);
        return playTypeValueOf == null ? PlayType.UNRECOGNIZED : playTypeValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.e0
    public int getPlayTypeValue() {
        return this.playType_;
    }

    @Override // com.wufan.friend.chat.protocol.e0
    public int getRoomType() {
        return this.roomType_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeEnumSize = this.playType_ != PlayType.STAND.getNumber() ? 0 + CodedOutputStream.computeEnumSize(1, this.playType_) : 0;
        long j10 = this.gameId_;
        if (j10 != 0) {
            iComputeEnumSize += CodedOutputStream.computeInt64Size(2, j10);
        }
        if (!getGameNameBytes().isEmpty()) {
            iComputeEnumSize += GeneratedMessageV3.computeStringSize(3, this.gameName_);
        }
        long j11 = this.lobbyRoomId_;
        if (j11 != 0) {
            iComputeEnumSize += CodedOutputStream.computeInt64Size(4, j11);
        }
        int i11 = this.roomType_;
        if (i11 != 0) {
            iComputeEnumSize += CodedOutputStream.computeInt32Size(5, i11);
        }
        int serializedSize = iComputeEnumSize + this.unknownFields.getSerializedSize();
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
        int iHashCode = ((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + this.playType_) * 37) + 2) * 53) + Internal.hashLong(getGameId())) * 37) + 3) * 53) + getGameName().hashCode()) * 37) + 4) * 53) + Internal.hashLong(getLobbyRoomId())) * 37) + 5) * 53) + getRoomType()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.N.ensureFieldAccessorsInitialized(PlayState.class, b.class);
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
        if (this.playType_ != PlayType.STAND.getNumber()) {
            output.writeEnum(1, this.playType_);
        }
        long j10 = this.gameId_;
        if (j10 != 0) {
            output.writeInt64(2, j10);
        }
        if (!getGameNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 3, this.gameName_);
        }
        long j11 = this.lobbyRoomId_;
        if (j11 != 0) {
            output.writeInt64(4, j11);
        }
        int i10 = this.roomType_;
        if (i10 != 0) {
            output.writeInt32(5, i10);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ PlayState(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(PlayState prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static PlayState parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private PlayState(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static PlayState parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (PlayState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static PlayState parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public PlayState getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static PlayState parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private PlayState() {
        this.memoizedIsInitialized = (byte) -1;
        this.playType_ = 0;
        this.gameName_ = "";
    }

    public static PlayState parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static PlayState parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static PlayState parseFrom(InputStream input) throws IOException {
        return (PlayState) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private PlayState(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.playType_ = input.readEnum();
                            } else if (tag == 16) {
                                this.gameId_ = input.readInt64();
                            } else if (tag == 26) {
                                this.gameName_ = input.readStringRequireUtf8();
                            } else if (tag == 32) {
                                this.lobbyRoomId_ = input.readInt64();
                            } else if (tag != 40) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.roomType_ = input.readInt32();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    }
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

    public static PlayState parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (PlayState) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static PlayState parseFrom(CodedInputStream input) throws IOException {
        return (PlayState) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static PlayState parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (PlayState) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
