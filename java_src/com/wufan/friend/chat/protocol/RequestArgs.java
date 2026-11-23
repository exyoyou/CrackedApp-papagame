package com.wufan.friend.chat.protocol;

import com.google.protobuf.AbstractMessage;
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
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class RequestArgs extends GeneratedMessageV3 implements m0 {
    public static final int ACKARGS_FIELD_NUMBER = 2;
    public static final int CHATMESSAGEARGS_FIELD_NUMBER = 8;
    public static final int CHATROOMARGS_FIELD_NUMBER = 7;
    public static final int GAMEINVITEARGS_FIELD_NUMBER = 4;
    public static final int HEARTARGS_FIELD_NUMBER = 3;
    public static final int LOCALBATTLEGAMEARGS_FIELD_NUMBER = 10;
    public static final int LOGINARGS_FIELD_NUMBER = 1;
    public static final int PLAYGAMEARGS_FIELD_NUMBER = 6;
    public static final int RECOMMENDPLAYERARGS_FIELD_NUMBER = 9;
    public static final int STATEARGS_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private AckArgs ackArgs_;
    private ChatMessageArgs chatMessageArgs_;
    private ChatRoomArgs chatRoomArgs_;
    private GameInviteArgs gameInviteArgs_;
    private HeartArgs heartArgs_;
    private GetLocalBattleGameArgs localBattleGameArgs_;
    private LoginArgs loginArgs_;
    private byte memoizedIsInitialized;
    private PlayGameArgs playGameArgs_;
    private RecommendPlayerArgs recommendPlayerArgs_;
    private OnlineStateArgs stateArgs_;
    private static final RequestArgs DEFAULT_INSTANCE = new RequestArgs();
    private static final Parser<RequestArgs> PARSER = new a();

    class a extends AbstractParser<RequestArgs> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RequestArgs parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new RequestArgs(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements m0 {
        private SingleFieldBuilderV3<AckArgs, AckArgs.b, com.wufan.friend.chat.protocol.b> ackArgsBuilder_;
        private AckArgs ackArgs_;
        private SingleFieldBuilderV3<ChatMessageArgs, ChatMessageArgs.b, e> chatMessageArgsBuilder_;
        private ChatMessageArgs chatMessageArgs_;
        private SingleFieldBuilderV3<ChatRoomArgs, ChatRoomArgs.b, h> chatRoomArgsBuilder_;
        private ChatRoomArgs chatRoomArgs_;
        private SingleFieldBuilderV3<GameInviteArgs, GameInviteArgs.b, q> gameInviteArgsBuilder_;
        private GameInviteArgs gameInviteArgs_;
        private SingleFieldBuilderV3<HeartArgs, HeartArgs.b, t> heartArgsBuilder_;
        private HeartArgs heartArgs_;
        private SingleFieldBuilderV3<GetLocalBattleGameArgs, GetLocalBattleGameArgs.b, s> localBattleGameArgsBuilder_;
        private GetLocalBattleGameArgs localBattleGameArgs_;
        private SingleFieldBuilderV3<LoginArgs, LoginArgs.b, y> loginArgsBuilder_;
        private LoginArgs loginArgs_;
        private SingleFieldBuilderV3<PlayGameArgs, PlayGameArgs.b, d0> playGameArgsBuilder_;
        private PlayGameArgs playGameArgs_;
        private SingleFieldBuilderV3<RecommendPlayerArgs, RecommendPlayerArgs.b, h0> recommendPlayerArgsBuilder_;
        private RecommendPlayerArgs recommendPlayerArgs_;
        private SingleFieldBuilderV3<OnlineStateArgs, OnlineStateArgs.b, c0> stateArgsBuilder_;
        private OnlineStateArgs stateArgs_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private SingleFieldBuilderV3<AckArgs, AckArgs.b, com.wufan.friend.chat.protocol.b> getAckArgsFieldBuilder() {
            if (this.ackArgsBuilder_ == null) {
                this.ackArgsBuilder_ = new SingleFieldBuilderV3<>(getAckArgs(), getParentForChildren(), isClean());
                this.ackArgs_ = null;
            }
            return this.ackArgsBuilder_;
        }

        private SingleFieldBuilderV3<ChatMessageArgs, ChatMessageArgs.b, e> getChatMessageArgsFieldBuilder() {
            if (this.chatMessageArgsBuilder_ == null) {
                this.chatMessageArgsBuilder_ = new SingleFieldBuilderV3<>(getChatMessageArgs(), getParentForChildren(), isClean());
                this.chatMessageArgs_ = null;
            }
            return this.chatMessageArgsBuilder_;
        }

        private SingleFieldBuilderV3<ChatRoomArgs, ChatRoomArgs.b, h> getChatRoomArgsFieldBuilder() {
            if (this.chatRoomArgsBuilder_ == null) {
                this.chatRoomArgsBuilder_ = new SingleFieldBuilderV3<>(getChatRoomArgs(), getParentForChildren(), isClean());
                this.chatRoomArgs_ = null;
            }
            return this.chatRoomArgsBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87862c;
        }

        private SingleFieldBuilderV3<GameInviteArgs, GameInviteArgs.b, q> getGameInviteArgsFieldBuilder() {
            if (this.gameInviteArgsBuilder_ == null) {
                this.gameInviteArgsBuilder_ = new SingleFieldBuilderV3<>(getGameInviteArgs(), getParentForChildren(), isClean());
                this.gameInviteArgs_ = null;
            }
            return this.gameInviteArgsBuilder_;
        }

        private SingleFieldBuilderV3<HeartArgs, HeartArgs.b, t> getHeartArgsFieldBuilder() {
            if (this.heartArgsBuilder_ == null) {
                this.heartArgsBuilder_ = new SingleFieldBuilderV3<>(getHeartArgs(), getParentForChildren(), isClean());
                this.heartArgs_ = null;
            }
            return this.heartArgsBuilder_;
        }

        private SingleFieldBuilderV3<GetLocalBattleGameArgs, GetLocalBattleGameArgs.b, s> getLocalBattleGameArgsFieldBuilder() {
            if (this.localBattleGameArgsBuilder_ == null) {
                this.localBattleGameArgsBuilder_ = new SingleFieldBuilderV3<>(getLocalBattleGameArgs(), getParentForChildren(), isClean());
                this.localBattleGameArgs_ = null;
            }
            return this.localBattleGameArgsBuilder_;
        }

        private SingleFieldBuilderV3<LoginArgs, LoginArgs.b, y> getLoginArgsFieldBuilder() {
            if (this.loginArgsBuilder_ == null) {
                this.loginArgsBuilder_ = new SingleFieldBuilderV3<>(getLoginArgs(), getParentForChildren(), isClean());
                this.loginArgs_ = null;
            }
            return this.loginArgsBuilder_;
        }

        private SingleFieldBuilderV3<PlayGameArgs, PlayGameArgs.b, d0> getPlayGameArgsFieldBuilder() {
            if (this.playGameArgsBuilder_ == null) {
                this.playGameArgsBuilder_ = new SingleFieldBuilderV3<>(getPlayGameArgs(), getParentForChildren(), isClean());
                this.playGameArgs_ = null;
            }
            return this.playGameArgsBuilder_;
        }

        private SingleFieldBuilderV3<RecommendPlayerArgs, RecommendPlayerArgs.b, h0> getRecommendPlayerArgsFieldBuilder() {
            if (this.recommendPlayerArgsBuilder_ == null) {
                this.recommendPlayerArgsBuilder_ = new SingleFieldBuilderV3<>(getRecommendPlayerArgs(), getParentForChildren(), isClean());
                this.recommendPlayerArgs_ = null;
            }
            return this.recommendPlayerArgsBuilder_;
        }

        private SingleFieldBuilderV3<OnlineStateArgs, OnlineStateArgs.b, c0> getStateArgsFieldBuilder() {
            if (this.stateArgsBuilder_ == null) {
                this.stateArgsBuilder_ = new SingleFieldBuilderV3<>(getStateArgs(), getParentForChildren(), isClean());
                this.stateArgs_ = null;
            }
            return this.stateArgsBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearAckArgs() {
            if (this.ackArgsBuilder_ == null) {
                this.ackArgs_ = null;
                onChanged();
            } else {
                this.ackArgs_ = null;
                this.ackArgsBuilder_ = null;
            }
            return this;
        }

        public b clearChatMessageArgs() {
            if (this.chatMessageArgsBuilder_ == null) {
                this.chatMessageArgs_ = null;
                onChanged();
            } else {
                this.chatMessageArgs_ = null;
                this.chatMessageArgsBuilder_ = null;
            }
            return this;
        }

        public b clearChatRoomArgs() {
            if (this.chatRoomArgsBuilder_ == null) {
                this.chatRoomArgs_ = null;
                onChanged();
            } else {
                this.chatRoomArgs_ = null;
                this.chatRoomArgsBuilder_ = null;
            }
            return this;
        }

        public b clearGameInviteArgs() {
            if (this.gameInviteArgsBuilder_ == null) {
                this.gameInviteArgs_ = null;
                onChanged();
            } else {
                this.gameInviteArgs_ = null;
                this.gameInviteArgsBuilder_ = null;
            }
            return this;
        }

        public b clearHeartArgs() {
            if (this.heartArgsBuilder_ == null) {
                this.heartArgs_ = null;
                onChanged();
            } else {
                this.heartArgs_ = null;
                this.heartArgsBuilder_ = null;
            }
            return this;
        }

        public b clearLocalBattleGameArgs() {
            if (this.localBattleGameArgsBuilder_ == null) {
                this.localBattleGameArgs_ = null;
                onChanged();
            } else {
                this.localBattleGameArgs_ = null;
                this.localBattleGameArgsBuilder_ = null;
            }
            return this;
        }

        public b clearLoginArgs() {
            if (this.loginArgsBuilder_ == null) {
                this.loginArgs_ = null;
                onChanged();
            } else {
                this.loginArgs_ = null;
                this.loginArgsBuilder_ = null;
            }
            return this;
        }

        public b clearPlayGameArgs() {
            if (this.playGameArgsBuilder_ == null) {
                this.playGameArgs_ = null;
                onChanged();
            } else {
                this.playGameArgs_ = null;
                this.playGameArgsBuilder_ = null;
            }
            return this;
        }

        public b clearRecommendPlayerArgs() {
            if (this.recommendPlayerArgsBuilder_ == null) {
                this.recommendPlayerArgs_ = null;
                onChanged();
            } else {
                this.recommendPlayerArgs_ = null;
                this.recommendPlayerArgsBuilder_ = null;
            }
            return this;
        }

        public b clearStateArgs() {
            if (this.stateArgsBuilder_ == null) {
                this.stateArgs_ = null;
                onChanged();
            } else {
                this.stateArgs_ = null;
                this.stateArgsBuilder_ = null;
            }
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public AckArgs getAckArgs() {
            SingleFieldBuilderV3<AckArgs, AckArgs.b, com.wufan.friend.chat.protocol.b> singleFieldBuilderV3 = this.ackArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (AckArgs) singleFieldBuilderV3.getMessage();
            }
            AckArgs ackArgs = this.ackArgs_;
            return ackArgs == null ? AckArgs.getDefaultInstance() : ackArgs;
        }

        public AckArgs.b getAckArgsBuilder() {
            onChanged();
            return (AckArgs.b) getAckArgsFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public com.wufan.friend.chat.protocol.b getAckArgsOrBuilder() {
            SingleFieldBuilderV3<AckArgs, AckArgs.b, com.wufan.friend.chat.protocol.b> singleFieldBuilderV3 = this.ackArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (com.wufan.friend.chat.protocol.b) singleFieldBuilderV3.getMessageOrBuilder();
            }
            AckArgs ackArgs = this.ackArgs_;
            return ackArgs == null ? AckArgs.getDefaultInstance() : ackArgs;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public ChatMessageArgs getChatMessageArgs() {
            SingleFieldBuilderV3<ChatMessageArgs, ChatMessageArgs.b, e> singleFieldBuilderV3 = this.chatMessageArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (ChatMessageArgs) singleFieldBuilderV3.getMessage();
            }
            ChatMessageArgs chatMessageArgs = this.chatMessageArgs_;
            return chatMessageArgs == null ? ChatMessageArgs.getDefaultInstance() : chatMessageArgs;
        }

        public ChatMessageArgs.b getChatMessageArgsBuilder() {
            onChanged();
            return (ChatMessageArgs.b) getChatMessageArgsFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public e getChatMessageArgsOrBuilder() {
            SingleFieldBuilderV3<ChatMessageArgs, ChatMessageArgs.b, e> singleFieldBuilderV3 = this.chatMessageArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (e) singleFieldBuilderV3.getMessageOrBuilder();
            }
            ChatMessageArgs chatMessageArgs = this.chatMessageArgs_;
            return chatMessageArgs == null ? ChatMessageArgs.getDefaultInstance() : chatMessageArgs;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public ChatRoomArgs getChatRoomArgs() {
            SingleFieldBuilderV3<ChatRoomArgs, ChatRoomArgs.b, h> singleFieldBuilderV3 = this.chatRoomArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (ChatRoomArgs) singleFieldBuilderV3.getMessage();
            }
            ChatRoomArgs chatRoomArgs = this.chatRoomArgs_;
            return chatRoomArgs == null ? ChatRoomArgs.getDefaultInstance() : chatRoomArgs;
        }

        public ChatRoomArgs.b getChatRoomArgsBuilder() {
            onChanged();
            return (ChatRoomArgs.b) getChatRoomArgsFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public h getChatRoomArgsOrBuilder() {
            SingleFieldBuilderV3<ChatRoomArgs, ChatRoomArgs.b, h> singleFieldBuilderV3 = this.chatRoomArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (h) singleFieldBuilderV3.getMessageOrBuilder();
            }
            ChatRoomArgs chatRoomArgs = this.chatRoomArgs_;
            return chatRoomArgs == null ? ChatRoomArgs.getDefaultInstance() : chatRoomArgs;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87862c;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public GameInviteArgs getGameInviteArgs() {
            SingleFieldBuilderV3<GameInviteArgs, GameInviteArgs.b, q> singleFieldBuilderV3 = this.gameInviteArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (GameInviteArgs) singleFieldBuilderV3.getMessage();
            }
            GameInviteArgs gameInviteArgs = this.gameInviteArgs_;
            return gameInviteArgs == null ? GameInviteArgs.getDefaultInstance() : gameInviteArgs;
        }

        public GameInviteArgs.b getGameInviteArgsBuilder() {
            onChanged();
            return (GameInviteArgs.b) getGameInviteArgsFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public q getGameInviteArgsOrBuilder() {
            SingleFieldBuilderV3<GameInviteArgs, GameInviteArgs.b, q> singleFieldBuilderV3 = this.gameInviteArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (q) singleFieldBuilderV3.getMessageOrBuilder();
            }
            GameInviteArgs gameInviteArgs = this.gameInviteArgs_;
            return gameInviteArgs == null ? GameInviteArgs.getDefaultInstance() : gameInviteArgs;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public HeartArgs getHeartArgs() {
            SingleFieldBuilderV3<HeartArgs, HeartArgs.b, t> singleFieldBuilderV3 = this.heartArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (HeartArgs) singleFieldBuilderV3.getMessage();
            }
            HeartArgs heartArgs = this.heartArgs_;
            return heartArgs == null ? HeartArgs.getDefaultInstance() : heartArgs;
        }

        public HeartArgs.b getHeartArgsBuilder() {
            onChanged();
            return (HeartArgs.b) getHeartArgsFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public t getHeartArgsOrBuilder() {
            SingleFieldBuilderV3<HeartArgs, HeartArgs.b, t> singleFieldBuilderV3 = this.heartArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (t) singleFieldBuilderV3.getMessageOrBuilder();
            }
            HeartArgs heartArgs = this.heartArgs_;
            return heartArgs == null ? HeartArgs.getDefaultInstance() : heartArgs;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public GetLocalBattleGameArgs getLocalBattleGameArgs() {
            SingleFieldBuilderV3<GetLocalBattleGameArgs, GetLocalBattleGameArgs.b, s> singleFieldBuilderV3 = this.localBattleGameArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (GetLocalBattleGameArgs) singleFieldBuilderV3.getMessage();
            }
            GetLocalBattleGameArgs getLocalBattleGameArgs = this.localBattleGameArgs_;
            return getLocalBattleGameArgs == null ? GetLocalBattleGameArgs.getDefaultInstance() : getLocalBattleGameArgs;
        }

        public GetLocalBattleGameArgs.b getLocalBattleGameArgsBuilder() {
            onChanged();
            return (GetLocalBattleGameArgs.b) getLocalBattleGameArgsFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public s getLocalBattleGameArgsOrBuilder() {
            SingleFieldBuilderV3<GetLocalBattleGameArgs, GetLocalBattleGameArgs.b, s> singleFieldBuilderV3 = this.localBattleGameArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (s) singleFieldBuilderV3.getMessageOrBuilder();
            }
            GetLocalBattleGameArgs getLocalBattleGameArgs = this.localBattleGameArgs_;
            return getLocalBattleGameArgs == null ? GetLocalBattleGameArgs.getDefaultInstance() : getLocalBattleGameArgs;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public LoginArgs getLoginArgs() {
            SingleFieldBuilderV3<LoginArgs, LoginArgs.b, y> singleFieldBuilderV3 = this.loginArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (LoginArgs) singleFieldBuilderV3.getMessage();
            }
            LoginArgs loginArgs = this.loginArgs_;
            return loginArgs == null ? LoginArgs.getDefaultInstance() : loginArgs;
        }

        public LoginArgs.b getLoginArgsBuilder() {
            onChanged();
            return (LoginArgs.b) getLoginArgsFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public y getLoginArgsOrBuilder() {
            SingleFieldBuilderV3<LoginArgs, LoginArgs.b, y> singleFieldBuilderV3 = this.loginArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (y) singleFieldBuilderV3.getMessageOrBuilder();
            }
            LoginArgs loginArgs = this.loginArgs_;
            return loginArgs == null ? LoginArgs.getDefaultInstance() : loginArgs;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public PlayGameArgs getPlayGameArgs() {
            SingleFieldBuilderV3<PlayGameArgs, PlayGameArgs.b, d0> singleFieldBuilderV3 = this.playGameArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (PlayGameArgs) singleFieldBuilderV3.getMessage();
            }
            PlayGameArgs playGameArgs = this.playGameArgs_;
            return playGameArgs == null ? PlayGameArgs.getDefaultInstance() : playGameArgs;
        }

        public PlayGameArgs.b getPlayGameArgsBuilder() {
            onChanged();
            return (PlayGameArgs.b) getPlayGameArgsFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public d0 getPlayGameArgsOrBuilder() {
            SingleFieldBuilderV3<PlayGameArgs, PlayGameArgs.b, d0> singleFieldBuilderV3 = this.playGameArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (d0) singleFieldBuilderV3.getMessageOrBuilder();
            }
            PlayGameArgs playGameArgs = this.playGameArgs_;
            return playGameArgs == null ? PlayGameArgs.getDefaultInstance() : playGameArgs;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public RecommendPlayerArgs getRecommendPlayerArgs() {
            SingleFieldBuilderV3<RecommendPlayerArgs, RecommendPlayerArgs.b, h0> singleFieldBuilderV3 = this.recommendPlayerArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (RecommendPlayerArgs) singleFieldBuilderV3.getMessage();
            }
            RecommendPlayerArgs recommendPlayerArgs = this.recommendPlayerArgs_;
            return recommendPlayerArgs == null ? RecommendPlayerArgs.getDefaultInstance() : recommendPlayerArgs;
        }

        public RecommendPlayerArgs.b getRecommendPlayerArgsBuilder() {
            onChanged();
            return (RecommendPlayerArgs.b) getRecommendPlayerArgsFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public h0 getRecommendPlayerArgsOrBuilder() {
            SingleFieldBuilderV3<RecommendPlayerArgs, RecommendPlayerArgs.b, h0> singleFieldBuilderV3 = this.recommendPlayerArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (h0) singleFieldBuilderV3.getMessageOrBuilder();
            }
            RecommendPlayerArgs recommendPlayerArgs = this.recommendPlayerArgs_;
            return recommendPlayerArgs == null ? RecommendPlayerArgs.getDefaultInstance() : recommendPlayerArgs;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public OnlineStateArgs getStateArgs() {
            SingleFieldBuilderV3<OnlineStateArgs, OnlineStateArgs.b, c0> singleFieldBuilderV3 = this.stateArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (OnlineStateArgs) singleFieldBuilderV3.getMessage();
            }
            OnlineStateArgs onlineStateArgs = this.stateArgs_;
            return onlineStateArgs == null ? OnlineStateArgs.getDefaultInstance() : onlineStateArgs;
        }

        public OnlineStateArgs.b getStateArgsBuilder() {
            onChanged();
            return (OnlineStateArgs.b) getStateArgsFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public c0 getStateArgsOrBuilder() {
            SingleFieldBuilderV3<OnlineStateArgs, OnlineStateArgs.b, c0> singleFieldBuilderV3 = this.stateArgsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (c0) singleFieldBuilderV3.getMessageOrBuilder();
            }
            OnlineStateArgs onlineStateArgs = this.stateArgs_;
            return onlineStateArgs == null ? OnlineStateArgs.getDefaultInstance() : onlineStateArgs;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public boolean hasAckArgs() {
            return (this.ackArgsBuilder_ == null && this.ackArgs_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public boolean hasChatMessageArgs() {
            return (this.chatMessageArgsBuilder_ == null && this.chatMessageArgs_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public boolean hasChatRoomArgs() {
            return (this.chatRoomArgsBuilder_ == null && this.chatRoomArgs_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public boolean hasGameInviteArgs() {
            return (this.gameInviteArgsBuilder_ == null && this.gameInviteArgs_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public boolean hasHeartArgs() {
            return (this.heartArgsBuilder_ == null && this.heartArgs_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public boolean hasLocalBattleGameArgs() {
            return (this.localBattleGameArgsBuilder_ == null && this.localBattleGameArgs_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public boolean hasLoginArgs() {
            return (this.loginArgsBuilder_ == null && this.loginArgs_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public boolean hasPlayGameArgs() {
            return (this.playGameArgsBuilder_ == null && this.playGameArgs_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public boolean hasRecommendPlayerArgs() {
            return (this.recommendPlayerArgsBuilder_ == null && this.recommendPlayerArgs_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public boolean hasStateArgs() {
            return (this.stateArgsBuilder_ == null && this.stateArgs_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87864d.ensureFieldAccessorsInitialized(RequestArgs.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b mergeAckArgs(AckArgs value) {
            SingleFieldBuilderV3<AckArgs, AckArgs.b, com.wufan.friend.chat.protocol.b> singleFieldBuilderV3 = this.ackArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                AckArgs ackArgs = this.ackArgs_;
                if (ackArgs != null) {
                    this.ackArgs_ = AckArgs.newBuilder(ackArgs).mergeFrom(value).buildPartial();
                } else {
                    this.ackArgs_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeChatMessageArgs(ChatMessageArgs value) {
            SingleFieldBuilderV3<ChatMessageArgs, ChatMessageArgs.b, e> singleFieldBuilderV3 = this.chatMessageArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                ChatMessageArgs chatMessageArgs = this.chatMessageArgs_;
                if (chatMessageArgs != null) {
                    this.chatMessageArgs_ = ChatMessageArgs.newBuilder(chatMessageArgs).mergeFrom(value).buildPartial();
                } else {
                    this.chatMessageArgs_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeChatRoomArgs(ChatRoomArgs value) {
            SingleFieldBuilderV3<ChatRoomArgs, ChatRoomArgs.b, h> singleFieldBuilderV3 = this.chatRoomArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                ChatRoomArgs chatRoomArgs = this.chatRoomArgs_;
                if (chatRoomArgs != null) {
                    this.chatRoomArgs_ = ChatRoomArgs.newBuilder(chatRoomArgs).mergeFrom(value).buildPartial();
                } else {
                    this.chatRoomArgs_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeGameInviteArgs(GameInviteArgs value) {
            SingleFieldBuilderV3<GameInviteArgs, GameInviteArgs.b, q> singleFieldBuilderV3 = this.gameInviteArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                GameInviteArgs gameInviteArgs = this.gameInviteArgs_;
                if (gameInviteArgs != null) {
                    this.gameInviteArgs_ = GameInviteArgs.newBuilder(gameInviteArgs).mergeFrom(value).buildPartial();
                } else {
                    this.gameInviteArgs_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeHeartArgs(HeartArgs value) {
            SingleFieldBuilderV3<HeartArgs, HeartArgs.b, t> singleFieldBuilderV3 = this.heartArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                HeartArgs heartArgs = this.heartArgs_;
                if (heartArgs != null) {
                    this.heartArgs_ = HeartArgs.newBuilder(heartArgs).mergeFrom(value).buildPartial();
                } else {
                    this.heartArgs_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeLocalBattleGameArgs(GetLocalBattleGameArgs value) {
            SingleFieldBuilderV3<GetLocalBattleGameArgs, GetLocalBattleGameArgs.b, s> singleFieldBuilderV3 = this.localBattleGameArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                GetLocalBattleGameArgs getLocalBattleGameArgs = this.localBattleGameArgs_;
                if (getLocalBattleGameArgs != null) {
                    this.localBattleGameArgs_ = GetLocalBattleGameArgs.newBuilder(getLocalBattleGameArgs).mergeFrom(value).buildPartial();
                } else {
                    this.localBattleGameArgs_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeLoginArgs(LoginArgs value) {
            SingleFieldBuilderV3<LoginArgs, LoginArgs.b, y> singleFieldBuilderV3 = this.loginArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                LoginArgs loginArgs = this.loginArgs_;
                if (loginArgs != null) {
                    this.loginArgs_ = LoginArgs.newBuilder(loginArgs).mergeFrom(value).buildPartial();
                } else {
                    this.loginArgs_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergePlayGameArgs(PlayGameArgs value) {
            SingleFieldBuilderV3<PlayGameArgs, PlayGameArgs.b, d0> singleFieldBuilderV3 = this.playGameArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                PlayGameArgs playGameArgs = this.playGameArgs_;
                if (playGameArgs != null) {
                    this.playGameArgs_ = PlayGameArgs.newBuilder(playGameArgs).mergeFrom(value).buildPartial();
                } else {
                    this.playGameArgs_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeRecommendPlayerArgs(RecommendPlayerArgs value) {
            SingleFieldBuilderV3<RecommendPlayerArgs, RecommendPlayerArgs.b, h0> singleFieldBuilderV3 = this.recommendPlayerArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                RecommendPlayerArgs recommendPlayerArgs = this.recommendPlayerArgs_;
                if (recommendPlayerArgs != null) {
                    this.recommendPlayerArgs_ = RecommendPlayerArgs.newBuilder(recommendPlayerArgs).mergeFrom(value).buildPartial();
                } else {
                    this.recommendPlayerArgs_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeStateArgs(OnlineStateArgs value) {
            SingleFieldBuilderV3<OnlineStateArgs, OnlineStateArgs.b, c0> singleFieldBuilderV3 = this.stateArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                OnlineStateArgs onlineStateArgs = this.stateArgs_;
                if (onlineStateArgs != null) {
                    this.stateArgs_ = OnlineStateArgs.newBuilder(onlineStateArgs).mergeFrom(value).buildPartial();
                } else {
                    this.stateArgs_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b setAckArgs(AckArgs value) {
            SingleFieldBuilderV3<AckArgs, AckArgs.b, com.wufan.friend.chat.protocol.b> singleFieldBuilderV3 = this.ackArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.ackArgs_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setChatMessageArgs(ChatMessageArgs value) {
            SingleFieldBuilderV3<ChatMessageArgs, ChatMessageArgs.b, e> singleFieldBuilderV3 = this.chatMessageArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.chatMessageArgs_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setChatRoomArgs(ChatRoomArgs value) {
            SingleFieldBuilderV3<ChatRoomArgs, ChatRoomArgs.b, h> singleFieldBuilderV3 = this.chatRoomArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.chatRoomArgs_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setGameInviteArgs(GameInviteArgs value) {
            SingleFieldBuilderV3<GameInviteArgs, GameInviteArgs.b, q> singleFieldBuilderV3 = this.gameInviteArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.gameInviteArgs_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setHeartArgs(HeartArgs value) {
            SingleFieldBuilderV3<HeartArgs, HeartArgs.b, t> singleFieldBuilderV3 = this.heartArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.heartArgs_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setLocalBattleGameArgs(GetLocalBattleGameArgs value) {
            SingleFieldBuilderV3<GetLocalBattleGameArgs, GetLocalBattleGameArgs.b, s> singleFieldBuilderV3 = this.localBattleGameArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.localBattleGameArgs_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setLoginArgs(LoginArgs value) {
            SingleFieldBuilderV3<LoginArgs, LoginArgs.b, y> singleFieldBuilderV3 = this.loginArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.loginArgs_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setPlayGameArgs(PlayGameArgs value) {
            SingleFieldBuilderV3<PlayGameArgs, PlayGameArgs.b, d0> singleFieldBuilderV3 = this.playGameArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.playGameArgs_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setRecommendPlayerArgs(RecommendPlayerArgs value) {
            SingleFieldBuilderV3<RecommendPlayerArgs, RecommendPlayerArgs.b, h0> singleFieldBuilderV3 = this.recommendPlayerArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.recommendPlayerArgs_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setStateArgs(OnlineStateArgs value) {
            SingleFieldBuilderV3<OnlineStateArgs, OnlineStateArgs.b, c0> singleFieldBuilderV3 = this.stateArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.stateArgs_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
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
        public RequestArgs build() {
            RequestArgs requestArgsBuildPartial = buildPartial();
            if (requestArgsBuildPartial.isInitialized()) {
                return requestArgsBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) requestArgsBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public RequestArgs buildPartial() {
            RequestArgs requestArgs = new RequestArgs(this, (a) null);
            SingleFieldBuilderV3<LoginArgs, LoginArgs.b, y> singleFieldBuilderV3 = this.loginArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                requestArgs.loginArgs_ = this.loginArgs_;
            } else {
                requestArgs.loginArgs_ = (LoginArgs) singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<AckArgs, AckArgs.b, com.wufan.friend.chat.protocol.b> singleFieldBuilderV4 = this.ackArgsBuilder_;
            if (singleFieldBuilderV4 == null) {
                requestArgs.ackArgs_ = this.ackArgs_;
            } else {
                requestArgs.ackArgs_ = (AckArgs) singleFieldBuilderV4.build();
            }
            SingleFieldBuilderV3<HeartArgs, HeartArgs.b, t> singleFieldBuilderV5 = this.heartArgsBuilder_;
            if (singleFieldBuilderV5 == null) {
                requestArgs.heartArgs_ = this.heartArgs_;
            } else {
                requestArgs.heartArgs_ = (HeartArgs) singleFieldBuilderV5.build();
            }
            SingleFieldBuilderV3<GameInviteArgs, GameInviteArgs.b, q> singleFieldBuilderV6 = this.gameInviteArgsBuilder_;
            if (singleFieldBuilderV6 == null) {
                requestArgs.gameInviteArgs_ = this.gameInviteArgs_;
            } else {
                requestArgs.gameInviteArgs_ = (GameInviteArgs) singleFieldBuilderV6.build();
            }
            SingleFieldBuilderV3<OnlineStateArgs, OnlineStateArgs.b, c0> singleFieldBuilderV7 = this.stateArgsBuilder_;
            if (singleFieldBuilderV7 == null) {
                requestArgs.stateArgs_ = this.stateArgs_;
            } else {
                requestArgs.stateArgs_ = (OnlineStateArgs) singleFieldBuilderV7.build();
            }
            SingleFieldBuilderV3<PlayGameArgs, PlayGameArgs.b, d0> singleFieldBuilderV8 = this.playGameArgsBuilder_;
            if (singleFieldBuilderV8 == null) {
                requestArgs.playGameArgs_ = this.playGameArgs_;
            } else {
                requestArgs.playGameArgs_ = (PlayGameArgs) singleFieldBuilderV8.build();
            }
            SingleFieldBuilderV3<ChatRoomArgs, ChatRoomArgs.b, h> singleFieldBuilderV9 = this.chatRoomArgsBuilder_;
            if (singleFieldBuilderV9 == null) {
                requestArgs.chatRoomArgs_ = this.chatRoomArgs_;
            } else {
                requestArgs.chatRoomArgs_ = (ChatRoomArgs) singleFieldBuilderV9.build();
            }
            SingleFieldBuilderV3<ChatMessageArgs, ChatMessageArgs.b, e> singleFieldBuilderV10 = this.chatMessageArgsBuilder_;
            if (singleFieldBuilderV10 == null) {
                requestArgs.chatMessageArgs_ = this.chatMessageArgs_;
            } else {
                requestArgs.chatMessageArgs_ = (ChatMessageArgs) singleFieldBuilderV10.build();
            }
            SingleFieldBuilderV3<RecommendPlayerArgs, RecommendPlayerArgs.b, h0> singleFieldBuilderV11 = this.recommendPlayerArgsBuilder_;
            if (singleFieldBuilderV11 == null) {
                requestArgs.recommendPlayerArgs_ = this.recommendPlayerArgs_;
            } else {
                requestArgs.recommendPlayerArgs_ = (RecommendPlayerArgs) singleFieldBuilderV11.build();
            }
            SingleFieldBuilderV3<GetLocalBattleGameArgs, GetLocalBattleGameArgs.b, s> singleFieldBuilderV12 = this.localBattleGameArgsBuilder_;
            if (singleFieldBuilderV12 == null) {
                requestArgs.localBattleGameArgs_ = this.localBattleGameArgs_;
            } else {
                requestArgs.localBattleGameArgs_ = (GetLocalBattleGameArgs) singleFieldBuilderV12.build();
            }
            onBuilt();
            return requestArgs;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public RequestArgs getDefaultInstanceForType() {
            return RequestArgs.getDefaultInstance();
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
            if (this.loginArgsBuilder_ == null) {
                this.loginArgs_ = null;
            } else {
                this.loginArgs_ = null;
                this.loginArgsBuilder_ = null;
            }
            if (this.ackArgsBuilder_ == null) {
                this.ackArgs_ = null;
            } else {
                this.ackArgs_ = null;
                this.ackArgsBuilder_ = null;
            }
            if (this.heartArgsBuilder_ == null) {
                this.heartArgs_ = null;
            } else {
                this.heartArgs_ = null;
                this.heartArgsBuilder_ = null;
            }
            if (this.gameInviteArgsBuilder_ == null) {
                this.gameInviteArgs_ = null;
            } else {
                this.gameInviteArgs_ = null;
                this.gameInviteArgsBuilder_ = null;
            }
            if (this.stateArgsBuilder_ == null) {
                this.stateArgs_ = null;
            } else {
                this.stateArgs_ = null;
                this.stateArgsBuilder_ = null;
            }
            if (this.playGameArgsBuilder_ == null) {
                this.playGameArgs_ = null;
            } else {
                this.playGameArgs_ = null;
                this.playGameArgsBuilder_ = null;
            }
            if (this.chatRoomArgsBuilder_ == null) {
                this.chatRoomArgs_ = null;
            } else {
                this.chatRoomArgs_ = null;
                this.chatRoomArgsBuilder_ = null;
            }
            if (this.chatMessageArgsBuilder_ == null) {
                this.chatMessageArgs_ = null;
            } else {
                this.chatMessageArgs_ = null;
                this.chatMessageArgsBuilder_ = null;
            }
            if (this.recommendPlayerArgsBuilder_ == null) {
                this.recommendPlayerArgs_ = null;
            } else {
                this.recommendPlayerArgs_ = null;
                this.recommendPlayerArgsBuilder_ = null;
            }
            if (this.localBattleGameArgsBuilder_ == null) {
                this.localBattleGameArgs_ = null;
            } else {
                this.localBattleGameArgs_ = null;
                this.localBattleGameArgsBuilder_ = null;
            }
            return this;
        }

        public b setAckArgs(AckArgs.b builderForValue) {
            SingleFieldBuilderV3<AckArgs, AckArgs.b, com.wufan.friend.chat.protocol.b> singleFieldBuilderV3 = this.ackArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.ackArgs_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setChatMessageArgs(ChatMessageArgs.b builderForValue) {
            SingleFieldBuilderV3<ChatMessageArgs, ChatMessageArgs.b, e> singleFieldBuilderV3 = this.chatMessageArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.chatMessageArgs_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setChatRoomArgs(ChatRoomArgs.b builderForValue) {
            SingleFieldBuilderV3<ChatRoomArgs, ChatRoomArgs.b, h> singleFieldBuilderV3 = this.chatRoomArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.chatRoomArgs_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setGameInviteArgs(GameInviteArgs.b builderForValue) {
            SingleFieldBuilderV3<GameInviteArgs, GameInviteArgs.b, q> singleFieldBuilderV3 = this.gameInviteArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.gameInviteArgs_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setHeartArgs(HeartArgs.b builderForValue) {
            SingleFieldBuilderV3<HeartArgs, HeartArgs.b, t> singleFieldBuilderV3 = this.heartArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.heartArgs_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setLocalBattleGameArgs(GetLocalBattleGameArgs.b builderForValue) {
            SingleFieldBuilderV3<GetLocalBattleGameArgs, GetLocalBattleGameArgs.b, s> singleFieldBuilderV3 = this.localBattleGameArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.localBattleGameArgs_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setLoginArgs(LoginArgs.b builderForValue) {
            SingleFieldBuilderV3<LoginArgs, LoginArgs.b, y> singleFieldBuilderV3 = this.loginArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.loginArgs_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setPlayGameArgs(PlayGameArgs.b builderForValue) {
            SingleFieldBuilderV3<PlayGameArgs, PlayGameArgs.b, d0> singleFieldBuilderV3 = this.playGameArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.playGameArgs_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setRecommendPlayerArgs(RecommendPlayerArgs.b builderForValue) {
            SingleFieldBuilderV3<RecommendPlayerArgs, RecommendPlayerArgs.b, h0> singleFieldBuilderV3 = this.recommendPlayerArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.recommendPlayerArgs_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setStateArgs(OnlineStateArgs.b builderForValue) {
            SingleFieldBuilderV3<OnlineStateArgs, OnlineStateArgs.b, c0> singleFieldBuilderV3 = this.stateArgsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.stateArgs_ = builderForValue.build();
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
            if (other instanceof RequestArgs) {
                return mergeFrom((RequestArgs) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(RequestArgs other) {
            if (other == RequestArgs.getDefaultInstance()) {
                return this;
            }
            if (other.hasLoginArgs()) {
                mergeLoginArgs(other.getLoginArgs());
            }
            if (other.hasAckArgs()) {
                mergeAckArgs(other.getAckArgs());
            }
            if (other.hasHeartArgs()) {
                mergeHeartArgs(other.getHeartArgs());
            }
            if (other.hasGameInviteArgs()) {
                mergeGameInviteArgs(other.getGameInviteArgs());
            }
            if (other.hasStateArgs()) {
                mergeStateArgs(other.getStateArgs());
            }
            if (other.hasPlayGameArgs()) {
                mergePlayGameArgs(other.getPlayGameArgs());
            }
            if (other.hasChatRoomArgs()) {
                mergeChatRoomArgs(other.getChatRoomArgs());
            }
            if (other.hasChatMessageArgs()) {
                mergeChatMessageArgs(other.getChatMessageArgs());
            }
            if (other.hasRecommendPlayerArgs()) {
                mergeRecommendPlayerArgs(other.getRecommendPlayerArgs());
            }
            if (other.hasLocalBattleGameArgs()) {
                mergeLocalBattleGameArgs(other.getLocalBattleGameArgs());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            RequestArgs requestArgs = null;
            try {
                try {
                    RequestArgs requestArgs2 = (RequestArgs) RequestArgs.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (requestArgs2 != null) {
                        mergeFrom(requestArgs2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    RequestArgs requestArgs3 = (RequestArgs) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        requestArgs = requestArgs3;
                        if (requestArgs != null) {
                            mergeFrom(requestArgs);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (requestArgs != null) {
                    mergeFrom(requestArgs);
                }
                throw th;
            }
        }
    }

    /* synthetic */ RequestArgs(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static RequestArgs getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87862c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RequestArgs parseDelimitedFrom(InputStream input) throws IOException {
        return (RequestArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static RequestArgs parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<RequestArgs> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RequestArgs)) {
            return super.equals(obj);
        }
        RequestArgs requestArgs = (RequestArgs) obj;
        if (hasLoginArgs() != requestArgs.hasLoginArgs()) {
            return false;
        }
        if ((hasLoginArgs() && !getLoginArgs().equals(requestArgs.getLoginArgs())) || hasAckArgs() != requestArgs.hasAckArgs()) {
            return false;
        }
        if ((hasAckArgs() && !getAckArgs().equals(requestArgs.getAckArgs())) || hasHeartArgs() != requestArgs.hasHeartArgs()) {
            return false;
        }
        if ((hasHeartArgs() && !getHeartArgs().equals(requestArgs.getHeartArgs())) || hasGameInviteArgs() != requestArgs.hasGameInviteArgs()) {
            return false;
        }
        if ((hasGameInviteArgs() && !getGameInviteArgs().equals(requestArgs.getGameInviteArgs())) || hasStateArgs() != requestArgs.hasStateArgs()) {
            return false;
        }
        if ((hasStateArgs() && !getStateArgs().equals(requestArgs.getStateArgs())) || hasPlayGameArgs() != requestArgs.hasPlayGameArgs()) {
            return false;
        }
        if ((hasPlayGameArgs() && !getPlayGameArgs().equals(requestArgs.getPlayGameArgs())) || hasChatRoomArgs() != requestArgs.hasChatRoomArgs()) {
            return false;
        }
        if ((hasChatRoomArgs() && !getChatRoomArgs().equals(requestArgs.getChatRoomArgs())) || hasChatMessageArgs() != requestArgs.hasChatMessageArgs()) {
            return false;
        }
        if ((hasChatMessageArgs() && !getChatMessageArgs().equals(requestArgs.getChatMessageArgs())) || hasRecommendPlayerArgs() != requestArgs.hasRecommendPlayerArgs()) {
            return false;
        }
        if ((!hasRecommendPlayerArgs() || getRecommendPlayerArgs().equals(requestArgs.getRecommendPlayerArgs())) && hasLocalBattleGameArgs() == requestArgs.hasLocalBattleGameArgs()) {
            return (!hasLocalBattleGameArgs() || getLocalBattleGameArgs().equals(requestArgs.getLocalBattleGameArgs())) && this.unknownFields.equals(requestArgs.unknownFields);
        }
        return false;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public AckArgs getAckArgs() {
        AckArgs ackArgs = this.ackArgs_;
        return ackArgs == null ? AckArgs.getDefaultInstance() : ackArgs;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public com.wufan.friend.chat.protocol.b getAckArgsOrBuilder() {
        return getAckArgs();
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public ChatMessageArgs getChatMessageArgs() {
        ChatMessageArgs chatMessageArgs = this.chatMessageArgs_;
        return chatMessageArgs == null ? ChatMessageArgs.getDefaultInstance() : chatMessageArgs;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public e getChatMessageArgsOrBuilder() {
        return getChatMessageArgs();
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public ChatRoomArgs getChatRoomArgs() {
        ChatRoomArgs chatRoomArgs = this.chatRoomArgs_;
        return chatRoomArgs == null ? ChatRoomArgs.getDefaultInstance() : chatRoomArgs;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public h getChatRoomArgsOrBuilder() {
        return getChatRoomArgs();
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public GameInviteArgs getGameInviteArgs() {
        GameInviteArgs gameInviteArgs = this.gameInviteArgs_;
        return gameInviteArgs == null ? GameInviteArgs.getDefaultInstance() : gameInviteArgs;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public q getGameInviteArgsOrBuilder() {
        return getGameInviteArgs();
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public HeartArgs getHeartArgs() {
        HeartArgs heartArgs = this.heartArgs_;
        return heartArgs == null ? HeartArgs.getDefaultInstance() : heartArgs;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public t getHeartArgsOrBuilder() {
        return getHeartArgs();
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public GetLocalBattleGameArgs getLocalBattleGameArgs() {
        GetLocalBattleGameArgs getLocalBattleGameArgs = this.localBattleGameArgs_;
        return getLocalBattleGameArgs == null ? GetLocalBattleGameArgs.getDefaultInstance() : getLocalBattleGameArgs;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public s getLocalBattleGameArgsOrBuilder() {
        return getLocalBattleGameArgs();
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public LoginArgs getLoginArgs() {
        LoginArgs loginArgs = this.loginArgs_;
        return loginArgs == null ? LoginArgs.getDefaultInstance() : loginArgs;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public y getLoginArgsOrBuilder() {
        return getLoginArgs();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<RequestArgs> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public PlayGameArgs getPlayGameArgs() {
        PlayGameArgs playGameArgs = this.playGameArgs_;
        return playGameArgs == null ? PlayGameArgs.getDefaultInstance() : playGameArgs;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public d0 getPlayGameArgsOrBuilder() {
        return getPlayGameArgs();
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public RecommendPlayerArgs getRecommendPlayerArgs() {
        RecommendPlayerArgs recommendPlayerArgs = this.recommendPlayerArgs_;
        return recommendPlayerArgs == null ? RecommendPlayerArgs.getDefaultInstance() : recommendPlayerArgs;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public h0 getRecommendPlayerArgsOrBuilder() {
        return getRecommendPlayerArgs();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeMessageSize = this.loginArgs_ != null ? 0 + CodedOutputStream.computeMessageSize(1, getLoginArgs()) : 0;
        if (this.ackArgs_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(2, getAckArgs());
        }
        if (this.heartArgs_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(3, getHeartArgs());
        }
        if (this.gameInviteArgs_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(4, getGameInviteArgs());
        }
        if (this.stateArgs_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(5, getStateArgs());
        }
        if (this.playGameArgs_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(6, getPlayGameArgs());
        }
        if (this.chatRoomArgs_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(7, getChatRoomArgs());
        }
        if (this.chatMessageArgs_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(8, getChatMessageArgs());
        }
        if (this.recommendPlayerArgs_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(9, getRecommendPlayerArgs());
        }
        if (this.localBattleGameArgs_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(10, getLocalBattleGameArgs());
        }
        int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public OnlineStateArgs getStateArgs() {
        OnlineStateArgs onlineStateArgs = this.stateArgs_;
        return onlineStateArgs == null ? OnlineStateArgs.getDefaultInstance() : onlineStateArgs;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public c0 getStateArgsOrBuilder() {
        return getStateArgs();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public boolean hasAckArgs() {
        return this.ackArgs_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public boolean hasChatMessageArgs() {
        return this.chatMessageArgs_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public boolean hasChatRoomArgs() {
        return this.chatRoomArgs_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public boolean hasGameInviteArgs() {
        return this.gameInviteArgs_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public boolean hasHeartArgs() {
        return this.heartArgs_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public boolean hasLocalBattleGameArgs() {
        return this.localBattleGameArgs_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public boolean hasLoginArgs() {
        return this.loginArgs_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public boolean hasPlayGameArgs() {
        return this.playGameArgs_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public boolean hasRecommendPlayerArgs() {
        return this.recommendPlayerArgs_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public boolean hasStateArgs() {
        return this.stateArgs_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode();
        if (hasLoginArgs()) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + getLoginArgs().hashCode();
        }
        if (hasAckArgs()) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getAckArgs().hashCode();
        }
        if (hasHeartArgs()) {
            iHashCode = (((iHashCode * 37) + 3) * 53) + getHeartArgs().hashCode();
        }
        if (hasGameInviteArgs()) {
            iHashCode = (((iHashCode * 37) + 4) * 53) + getGameInviteArgs().hashCode();
        }
        if (hasStateArgs()) {
            iHashCode = (((iHashCode * 37) + 5) * 53) + getStateArgs().hashCode();
        }
        if (hasPlayGameArgs()) {
            iHashCode = (((iHashCode * 37) + 6) * 53) + getPlayGameArgs().hashCode();
        }
        if (hasChatRoomArgs()) {
            iHashCode = (((iHashCode * 37) + 7) * 53) + getChatRoomArgs().hashCode();
        }
        if (hasChatMessageArgs()) {
            iHashCode = (((iHashCode * 37) + 8) * 53) + getChatMessageArgs().hashCode();
        }
        if (hasRecommendPlayerArgs()) {
            iHashCode = (((iHashCode * 37) + 9) * 53) + getRecommendPlayerArgs().hashCode();
        }
        if (hasLocalBattleGameArgs()) {
            iHashCode = (((iHashCode * 37) + 10) * 53) + getLocalBattleGameArgs().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87864d.ensureFieldAccessorsInitialized(RequestArgs.class, b.class);
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
        if (this.loginArgs_ != null) {
            output.writeMessage(1, getLoginArgs());
        }
        if (this.ackArgs_ != null) {
            output.writeMessage(2, getAckArgs());
        }
        if (this.heartArgs_ != null) {
            output.writeMessage(3, getHeartArgs());
        }
        if (this.gameInviteArgs_ != null) {
            output.writeMessage(4, getGameInviteArgs());
        }
        if (this.stateArgs_ != null) {
            output.writeMessage(5, getStateArgs());
        }
        if (this.playGameArgs_ != null) {
            output.writeMessage(6, getPlayGameArgs());
        }
        if (this.chatRoomArgs_ != null) {
            output.writeMessage(7, getChatRoomArgs());
        }
        if (this.chatMessageArgs_ != null) {
            output.writeMessage(8, getChatMessageArgs());
        }
        if (this.recommendPlayerArgs_ != null) {
            output.writeMessage(9, getRecommendPlayerArgs());
        }
        if (this.localBattleGameArgs_ != null) {
            output.writeMessage(10, getLocalBattleGameArgs());
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ RequestArgs(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(RequestArgs prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static RequestArgs parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private RequestArgs(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RequestArgs parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RequestArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static RequestArgs parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public RequestArgs getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static RequestArgs parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private RequestArgs() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RequestArgs parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static RequestArgs parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private RequestArgs(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int tag = codedInputStream.readTag();
                    switch (tag) {
                        case 0:
                            break;
                        case 10:
                            LoginArgs loginArgs = this.loginArgs_;
                            LoginArgs.b builder = loginArgs != null ? loginArgs.toBuilder() : null;
                            LoginArgs loginArgs2 = (LoginArgs) codedInputStream.readMessage(LoginArgs.parser(), extensionRegistryLite);
                            this.loginArgs_ = loginArgs2;
                            if (builder != null) {
                                builder.mergeFrom(loginArgs2);
                                this.loginArgs_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 18:
                            AckArgs ackArgs = this.ackArgs_;
                            AckArgs.b builder2 = ackArgs != null ? ackArgs.toBuilder() : null;
                            AckArgs ackArgs2 = (AckArgs) codedInputStream.readMessage(AckArgs.parser(), extensionRegistryLite);
                            this.ackArgs_ = ackArgs2;
                            if (builder2 != null) {
                                builder2.mergeFrom(ackArgs2);
                                this.ackArgs_ = builder2.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 26:
                            HeartArgs heartArgs = this.heartArgs_;
                            HeartArgs.b builder3 = heartArgs != null ? heartArgs.toBuilder() : null;
                            HeartArgs heartArgs2 = (HeartArgs) codedInputStream.readMessage(HeartArgs.parser(), extensionRegistryLite);
                            this.heartArgs_ = heartArgs2;
                            if (builder3 != null) {
                                builder3.mergeFrom(heartArgs2);
                                this.heartArgs_ = builder3.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 34:
                            GameInviteArgs gameInviteArgs = this.gameInviteArgs_;
                            GameInviteArgs.b builder4 = gameInviteArgs != null ? gameInviteArgs.toBuilder() : null;
                            GameInviteArgs gameInviteArgs2 = (GameInviteArgs) codedInputStream.readMessage(GameInviteArgs.parser(), extensionRegistryLite);
                            this.gameInviteArgs_ = gameInviteArgs2;
                            if (builder4 != null) {
                                builder4.mergeFrom(gameInviteArgs2);
                                this.gameInviteArgs_ = builder4.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 42:
                            OnlineStateArgs onlineStateArgs = this.stateArgs_;
                            OnlineStateArgs.b builder5 = onlineStateArgs != null ? onlineStateArgs.toBuilder() : null;
                            OnlineStateArgs onlineStateArgs2 = (OnlineStateArgs) codedInputStream.readMessage(OnlineStateArgs.parser(), extensionRegistryLite);
                            this.stateArgs_ = onlineStateArgs2;
                            if (builder5 != null) {
                                builder5.mergeFrom(onlineStateArgs2);
                                this.stateArgs_ = builder5.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 50:
                            PlayGameArgs playGameArgs = this.playGameArgs_;
                            PlayGameArgs.b builder6 = playGameArgs != null ? playGameArgs.toBuilder() : null;
                            PlayGameArgs playGameArgs2 = (PlayGameArgs) codedInputStream.readMessage(PlayGameArgs.parser(), extensionRegistryLite);
                            this.playGameArgs_ = playGameArgs2;
                            if (builder6 != null) {
                                builder6.mergeFrom(playGameArgs2);
                                this.playGameArgs_ = builder6.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 58:
                            ChatRoomArgs chatRoomArgs = this.chatRoomArgs_;
                            ChatRoomArgs.b builder7 = chatRoomArgs != null ? chatRoomArgs.toBuilder() : null;
                            ChatRoomArgs chatRoomArgs2 = (ChatRoomArgs) codedInputStream.readMessage(ChatRoomArgs.parser(), extensionRegistryLite);
                            this.chatRoomArgs_ = chatRoomArgs2;
                            if (builder7 != null) {
                                builder7.mergeFrom(chatRoomArgs2);
                                this.chatRoomArgs_ = builder7.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 66:
                            ChatMessageArgs chatMessageArgs = this.chatMessageArgs_;
                            ChatMessageArgs.b builder8 = chatMessageArgs != null ? chatMessageArgs.toBuilder() : null;
                            ChatMessageArgs chatMessageArgs2 = (ChatMessageArgs) codedInputStream.readMessage(ChatMessageArgs.parser(), extensionRegistryLite);
                            this.chatMessageArgs_ = chatMessageArgs2;
                            if (builder8 != null) {
                                builder8.mergeFrom(chatMessageArgs2);
                                this.chatMessageArgs_ = builder8.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 74:
                            RecommendPlayerArgs recommendPlayerArgs = this.recommendPlayerArgs_;
                            RecommendPlayerArgs.b builder9 = recommendPlayerArgs != null ? recommendPlayerArgs.toBuilder() : null;
                            RecommendPlayerArgs recommendPlayerArgs2 = (RecommendPlayerArgs) codedInputStream.readMessage(RecommendPlayerArgs.parser(), extensionRegistryLite);
                            this.recommendPlayerArgs_ = recommendPlayerArgs2;
                            if (builder9 != null) {
                                builder9.mergeFrom(recommendPlayerArgs2);
                                this.recommendPlayerArgs_ = builder9.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 82:
                            GetLocalBattleGameArgs getLocalBattleGameArgs = this.localBattleGameArgs_;
                            GetLocalBattleGameArgs.b builder10 = getLocalBattleGameArgs != null ? getLocalBattleGameArgs.toBuilder() : null;
                            GetLocalBattleGameArgs getLocalBattleGameArgs2 = (GetLocalBattleGameArgs) codedInputStream.readMessage(GetLocalBattleGameArgs.parser(), extensionRegistryLite);
                            this.localBattleGameArgs_ = getLocalBattleGameArgs2;
                            if (builder10 != null) {
                                builder10.mergeFrom(getLocalBattleGameArgs2);
                                this.localBattleGameArgs_ = builder10.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        default:
                            if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
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

    public static RequestArgs parseFrom(InputStream input) throws IOException {
        return (RequestArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static RequestArgs parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RequestArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static RequestArgs parseFrom(CodedInputStream input) throws IOException {
        return (RequestArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static RequestArgs parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RequestArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
