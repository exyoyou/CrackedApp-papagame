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
public final class ResponseData extends GeneratedMessageV3 implements o0 {
    public static final int CHATMESSAGEMUTEDATA_FIELD_NUMBER = 5;
    public static final int LOCALBATTLEGAMEDATA_FIELD_NUMBER = 4;
    public static final int LOGINDATA_FIELD_NUMBER = 1;
    public static final int NOTIFICATION_FIELD_NUMBER = 2;
    public static final int RECOMMENDPLAYERDATA_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private ChatMessageMuteData chatMessageMuteData_;
    private LocalBattleGameData localBattleGameData_;
    private LoginData loginData_;
    private byte memoizedIsInitialized;
    private NotificationData notification_;
    private RecommendPlayerData recommendPlayerData_;
    private static final ResponseData DEFAULT_INSTANCE = new ResponseData();
    private static final Parser<ResponseData> PARSER = new a();

    class a extends AbstractParser<ResponseData> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResponseData parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new ResponseData(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements o0 {
        private SingleFieldBuilderV3<ChatMessageMuteData, ChatMessageMuteData.b, f> chatMessageMuteDataBuilder_;
        private ChatMessageMuteData chatMessageMuteData_;
        private SingleFieldBuilderV3<LocalBattleGameData, LocalBattleGameData.b, w> localBattleGameDataBuilder_;
        private LocalBattleGameData localBattleGameData_;
        private SingleFieldBuilderV3<LoginData, LoginData.b, z> loginDataBuilder_;
        private LoginData loginData_;
        private SingleFieldBuilderV3<NotificationData, NotificationData.b, b0> notificationBuilder_;
        private NotificationData notification_;
        private SingleFieldBuilderV3<RecommendPlayerData, RecommendPlayerData.b, i0> recommendPlayerDataBuilder_;
        private RecommendPlayerData recommendPlayerData_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private SingleFieldBuilderV3<ChatMessageMuteData, ChatMessageMuteData.b, f> getChatMessageMuteDataFieldBuilder() {
            if (this.chatMessageMuteDataBuilder_ == null) {
                this.chatMessageMuteDataBuilder_ = new SingleFieldBuilderV3<>(getChatMessageMuteData(), getParentForChildren(), isClean());
                this.chatMessageMuteData_ = null;
            }
            return this.chatMessageMuteDataBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.K;
        }

        private SingleFieldBuilderV3<LocalBattleGameData, LocalBattleGameData.b, w> getLocalBattleGameDataFieldBuilder() {
            if (this.localBattleGameDataBuilder_ == null) {
                this.localBattleGameDataBuilder_ = new SingleFieldBuilderV3<>(getLocalBattleGameData(), getParentForChildren(), isClean());
                this.localBattleGameData_ = null;
            }
            return this.localBattleGameDataBuilder_;
        }

        private SingleFieldBuilderV3<LoginData, LoginData.b, z> getLoginDataFieldBuilder() {
            if (this.loginDataBuilder_ == null) {
                this.loginDataBuilder_ = new SingleFieldBuilderV3<>(getLoginData(), getParentForChildren(), isClean());
                this.loginData_ = null;
            }
            return this.loginDataBuilder_;
        }

        private SingleFieldBuilderV3<NotificationData, NotificationData.b, b0> getNotificationFieldBuilder() {
            if (this.notificationBuilder_ == null) {
                this.notificationBuilder_ = new SingleFieldBuilderV3<>(getNotification(), getParentForChildren(), isClean());
                this.notification_ = null;
            }
            return this.notificationBuilder_;
        }

        private SingleFieldBuilderV3<RecommendPlayerData, RecommendPlayerData.b, i0> getRecommendPlayerDataFieldBuilder() {
            if (this.recommendPlayerDataBuilder_ == null) {
                this.recommendPlayerDataBuilder_ = new SingleFieldBuilderV3<>(getRecommendPlayerData(), getParentForChildren(), isClean());
                this.recommendPlayerData_ = null;
            }
            return this.recommendPlayerDataBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearChatMessageMuteData() {
            if (this.chatMessageMuteDataBuilder_ == null) {
                this.chatMessageMuteData_ = null;
                onChanged();
            } else {
                this.chatMessageMuteData_ = null;
                this.chatMessageMuteDataBuilder_ = null;
            }
            return this;
        }

        public b clearLocalBattleGameData() {
            if (this.localBattleGameDataBuilder_ == null) {
                this.localBattleGameData_ = null;
                onChanged();
            } else {
                this.localBattleGameData_ = null;
                this.localBattleGameDataBuilder_ = null;
            }
            return this;
        }

        public b clearLoginData() {
            if (this.loginDataBuilder_ == null) {
                this.loginData_ = null;
                onChanged();
            } else {
                this.loginData_ = null;
                this.loginDataBuilder_ = null;
            }
            return this;
        }

        public b clearNotification() {
            if (this.notificationBuilder_ == null) {
                this.notification_ = null;
                onChanged();
            } else {
                this.notification_ = null;
                this.notificationBuilder_ = null;
            }
            return this;
        }

        public b clearRecommendPlayerData() {
            if (this.recommendPlayerDataBuilder_ == null) {
                this.recommendPlayerData_ = null;
                onChanged();
            } else {
                this.recommendPlayerData_ = null;
                this.recommendPlayerDataBuilder_ = null;
            }
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public ChatMessageMuteData getChatMessageMuteData() {
            SingleFieldBuilderV3<ChatMessageMuteData, ChatMessageMuteData.b, f> singleFieldBuilderV3 = this.chatMessageMuteDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (ChatMessageMuteData) singleFieldBuilderV3.getMessage();
            }
            ChatMessageMuteData chatMessageMuteData = this.chatMessageMuteData_;
            return chatMessageMuteData == null ? ChatMessageMuteData.getDefaultInstance() : chatMessageMuteData;
        }

        public ChatMessageMuteData.b getChatMessageMuteDataBuilder() {
            onChanged();
            return (ChatMessageMuteData.b) getChatMessageMuteDataFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public f getChatMessageMuteDataOrBuilder() {
            SingleFieldBuilderV3<ChatMessageMuteData, ChatMessageMuteData.b, f> singleFieldBuilderV3 = this.chatMessageMuteDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (f) singleFieldBuilderV3.getMessageOrBuilder();
            }
            ChatMessageMuteData chatMessageMuteData = this.chatMessageMuteData_;
            return chatMessageMuteData == null ? ChatMessageMuteData.getDefaultInstance() : chatMessageMuteData;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.K;
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public LocalBattleGameData getLocalBattleGameData() {
            SingleFieldBuilderV3<LocalBattleGameData, LocalBattleGameData.b, w> singleFieldBuilderV3 = this.localBattleGameDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (LocalBattleGameData) singleFieldBuilderV3.getMessage();
            }
            LocalBattleGameData localBattleGameData = this.localBattleGameData_;
            return localBattleGameData == null ? LocalBattleGameData.getDefaultInstance() : localBattleGameData;
        }

        public LocalBattleGameData.b getLocalBattleGameDataBuilder() {
            onChanged();
            return (LocalBattleGameData.b) getLocalBattleGameDataFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public w getLocalBattleGameDataOrBuilder() {
            SingleFieldBuilderV3<LocalBattleGameData, LocalBattleGameData.b, w> singleFieldBuilderV3 = this.localBattleGameDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (w) singleFieldBuilderV3.getMessageOrBuilder();
            }
            LocalBattleGameData localBattleGameData = this.localBattleGameData_;
            return localBattleGameData == null ? LocalBattleGameData.getDefaultInstance() : localBattleGameData;
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public LoginData getLoginData() {
            SingleFieldBuilderV3<LoginData, LoginData.b, z> singleFieldBuilderV3 = this.loginDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (LoginData) singleFieldBuilderV3.getMessage();
            }
            LoginData loginData = this.loginData_;
            return loginData == null ? LoginData.getDefaultInstance() : loginData;
        }

        public LoginData.b getLoginDataBuilder() {
            onChanged();
            return (LoginData.b) getLoginDataFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public z getLoginDataOrBuilder() {
            SingleFieldBuilderV3<LoginData, LoginData.b, z> singleFieldBuilderV3 = this.loginDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (z) singleFieldBuilderV3.getMessageOrBuilder();
            }
            LoginData loginData = this.loginData_;
            return loginData == null ? LoginData.getDefaultInstance() : loginData;
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public NotificationData getNotification() {
            SingleFieldBuilderV3<NotificationData, NotificationData.b, b0> singleFieldBuilderV3 = this.notificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (NotificationData) singleFieldBuilderV3.getMessage();
            }
            NotificationData notificationData = this.notification_;
            return notificationData == null ? NotificationData.getDefaultInstance() : notificationData;
        }

        public NotificationData.b getNotificationBuilder() {
            onChanged();
            return (NotificationData.b) getNotificationFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public b0 getNotificationOrBuilder() {
            SingleFieldBuilderV3<NotificationData, NotificationData.b, b0> singleFieldBuilderV3 = this.notificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (b0) singleFieldBuilderV3.getMessageOrBuilder();
            }
            NotificationData notificationData = this.notification_;
            return notificationData == null ? NotificationData.getDefaultInstance() : notificationData;
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public RecommendPlayerData getRecommendPlayerData() {
            SingleFieldBuilderV3<RecommendPlayerData, RecommendPlayerData.b, i0> singleFieldBuilderV3 = this.recommendPlayerDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (RecommendPlayerData) singleFieldBuilderV3.getMessage();
            }
            RecommendPlayerData recommendPlayerData = this.recommendPlayerData_;
            return recommendPlayerData == null ? RecommendPlayerData.getDefaultInstance() : recommendPlayerData;
        }

        public RecommendPlayerData.b getRecommendPlayerDataBuilder() {
            onChanged();
            return (RecommendPlayerData.b) getRecommendPlayerDataFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public i0 getRecommendPlayerDataOrBuilder() {
            SingleFieldBuilderV3<RecommendPlayerData, RecommendPlayerData.b, i0> singleFieldBuilderV3 = this.recommendPlayerDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (i0) singleFieldBuilderV3.getMessageOrBuilder();
            }
            RecommendPlayerData recommendPlayerData = this.recommendPlayerData_;
            return recommendPlayerData == null ? RecommendPlayerData.getDefaultInstance() : recommendPlayerData;
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public boolean hasChatMessageMuteData() {
            return (this.chatMessageMuteDataBuilder_ == null && this.chatMessageMuteData_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public boolean hasLocalBattleGameData() {
            return (this.localBattleGameDataBuilder_ == null && this.localBattleGameData_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public boolean hasLoginData() {
            return (this.loginDataBuilder_ == null && this.loginData_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public boolean hasNotification() {
            return (this.notificationBuilder_ == null && this.notification_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public boolean hasRecommendPlayerData() {
            return (this.recommendPlayerDataBuilder_ == null && this.recommendPlayerData_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.L.ensureFieldAccessorsInitialized(ResponseData.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b mergeChatMessageMuteData(ChatMessageMuteData value) {
            SingleFieldBuilderV3<ChatMessageMuteData, ChatMessageMuteData.b, f> singleFieldBuilderV3 = this.chatMessageMuteDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                ChatMessageMuteData chatMessageMuteData = this.chatMessageMuteData_;
                if (chatMessageMuteData != null) {
                    this.chatMessageMuteData_ = ChatMessageMuteData.newBuilder(chatMessageMuteData).mergeFrom(value).buildPartial();
                } else {
                    this.chatMessageMuteData_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeLocalBattleGameData(LocalBattleGameData value) {
            SingleFieldBuilderV3<LocalBattleGameData, LocalBattleGameData.b, w> singleFieldBuilderV3 = this.localBattleGameDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                LocalBattleGameData localBattleGameData = this.localBattleGameData_;
                if (localBattleGameData != null) {
                    this.localBattleGameData_ = LocalBattleGameData.newBuilder(localBattleGameData).mergeFrom(value).buildPartial();
                } else {
                    this.localBattleGameData_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeLoginData(LoginData value) {
            SingleFieldBuilderV3<LoginData, LoginData.b, z> singleFieldBuilderV3 = this.loginDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                LoginData loginData = this.loginData_;
                if (loginData != null) {
                    this.loginData_ = LoginData.newBuilder(loginData).mergeFrom(value).buildPartial();
                } else {
                    this.loginData_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeNotification(NotificationData value) {
            SingleFieldBuilderV3<NotificationData, NotificationData.b, b0> singleFieldBuilderV3 = this.notificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                NotificationData notificationData = this.notification_;
                if (notificationData != null) {
                    this.notification_ = NotificationData.newBuilder(notificationData).mergeFrom(value).buildPartial();
                } else {
                    this.notification_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeRecommendPlayerData(RecommendPlayerData value) {
            SingleFieldBuilderV3<RecommendPlayerData, RecommendPlayerData.b, i0> singleFieldBuilderV3 = this.recommendPlayerDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                RecommendPlayerData recommendPlayerData = this.recommendPlayerData_;
                if (recommendPlayerData != null) {
                    this.recommendPlayerData_ = RecommendPlayerData.newBuilder(recommendPlayerData).mergeFrom(value).buildPartial();
                } else {
                    this.recommendPlayerData_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b setChatMessageMuteData(ChatMessageMuteData value) {
            SingleFieldBuilderV3<ChatMessageMuteData, ChatMessageMuteData.b, f> singleFieldBuilderV3 = this.chatMessageMuteDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.chatMessageMuteData_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setLocalBattleGameData(LocalBattleGameData value) {
            SingleFieldBuilderV3<LocalBattleGameData, LocalBattleGameData.b, w> singleFieldBuilderV3 = this.localBattleGameDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.localBattleGameData_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setLoginData(LoginData value) {
            SingleFieldBuilderV3<LoginData, LoginData.b, z> singleFieldBuilderV3 = this.loginDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.loginData_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setNotification(NotificationData value) {
            SingleFieldBuilderV3<NotificationData, NotificationData.b, b0> singleFieldBuilderV3 = this.notificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.notification_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setRecommendPlayerData(RecommendPlayerData value) {
            SingleFieldBuilderV3<RecommendPlayerData, RecommendPlayerData.b, i0> singleFieldBuilderV3 = this.recommendPlayerDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.recommendPlayerData_ = value;
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
        public ResponseData build() {
            ResponseData responseDataBuildPartial = buildPartial();
            if (responseDataBuildPartial.isInitialized()) {
                return responseDataBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) responseDataBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public ResponseData buildPartial() {
            ResponseData responseData = new ResponseData(this, (a) null);
            SingleFieldBuilderV3<LoginData, LoginData.b, z> singleFieldBuilderV3 = this.loginDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                responseData.loginData_ = this.loginData_;
            } else {
                responseData.loginData_ = (LoginData) singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<NotificationData, NotificationData.b, b0> singleFieldBuilderV4 = this.notificationBuilder_;
            if (singleFieldBuilderV4 == null) {
                responseData.notification_ = this.notification_;
            } else {
                responseData.notification_ = (NotificationData) singleFieldBuilderV4.build();
            }
            SingleFieldBuilderV3<RecommendPlayerData, RecommendPlayerData.b, i0> singleFieldBuilderV5 = this.recommendPlayerDataBuilder_;
            if (singleFieldBuilderV5 == null) {
                responseData.recommendPlayerData_ = this.recommendPlayerData_;
            } else {
                responseData.recommendPlayerData_ = (RecommendPlayerData) singleFieldBuilderV5.build();
            }
            SingleFieldBuilderV3<LocalBattleGameData, LocalBattleGameData.b, w> singleFieldBuilderV6 = this.localBattleGameDataBuilder_;
            if (singleFieldBuilderV6 == null) {
                responseData.localBattleGameData_ = this.localBattleGameData_;
            } else {
                responseData.localBattleGameData_ = (LocalBattleGameData) singleFieldBuilderV6.build();
            }
            SingleFieldBuilderV3<ChatMessageMuteData, ChatMessageMuteData.b, f> singleFieldBuilderV7 = this.chatMessageMuteDataBuilder_;
            if (singleFieldBuilderV7 == null) {
                responseData.chatMessageMuteData_ = this.chatMessageMuteData_;
            } else {
                responseData.chatMessageMuteData_ = (ChatMessageMuteData) singleFieldBuilderV7.build();
            }
            onBuilt();
            return responseData;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ResponseData getDefaultInstanceForType() {
            return ResponseData.getDefaultInstance();
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
            if (this.loginDataBuilder_ == null) {
                this.loginData_ = null;
            } else {
                this.loginData_ = null;
                this.loginDataBuilder_ = null;
            }
            if (this.notificationBuilder_ == null) {
                this.notification_ = null;
            } else {
                this.notification_ = null;
                this.notificationBuilder_ = null;
            }
            if (this.recommendPlayerDataBuilder_ == null) {
                this.recommendPlayerData_ = null;
            } else {
                this.recommendPlayerData_ = null;
                this.recommendPlayerDataBuilder_ = null;
            }
            if (this.localBattleGameDataBuilder_ == null) {
                this.localBattleGameData_ = null;
            } else {
                this.localBattleGameData_ = null;
                this.localBattleGameDataBuilder_ = null;
            }
            if (this.chatMessageMuteDataBuilder_ == null) {
                this.chatMessageMuteData_ = null;
            } else {
                this.chatMessageMuteData_ = null;
                this.chatMessageMuteDataBuilder_ = null;
            }
            return this;
        }

        public b setChatMessageMuteData(ChatMessageMuteData.b builderForValue) {
            SingleFieldBuilderV3<ChatMessageMuteData, ChatMessageMuteData.b, f> singleFieldBuilderV3 = this.chatMessageMuteDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.chatMessageMuteData_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setLocalBattleGameData(LocalBattleGameData.b builderForValue) {
            SingleFieldBuilderV3<LocalBattleGameData, LocalBattleGameData.b, w> singleFieldBuilderV3 = this.localBattleGameDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.localBattleGameData_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setLoginData(LoginData.b builderForValue) {
            SingleFieldBuilderV3<LoginData, LoginData.b, z> singleFieldBuilderV3 = this.loginDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.loginData_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setNotification(NotificationData.b builderForValue) {
            SingleFieldBuilderV3<NotificationData, NotificationData.b, b0> singleFieldBuilderV3 = this.notificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.notification_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setRecommendPlayerData(RecommendPlayerData.b builderForValue) {
            SingleFieldBuilderV3<RecommendPlayerData, RecommendPlayerData.b, i0> singleFieldBuilderV3 = this.recommendPlayerDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.recommendPlayerData_ = builderForValue.build();
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
            if (other instanceof ResponseData) {
                return mergeFrom((ResponseData) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(ResponseData other) {
            if (other == ResponseData.getDefaultInstance()) {
                return this;
            }
            if (other.hasLoginData()) {
                mergeLoginData(other.getLoginData());
            }
            if (other.hasNotification()) {
                mergeNotification(other.getNotification());
            }
            if (other.hasRecommendPlayerData()) {
                mergeRecommendPlayerData(other.getRecommendPlayerData());
            }
            if (other.hasLocalBattleGameData()) {
                mergeLocalBattleGameData(other.getLocalBattleGameData());
            }
            if (other.hasChatMessageMuteData()) {
                mergeChatMessageMuteData(other.getChatMessageMuteData());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            ResponseData responseData = null;
            try {
                try {
                    ResponseData responseData2 = (ResponseData) ResponseData.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (responseData2 != null) {
                        mergeFrom(responseData2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    ResponseData responseData3 = (ResponseData) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        responseData = responseData3;
                        if (responseData != null) {
                            mergeFrom(responseData);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (responseData != null) {
                    mergeFrom(responseData);
                }
                throw th;
            }
        }
    }

    /* synthetic */ ResponseData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static ResponseData getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.K;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ResponseData parseDelimitedFrom(InputStream input) throws IOException {
        return (ResponseData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static ResponseData parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<ResponseData> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResponseData)) {
            return super.equals(obj);
        }
        ResponseData responseData = (ResponseData) obj;
        if (hasLoginData() != responseData.hasLoginData()) {
            return false;
        }
        if ((hasLoginData() && !getLoginData().equals(responseData.getLoginData())) || hasNotification() != responseData.hasNotification()) {
            return false;
        }
        if ((hasNotification() && !getNotification().equals(responseData.getNotification())) || hasRecommendPlayerData() != responseData.hasRecommendPlayerData()) {
            return false;
        }
        if ((hasRecommendPlayerData() && !getRecommendPlayerData().equals(responseData.getRecommendPlayerData())) || hasLocalBattleGameData() != responseData.hasLocalBattleGameData()) {
            return false;
        }
        if ((!hasLocalBattleGameData() || getLocalBattleGameData().equals(responseData.getLocalBattleGameData())) && hasChatMessageMuteData() == responseData.hasChatMessageMuteData()) {
            return (!hasChatMessageMuteData() || getChatMessageMuteData().equals(responseData.getChatMessageMuteData())) && this.unknownFields.equals(responseData.unknownFields);
        }
        return false;
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public ChatMessageMuteData getChatMessageMuteData() {
        ChatMessageMuteData chatMessageMuteData = this.chatMessageMuteData_;
        return chatMessageMuteData == null ? ChatMessageMuteData.getDefaultInstance() : chatMessageMuteData;
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public f getChatMessageMuteDataOrBuilder() {
        return getChatMessageMuteData();
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public LocalBattleGameData getLocalBattleGameData() {
        LocalBattleGameData localBattleGameData = this.localBattleGameData_;
        return localBattleGameData == null ? LocalBattleGameData.getDefaultInstance() : localBattleGameData;
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public w getLocalBattleGameDataOrBuilder() {
        return getLocalBattleGameData();
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public LoginData getLoginData() {
        LoginData loginData = this.loginData_;
        return loginData == null ? LoginData.getDefaultInstance() : loginData;
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public z getLoginDataOrBuilder() {
        return getLoginData();
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public NotificationData getNotification() {
        NotificationData notificationData = this.notification_;
        return notificationData == null ? NotificationData.getDefaultInstance() : notificationData;
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public b0 getNotificationOrBuilder() {
        return getNotification();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<ResponseData> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public RecommendPlayerData getRecommendPlayerData() {
        RecommendPlayerData recommendPlayerData = this.recommendPlayerData_;
        return recommendPlayerData == null ? RecommendPlayerData.getDefaultInstance() : recommendPlayerData;
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public i0 getRecommendPlayerDataOrBuilder() {
        return getRecommendPlayerData();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeMessageSize = this.loginData_ != null ? 0 + CodedOutputStream.computeMessageSize(1, getLoginData()) : 0;
        if (this.notification_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(2, getNotification());
        }
        if (this.recommendPlayerData_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(3, getRecommendPlayerData());
        }
        if (this.localBattleGameData_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(4, getLocalBattleGameData());
        }
        if (this.chatMessageMuteData_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(5, getChatMessageMuteData());
        }
        int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public boolean hasChatMessageMuteData() {
        return this.chatMessageMuteData_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public boolean hasLocalBattleGameData() {
        return this.localBattleGameData_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public boolean hasLoginData() {
        return this.loginData_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public boolean hasNotification() {
        return this.notification_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public boolean hasRecommendPlayerData() {
        return this.recommendPlayerData_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode();
        if (hasLoginData()) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + getLoginData().hashCode();
        }
        if (hasNotification()) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getNotification().hashCode();
        }
        if (hasRecommendPlayerData()) {
            iHashCode = (((iHashCode * 37) + 3) * 53) + getRecommendPlayerData().hashCode();
        }
        if (hasLocalBattleGameData()) {
            iHashCode = (((iHashCode * 37) + 4) * 53) + getLocalBattleGameData().hashCode();
        }
        if (hasChatMessageMuteData()) {
            iHashCode = (((iHashCode * 37) + 5) * 53) + getChatMessageMuteData().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.L.ensureFieldAccessorsInitialized(ResponseData.class, b.class);
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
        if (this.loginData_ != null) {
            output.writeMessage(1, getLoginData());
        }
        if (this.notification_ != null) {
            output.writeMessage(2, getNotification());
        }
        if (this.recommendPlayerData_ != null) {
            output.writeMessage(3, getRecommendPlayerData());
        }
        if (this.localBattleGameData_ != null) {
            output.writeMessage(4, getLocalBattleGameData());
        }
        if (this.chatMessageMuteData_ != null) {
            output.writeMessage(5, getChatMessageMuteData());
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ ResponseData(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(ResponseData prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static ResponseData parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private ResponseData(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ResponseData parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ResponseData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static ResponseData parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public ResponseData getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static ResponseData parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private ResponseData() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ResponseData parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static ResponseData parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private ResponseData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int tag = codedInputStream.readTag();
                    if (tag != 0) {
                        if (tag == 10) {
                            LoginData loginData = this.loginData_;
                            LoginData.b builder = loginData != null ? loginData.toBuilder() : null;
                            LoginData loginData2 = (LoginData) codedInputStream.readMessage(LoginData.parser(), extensionRegistryLite);
                            this.loginData_ = loginData2;
                            if (builder != null) {
                                builder.mergeFrom(loginData2);
                                this.loginData_ = builder.buildPartial();
                            }
                        } else if (tag == 18) {
                            NotificationData notificationData = this.notification_;
                            NotificationData.b builder2 = notificationData != null ? notificationData.toBuilder() : null;
                            NotificationData notificationData2 = (NotificationData) codedInputStream.readMessage(NotificationData.parser(), extensionRegistryLite);
                            this.notification_ = notificationData2;
                            if (builder2 != null) {
                                builder2.mergeFrom(notificationData2);
                                this.notification_ = builder2.buildPartial();
                            }
                        } else if (tag == 26) {
                            RecommendPlayerData recommendPlayerData = this.recommendPlayerData_;
                            RecommendPlayerData.b builder3 = recommendPlayerData != null ? recommendPlayerData.toBuilder() : null;
                            RecommendPlayerData recommendPlayerData2 = (RecommendPlayerData) codedInputStream.readMessage(RecommendPlayerData.parser(), extensionRegistryLite);
                            this.recommendPlayerData_ = recommendPlayerData2;
                            if (builder3 != null) {
                                builder3.mergeFrom(recommendPlayerData2);
                                this.recommendPlayerData_ = builder3.buildPartial();
                            }
                        } else if (tag == 34) {
                            LocalBattleGameData localBattleGameData = this.localBattleGameData_;
                            LocalBattleGameData.b builder4 = localBattleGameData != null ? localBattleGameData.toBuilder() : null;
                            LocalBattleGameData localBattleGameData2 = (LocalBattleGameData) codedInputStream.readMessage(LocalBattleGameData.parser(), extensionRegistryLite);
                            this.localBattleGameData_ = localBattleGameData2;
                            if (builder4 != null) {
                                builder4.mergeFrom(localBattleGameData2);
                                this.localBattleGameData_ = builder4.buildPartial();
                            }
                        } else if (tag != 42) {
                            if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        } else {
                            ChatMessageMuteData chatMessageMuteData = this.chatMessageMuteData_;
                            ChatMessageMuteData.b builder5 = chatMessageMuteData != null ? chatMessageMuteData.toBuilder() : null;
                            ChatMessageMuteData chatMessageMuteData2 = (ChatMessageMuteData) codedInputStream.readMessage(ChatMessageMuteData.parser(), extensionRegistryLite);
                            this.chatMessageMuteData_ = chatMessageMuteData2;
                            if (builder5 != null) {
                                builder5.mergeFrom(chatMessageMuteData2);
                                this.chatMessageMuteData_ = builder5.buildPartial();
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

    public static ResponseData parseFrom(InputStream input) throws IOException {
        return (ResponseData) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static ResponseData parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ResponseData) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static ResponseData parseFrom(CodedInputStream input) throws IOException {
        return (ResponseData) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static ResponseData parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ResponseData) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
