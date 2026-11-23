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
public final class GameInviteNotification extends GeneratedMessageV3 implements r {
    public static final int ACCOUNTID_FIELD_NUMBER = 9;
    public static final int AVATAR_FIELD_NUMBER = 5;
    public static final int ELITEFIELD_FIELD_NUMBER = 8;
    public static final int FROMACCOUNTID_FIELD_NUMBER = 1;
    public static final int FROMNICKNAME_FIELD_NUMBER = 2;
    public static final int GAMEID_FIELD_NUMBER = 4;
    public static final int GAMENAME_FIELD_NUMBER = 6;
    public static final int LOBBYROOMID_FIELD_NUMBER = 3;
    public static final int ROOMPASSWD_FIELD_NUMBER = 7;
    public static final int SOURCE_FIELD_NUMBER = 10;
    private static final long serialVersionUID = 0;
    private int accountId_;
    private volatile Object avatar_;
    private boolean eliteField_;
    private int fromAccountId_;
    private volatile Object fromNickname_;
    private long gameId_;
    private volatile Object gameName_;
    private long lobbyRoomId_;
    private byte memoizedIsInitialized;
    private volatile Object roomPasswd_;
    private int source_;
    private static final GameInviteNotification DEFAULT_INSTANCE = new GameInviteNotification();
    private static final Parser<GameInviteNotification> PARSER = new a();

    class a extends AbstractParser<GameInviteNotification> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public GameInviteNotification parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new GameInviteNotification(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements r {
        private int accountId_;
        private Object avatar_;
        private boolean eliteField_;
        private int fromAccountId_;
        private Object fromNickname_;
        private long gameId_;
        private Object gameName_;
        private long lobbyRoomId_;
        private Object roomPasswd_;
        private int source_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87859a0;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearAccountId() {
            this.accountId_ = 0;
            onChanged();
            return this;
        }

        public b clearAvatar() {
            this.avatar_ = GameInviteNotification.getDefaultInstance().getAvatar();
            onChanged();
            return this;
        }

        public b clearEliteField() {
            this.eliteField_ = false;
            onChanged();
            return this;
        }

        public b clearFromAccountId() {
            this.fromAccountId_ = 0;
            onChanged();
            return this;
        }

        public b clearFromNickname() {
            this.fromNickname_ = GameInviteNotification.getDefaultInstance().getFromNickname();
            onChanged();
            return this;
        }

        public b clearGameId() {
            this.gameId_ = 0L;
            onChanged();
            return this;
        }

        public b clearGameName() {
            this.gameName_ = GameInviteNotification.getDefaultInstance().getGameName();
            onChanged();
            return this;
        }

        public b clearLobbyRoomId() {
            this.lobbyRoomId_ = 0L;
            onChanged();
            return this;
        }

        public b clearRoomPasswd() {
            this.roomPasswd_ = GameInviteNotification.getDefaultInstance().getRoomPasswd();
            onChanged();
            return this;
        }

        public b clearSource() {
            this.source_ = 0;
            onChanged();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public int getAccountId() {
            return this.accountId_;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public String getAvatar() {
            Object obj = this.avatar_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.avatar_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public ByteString getAvatarBytes() {
            Object obj = this.avatar_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.avatar_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87859a0;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public boolean getEliteField() {
            return this.eliteField_;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public int getFromAccountId() {
            return this.fromAccountId_;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public String getFromNickname() {
            Object obj = this.fromNickname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.fromNickname_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public ByteString getFromNicknameBytes() {
            Object obj = this.fromNickname_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fromNickname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public String getGameName() {
            Object obj = this.gameName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.gameName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public ByteString getGameNameBytes() {
            Object obj = this.gameName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gameName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public long getLobbyRoomId() {
            return this.lobbyRoomId_;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public String getRoomPasswd() {
            Object obj = this.roomPasswd_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.roomPasswd_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public ByteString getRoomPasswdBytes() {
            Object obj = this.roomPasswd_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.roomPasswd_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.r
        public int getSource() {
            return this.source_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87861b0.ensureFieldAccessorsInitialized(GameInviteNotification.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setAccountId(int value) {
            this.accountId_ = value;
            onChanged();
            return this;
        }

        public b setAvatar(String value) {
            value.getClass();
            this.avatar_ = value;
            onChanged();
            return this;
        }

        public b setAvatarBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.avatar_ = value;
            onChanged();
            return this;
        }

        public b setEliteField(boolean value) {
            this.eliteField_ = value;
            onChanged();
            return this;
        }

        public b setFromAccountId(int value) {
            this.fromAccountId_ = value;
            onChanged();
            return this;
        }

        public b setFromNickname(String value) {
            value.getClass();
            this.fromNickname_ = value;
            onChanged();
            return this;
        }

        public b setFromNicknameBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.fromNickname_ = value;
            onChanged();
            return this;
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

        public b setSource(int value) {
            this.source_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.fromNickname_ = "";
            this.avatar_ = "";
            this.gameName_ = "";
            this.roomPasswd_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public GameInviteNotification build() {
            GameInviteNotification gameInviteNotificationBuildPartial = buildPartial();
            if (gameInviteNotificationBuildPartial.isInitialized()) {
                return gameInviteNotificationBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) gameInviteNotificationBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public GameInviteNotification buildPartial() {
            GameInviteNotification gameInviteNotification = new GameInviteNotification(this, (a) null);
            gameInviteNotification.fromAccountId_ = this.fromAccountId_;
            gameInviteNotification.fromNickname_ = this.fromNickname_;
            gameInviteNotification.lobbyRoomId_ = this.lobbyRoomId_;
            gameInviteNotification.gameId_ = this.gameId_;
            gameInviteNotification.avatar_ = this.avatar_;
            gameInviteNotification.gameName_ = this.gameName_;
            gameInviteNotification.roomPasswd_ = this.roomPasswd_;
            gameInviteNotification.eliteField_ = this.eliteField_;
            gameInviteNotification.accountId_ = this.accountId_;
            gameInviteNotification.source_ = this.source_;
            onBuilt();
            return gameInviteNotification;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public GameInviteNotification getDefaultInstanceForType() {
            return GameInviteNotification.getDefaultInstance();
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
            this.fromAccountId_ = 0;
            this.fromNickname_ = "";
            this.lobbyRoomId_ = 0L;
            this.gameId_ = 0L;
            this.avatar_ = "";
            this.gameName_ = "";
            this.roomPasswd_ = "";
            this.eliteField_ = false;
            this.accountId_ = 0;
            this.source_ = 0;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof GameInviteNotification) {
                return mergeFrom((GameInviteNotification) other);
            }
            super.mergeFrom(other);
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.fromNickname_ = "";
            this.avatar_ = "";
            this.gameName_ = "";
            this.roomPasswd_ = "";
            maybeForceBuilderInitialization();
        }

        public b mergeFrom(GameInviteNotification other) {
            if (other == GameInviteNotification.getDefaultInstance()) {
                return this;
            }
            if (other.getFromAccountId() != 0) {
                setFromAccountId(other.getFromAccountId());
            }
            if (!other.getFromNickname().isEmpty()) {
                this.fromNickname_ = other.fromNickname_;
                onChanged();
            }
            if (other.getLobbyRoomId() != 0) {
                setLobbyRoomId(other.getLobbyRoomId());
            }
            if (other.getGameId() != 0) {
                setGameId(other.getGameId());
            }
            if (!other.getAvatar().isEmpty()) {
                this.avatar_ = other.avatar_;
                onChanged();
            }
            if (!other.getGameName().isEmpty()) {
                this.gameName_ = other.gameName_;
                onChanged();
            }
            if (!other.getRoomPasswd().isEmpty()) {
                this.roomPasswd_ = other.roomPasswd_;
                onChanged();
            }
            if (other.getEliteField()) {
                setEliteField(other.getEliteField());
            }
            if (other.getAccountId() != 0) {
                setAccountId(other.getAccountId());
            }
            if (other.getSource() != 0) {
                setSource(other.getSource());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            GameInviteNotification gameInviteNotification = null;
            try {
                try {
                    GameInviteNotification gameInviteNotification2 = (GameInviteNotification) GameInviteNotification.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (gameInviteNotification2 != null) {
                        mergeFrom(gameInviteNotification2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    GameInviteNotification gameInviteNotification3 = (GameInviteNotification) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        gameInviteNotification = gameInviteNotification3;
                        if (gameInviteNotification != null) {
                            mergeFrom(gameInviteNotification);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (gameInviteNotification != null) {
                    mergeFrom(gameInviteNotification);
                }
                throw th;
            }
        }
    }

    /* synthetic */ GameInviteNotification(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static GameInviteNotification getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87859a0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static GameInviteNotification parseDelimitedFrom(InputStream input) throws IOException {
        return (GameInviteNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static GameInviteNotification parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<GameInviteNotification> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GameInviteNotification)) {
            return super.equals(obj);
        }
        GameInviteNotification gameInviteNotification = (GameInviteNotification) obj;
        return getFromAccountId() == gameInviteNotification.getFromAccountId() && getFromNickname().equals(gameInviteNotification.getFromNickname()) && getLobbyRoomId() == gameInviteNotification.getLobbyRoomId() && getGameId() == gameInviteNotification.getGameId() && getAvatar().equals(gameInviteNotification.getAvatar()) && getGameName().equals(gameInviteNotification.getGameName()) && getRoomPasswd().equals(gameInviteNotification.getRoomPasswd()) && getEliteField() == gameInviteNotification.getEliteField() && getAccountId() == gameInviteNotification.getAccountId() && getSource() == gameInviteNotification.getSource() && this.unknownFields.equals(gameInviteNotification.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.r
    public int getAccountId() {
        return this.accountId_;
    }

    @Override // com.wufan.friend.chat.protocol.r
    public String getAvatar() {
        Object obj = this.avatar_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.avatar_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.r
    public ByteString getAvatarBytes() {
        Object obj = this.avatar_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.avatar_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.r
    public boolean getEliteField() {
        return this.eliteField_;
    }

    @Override // com.wufan.friend.chat.protocol.r
    public int getFromAccountId() {
        return this.fromAccountId_;
    }

    @Override // com.wufan.friend.chat.protocol.r
    public String getFromNickname() {
        Object obj = this.fromNickname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.fromNickname_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.r
    public ByteString getFromNicknameBytes() {
        Object obj = this.fromNickname_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.fromNickname_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.r
    public long getGameId() {
        return this.gameId_;
    }

    @Override // com.wufan.friend.chat.protocol.r
    public String getGameName() {
        Object obj = this.gameName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.gameName_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.r
    public ByteString getGameNameBytes() {
        Object obj = this.gameName_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.gameName_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.r
    public long getLobbyRoomId() {
        return this.lobbyRoomId_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<GameInviteNotification> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.friend.chat.protocol.r
    public String getRoomPasswd() {
        Object obj = this.roomPasswd_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.roomPasswd_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.r
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
        int i11 = this.fromAccountId_;
        int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
        if (!getFromNicknameBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.fromNickname_);
        }
        long j10 = this.lobbyRoomId_;
        if (j10 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(3, j10);
        }
        long j11 = this.gameId_;
        if (j11 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(4, j11);
        }
        if (!getAvatarBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(5, this.avatar_);
        }
        if (!getGameNameBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.gameName_);
        }
        if (!getRoomPasswdBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(7, this.roomPasswd_);
        }
        boolean z10 = this.eliteField_;
        if (z10) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(8, z10);
        }
        int i12 = this.accountId_;
        if (i12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(9, i12);
        }
        int i13 = this.source_;
        if (i13 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(10, i13);
        }
        int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.wufan.friend.chat.protocol.r
    public int getSource() {
        return this.source_;
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
        int iHashCode = ((((((((((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getFromAccountId()) * 37) + 2) * 53) + getFromNickname().hashCode()) * 37) + 3) * 53) + Internal.hashLong(getLobbyRoomId())) * 37) + 4) * 53) + Internal.hashLong(getGameId())) * 37) + 5) * 53) + getAvatar().hashCode()) * 37) + 6) * 53) + getGameName().hashCode()) * 37) + 7) * 53) + getRoomPasswd().hashCode()) * 37) + 8) * 53) + Internal.hashBoolean(getEliteField())) * 37) + 9) * 53) + getAccountId()) * 37) + 10) * 53) + getSource()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87861b0.ensureFieldAccessorsInitialized(GameInviteNotification.class, b.class);
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
        int i10 = this.fromAccountId_;
        if (i10 != 0) {
            output.writeInt32(1, i10);
        }
        if (!getFromNicknameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 2, this.fromNickname_);
        }
        long j10 = this.lobbyRoomId_;
        if (j10 != 0) {
            output.writeInt64(3, j10);
        }
        long j11 = this.gameId_;
        if (j11 != 0) {
            output.writeInt64(4, j11);
        }
        if (!getAvatarBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 5, this.avatar_);
        }
        if (!getGameNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 6, this.gameName_);
        }
        if (!getRoomPasswdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 7, this.roomPasswd_);
        }
        boolean z10 = this.eliteField_;
        if (z10) {
            output.writeBool(8, z10);
        }
        int i11 = this.accountId_;
        if (i11 != 0) {
            output.writeInt32(9, i11);
        }
        int i12 = this.source_;
        if (i12 != 0) {
            output.writeInt32(10, i12);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ GameInviteNotification(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(GameInviteNotification prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static GameInviteNotification parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private GameInviteNotification(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GameInviteNotification parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (GameInviteNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static GameInviteNotification parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public GameInviteNotification getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static GameInviteNotification parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private GameInviteNotification() {
        this.memoizedIsInitialized = (byte) -1;
        this.fromNickname_ = "";
        this.avatar_ = "";
        this.gameName_ = "";
        this.roomPasswd_ = "";
    }

    public static GameInviteNotification parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static GameInviteNotification parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static GameInviteNotification parseFrom(InputStream input) throws IOException {
        return (GameInviteNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static GameInviteNotification parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (GameInviteNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    private GameInviteNotification(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        this();
        extensionRegistry.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int tag = input.readTag();
                    switch (tag) {
                        case 0:
                            break;
                        case 8:
                            this.fromAccountId_ = input.readInt32();
                            continue;
                        case 18:
                            this.fromNickname_ = input.readStringRequireUtf8();
                            continue;
                        case 24:
                            this.lobbyRoomId_ = input.readInt64();
                            continue;
                        case 32:
                            this.gameId_ = input.readInt64();
                            continue;
                        case 42:
                            this.avatar_ = input.readStringRequireUtf8();
                            continue;
                        case 50:
                            this.gameName_ = input.readStringRequireUtf8();
                            continue;
                        case 58:
                            this.roomPasswd_ = input.readStringRequireUtf8();
                            continue;
                        case 64:
                            this.eliteField_ = input.readBool();
                            continue;
                        case 72:
                            this.accountId_ = input.readInt32();
                            continue;
                        case 80:
                            this.source_ = input.readInt32();
                            continue;
                        default:
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                break;
                            }
                            break;
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

    public static GameInviteNotification parseFrom(CodedInputStream input) throws IOException {
        return (GameInviteNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static GameInviteNotification parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (GameInviteNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
