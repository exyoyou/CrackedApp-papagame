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
public final class GameInviteArgs extends GeneratedMessageV3 implements q {
    public static final int ELITEFIELD_FIELD_NUMBER = 5;
    public static final int FRIENDID_FIELD_NUMBER = 1;
    public static final int GAMEID_FIELD_NUMBER = 3;
    public static final int LOBBYROOMID_FIELD_NUMBER = 2;
    public static final int ROOMPASSWD_FIELD_NUMBER = 4;
    public static final int VERSUS_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private boolean eliteField_;
    private int friendId_;
    private long gameId_;
    private long lobbyRoomId_;
    private byte memoizedIsInitialized;
    private volatile Object roomPasswd_;
    private boolean versus_;
    private static final GameInviteArgs DEFAULT_INSTANCE = new GameInviteArgs();
    private static final Parser<GameInviteArgs> PARSER = new a();

    class a extends AbstractParser<GameInviteArgs> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public GameInviteArgs parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new GameInviteArgs(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements q {
        private boolean eliteField_;
        private int friendId_;
        private long gameId_;
        private long lobbyRoomId_;
        private Object roomPasswd_;
        private boolean versus_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87890q;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearEliteField() {
            this.eliteField_ = false;
            onChanged();
            return this;
        }

        public b clearFriendId() {
            this.friendId_ = 0;
            onChanged();
            return this;
        }

        public b clearGameId() {
            this.gameId_ = 0L;
            onChanged();
            return this;
        }

        public b clearLobbyRoomId() {
            this.lobbyRoomId_ = 0L;
            onChanged();
            return this;
        }

        public b clearRoomPasswd() {
            this.roomPasswd_ = GameInviteArgs.getDefaultInstance().getRoomPasswd();
            onChanged();
            return this;
        }

        public b clearVersus() {
            this.versus_ = false;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87890q;
        }

        @Override // com.wufan.friend.chat.protocol.q
        public boolean getEliteField() {
            return this.eliteField_;
        }

        @Override // com.wufan.friend.chat.protocol.q
        public int getFriendId() {
            return this.friendId_;
        }

        @Override // com.wufan.friend.chat.protocol.q
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.wufan.friend.chat.protocol.q
        public long getLobbyRoomId() {
            return this.lobbyRoomId_;
        }

        @Override // com.wufan.friend.chat.protocol.q
        public String getRoomPasswd() {
            Object obj = this.roomPasswd_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.roomPasswd_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.q
        public ByteString getRoomPasswdBytes() {
            Object obj = this.roomPasswd_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.roomPasswd_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.q
        public boolean getVersus() {
            return this.versus_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87892r.ensureFieldAccessorsInitialized(GameInviteArgs.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setEliteField(boolean value) {
            this.eliteField_ = value;
            onChanged();
            return this;
        }

        public b setFriendId(int value) {
            this.friendId_ = value;
            onChanged();
            return this;
        }

        public b setGameId(long value) {
            this.gameId_ = value;
            onChanged();
            return this;
        }

        public b setLobbyRoomId(long value) {
            this.lobbyRoomId_ = value;
            onChanged();
            return this;
        }

        public b setRoomPasswd(String value) {
            value.getClass();
            this.roomPasswd_ = value;
            onChanged();
            return this;
        }

        public b setRoomPasswdBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.roomPasswd_ = value;
            onChanged();
            return this;
        }

        public b setVersus(boolean value) {
            this.versus_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.roomPasswd_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public GameInviteArgs build() {
            GameInviteArgs gameInviteArgsBuildPartial = buildPartial();
            if (gameInviteArgsBuildPartial.isInitialized()) {
                return gameInviteArgsBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) gameInviteArgsBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public GameInviteArgs buildPartial() {
            GameInviteArgs gameInviteArgs = new GameInviteArgs(this, (a) null);
            gameInviteArgs.friendId_ = this.friendId_;
            gameInviteArgs.lobbyRoomId_ = this.lobbyRoomId_;
            gameInviteArgs.gameId_ = this.gameId_;
            gameInviteArgs.roomPasswd_ = this.roomPasswd_;
            gameInviteArgs.eliteField_ = this.eliteField_;
            gameInviteArgs.versus_ = this.versus_;
            onBuilt();
            return gameInviteArgs;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public GameInviteArgs getDefaultInstanceForType() {
            return GameInviteArgs.getDefaultInstance();
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
            this.friendId_ = 0;
            this.lobbyRoomId_ = 0L;
            this.gameId_ = 0L;
            this.roomPasswd_ = "";
            this.eliteField_ = false;
            this.versus_ = false;
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.roomPasswd_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof GameInviteArgs) {
                return mergeFrom((GameInviteArgs) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(GameInviteArgs other) {
            if (other == GameInviteArgs.getDefaultInstance()) {
                return this;
            }
            if (other.getFriendId() != 0) {
                setFriendId(other.getFriendId());
            }
            if (other.getLobbyRoomId() != 0) {
                setLobbyRoomId(other.getLobbyRoomId());
            }
            if (other.getGameId() != 0) {
                setGameId(other.getGameId());
            }
            if (!other.getRoomPasswd().isEmpty()) {
                this.roomPasswd_ = other.roomPasswd_;
                onChanged();
            }
            if (other.getEliteField()) {
                setEliteField(other.getEliteField());
            }
            if (other.getVersus()) {
                setVersus(other.getVersus());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            GameInviteArgs gameInviteArgs = null;
            try {
                try {
                    GameInviteArgs gameInviteArgs2 = (GameInviteArgs) GameInviteArgs.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (gameInviteArgs2 != null) {
                        mergeFrom(gameInviteArgs2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    GameInviteArgs gameInviteArgs3 = (GameInviteArgs) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        gameInviteArgs = gameInviteArgs3;
                        if (gameInviteArgs != null) {
                            mergeFrom(gameInviteArgs);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (gameInviteArgs != null) {
                    mergeFrom(gameInviteArgs);
                }
                throw th;
            }
        }
    }

    /* synthetic */ GameInviteArgs(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static GameInviteArgs getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87890q;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static GameInviteArgs parseDelimitedFrom(InputStream input) throws IOException {
        return (GameInviteArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static GameInviteArgs parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<GameInviteArgs> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GameInviteArgs)) {
            return super.equals(obj);
        }
        GameInviteArgs gameInviteArgs = (GameInviteArgs) obj;
        return getFriendId() == gameInviteArgs.getFriendId() && getLobbyRoomId() == gameInviteArgs.getLobbyRoomId() && getGameId() == gameInviteArgs.getGameId() && getRoomPasswd().equals(gameInviteArgs.getRoomPasswd()) && getEliteField() == gameInviteArgs.getEliteField() && getVersus() == gameInviteArgs.getVersus() && this.unknownFields.equals(gameInviteArgs.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.q
    public boolean getEliteField() {
        return this.eliteField_;
    }

    @Override // com.wufan.friend.chat.protocol.q
    public int getFriendId() {
        return this.friendId_;
    }

    @Override // com.wufan.friend.chat.protocol.q
    public long getGameId() {
        return this.gameId_;
    }

    @Override // com.wufan.friend.chat.protocol.q
    public long getLobbyRoomId() {
        return this.lobbyRoomId_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<GameInviteArgs> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.friend.chat.protocol.q
    public String getRoomPasswd() {
        Object obj = this.roomPasswd_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.roomPasswd_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.q
    public ByteString getRoomPasswdBytes() {
        Object obj = this.roomPasswd_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.roomPasswd_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.friendId_;
        int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
        long j10 = this.lobbyRoomId_;
        if (j10 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(2, j10);
        }
        long j11 = this.gameId_;
        if (j11 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(3, j11);
        }
        if (!getRoomPasswdBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(4, this.roomPasswd_);
        }
        boolean z10 = this.eliteField_;
        if (z10) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(5, z10);
        }
        boolean z11 = this.versus_;
        if (z11) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(6, z11);
        }
        int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.friend.chat.protocol.q
    public boolean getVersus() {
        return this.versus_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getFriendId()) * 37) + 2) * 53) + Internal.hashLong(getLobbyRoomId())) * 37) + 3) * 53) + Internal.hashLong(getGameId())) * 37) + 4) * 53) + getRoomPasswd().hashCode()) * 37) + 5) * 53) + Internal.hashBoolean(getEliteField())) * 37) + 6) * 53) + Internal.hashBoolean(getVersus())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87892r.ensureFieldAccessorsInitialized(GameInviteArgs.class, b.class);
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
        int i10 = this.friendId_;
        if (i10 != 0) {
            output.writeInt32(1, i10);
        }
        long j10 = this.lobbyRoomId_;
        if (j10 != 0) {
            output.writeInt64(2, j10);
        }
        long j11 = this.gameId_;
        if (j11 != 0) {
            output.writeInt64(3, j11);
        }
        if (!getRoomPasswdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 4, this.roomPasswd_);
        }
        boolean z10 = this.eliteField_;
        if (z10) {
            output.writeBool(5, z10);
        }
        boolean z11 = this.versus_;
        if (z11) {
            output.writeBool(6, z11);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ GameInviteArgs(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(GameInviteArgs prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static GameInviteArgs parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private GameInviteArgs(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GameInviteArgs parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (GameInviteArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static GameInviteArgs parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public GameInviteArgs getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static GameInviteArgs parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private GameInviteArgs() {
        this.memoizedIsInitialized = (byte) -1;
        this.roomPasswd_ = "";
    }

    public static GameInviteArgs parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static GameInviteArgs parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static GameInviteArgs parseFrom(InputStream input) throws IOException {
        return (GameInviteArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private GameInviteArgs(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            this.friendId_ = input.readInt32();
                        } else if (tag == 16) {
                            this.lobbyRoomId_ = input.readInt64();
                        } else if (tag == 24) {
                            this.gameId_ = input.readInt64();
                        } else if (tag == 34) {
                            this.roomPasswd_ = input.readStringRequireUtf8();
                        } else if (tag == 40) {
                            this.eliteField_ = input.readBool();
                        } else if (tag != 48) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.versus_ = input.readBool();
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

    public static GameInviteArgs parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (GameInviteArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static GameInviteArgs parseFrom(CodedInputStream input) throws IOException {
        return (GameInviteArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static GameInviteArgs parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (GameInviteArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
