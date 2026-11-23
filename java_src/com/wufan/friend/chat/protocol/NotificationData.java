package com.wufan.friend.chat.protocol;

import com.google.protobuf.AbstractMessage;
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
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class NotificationData extends GeneratedMessageV3 implements b0 {
    public static final int ACK_FIELD_NUMBER = 3;
    public static final int ALLFRDNOTIFICATION_FIELD_NUMBER = 17;
    public static final int ALLFRIENDNOTIFICATION_FIELD_NUMBER = 11;
    public static final int CHATMSGNOTIFICATION_FIELD_NUMBER = 12;
    public static final int DIALOG_FIELD_NUMBER = 5;
    public static final int FRIADDREQNOTIFICATION_FIELD_NUMBER = 13;
    public static final int FRIENDADDSUCCESSNOTIFICATION_FIELD_NUMBER = 15;
    public static final int FRIENDCHANGESTATE_FIELD_NUMBER = 8;
    public static final int FRIENDDELETESUCCESS_FIELD_NUMBER = 19;
    public static final int FRIENDPLAYSTATE_FIELD_NUMBER = 9;
    public static final int FROMACCOUNT_FIELD_NUMBER = 4;
    public static final int GAMEINVITE_FIELD_NUMBER = 7;
    public static final int KICKNOTIFICATION_FIELD_NUMBER = 10;
    public static final int LEAVEROOMNOTIFICATION_FIELD_NUMBER = 14;
    public static final int MESSAGEID_FIELD_NUMBER = 1;
    public static final int PLAYERBANNED_FIELD_NUMBER = 20;
    public static final int POPWINDOW_FIELD_NUMBER = 6;
    public static final int RECOMMENDPLAYERSTATECHANGE_FIELD_NUMBER = 18;
    public static final int REJECTBATTLEINVITENOTIFICATION_FIELD_NUMBER = 16;
    public static final int SENDTIMESTAMP_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private boolean ack_;
    private AllFriendNotification allFrdNotification_;
    private AllOnlineFriendNotification allFriendNotification_;
    private ChatMessageNotification chatMsgNotification_;
    private DialogNotification dialog_;
    private FriendAddReqNotification friAddReqNotification_;
    private FriendAddSuccessNotification friendAddSuccessNotification_;
    private FriendChangeStateNotification friendChangeState_;
    private FriendDeleteSuccessNotification friendDeleteSuccess_;
    private FriendChangePlayStateNotification friendPlayState_;
    private AccountInfo fromAccount_;
    private GameInviteNotification gameInvite_;
    private KickNotification kickNotification_;
    private LeaveRoomNotification leaveRoomNotification_;
    private byte memoizedIsInitialized;
    private long messageId_;
    private PlayerBannedNotification playerBanned_;
    private PopWindowNotification popWindow_;
    private RecommendPlayerStateChangeNotification recommendPlayerStateChange_;
    private RejectBattleInviteNotification rejectBattleInviteNotification_;
    private long sendTimestamp_;
    private static final NotificationData DEFAULT_INSTANCE = new NotificationData();
    private static final Parser<NotificationData> PARSER = new a();

    class a extends AbstractParser<NotificationData> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NotificationData parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new NotificationData(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements b0 {
        private boolean ack_;
        private SingleFieldBuilderV3<AllFriendNotification, AllFriendNotification.b, c> allFrdNotificationBuilder_;
        private AllFriendNotification allFrdNotification_;
        private SingleFieldBuilderV3<AllOnlineFriendNotification, AllOnlineFriendNotification.b, d> allFriendNotificationBuilder_;
        private AllOnlineFriendNotification allFriendNotification_;
        private SingleFieldBuilderV3<ChatMessageNotification, ChatMessageNotification.b, g> chatMsgNotificationBuilder_;
        private ChatMessageNotification chatMsgNotification_;
        private SingleFieldBuilderV3<DialogNotification, DialogNotification.b, i> dialogBuilder_;
        private DialogNotification dialog_;
        private SingleFieldBuilderV3<FriendAddReqNotification, FriendAddReqNotification.b, j> friAddReqNotificationBuilder_;
        private FriendAddReqNotification friAddReqNotification_;
        private SingleFieldBuilderV3<FriendAddSuccessNotification, FriendAddSuccessNotification.b, k> friendAddSuccessNotificationBuilder_;
        private FriendAddSuccessNotification friendAddSuccessNotification_;
        private SingleFieldBuilderV3<FriendChangeStateNotification, FriendChangeStateNotification.b, m> friendChangeStateBuilder_;
        private FriendChangeStateNotification friendChangeState_;
        private SingleFieldBuilderV3<FriendDeleteSuccessNotification, FriendDeleteSuccessNotification.b, n> friendDeleteSuccessBuilder_;
        private FriendDeleteSuccessNotification friendDeleteSuccess_;
        private SingleFieldBuilderV3<FriendChangePlayStateNotification, FriendChangePlayStateNotification.b, l> friendPlayStateBuilder_;
        private FriendChangePlayStateNotification friendPlayState_;
        private SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> fromAccountBuilder_;
        private AccountInfo fromAccount_;
        private SingleFieldBuilderV3<GameInviteNotification, GameInviteNotification.b, r> gameInviteBuilder_;
        private GameInviteNotification gameInvite_;
        private SingleFieldBuilderV3<KickNotification, KickNotification.b, u> kickNotificationBuilder_;
        private KickNotification kickNotification_;
        private SingleFieldBuilderV3<LeaveRoomNotification, LeaveRoomNotification.b, v> leaveRoomNotificationBuilder_;
        private LeaveRoomNotification leaveRoomNotification_;
        private long messageId_;
        private SingleFieldBuilderV3<PlayerBannedNotification, PlayerBannedNotification.b, f0> playerBannedBuilder_;
        private PlayerBannedNotification playerBanned_;
        private SingleFieldBuilderV3<PopWindowNotification, PopWindowNotification.b, g0> popWindowBuilder_;
        private PopWindowNotification popWindow_;
        private SingleFieldBuilderV3<RecommendPlayerStateChangeNotification, RecommendPlayerStateChangeNotification.b, k0> recommendPlayerStateChangeBuilder_;
        private RecommendPlayerStateChangeNotification recommendPlayerStateChange_;
        private SingleFieldBuilderV3<RejectBattleInviteNotification, RejectBattleInviteNotification.b, l0> rejectBattleInviteNotificationBuilder_;
        private RejectBattleInviteNotification rejectBattleInviteNotification_;
        private long sendTimestamp_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private SingleFieldBuilderV3<AllFriendNotification, AllFriendNotification.b, c> getAllFrdNotificationFieldBuilder() {
            if (this.allFrdNotificationBuilder_ == null) {
                this.allFrdNotificationBuilder_ = new SingleFieldBuilderV3<>(getAllFrdNotification(), getParentForChildren(), isClean());
                this.allFrdNotification_ = null;
            }
            return this.allFrdNotificationBuilder_;
        }

        private SingleFieldBuilderV3<AllOnlineFriendNotification, AllOnlineFriendNotification.b, d> getAllFriendNotificationFieldBuilder() {
            if (this.allFriendNotificationBuilder_ == null) {
                this.allFriendNotificationBuilder_ = new SingleFieldBuilderV3<>(getAllFriendNotification(), getParentForChildren(), isClean());
                this.allFriendNotification_ = null;
            }
            return this.allFriendNotificationBuilder_;
        }

        private SingleFieldBuilderV3<ChatMessageNotification, ChatMessageNotification.b, g> getChatMsgNotificationFieldBuilder() {
            if (this.chatMsgNotificationBuilder_ == null) {
                this.chatMsgNotificationBuilder_ = new SingleFieldBuilderV3<>(getChatMsgNotification(), getParentForChildren(), isClean());
                this.chatMsgNotification_ = null;
            }
            return this.chatMsgNotificationBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.U;
        }

        private SingleFieldBuilderV3<DialogNotification, DialogNotification.b, i> getDialogFieldBuilder() {
            if (this.dialogBuilder_ == null) {
                this.dialogBuilder_ = new SingleFieldBuilderV3<>(getDialog(), getParentForChildren(), isClean());
                this.dialog_ = null;
            }
            return this.dialogBuilder_;
        }

        private SingleFieldBuilderV3<FriendAddReqNotification, FriendAddReqNotification.b, j> getFriAddReqNotificationFieldBuilder() {
            if (this.friAddReqNotificationBuilder_ == null) {
                this.friAddReqNotificationBuilder_ = new SingleFieldBuilderV3<>(getFriAddReqNotification(), getParentForChildren(), isClean());
                this.friAddReqNotification_ = null;
            }
            return this.friAddReqNotificationBuilder_;
        }

        private SingleFieldBuilderV3<FriendAddSuccessNotification, FriendAddSuccessNotification.b, k> getFriendAddSuccessNotificationFieldBuilder() {
            if (this.friendAddSuccessNotificationBuilder_ == null) {
                this.friendAddSuccessNotificationBuilder_ = new SingleFieldBuilderV3<>(getFriendAddSuccessNotification(), getParentForChildren(), isClean());
                this.friendAddSuccessNotification_ = null;
            }
            return this.friendAddSuccessNotificationBuilder_;
        }

        private SingleFieldBuilderV3<FriendChangeStateNotification, FriendChangeStateNotification.b, m> getFriendChangeStateFieldBuilder() {
            if (this.friendChangeStateBuilder_ == null) {
                this.friendChangeStateBuilder_ = new SingleFieldBuilderV3<>(getFriendChangeState(), getParentForChildren(), isClean());
                this.friendChangeState_ = null;
            }
            return this.friendChangeStateBuilder_;
        }

        private SingleFieldBuilderV3<FriendDeleteSuccessNotification, FriendDeleteSuccessNotification.b, n> getFriendDeleteSuccessFieldBuilder() {
            if (this.friendDeleteSuccessBuilder_ == null) {
                this.friendDeleteSuccessBuilder_ = new SingleFieldBuilderV3<>(getFriendDeleteSuccess(), getParentForChildren(), isClean());
                this.friendDeleteSuccess_ = null;
            }
            return this.friendDeleteSuccessBuilder_;
        }

        private SingleFieldBuilderV3<FriendChangePlayStateNotification, FriendChangePlayStateNotification.b, l> getFriendPlayStateFieldBuilder() {
            if (this.friendPlayStateBuilder_ == null) {
                this.friendPlayStateBuilder_ = new SingleFieldBuilderV3<>(getFriendPlayState(), getParentForChildren(), isClean());
                this.friendPlayState_ = null;
            }
            return this.friendPlayStateBuilder_;
        }

        private SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> getFromAccountFieldBuilder() {
            if (this.fromAccountBuilder_ == null) {
                this.fromAccountBuilder_ = new SingleFieldBuilderV3<>(getFromAccount(), getParentForChildren(), isClean());
                this.fromAccount_ = null;
            }
            return this.fromAccountBuilder_;
        }

        private SingleFieldBuilderV3<GameInviteNotification, GameInviteNotification.b, r> getGameInviteFieldBuilder() {
            if (this.gameInviteBuilder_ == null) {
                this.gameInviteBuilder_ = new SingleFieldBuilderV3<>(getGameInvite(), getParentForChildren(), isClean());
                this.gameInvite_ = null;
            }
            return this.gameInviteBuilder_;
        }

        private SingleFieldBuilderV3<KickNotification, KickNotification.b, u> getKickNotificationFieldBuilder() {
            if (this.kickNotificationBuilder_ == null) {
                this.kickNotificationBuilder_ = new SingleFieldBuilderV3<>(getKickNotification(), getParentForChildren(), isClean());
                this.kickNotification_ = null;
            }
            return this.kickNotificationBuilder_;
        }

        private SingleFieldBuilderV3<LeaveRoomNotification, LeaveRoomNotification.b, v> getLeaveRoomNotificationFieldBuilder() {
            if (this.leaveRoomNotificationBuilder_ == null) {
                this.leaveRoomNotificationBuilder_ = new SingleFieldBuilderV3<>(getLeaveRoomNotification(), getParentForChildren(), isClean());
                this.leaveRoomNotification_ = null;
            }
            return this.leaveRoomNotificationBuilder_;
        }

        private SingleFieldBuilderV3<PlayerBannedNotification, PlayerBannedNotification.b, f0> getPlayerBannedFieldBuilder() {
            if (this.playerBannedBuilder_ == null) {
                this.playerBannedBuilder_ = new SingleFieldBuilderV3<>(getPlayerBanned(), getParentForChildren(), isClean());
                this.playerBanned_ = null;
            }
            return this.playerBannedBuilder_;
        }

        private SingleFieldBuilderV3<PopWindowNotification, PopWindowNotification.b, g0> getPopWindowFieldBuilder() {
            if (this.popWindowBuilder_ == null) {
                this.popWindowBuilder_ = new SingleFieldBuilderV3<>(getPopWindow(), getParentForChildren(), isClean());
                this.popWindow_ = null;
            }
            return this.popWindowBuilder_;
        }

        private SingleFieldBuilderV3<RecommendPlayerStateChangeNotification, RecommendPlayerStateChangeNotification.b, k0> getRecommendPlayerStateChangeFieldBuilder() {
            if (this.recommendPlayerStateChangeBuilder_ == null) {
                this.recommendPlayerStateChangeBuilder_ = new SingleFieldBuilderV3<>(getRecommendPlayerStateChange(), getParentForChildren(), isClean());
                this.recommendPlayerStateChange_ = null;
            }
            return this.recommendPlayerStateChangeBuilder_;
        }

        private SingleFieldBuilderV3<RejectBattleInviteNotification, RejectBattleInviteNotification.b, l0> getRejectBattleInviteNotificationFieldBuilder() {
            if (this.rejectBattleInviteNotificationBuilder_ == null) {
                this.rejectBattleInviteNotificationBuilder_ = new SingleFieldBuilderV3<>(getRejectBattleInviteNotification(), getParentForChildren(), isClean());
                this.rejectBattleInviteNotification_ = null;
            }
            return this.rejectBattleInviteNotificationBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearAck() {
            this.ack_ = false;
            onChanged();
            return this;
        }

        public b clearAllFrdNotification() {
            if (this.allFrdNotificationBuilder_ == null) {
                this.allFrdNotification_ = null;
                onChanged();
            } else {
                this.allFrdNotification_ = null;
                this.allFrdNotificationBuilder_ = null;
            }
            return this;
        }

        public b clearAllFriendNotification() {
            if (this.allFriendNotificationBuilder_ == null) {
                this.allFriendNotification_ = null;
                onChanged();
            } else {
                this.allFriendNotification_ = null;
                this.allFriendNotificationBuilder_ = null;
            }
            return this;
        }

        public b clearChatMsgNotification() {
            if (this.chatMsgNotificationBuilder_ == null) {
                this.chatMsgNotification_ = null;
                onChanged();
            } else {
                this.chatMsgNotification_ = null;
                this.chatMsgNotificationBuilder_ = null;
            }
            return this;
        }

        public b clearDialog() {
            if (this.dialogBuilder_ == null) {
                this.dialog_ = null;
                onChanged();
            } else {
                this.dialog_ = null;
                this.dialogBuilder_ = null;
            }
            return this;
        }

        public b clearFriAddReqNotification() {
            if (this.friAddReqNotificationBuilder_ == null) {
                this.friAddReqNotification_ = null;
                onChanged();
            } else {
                this.friAddReqNotification_ = null;
                this.friAddReqNotificationBuilder_ = null;
            }
            return this;
        }

        public b clearFriendAddSuccessNotification() {
            if (this.friendAddSuccessNotificationBuilder_ == null) {
                this.friendAddSuccessNotification_ = null;
                onChanged();
            } else {
                this.friendAddSuccessNotification_ = null;
                this.friendAddSuccessNotificationBuilder_ = null;
            }
            return this;
        }

        public b clearFriendChangeState() {
            if (this.friendChangeStateBuilder_ == null) {
                this.friendChangeState_ = null;
                onChanged();
            } else {
                this.friendChangeState_ = null;
                this.friendChangeStateBuilder_ = null;
            }
            return this;
        }

        public b clearFriendDeleteSuccess() {
            if (this.friendDeleteSuccessBuilder_ == null) {
                this.friendDeleteSuccess_ = null;
                onChanged();
            } else {
                this.friendDeleteSuccess_ = null;
                this.friendDeleteSuccessBuilder_ = null;
            }
            return this;
        }

        public b clearFriendPlayState() {
            if (this.friendPlayStateBuilder_ == null) {
                this.friendPlayState_ = null;
                onChanged();
            } else {
                this.friendPlayState_ = null;
                this.friendPlayStateBuilder_ = null;
            }
            return this;
        }

        public b clearFromAccount() {
            if (this.fromAccountBuilder_ == null) {
                this.fromAccount_ = null;
                onChanged();
            } else {
                this.fromAccount_ = null;
                this.fromAccountBuilder_ = null;
            }
            return this;
        }

        public b clearGameInvite() {
            if (this.gameInviteBuilder_ == null) {
                this.gameInvite_ = null;
                onChanged();
            } else {
                this.gameInvite_ = null;
                this.gameInviteBuilder_ = null;
            }
            return this;
        }

        public b clearKickNotification() {
            if (this.kickNotificationBuilder_ == null) {
                this.kickNotification_ = null;
                onChanged();
            } else {
                this.kickNotification_ = null;
                this.kickNotificationBuilder_ = null;
            }
            return this;
        }

        public b clearLeaveRoomNotification() {
            if (this.leaveRoomNotificationBuilder_ == null) {
                this.leaveRoomNotification_ = null;
                onChanged();
            } else {
                this.leaveRoomNotification_ = null;
                this.leaveRoomNotificationBuilder_ = null;
            }
            return this;
        }

        public b clearMessageId() {
            this.messageId_ = 0L;
            onChanged();
            return this;
        }

        public b clearPlayerBanned() {
            if (this.playerBannedBuilder_ == null) {
                this.playerBanned_ = null;
                onChanged();
            } else {
                this.playerBanned_ = null;
                this.playerBannedBuilder_ = null;
            }
            return this;
        }

        public b clearPopWindow() {
            if (this.popWindowBuilder_ == null) {
                this.popWindow_ = null;
                onChanged();
            } else {
                this.popWindow_ = null;
                this.popWindowBuilder_ = null;
            }
            return this;
        }

        public b clearRecommendPlayerStateChange() {
            if (this.recommendPlayerStateChangeBuilder_ == null) {
                this.recommendPlayerStateChange_ = null;
                onChanged();
            } else {
                this.recommendPlayerStateChange_ = null;
                this.recommendPlayerStateChangeBuilder_ = null;
            }
            return this;
        }

        public b clearRejectBattleInviteNotification() {
            if (this.rejectBattleInviteNotificationBuilder_ == null) {
                this.rejectBattleInviteNotification_ = null;
                onChanged();
            } else {
                this.rejectBattleInviteNotification_ = null;
                this.rejectBattleInviteNotificationBuilder_ = null;
            }
            return this;
        }

        public b clearSendTimestamp() {
            this.sendTimestamp_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean getAck() {
            return this.ack_;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public AllFriendNotification getAllFrdNotification() {
            SingleFieldBuilderV3<AllFriendNotification, AllFriendNotification.b, c> singleFieldBuilderV3 = this.allFrdNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (AllFriendNotification) singleFieldBuilderV3.getMessage();
            }
            AllFriendNotification allFriendNotification = this.allFrdNotification_;
            return allFriendNotification == null ? AllFriendNotification.getDefaultInstance() : allFriendNotification;
        }

        public AllFriendNotification.b getAllFrdNotificationBuilder() {
            onChanged();
            return (AllFriendNotification.b) getAllFrdNotificationFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public c getAllFrdNotificationOrBuilder() {
            SingleFieldBuilderV3<AllFriendNotification, AllFriendNotification.b, c> singleFieldBuilderV3 = this.allFrdNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (c) singleFieldBuilderV3.getMessageOrBuilder();
            }
            AllFriendNotification allFriendNotification = this.allFrdNotification_;
            return allFriendNotification == null ? AllFriendNotification.getDefaultInstance() : allFriendNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public AllOnlineFriendNotification getAllFriendNotification() {
            SingleFieldBuilderV3<AllOnlineFriendNotification, AllOnlineFriendNotification.b, d> singleFieldBuilderV3 = this.allFriendNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (AllOnlineFriendNotification) singleFieldBuilderV3.getMessage();
            }
            AllOnlineFriendNotification allOnlineFriendNotification = this.allFriendNotification_;
            return allOnlineFriendNotification == null ? AllOnlineFriendNotification.getDefaultInstance() : allOnlineFriendNotification;
        }

        public AllOnlineFriendNotification.b getAllFriendNotificationBuilder() {
            onChanged();
            return (AllOnlineFriendNotification.b) getAllFriendNotificationFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public d getAllFriendNotificationOrBuilder() {
            SingleFieldBuilderV3<AllOnlineFriendNotification, AllOnlineFriendNotification.b, d> singleFieldBuilderV3 = this.allFriendNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (d) singleFieldBuilderV3.getMessageOrBuilder();
            }
            AllOnlineFriendNotification allOnlineFriendNotification = this.allFriendNotification_;
            return allOnlineFriendNotification == null ? AllOnlineFriendNotification.getDefaultInstance() : allOnlineFriendNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public ChatMessageNotification getChatMsgNotification() {
            SingleFieldBuilderV3<ChatMessageNotification, ChatMessageNotification.b, g> singleFieldBuilderV3 = this.chatMsgNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (ChatMessageNotification) singleFieldBuilderV3.getMessage();
            }
            ChatMessageNotification chatMessageNotification = this.chatMsgNotification_;
            return chatMessageNotification == null ? ChatMessageNotification.getDefaultInstance() : chatMessageNotification;
        }

        public ChatMessageNotification.b getChatMsgNotificationBuilder() {
            onChanged();
            return (ChatMessageNotification.b) getChatMsgNotificationFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public g getChatMsgNotificationOrBuilder() {
            SingleFieldBuilderV3<ChatMessageNotification, ChatMessageNotification.b, g> singleFieldBuilderV3 = this.chatMsgNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (g) singleFieldBuilderV3.getMessageOrBuilder();
            }
            ChatMessageNotification chatMessageNotification = this.chatMsgNotification_;
            return chatMessageNotification == null ? ChatMessageNotification.getDefaultInstance() : chatMessageNotification;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.U;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public DialogNotification getDialog() {
            SingleFieldBuilderV3<DialogNotification, DialogNotification.b, i> singleFieldBuilderV3 = this.dialogBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (DialogNotification) singleFieldBuilderV3.getMessage();
            }
            DialogNotification dialogNotification = this.dialog_;
            return dialogNotification == null ? DialogNotification.getDefaultInstance() : dialogNotification;
        }

        public DialogNotification.b getDialogBuilder() {
            onChanged();
            return (DialogNotification.b) getDialogFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public i getDialogOrBuilder() {
            SingleFieldBuilderV3<DialogNotification, DialogNotification.b, i> singleFieldBuilderV3 = this.dialogBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (i) singleFieldBuilderV3.getMessageOrBuilder();
            }
            DialogNotification dialogNotification = this.dialog_;
            return dialogNotification == null ? DialogNotification.getDefaultInstance() : dialogNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public FriendAddReqNotification getFriAddReqNotification() {
            SingleFieldBuilderV3<FriendAddReqNotification, FriendAddReqNotification.b, j> singleFieldBuilderV3 = this.friAddReqNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (FriendAddReqNotification) singleFieldBuilderV3.getMessage();
            }
            FriendAddReqNotification friendAddReqNotification = this.friAddReqNotification_;
            return friendAddReqNotification == null ? FriendAddReqNotification.getDefaultInstance() : friendAddReqNotification;
        }

        public FriendAddReqNotification.b getFriAddReqNotificationBuilder() {
            onChanged();
            return (FriendAddReqNotification.b) getFriAddReqNotificationFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public j getFriAddReqNotificationOrBuilder() {
            SingleFieldBuilderV3<FriendAddReqNotification, FriendAddReqNotification.b, j> singleFieldBuilderV3 = this.friAddReqNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (j) singleFieldBuilderV3.getMessageOrBuilder();
            }
            FriendAddReqNotification friendAddReqNotification = this.friAddReqNotification_;
            return friendAddReqNotification == null ? FriendAddReqNotification.getDefaultInstance() : friendAddReqNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public FriendAddSuccessNotification getFriendAddSuccessNotification() {
            SingleFieldBuilderV3<FriendAddSuccessNotification, FriendAddSuccessNotification.b, k> singleFieldBuilderV3 = this.friendAddSuccessNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (FriendAddSuccessNotification) singleFieldBuilderV3.getMessage();
            }
            FriendAddSuccessNotification friendAddSuccessNotification = this.friendAddSuccessNotification_;
            return friendAddSuccessNotification == null ? FriendAddSuccessNotification.getDefaultInstance() : friendAddSuccessNotification;
        }

        public FriendAddSuccessNotification.b getFriendAddSuccessNotificationBuilder() {
            onChanged();
            return (FriendAddSuccessNotification.b) getFriendAddSuccessNotificationFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public k getFriendAddSuccessNotificationOrBuilder() {
            SingleFieldBuilderV3<FriendAddSuccessNotification, FriendAddSuccessNotification.b, k> singleFieldBuilderV3 = this.friendAddSuccessNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (k) singleFieldBuilderV3.getMessageOrBuilder();
            }
            FriendAddSuccessNotification friendAddSuccessNotification = this.friendAddSuccessNotification_;
            return friendAddSuccessNotification == null ? FriendAddSuccessNotification.getDefaultInstance() : friendAddSuccessNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public FriendChangeStateNotification getFriendChangeState() {
            SingleFieldBuilderV3<FriendChangeStateNotification, FriendChangeStateNotification.b, m> singleFieldBuilderV3 = this.friendChangeStateBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (FriendChangeStateNotification) singleFieldBuilderV3.getMessage();
            }
            FriendChangeStateNotification friendChangeStateNotification = this.friendChangeState_;
            return friendChangeStateNotification == null ? FriendChangeStateNotification.getDefaultInstance() : friendChangeStateNotification;
        }

        public FriendChangeStateNotification.b getFriendChangeStateBuilder() {
            onChanged();
            return (FriendChangeStateNotification.b) getFriendChangeStateFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public m getFriendChangeStateOrBuilder() {
            SingleFieldBuilderV3<FriendChangeStateNotification, FriendChangeStateNotification.b, m> singleFieldBuilderV3 = this.friendChangeStateBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (m) singleFieldBuilderV3.getMessageOrBuilder();
            }
            FriendChangeStateNotification friendChangeStateNotification = this.friendChangeState_;
            return friendChangeStateNotification == null ? FriendChangeStateNotification.getDefaultInstance() : friendChangeStateNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public FriendDeleteSuccessNotification getFriendDeleteSuccess() {
            SingleFieldBuilderV3<FriendDeleteSuccessNotification, FriendDeleteSuccessNotification.b, n> singleFieldBuilderV3 = this.friendDeleteSuccessBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (FriendDeleteSuccessNotification) singleFieldBuilderV3.getMessage();
            }
            FriendDeleteSuccessNotification friendDeleteSuccessNotification = this.friendDeleteSuccess_;
            return friendDeleteSuccessNotification == null ? FriendDeleteSuccessNotification.getDefaultInstance() : friendDeleteSuccessNotification;
        }

        public FriendDeleteSuccessNotification.b getFriendDeleteSuccessBuilder() {
            onChanged();
            return (FriendDeleteSuccessNotification.b) getFriendDeleteSuccessFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public n getFriendDeleteSuccessOrBuilder() {
            SingleFieldBuilderV3<FriendDeleteSuccessNotification, FriendDeleteSuccessNotification.b, n> singleFieldBuilderV3 = this.friendDeleteSuccessBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (n) singleFieldBuilderV3.getMessageOrBuilder();
            }
            FriendDeleteSuccessNotification friendDeleteSuccessNotification = this.friendDeleteSuccess_;
            return friendDeleteSuccessNotification == null ? FriendDeleteSuccessNotification.getDefaultInstance() : friendDeleteSuccessNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public FriendChangePlayStateNotification getFriendPlayState() {
            SingleFieldBuilderV3<FriendChangePlayStateNotification, FriendChangePlayStateNotification.b, l> singleFieldBuilderV3 = this.friendPlayStateBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (FriendChangePlayStateNotification) singleFieldBuilderV3.getMessage();
            }
            FriendChangePlayStateNotification friendChangePlayStateNotification = this.friendPlayState_;
            return friendChangePlayStateNotification == null ? FriendChangePlayStateNotification.getDefaultInstance() : friendChangePlayStateNotification;
        }

        public FriendChangePlayStateNotification.b getFriendPlayStateBuilder() {
            onChanged();
            return (FriendChangePlayStateNotification.b) getFriendPlayStateFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public l getFriendPlayStateOrBuilder() {
            SingleFieldBuilderV3<FriendChangePlayStateNotification, FriendChangePlayStateNotification.b, l> singleFieldBuilderV3 = this.friendPlayStateBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (l) singleFieldBuilderV3.getMessageOrBuilder();
            }
            FriendChangePlayStateNotification friendChangePlayStateNotification = this.friendPlayState_;
            return friendChangePlayStateNotification == null ? FriendChangePlayStateNotification.getDefaultInstance() : friendChangePlayStateNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public AccountInfo getFromAccount() {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.fromAccountBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (AccountInfo) singleFieldBuilderV3.getMessage();
            }
            AccountInfo accountInfo = this.fromAccount_;
            return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
        }

        public AccountInfo.b getFromAccountBuilder() {
            onChanged();
            return (AccountInfo.b) getFromAccountFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public com.wufan.friend.chat.protocol.a getFromAccountOrBuilder() {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.fromAccountBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (com.wufan.friend.chat.protocol.a) singleFieldBuilderV3.getMessageOrBuilder();
            }
            AccountInfo accountInfo = this.fromAccount_;
            return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public GameInviteNotification getGameInvite() {
            SingleFieldBuilderV3<GameInviteNotification, GameInviteNotification.b, r> singleFieldBuilderV3 = this.gameInviteBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (GameInviteNotification) singleFieldBuilderV3.getMessage();
            }
            GameInviteNotification gameInviteNotification = this.gameInvite_;
            return gameInviteNotification == null ? GameInviteNotification.getDefaultInstance() : gameInviteNotification;
        }

        public GameInviteNotification.b getGameInviteBuilder() {
            onChanged();
            return (GameInviteNotification.b) getGameInviteFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public r getGameInviteOrBuilder() {
            SingleFieldBuilderV3<GameInviteNotification, GameInviteNotification.b, r> singleFieldBuilderV3 = this.gameInviteBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (r) singleFieldBuilderV3.getMessageOrBuilder();
            }
            GameInviteNotification gameInviteNotification = this.gameInvite_;
            return gameInviteNotification == null ? GameInviteNotification.getDefaultInstance() : gameInviteNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public KickNotification getKickNotification() {
            SingleFieldBuilderV3<KickNotification, KickNotification.b, u> singleFieldBuilderV3 = this.kickNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (KickNotification) singleFieldBuilderV3.getMessage();
            }
            KickNotification kickNotification = this.kickNotification_;
            return kickNotification == null ? KickNotification.getDefaultInstance() : kickNotification;
        }

        public KickNotification.b getKickNotificationBuilder() {
            onChanged();
            return (KickNotification.b) getKickNotificationFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public u getKickNotificationOrBuilder() {
            SingleFieldBuilderV3<KickNotification, KickNotification.b, u> singleFieldBuilderV3 = this.kickNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (u) singleFieldBuilderV3.getMessageOrBuilder();
            }
            KickNotification kickNotification = this.kickNotification_;
            return kickNotification == null ? KickNotification.getDefaultInstance() : kickNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public LeaveRoomNotification getLeaveRoomNotification() {
            SingleFieldBuilderV3<LeaveRoomNotification, LeaveRoomNotification.b, v> singleFieldBuilderV3 = this.leaveRoomNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (LeaveRoomNotification) singleFieldBuilderV3.getMessage();
            }
            LeaveRoomNotification leaveRoomNotification = this.leaveRoomNotification_;
            return leaveRoomNotification == null ? LeaveRoomNotification.getDefaultInstance() : leaveRoomNotification;
        }

        public LeaveRoomNotification.b getLeaveRoomNotificationBuilder() {
            onChanged();
            return (LeaveRoomNotification.b) getLeaveRoomNotificationFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public v getLeaveRoomNotificationOrBuilder() {
            SingleFieldBuilderV3<LeaveRoomNotification, LeaveRoomNotification.b, v> singleFieldBuilderV3 = this.leaveRoomNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (v) singleFieldBuilderV3.getMessageOrBuilder();
            }
            LeaveRoomNotification leaveRoomNotification = this.leaveRoomNotification_;
            return leaveRoomNotification == null ? LeaveRoomNotification.getDefaultInstance() : leaveRoomNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public long getMessageId() {
            return this.messageId_;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public PlayerBannedNotification getPlayerBanned() {
            SingleFieldBuilderV3<PlayerBannedNotification, PlayerBannedNotification.b, f0> singleFieldBuilderV3 = this.playerBannedBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (PlayerBannedNotification) singleFieldBuilderV3.getMessage();
            }
            PlayerBannedNotification playerBannedNotification = this.playerBanned_;
            return playerBannedNotification == null ? PlayerBannedNotification.getDefaultInstance() : playerBannedNotification;
        }

        public PlayerBannedNotification.b getPlayerBannedBuilder() {
            onChanged();
            return (PlayerBannedNotification.b) getPlayerBannedFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public f0 getPlayerBannedOrBuilder() {
            SingleFieldBuilderV3<PlayerBannedNotification, PlayerBannedNotification.b, f0> singleFieldBuilderV3 = this.playerBannedBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (f0) singleFieldBuilderV3.getMessageOrBuilder();
            }
            PlayerBannedNotification playerBannedNotification = this.playerBanned_;
            return playerBannedNotification == null ? PlayerBannedNotification.getDefaultInstance() : playerBannedNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public PopWindowNotification getPopWindow() {
            SingleFieldBuilderV3<PopWindowNotification, PopWindowNotification.b, g0> singleFieldBuilderV3 = this.popWindowBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (PopWindowNotification) singleFieldBuilderV3.getMessage();
            }
            PopWindowNotification popWindowNotification = this.popWindow_;
            return popWindowNotification == null ? PopWindowNotification.getDefaultInstance() : popWindowNotification;
        }

        public PopWindowNotification.b getPopWindowBuilder() {
            onChanged();
            return (PopWindowNotification.b) getPopWindowFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public g0 getPopWindowOrBuilder() {
            SingleFieldBuilderV3<PopWindowNotification, PopWindowNotification.b, g0> singleFieldBuilderV3 = this.popWindowBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (g0) singleFieldBuilderV3.getMessageOrBuilder();
            }
            PopWindowNotification popWindowNotification = this.popWindow_;
            return popWindowNotification == null ? PopWindowNotification.getDefaultInstance() : popWindowNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public RecommendPlayerStateChangeNotification getRecommendPlayerStateChange() {
            SingleFieldBuilderV3<RecommendPlayerStateChangeNotification, RecommendPlayerStateChangeNotification.b, k0> singleFieldBuilderV3 = this.recommendPlayerStateChangeBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (RecommendPlayerStateChangeNotification) singleFieldBuilderV3.getMessage();
            }
            RecommendPlayerStateChangeNotification recommendPlayerStateChangeNotification = this.recommendPlayerStateChange_;
            return recommendPlayerStateChangeNotification == null ? RecommendPlayerStateChangeNotification.getDefaultInstance() : recommendPlayerStateChangeNotification;
        }

        public RecommendPlayerStateChangeNotification.b getRecommendPlayerStateChangeBuilder() {
            onChanged();
            return (RecommendPlayerStateChangeNotification.b) getRecommendPlayerStateChangeFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public k0 getRecommendPlayerStateChangeOrBuilder() {
            SingleFieldBuilderV3<RecommendPlayerStateChangeNotification, RecommendPlayerStateChangeNotification.b, k0> singleFieldBuilderV3 = this.recommendPlayerStateChangeBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (k0) singleFieldBuilderV3.getMessageOrBuilder();
            }
            RecommendPlayerStateChangeNotification recommendPlayerStateChangeNotification = this.recommendPlayerStateChange_;
            return recommendPlayerStateChangeNotification == null ? RecommendPlayerStateChangeNotification.getDefaultInstance() : recommendPlayerStateChangeNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public RejectBattleInviteNotification getRejectBattleInviteNotification() {
            SingleFieldBuilderV3<RejectBattleInviteNotification, RejectBattleInviteNotification.b, l0> singleFieldBuilderV3 = this.rejectBattleInviteNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (RejectBattleInviteNotification) singleFieldBuilderV3.getMessage();
            }
            RejectBattleInviteNotification rejectBattleInviteNotification = this.rejectBattleInviteNotification_;
            return rejectBattleInviteNotification == null ? RejectBattleInviteNotification.getDefaultInstance() : rejectBattleInviteNotification;
        }

        public RejectBattleInviteNotification.b getRejectBattleInviteNotificationBuilder() {
            onChanged();
            return (RejectBattleInviteNotification.b) getRejectBattleInviteNotificationFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public l0 getRejectBattleInviteNotificationOrBuilder() {
            SingleFieldBuilderV3<RejectBattleInviteNotification, RejectBattleInviteNotification.b, l0> singleFieldBuilderV3 = this.rejectBattleInviteNotificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (l0) singleFieldBuilderV3.getMessageOrBuilder();
            }
            RejectBattleInviteNotification rejectBattleInviteNotification = this.rejectBattleInviteNotification_;
            return rejectBattleInviteNotification == null ? RejectBattleInviteNotification.getDefaultInstance() : rejectBattleInviteNotification;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public long getSendTimestamp() {
            return this.sendTimestamp_;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasAllFrdNotification() {
            return (this.allFrdNotificationBuilder_ == null && this.allFrdNotification_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasAllFriendNotification() {
            return (this.allFriendNotificationBuilder_ == null && this.allFriendNotification_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasChatMsgNotification() {
            return (this.chatMsgNotificationBuilder_ == null && this.chatMsgNotification_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasDialog() {
            return (this.dialogBuilder_ == null && this.dialog_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasFriAddReqNotification() {
            return (this.friAddReqNotificationBuilder_ == null && this.friAddReqNotification_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasFriendAddSuccessNotification() {
            return (this.friendAddSuccessNotificationBuilder_ == null && this.friendAddSuccessNotification_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasFriendChangeState() {
            return (this.friendChangeStateBuilder_ == null && this.friendChangeState_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasFriendDeleteSuccess() {
            return (this.friendDeleteSuccessBuilder_ == null && this.friendDeleteSuccess_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasFriendPlayState() {
            return (this.friendPlayStateBuilder_ == null && this.friendPlayState_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasFromAccount() {
            return (this.fromAccountBuilder_ == null && this.fromAccount_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasGameInvite() {
            return (this.gameInviteBuilder_ == null && this.gameInvite_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasKickNotification() {
            return (this.kickNotificationBuilder_ == null && this.kickNotification_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasLeaveRoomNotification() {
            return (this.leaveRoomNotificationBuilder_ == null && this.leaveRoomNotification_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasPlayerBanned() {
            return (this.playerBannedBuilder_ == null && this.playerBanned_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasPopWindow() {
            return (this.popWindowBuilder_ == null && this.popWindow_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasRecommendPlayerStateChange() {
            return (this.recommendPlayerStateChangeBuilder_ == null && this.recommendPlayerStateChange_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasRejectBattleInviteNotification() {
            return (this.rejectBattleInviteNotificationBuilder_ == null && this.rejectBattleInviteNotification_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.V.ensureFieldAccessorsInitialized(NotificationData.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b mergeAllFrdNotification(AllFriendNotification value) {
            SingleFieldBuilderV3<AllFriendNotification, AllFriendNotification.b, c> singleFieldBuilderV3 = this.allFrdNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                AllFriendNotification allFriendNotification = this.allFrdNotification_;
                if (allFriendNotification != null) {
                    this.allFrdNotification_ = AllFriendNotification.newBuilder(allFriendNotification).mergeFrom(value).buildPartial();
                } else {
                    this.allFrdNotification_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeAllFriendNotification(AllOnlineFriendNotification value) {
            SingleFieldBuilderV3<AllOnlineFriendNotification, AllOnlineFriendNotification.b, d> singleFieldBuilderV3 = this.allFriendNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                AllOnlineFriendNotification allOnlineFriendNotification = this.allFriendNotification_;
                if (allOnlineFriendNotification != null) {
                    this.allFriendNotification_ = AllOnlineFriendNotification.newBuilder(allOnlineFriendNotification).mergeFrom(value).buildPartial();
                } else {
                    this.allFriendNotification_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeChatMsgNotification(ChatMessageNotification value) {
            SingleFieldBuilderV3<ChatMessageNotification, ChatMessageNotification.b, g> singleFieldBuilderV3 = this.chatMsgNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                ChatMessageNotification chatMessageNotification = this.chatMsgNotification_;
                if (chatMessageNotification != null) {
                    this.chatMsgNotification_ = ChatMessageNotification.newBuilder(chatMessageNotification).mergeFrom(value).buildPartial();
                } else {
                    this.chatMsgNotification_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeDialog(DialogNotification value) {
            SingleFieldBuilderV3<DialogNotification, DialogNotification.b, i> singleFieldBuilderV3 = this.dialogBuilder_;
            if (singleFieldBuilderV3 == null) {
                DialogNotification dialogNotification = this.dialog_;
                if (dialogNotification != null) {
                    this.dialog_ = DialogNotification.newBuilder(dialogNotification).mergeFrom(value).buildPartial();
                } else {
                    this.dialog_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeFriAddReqNotification(FriendAddReqNotification value) {
            SingleFieldBuilderV3<FriendAddReqNotification, FriendAddReqNotification.b, j> singleFieldBuilderV3 = this.friAddReqNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                FriendAddReqNotification friendAddReqNotification = this.friAddReqNotification_;
                if (friendAddReqNotification != null) {
                    this.friAddReqNotification_ = FriendAddReqNotification.newBuilder(friendAddReqNotification).mergeFrom(value).buildPartial();
                } else {
                    this.friAddReqNotification_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeFriendAddSuccessNotification(FriendAddSuccessNotification value) {
            SingleFieldBuilderV3<FriendAddSuccessNotification, FriendAddSuccessNotification.b, k> singleFieldBuilderV3 = this.friendAddSuccessNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                FriendAddSuccessNotification friendAddSuccessNotification = this.friendAddSuccessNotification_;
                if (friendAddSuccessNotification != null) {
                    this.friendAddSuccessNotification_ = FriendAddSuccessNotification.newBuilder(friendAddSuccessNotification).mergeFrom(value).buildPartial();
                } else {
                    this.friendAddSuccessNotification_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeFriendChangeState(FriendChangeStateNotification value) {
            SingleFieldBuilderV3<FriendChangeStateNotification, FriendChangeStateNotification.b, m> singleFieldBuilderV3 = this.friendChangeStateBuilder_;
            if (singleFieldBuilderV3 == null) {
                FriendChangeStateNotification friendChangeStateNotification = this.friendChangeState_;
                if (friendChangeStateNotification != null) {
                    this.friendChangeState_ = FriendChangeStateNotification.newBuilder(friendChangeStateNotification).mergeFrom(value).buildPartial();
                } else {
                    this.friendChangeState_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeFriendDeleteSuccess(FriendDeleteSuccessNotification value) {
            SingleFieldBuilderV3<FriendDeleteSuccessNotification, FriendDeleteSuccessNotification.b, n> singleFieldBuilderV3 = this.friendDeleteSuccessBuilder_;
            if (singleFieldBuilderV3 == null) {
                FriendDeleteSuccessNotification friendDeleteSuccessNotification = this.friendDeleteSuccess_;
                if (friendDeleteSuccessNotification != null) {
                    this.friendDeleteSuccess_ = FriendDeleteSuccessNotification.newBuilder(friendDeleteSuccessNotification).mergeFrom(value).buildPartial();
                } else {
                    this.friendDeleteSuccess_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeFriendPlayState(FriendChangePlayStateNotification value) {
            SingleFieldBuilderV3<FriendChangePlayStateNotification, FriendChangePlayStateNotification.b, l> singleFieldBuilderV3 = this.friendPlayStateBuilder_;
            if (singleFieldBuilderV3 == null) {
                FriendChangePlayStateNotification friendChangePlayStateNotification = this.friendPlayState_;
                if (friendChangePlayStateNotification != null) {
                    this.friendPlayState_ = FriendChangePlayStateNotification.newBuilder(friendChangePlayStateNotification).mergeFrom(value).buildPartial();
                } else {
                    this.friendPlayState_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeFromAccount(AccountInfo value) {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.fromAccountBuilder_;
            if (singleFieldBuilderV3 == null) {
                AccountInfo accountInfo = this.fromAccount_;
                if (accountInfo != null) {
                    this.fromAccount_ = AccountInfo.newBuilder(accountInfo).mergeFrom(value).buildPartial();
                } else {
                    this.fromAccount_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeGameInvite(GameInviteNotification value) {
            SingleFieldBuilderV3<GameInviteNotification, GameInviteNotification.b, r> singleFieldBuilderV3 = this.gameInviteBuilder_;
            if (singleFieldBuilderV3 == null) {
                GameInviteNotification gameInviteNotification = this.gameInvite_;
                if (gameInviteNotification != null) {
                    this.gameInvite_ = GameInviteNotification.newBuilder(gameInviteNotification).mergeFrom(value).buildPartial();
                } else {
                    this.gameInvite_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeKickNotification(KickNotification value) {
            SingleFieldBuilderV3<KickNotification, KickNotification.b, u> singleFieldBuilderV3 = this.kickNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                KickNotification kickNotification = this.kickNotification_;
                if (kickNotification != null) {
                    this.kickNotification_ = KickNotification.newBuilder(kickNotification).mergeFrom(value).buildPartial();
                } else {
                    this.kickNotification_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeLeaveRoomNotification(LeaveRoomNotification value) {
            SingleFieldBuilderV3<LeaveRoomNotification, LeaveRoomNotification.b, v> singleFieldBuilderV3 = this.leaveRoomNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                LeaveRoomNotification leaveRoomNotification = this.leaveRoomNotification_;
                if (leaveRoomNotification != null) {
                    this.leaveRoomNotification_ = LeaveRoomNotification.newBuilder(leaveRoomNotification).mergeFrom(value).buildPartial();
                } else {
                    this.leaveRoomNotification_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergePlayerBanned(PlayerBannedNotification value) {
            SingleFieldBuilderV3<PlayerBannedNotification, PlayerBannedNotification.b, f0> singleFieldBuilderV3 = this.playerBannedBuilder_;
            if (singleFieldBuilderV3 == null) {
                PlayerBannedNotification playerBannedNotification = this.playerBanned_;
                if (playerBannedNotification != null) {
                    this.playerBanned_ = PlayerBannedNotification.newBuilder(playerBannedNotification).mergeFrom(value).buildPartial();
                } else {
                    this.playerBanned_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergePopWindow(PopWindowNotification value) {
            SingleFieldBuilderV3<PopWindowNotification, PopWindowNotification.b, g0> singleFieldBuilderV3 = this.popWindowBuilder_;
            if (singleFieldBuilderV3 == null) {
                PopWindowNotification popWindowNotification = this.popWindow_;
                if (popWindowNotification != null) {
                    this.popWindow_ = PopWindowNotification.newBuilder(popWindowNotification).mergeFrom(value).buildPartial();
                } else {
                    this.popWindow_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeRecommendPlayerStateChange(RecommendPlayerStateChangeNotification value) {
            SingleFieldBuilderV3<RecommendPlayerStateChangeNotification, RecommendPlayerStateChangeNotification.b, k0> singleFieldBuilderV3 = this.recommendPlayerStateChangeBuilder_;
            if (singleFieldBuilderV3 == null) {
                RecommendPlayerStateChangeNotification recommendPlayerStateChangeNotification = this.recommendPlayerStateChange_;
                if (recommendPlayerStateChangeNotification != null) {
                    this.recommendPlayerStateChange_ = RecommendPlayerStateChangeNotification.newBuilder(recommendPlayerStateChangeNotification).mergeFrom(value).buildPartial();
                } else {
                    this.recommendPlayerStateChange_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeRejectBattleInviteNotification(RejectBattleInviteNotification value) {
            SingleFieldBuilderV3<RejectBattleInviteNotification, RejectBattleInviteNotification.b, l0> singleFieldBuilderV3 = this.rejectBattleInviteNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                RejectBattleInviteNotification rejectBattleInviteNotification = this.rejectBattleInviteNotification_;
                if (rejectBattleInviteNotification != null) {
                    this.rejectBattleInviteNotification_ = RejectBattleInviteNotification.newBuilder(rejectBattleInviteNotification).mergeFrom(value).buildPartial();
                } else {
                    this.rejectBattleInviteNotification_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b setAck(boolean value) {
            this.ack_ = value;
            onChanged();
            return this;
        }

        public b setAllFrdNotification(AllFriendNotification value) {
            SingleFieldBuilderV3<AllFriendNotification, AllFriendNotification.b, c> singleFieldBuilderV3 = this.allFrdNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.allFrdNotification_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setAllFriendNotification(AllOnlineFriendNotification value) {
            SingleFieldBuilderV3<AllOnlineFriendNotification, AllOnlineFriendNotification.b, d> singleFieldBuilderV3 = this.allFriendNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.allFriendNotification_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setChatMsgNotification(ChatMessageNotification value) {
            SingleFieldBuilderV3<ChatMessageNotification, ChatMessageNotification.b, g> singleFieldBuilderV3 = this.chatMsgNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.chatMsgNotification_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setDialog(DialogNotification value) {
            SingleFieldBuilderV3<DialogNotification, DialogNotification.b, i> singleFieldBuilderV3 = this.dialogBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.dialog_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setFriAddReqNotification(FriendAddReqNotification value) {
            SingleFieldBuilderV3<FriendAddReqNotification, FriendAddReqNotification.b, j> singleFieldBuilderV3 = this.friAddReqNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.friAddReqNotification_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setFriendAddSuccessNotification(FriendAddSuccessNotification value) {
            SingleFieldBuilderV3<FriendAddSuccessNotification, FriendAddSuccessNotification.b, k> singleFieldBuilderV3 = this.friendAddSuccessNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.friendAddSuccessNotification_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setFriendChangeState(FriendChangeStateNotification value) {
            SingleFieldBuilderV3<FriendChangeStateNotification, FriendChangeStateNotification.b, m> singleFieldBuilderV3 = this.friendChangeStateBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.friendChangeState_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setFriendDeleteSuccess(FriendDeleteSuccessNotification value) {
            SingleFieldBuilderV3<FriendDeleteSuccessNotification, FriendDeleteSuccessNotification.b, n> singleFieldBuilderV3 = this.friendDeleteSuccessBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.friendDeleteSuccess_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setFriendPlayState(FriendChangePlayStateNotification value) {
            SingleFieldBuilderV3<FriendChangePlayStateNotification, FriendChangePlayStateNotification.b, l> singleFieldBuilderV3 = this.friendPlayStateBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.friendPlayState_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setFromAccount(AccountInfo value) {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.fromAccountBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.fromAccount_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setGameInvite(GameInviteNotification value) {
            SingleFieldBuilderV3<GameInviteNotification, GameInviteNotification.b, r> singleFieldBuilderV3 = this.gameInviteBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.gameInvite_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setKickNotification(KickNotification value) {
            SingleFieldBuilderV3<KickNotification, KickNotification.b, u> singleFieldBuilderV3 = this.kickNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.kickNotification_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setLeaveRoomNotification(LeaveRoomNotification value) {
            SingleFieldBuilderV3<LeaveRoomNotification, LeaveRoomNotification.b, v> singleFieldBuilderV3 = this.leaveRoomNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.leaveRoomNotification_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setMessageId(long value) {
            this.messageId_ = value;
            onChanged();
            return this;
        }

        public b setPlayerBanned(PlayerBannedNotification value) {
            SingleFieldBuilderV3<PlayerBannedNotification, PlayerBannedNotification.b, f0> singleFieldBuilderV3 = this.playerBannedBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.playerBanned_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setPopWindow(PopWindowNotification value) {
            SingleFieldBuilderV3<PopWindowNotification, PopWindowNotification.b, g0> singleFieldBuilderV3 = this.popWindowBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.popWindow_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setRecommendPlayerStateChange(RecommendPlayerStateChangeNotification value) {
            SingleFieldBuilderV3<RecommendPlayerStateChangeNotification, RecommendPlayerStateChangeNotification.b, k0> singleFieldBuilderV3 = this.recommendPlayerStateChangeBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.recommendPlayerStateChange_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setRejectBattleInviteNotification(RejectBattleInviteNotification value) {
            SingleFieldBuilderV3<RejectBattleInviteNotification, RejectBattleInviteNotification.b, l0> singleFieldBuilderV3 = this.rejectBattleInviteNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.rejectBattleInviteNotification_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setSendTimestamp(long value) {
            this.sendTimestamp_ = value;
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
        public NotificationData build() {
            NotificationData notificationDataBuildPartial = buildPartial();
            if (notificationDataBuildPartial.isInitialized()) {
                return notificationDataBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) notificationDataBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public NotificationData buildPartial() {
            NotificationData notificationData = new NotificationData(this, (a) null);
            notificationData.messageId_ = this.messageId_;
            notificationData.sendTimestamp_ = this.sendTimestamp_;
            notificationData.ack_ = this.ack_;
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.fromAccountBuilder_;
            if (singleFieldBuilderV3 == null) {
                notificationData.fromAccount_ = this.fromAccount_;
            } else {
                notificationData.fromAccount_ = (AccountInfo) singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<DialogNotification, DialogNotification.b, i> singleFieldBuilderV4 = this.dialogBuilder_;
            if (singleFieldBuilderV4 == null) {
                notificationData.dialog_ = this.dialog_;
            } else {
                notificationData.dialog_ = (DialogNotification) singleFieldBuilderV4.build();
            }
            SingleFieldBuilderV3<PopWindowNotification, PopWindowNotification.b, g0> singleFieldBuilderV5 = this.popWindowBuilder_;
            if (singleFieldBuilderV5 == null) {
                notificationData.popWindow_ = this.popWindow_;
            } else {
                notificationData.popWindow_ = (PopWindowNotification) singleFieldBuilderV5.build();
            }
            SingleFieldBuilderV3<GameInviteNotification, GameInviteNotification.b, r> singleFieldBuilderV6 = this.gameInviteBuilder_;
            if (singleFieldBuilderV6 == null) {
                notificationData.gameInvite_ = this.gameInvite_;
            } else {
                notificationData.gameInvite_ = (GameInviteNotification) singleFieldBuilderV6.build();
            }
            SingleFieldBuilderV3<FriendChangeStateNotification, FriendChangeStateNotification.b, m> singleFieldBuilderV7 = this.friendChangeStateBuilder_;
            if (singleFieldBuilderV7 == null) {
                notificationData.friendChangeState_ = this.friendChangeState_;
            } else {
                notificationData.friendChangeState_ = (FriendChangeStateNotification) singleFieldBuilderV7.build();
            }
            SingleFieldBuilderV3<FriendChangePlayStateNotification, FriendChangePlayStateNotification.b, l> singleFieldBuilderV8 = this.friendPlayStateBuilder_;
            if (singleFieldBuilderV8 == null) {
                notificationData.friendPlayState_ = this.friendPlayState_;
            } else {
                notificationData.friendPlayState_ = (FriendChangePlayStateNotification) singleFieldBuilderV8.build();
            }
            SingleFieldBuilderV3<KickNotification, KickNotification.b, u> singleFieldBuilderV9 = this.kickNotificationBuilder_;
            if (singleFieldBuilderV9 == null) {
                notificationData.kickNotification_ = this.kickNotification_;
            } else {
                notificationData.kickNotification_ = (KickNotification) singleFieldBuilderV9.build();
            }
            SingleFieldBuilderV3<AllOnlineFriendNotification, AllOnlineFriendNotification.b, d> singleFieldBuilderV10 = this.allFriendNotificationBuilder_;
            if (singleFieldBuilderV10 == null) {
                notificationData.allFriendNotification_ = this.allFriendNotification_;
            } else {
                notificationData.allFriendNotification_ = (AllOnlineFriendNotification) singleFieldBuilderV10.build();
            }
            SingleFieldBuilderV3<ChatMessageNotification, ChatMessageNotification.b, g> singleFieldBuilderV11 = this.chatMsgNotificationBuilder_;
            if (singleFieldBuilderV11 == null) {
                notificationData.chatMsgNotification_ = this.chatMsgNotification_;
            } else {
                notificationData.chatMsgNotification_ = (ChatMessageNotification) singleFieldBuilderV11.build();
            }
            SingleFieldBuilderV3<FriendAddReqNotification, FriendAddReqNotification.b, j> singleFieldBuilderV12 = this.friAddReqNotificationBuilder_;
            if (singleFieldBuilderV12 == null) {
                notificationData.friAddReqNotification_ = this.friAddReqNotification_;
            } else {
                notificationData.friAddReqNotification_ = (FriendAddReqNotification) singleFieldBuilderV12.build();
            }
            SingleFieldBuilderV3<LeaveRoomNotification, LeaveRoomNotification.b, v> singleFieldBuilderV13 = this.leaveRoomNotificationBuilder_;
            if (singleFieldBuilderV13 == null) {
                notificationData.leaveRoomNotification_ = this.leaveRoomNotification_;
            } else {
                notificationData.leaveRoomNotification_ = (LeaveRoomNotification) singleFieldBuilderV13.build();
            }
            SingleFieldBuilderV3<FriendAddSuccessNotification, FriendAddSuccessNotification.b, k> singleFieldBuilderV14 = this.friendAddSuccessNotificationBuilder_;
            if (singleFieldBuilderV14 == null) {
                notificationData.friendAddSuccessNotification_ = this.friendAddSuccessNotification_;
            } else {
                notificationData.friendAddSuccessNotification_ = (FriendAddSuccessNotification) singleFieldBuilderV14.build();
            }
            SingleFieldBuilderV3<RejectBattleInviteNotification, RejectBattleInviteNotification.b, l0> singleFieldBuilderV15 = this.rejectBattleInviteNotificationBuilder_;
            if (singleFieldBuilderV15 == null) {
                notificationData.rejectBattleInviteNotification_ = this.rejectBattleInviteNotification_;
            } else {
                notificationData.rejectBattleInviteNotification_ = (RejectBattleInviteNotification) singleFieldBuilderV15.build();
            }
            SingleFieldBuilderV3<AllFriendNotification, AllFriendNotification.b, c> singleFieldBuilderV16 = this.allFrdNotificationBuilder_;
            if (singleFieldBuilderV16 == null) {
                notificationData.allFrdNotification_ = this.allFrdNotification_;
            } else {
                notificationData.allFrdNotification_ = (AllFriendNotification) singleFieldBuilderV16.build();
            }
            SingleFieldBuilderV3<RecommendPlayerStateChangeNotification, RecommendPlayerStateChangeNotification.b, k0> singleFieldBuilderV17 = this.recommendPlayerStateChangeBuilder_;
            if (singleFieldBuilderV17 == null) {
                notificationData.recommendPlayerStateChange_ = this.recommendPlayerStateChange_;
            } else {
                notificationData.recommendPlayerStateChange_ = (RecommendPlayerStateChangeNotification) singleFieldBuilderV17.build();
            }
            SingleFieldBuilderV3<FriendDeleteSuccessNotification, FriendDeleteSuccessNotification.b, n> singleFieldBuilderV18 = this.friendDeleteSuccessBuilder_;
            if (singleFieldBuilderV18 == null) {
                notificationData.friendDeleteSuccess_ = this.friendDeleteSuccess_;
            } else {
                notificationData.friendDeleteSuccess_ = (FriendDeleteSuccessNotification) singleFieldBuilderV18.build();
            }
            SingleFieldBuilderV3<PlayerBannedNotification, PlayerBannedNotification.b, f0> singleFieldBuilderV19 = this.playerBannedBuilder_;
            if (singleFieldBuilderV19 == null) {
                notificationData.playerBanned_ = this.playerBanned_;
            } else {
                notificationData.playerBanned_ = (PlayerBannedNotification) singleFieldBuilderV19.build();
            }
            onBuilt();
            return notificationData;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public NotificationData getDefaultInstanceForType() {
            return NotificationData.getDefaultInstance();
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
            this.messageId_ = 0L;
            this.sendTimestamp_ = 0L;
            this.ack_ = false;
            if (this.fromAccountBuilder_ == null) {
                this.fromAccount_ = null;
            } else {
                this.fromAccount_ = null;
                this.fromAccountBuilder_ = null;
            }
            if (this.dialogBuilder_ == null) {
                this.dialog_ = null;
            } else {
                this.dialog_ = null;
                this.dialogBuilder_ = null;
            }
            if (this.popWindowBuilder_ == null) {
                this.popWindow_ = null;
            } else {
                this.popWindow_ = null;
                this.popWindowBuilder_ = null;
            }
            if (this.gameInviteBuilder_ == null) {
                this.gameInvite_ = null;
            } else {
                this.gameInvite_ = null;
                this.gameInviteBuilder_ = null;
            }
            if (this.friendChangeStateBuilder_ == null) {
                this.friendChangeState_ = null;
            } else {
                this.friendChangeState_ = null;
                this.friendChangeStateBuilder_ = null;
            }
            if (this.friendPlayStateBuilder_ == null) {
                this.friendPlayState_ = null;
            } else {
                this.friendPlayState_ = null;
                this.friendPlayStateBuilder_ = null;
            }
            if (this.kickNotificationBuilder_ == null) {
                this.kickNotification_ = null;
            } else {
                this.kickNotification_ = null;
                this.kickNotificationBuilder_ = null;
            }
            if (this.allFriendNotificationBuilder_ == null) {
                this.allFriendNotification_ = null;
            } else {
                this.allFriendNotification_ = null;
                this.allFriendNotificationBuilder_ = null;
            }
            if (this.chatMsgNotificationBuilder_ == null) {
                this.chatMsgNotification_ = null;
            } else {
                this.chatMsgNotification_ = null;
                this.chatMsgNotificationBuilder_ = null;
            }
            if (this.friAddReqNotificationBuilder_ == null) {
                this.friAddReqNotification_ = null;
            } else {
                this.friAddReqNotification_ = null;
                this.friAddReqNotificationBuilder_ = null;
            }
            if (this.leaveRoomNotificationBuilder_ == null) {
                this.leaveRoomNotification_ = null;
            } else {
                this.leaveRoomNotification_ = null;
                this.leaveRoomNotificationBuilder_ = null;
            }
            if (this.friendAddSuccessNotificationBuilder_ == null) {
                this.friendAddSuccessNotification_ = null;
            } else {
                this.friendAddSuccessNotification_ = null;
                this.friendAddSuccessNotificationBuilder_ = null;
            }
            if (this.rejectBattleInviteNotificationBuilder_ == null) {
                this.rejectBattleInviteNotification_ = null;
            } else {
                this.rejectBattleInviteNotification_ = null;
                this.rejectBattleInviteNotificationBuilder_ = null;
            }
            if (this.allFrdNotificationBuilder_ == null) {
                this.allFrdNotification_ = null;
            } else {
                this.allFrdNotification_ = null;
                this.allFrdNotificationBuilder_ = null;
            }
            if (this.recommendPlayerStateChangeBuilder_ == null) {
                this.recommendPlayerStateChange_ = null;
            } else {
                this.recommendPlayerStateChange_ = null;
                this.recommendPlayerStateChangeBuilder_ = null;
            }
            if (this.friendDeleteSuccessBuilder_ == null) {
                this.friendDeleteSuccess_ = null;
            } else {
                this.friendDeleteSuccess_ = null;
                this.friendDeleteSuccessBuilder_ = null;
            }
            if (this.playerBannedBuilder_ == null) {
                this.playerBanned_ = null;
            } else {
                this.playerBanned_ = null;
                this.playerBannedBuilder_ = null;
            }
            return this;
        }

        public b setAllFrdNotification(AllFriendNotification.b builderForValue) {
            SingleFieldBuilderV3<AllFriendNotification, AllFriendNotification.b, c> singleFieldBuilderV3 = this.allFrdNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.allFrdNotification_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setAllFriendNotification(AllOnlineFriendNotification.b builderForValue) {
            SingleFieldBuilderV3<AllOnlineFriendNotification, AllOnlineFriendNotification.b, d> singleFieldBuilderV3 = this.allFriendNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.allFriendNotification_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setChatMsgNotification(ChatMessageNotification.b builderForValue) {
            SingleFieldBuilderV3<ChatMessageNotification, ChatMessageNotification.b, g> singleFieldBuilderV3 = this.chatMsgNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.chatMsgNotification_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setDialog(DialogNotification.b builderForValue) {
            SingleFieldBuilderV3<DialogNotification, DialogNotification.b, i> singleFieldBuilderV3 = this.dialogBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.dialog_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setFriAddReqNotification(FriendAddReqNotification.b builderForValue) {
            SingleFieldBuilderV3<FriendAddReqNotification, FriendAddReqNotification.b, j> singleFieldBuilderV3 = this.friAddReqNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.friAddReqNotification_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setFriendAddSuccessNotification(FriendAddSuccessNotification.b builderForValue) {
            SingleFieldBuilderV3<FriendAddSuccessNotification, FriendAddSuccessNotification.b, k> singleFieldBuilderV3 = this.friendAddSuccessNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.friendAddSuccessNotification_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setFriendChangeState(FriendChangeStateNotification.b builderForValue) {
            SingleFieldBuilderV3<FriendChangeStateNotification, FriendChangeStateNotification.b, m> singleFieldBuilderV3 = this.friendChangeStateBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.friendChangeState_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setFriendDeleteSuccess(FriendDeleteSuccessNotification.b builderForValue) {
            SingleFieldBuilderV3<FriendDeleteSuccessNotification, FriendDeleteSuccessNotification.b, n> singleFieldBuilderV3 = this.friendDeleteSuccessBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.friendDeleteSuccess_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setFriendPlayState(FriendChangePlayStateNotification.b builderForValue) {
            SingleFieldBuilderV3<FriendChangePlayStateNotification, FriendChangePlayStateNotification.b, l> singleFieldBuilderV3 = this.friendPlayStateBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.friendPlayState_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setFromAccount(AccountInfo.b builderForValue) {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.fromAccountBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.fromAccount_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setGameInvite(GameInviteNotification.b builderForValue) {
            SingleFieldBuilderV3<GameInviteNotification, GameInviteNotification.b, r> singleFieldBuilderV3 = this.gameInviteBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.gameInvite_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setKickNotification(KickNotification.b builderForValue) {
            SingleFieldBuilderV3<KickNotification, KickNotification.b, u> singleFieldBuilderV3 = this.kickNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.kickNotification_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setLeaveRoomNotification(LeaveRoomNotification.b builderForValue) {
            SingleFieldBuilderV3<LeaveRoomNotification, LeaveRoomNotification.b, v> singleFieldBuilderV3 = this.leaveRoomNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.leaveRoomNotification_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setPlayerBanned(PlayerBannedNotification.b builderForValue) {
            SingleFieldBuilderV3<PlayerBannedNotification, PlayerBannedNotification.b, f0> singleFieldBuilderV3 = this.playerBannedBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.playerBanned_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setPopWindow(PopWindowNotification.b builderForValue) {
            SingleFieldBuilderV3<PopWindowNotification, PopWindowNotification.b, g0> singleFieldBuilderV3 = this.popWindowBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.popWindow_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setRecommendPlayerStateChange(RecommendPlayerStateChangeNotification.b builderForValue) {
            SingleFieldBuilderV3<RecommendPlayerStateChangeNotification, RecommendPlayerStateChangeNotification.b, k0> singleFieldBuilderV3 = this.recommendPlayerStateChangeBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.recommendPlayerStateChange_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setRejectBattleInviteNotification(RejectBattleInviteNotification.b builderForValue) {
            SingleFieldBuilderV3<RejectBattleInviteNotification, RejectBattleInviteNotification.b, l0> singleFieldBuilderV3 = this.rejectBattleInviteNotificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.rejectBattleInviteNotification_ = builderForValue.build();
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
            if (other instanceof NotificationData) {
                return mergeFrom((NotificationData) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(NotificationData other) {
            if (other == NotificationData.getDefaultInstance()) {
                return this;
            }
            if (other.getMessageId() != 0) {
                setMessageId(other.getMessageId());
            }
            if (other.getSendTimestamp() != 0) {
                setSendTimestamp(other.getSendTimestamp());
            }
            if (other.getAck()) {
                setAck(other.getAck());
            }
            if (other.hasFromAccount()) {
                mergeFromAccount(other.getFromAccount());
            }
            if (other.hasDialog()) {
                mergeDialog(other.getDialog());
            }
            if (other.hasPopWindow()) {
                mergePopWindow(other.getPopWindow());
            }
            if (other.hasGameInvite()) {
                mergeGameInvite(other.getGameInvite());
            }
            if (other.hasFriendChangeState()) {
                mergeFriendChangeState(other.getFriendChangeState());
            }
            if (other.hasFriendPlayState()) {
                mergeFriendPlayState(other.getFriendPlayState());
            }
            if (other.hasKickNotification()) {
                mergeKickNotification(other.getKickNotification());
            }
            if (other.hasAllFriendNotification()) {
                mergeAllFriendNotification(other.getAllFriendNotification());
            }
            if (other.hasChatMsgNotification()) {
                mergeChatMsgNotification(other.getChatMsgNotification());
            }
            if (other.hasFriAddReqNotification()) {
                mergeFriAddReqNotification(other.getFriAddReqNotification());
            }
            if (other.hasLeaveRoomNotification()) {
                mergeLeaveRoomNotification(other.getLeaveRoomNotification());
            }
            if (other.hasFriendAddSuccessNotification()) {
                mergeFriendAddSuccessNotification(other.getFriendAddSuccessNotification());
            }
            if (other.hasRejectBattleInviteNotification()) {
                mergeRejectBattleInviteNotification(other.getRejectBattleInviteNotification());
            }
            if (other.hasAllFrdNotification()) {
                mergeAllFrdNotification(other.getAllFrdNotification());
            }
            if (other.hasRecommendPlayerStateChange()) {
                mergeRecommendPlayerStateChange(other.getRecommendPlayerStateChange());
            }
            if (other.hasFriendDeleteSuccess()) {
                mergeFriendDeleteSuccess(other.getFriendDeleteSuccess());
            }
            if (other.hasPlayerBanned()) {
                mergePlayerBanned(other.getPlayerBanned());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            NotificationData notificationData = null;
            try {
                try {
                    NotificationData notificationData2 = (NotificationData) NotificationData.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (notificationData2 != null) {
                        mergeFrom(notificationData2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    NotificationData notificationData3 = (NotificationData) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        notificationData = notificationData3;
                        if (notificationData != null) {
                            mergeFrom(notificationData);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (notificationData != null) {
                    mergeFrom(notificationData);
                }
                throw th;
            }
        }
    }

    /* synthetic */ NotificationData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static NotificationData getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.U;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static NotificationData parseDelimitedFrom(InputStream input) throws IOException {
        return (NotificationData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static NotificationData parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<NotificationData> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NotificationData)) {
            return super.equals(obj);
        }
        NotificationData notificationData = (NotificationData) obj;
        if (getMessageId() != notificationData.getMessageId() || getSendTimestamp() != notificationData.getSendTimestamp() || getAck() != notificationData.getAck() || hasFromAccount() != notificationData.hasFromAccount()) {
            return false;
        }
        if ((hasFromAccount() && !getFromAccount().equals(notificationData.getFromAccount())) || hasDialog() != notificationData.hasDialog()) {
            return false;
        }
        if ((hasDialog() && !getDialog().equals(notificationData.getDialog())) || hasPopWindow() != notificationData.hasPopWindow()) {
            return false;
        }
        if ((hasPopWindow() && !getPopWindow().equals(notificationData.getPopWindow())) || hasGameInvite() != notificationData.hasGameInvite()) {
            return false;
        }
        if ((hasGameInvite() && !getGameInvite().equals(notificationData.getGameInvite())) || hasFriendChangeState() != notificationData.hasFriendChangeState()) {
            return false;
        }
        if ((hasFriendChangeState() && !getFriendChangeState().equals(notificationData.getFriendChangeState())) || hasFriendPlayState() != notificationData.hasFriendPlayState()) {
            return false;
        }
        if ((hasFriendPlayState() && !getFriendPlayState().equals(notificationData.getFriendPlayState())) || hasKickNotification() != notificationData.hasKickNotification()) {
            return false;
        }
        if ((hasKickNotification() && !getKickNotification().equals(notificationData.getKickNotification())) || hasAllFriendNotification() != notificationData.hasAllFriendNotification()) {
            return false;
        }
        if ((hasAllFriendNotification() && !getAllFriendNotification().equals(notificationData.getAllFriendNotification())) || hasChatMsgNotification() != notificationData.hasChatMsgNotification()) {
            return false;
        }
        if ((hasChatMsgNotification() && !getChatMsgNotification().equals(notificationData.getChatMsgNotification())) || hasFriAddReqNotification() != notificationData.hasFriAddReqNotification()) {
            return false;
        }
        if ((hasFriAddReqNotification() && !getFriAddReqNotification().equals(notificationData.getFriAddReqNotification())) || hasLeaveRoomNotification() != notificationData.hasLeaveRoomNotification()) {
            return false;
        }
        if ((hasLeaveRoomNotification() && !getLeaveRoomNotification().equals(notificationData.getLeaveRoomNotification())) || hasFriendAddSuccessNotification() != notificationData.hasFriendAddSuccessNotification()) {
            return false;
        }
        if ((hasFriendAddSuccessNotification() && !getFriendAddSuccessNotification().equals(notificationData.getFriendAddSuccessNotification())) || hasRejectBattleInviteNotification() != notificationData.hasRejectBattleInviteNotification()) {
            return false;
        }
        if ((hasRejectBattleInviteNotification() && !getRejectBattleInviteNotification().equals(notificationData.getRejectBattleInviteNotification())) || hasAllFrdNotification() != notificationData.hasAllFrdNotification()) {
            return false;
        }
        if ((hasAllFrdNotification() && !getAllFrdNotification().equals(notificationData.getAllFrdNotification())) || hasRecommendPlayerStateChange() != notificationData.hasRecommendPlayerStateChange()) {
            return false;
        }
        if ((hasRecommendPlayerStateChange() && !getRecommendPlayerStateChange().equals(notificationData.getRecommendPlayerStateChange())) || hasFriendDeleteSuccess() != notificationData.hasFriendDeleteSuccess()) {
            return false;
        }
        if ((!hasFriendDeleteSuccess() || getFriendDeleteSuccess().equals(notificationData.getFriendDeleteSuccess())) && hasPlayerBanned() == notificationData.hasPlayerBanned()) {
            return (!hasPlayerBanned() || getPlayerBanned().equals(notificationData.getPlayerBanned())) && this.unknownFields.equals(notificationData.unknownFields);
        }
        return false;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean getAck() {
        return this.ack_;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public AllFriendNotification getAllFrdNotification() {
        AllFriendNotification allFriendNotification = this.allFrdNotification_;
        return allFriendNotification == null ? AllFriendNotification.getDefaultInstance() : allFriendNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public c getAllFrdNotificationOrBuilder() {
        return getAllFrdNotification();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public AllOnlineFriendNotification getAllFriendNotification() {
        AllOnlineFriendNotification allOnlineFriendNotification = this.allFriendNotification_;
        return allOnlineFriendNotification == null ? AllOnlineFriendNotification.getDefaultInstance() : allOnlineFriendNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public d getAllFriendNotificationOrBuilder() {
        return getAllFriendNotification();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public ChatMessageNotification getChatMsgNotification() {
        ChatMessageNotification chatMessageNotification = this.chatMsgNotification_;
        return chatMessageNotification == null ? ChatMessageNotification.getDefaultInstance() : chatMessageNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public g getChatMsgNotificationOrBuilder() {
        return getChatMsgNotification();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public DialogNotification getDialog() {
        DialogNotification dialogNotification = this.dialog_;
        return dialogNotification == null ? DialogNotification.getDefaultInstance() : dialogNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public i getDialogOrBuilder() {
        return getDialog();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public FriendAddReqNotification getFriAddReqNotification() {
        FriendAddReqNotification friendAddReqNotification = this.friAddReqNotification_;
        return friendAddReqNotification == null ? FriendAddReqNotification.getDefaultInstance() : friendAddReqNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public j getFriAddReqNotificationOrBuilder() {
        return getFriAddReqNotification();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public FriendAddSuccessNotification getFriendAddSuccessNotification() {
        FriendAddSuccessNotification friendAddSuccessNotification = this.friendAddSuccessNotification_;
        return friendAddSuccessNotification == null ? FriendAddSuccessNotification.getDefaultInstance() : friendAddSuccessNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public k getFriendAddSuccessNotificationOrBuilder() {
        return getFriendAddSuccessNotification();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public FriendChangeStateNotification getFriendChangeState() {
        FriendChangeStateNotification friendChangeStateNotification = this.friendChangeState_;
        return friendChangeStateNotification == null ? FriendChangeStateNotification.getDefaultInstance() : friendChangeStateNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public m getFriendChangeStateOrBuilder() {
        return getFriendChangeState();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public FriendDeleteSuccessNotification getFriendDeleteSuccess() {
        FriendDeleteSuccessNotification friendDeleteSuccessNotification = this.friendDeleteSuccess_;
        return friendDeleteSuccessNotification == null ? FriendDeleteSuccessNotification.getDefaultInstance() : friendDeleteSuccessNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public n getFriendDeleteSuccessOrBuilder() {
        return getFriendDeleteSuccess();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public FriendChangePlayStateNotification getFriendPlayState() {
        FriendChangePlayStateNotification friendChangePlayStateNotification = this.friendPlayState_;
        return friendChangePlayStateNotification == null ? FriendChangePlayStateNotification.getDefaultInstance() : friendChangePlayStateNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public l getFriendPlayStateOrBuilder() {
        return getFriendPlayState();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public AccountInfo getFromAccount() {
        AccountInfo accountInfo = this.fromAccount_;
        return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public com.wufan.friend.chat.protocol.a getFromAccountOrBuilder() {
        return getFromAccount();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public GameInviteNotification getGameInvite() {
        GameInviteNotification gameInviteNotification = this.gameInvite_;
        return gameInviteNotification == null ? GameInviteNotification.getDefaultInstance() : gameInviteNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public r getGameInviteOrBuilder() {
        return getGameInvite();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public KickNotification getKickNotification() {
        KickNotification kickNotification = this.kickNotification_;
        return kickNotification == null ? KickNotification.getDefaultInstance() : kickNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public u getKickNotificationOrBuilder() {
        return getKickNotification();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public LeaveRoomNotification getLeaveRoomNotification() {
        LeaveRoomNotification leaveRoomNotification = this.leaveRoomNotification_;
        return leaveRoomNotification == null ? LeaveRoomNotification.getDefaultInstance() : leaveRoomNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public v getLeaveRoomNotificationOrBuilder() {
        return getLeaveRoomNotification();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public long getMessageId() {
        return this.messageId_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<NotificationData> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public PlayerBannedNotification getPlayerBanned() {
        PlayerBannedNotification playerBannedNotification = this.playerBanned_;
        return playerBannedNotification == null ? PlayerBannedNotification.getDefaultInstance() : playerBannedNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public f0 getPlayerBannedOrBuilder() {
        return getPlayerBanned();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public PopWindowNotification getPopWindow() {
        PopWindowNotification popWindowNotification = this.popWindow_;
        return popWindowNotification == null ? PopWindowNotification.getDefaultInstance() : popWindowNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public g0 getPopWindowOrBuilder() {
        return getPopWindow();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public RecommendPlayerStateChangeNotification getRecommendPlayerStateChange() {
        RecommendPlayerStateChangeNotification recommendPlayerStateChangeNotification = this.recommendPlayerStateChange_;
        return recommendPlayerStateChangeNotification == null ? RecommendPlayerStateChangeNotification.getDefaultInstance() : recommendPlayerStateChangeNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public k0 getRecommendPlayerStateChangeOrBuilder() {
        return getRecommendPlayerStateChange();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public RejectBattleInviteNotification getRejectBattleInviteNotification() {
        RejectBattleInviteNotification rejectBattleInviteNotification = this.rejectBattleInviteNotification_;
        return rejectBattleInviteNotification == null ? RejectBattleInviteNotification.getDefaultInstance() : rejectBattleInviteNotification;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public l0 getRejectBattleInviteNotificationOrBuilder() {
        return getRejectBattleInviteNotification();
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public long getSendTimestamp() {
        return this.sendTimestamp_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        long j10 = this.messageId_;
        int iComputeInt64Size = j10 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j10) : 0;
        long j11 = this.sendTimestamp_;
        if (j11 != 0) {
            iComputeInt64Size += CodedOutputStream.computeInt64Size(2, j11);
        }
        boolean z10 = this.ack_;
        if (z10) {
            iComputeInt64Size += CodedOutputStream.computeBoolSize(3, z10);
        }
        if (this.fromAccount_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(4, getFromAccount());
        }
        if (this.dialog_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(5, getDialog());
        }
        if (this.popWindow_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(6, getPopWindow());
        }
        if (this.gameInvite_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(7, getGameInvite());
        }
        if (this.friendChangeState_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(8, getFriendChangeState());
        }
        if (this.friendPlayState_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(9, getFriendPlayState());
        }
        if (this.kickNotification_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(10, getKickNotification());
        }
        if (this.allFriendNotification_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(11, getAllFriendNotification());
        }
        if (this.chatMsgNotification_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(12, getChatMsgNotification());
        }
        if (this.friAddReqNotification_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(13, getFriAddReqNotification());
        }
        if (this.leaveRoomNotification_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(14, getLeaveRoomNotification());
        }
        if (this.friendAddSuccessNotification_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(15, getFriendAddSuccessNotification());
        }
        if (this.rejectBattleInviteNotification_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(16, getRejectBattleInviteNotification());
        }
        if (this.allFrdNotification_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(17, getAllFrdNotification());
        }
        if (this.recommendPlayerStateChange_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(18, getRecommendPlayerStateChange());
        }
        if (this.friendDeleteSuccess_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(19, getFriendDeleteSuccess());
        }
        if (this.playerBanned_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(20, getPlayerBanned());
        }
        int serializedSize = iComputeInt64Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasAllFrdNotification() {
        return this.allFrdNotification_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasAllFriendNotification() {
        return this.allFriendNotification_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasChatMsgNotification() {
        return this.chatMsgNotification_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasDialog() {
        return this.dialog_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasFriAddReqNotification() {
        return this.friAddReqNotification_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasFriendAddSuccessNotification() {
        return this.friendAddSuccessNotification_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasFriendChangeState() {
        return this.friendChangeState_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasFriendDeleteSuccess() {
        return this.friendDeleteSuccess_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasFriendPlayState() {
        return this.friendPlayState_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasFromAccount() {
        return this.fromAccount_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasGameInvite() {
        return this.gameInvite_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasKickNotification() {
        return this.kickNotification_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasLeaveRoomNotification() {
        return this.leaveRoomNotification_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasPlayerBanned() {
        return this.playerBanned_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasPopWindow() {
        return this.popWindow_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasRecommendPlayerStateChange() {
        return this.recommendPlayerStateChange_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasRejectBattleInviteNotification() {
        return this.rejectBattleInviteNotification_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(getMessageId())) * 37) + 2) * 53) + Internal.hashLong(getSendTimestamp())) * 37) + 3) * 53) + Internal.hashBoolean(getAck());
        if (hasFromAccount()) {
            iHashCode = (((iHashCode * 37) + 4) * 53) + getFromAccount().hashCode();
        }
        if (hasDialog()) {
            iHashCode = (((iHashCode * 37) + 5) * 53) + getDialog().hashCode();
        }
        if (hasPopWindow()) {
            iHashCode = (((iHashCode * 37) + 6) * 53) + getPopWindow().hashCode();
        }
        if (hasGameInvite()) {
            iHashCode = (((iHashCode * 37) + 7) * 53) + getGameInvite().hashCode();
        }
        if (hasFriendChangeState()) {
            iHashCode = (((iHashCode * 37) + 8) * 53) + getFriendChangeState().hashCode();
        }
        if (hasFriendPlayState()) {
            iHashCode = (((iHashCode * 37) + 9) * 53) + getFriendPlayState().hashCode();
        }
        if (hasKickNotification()) {
            iHashCode = (((iHashCode * 37) + 10) * 53) + getKickNotification().hashCode();
        }
        if (hasAllFriendNotification()) {
            iHashCode = (((iHashCode * 37) + 11) * 53) + getAllFriendNotification().hashCode();
        }
        if (hasChatMsgNotification()) {
            iHashCode = (((iHashCode * 37) + 12) * 53) + getChatMsgNotification().hashCode();
        }
        if (hasFriAddReqNotification()) {
            iHashCode = (((iHashCode * 37) + 13) * 53) + getFriAddReqNotification().hashCode();
        }
        if (hasLeaveRoomNotification()) {
            iHashCode = (((iHashCode * 37) + 14) * 53) + getLeaveRoomNotification().hashCode();
        }
        if (hasFriendAddSuccessNotification()) {
            iHashCode = (((iHashCode * 37) + 15) * 53) + getFriendAddSuccessNotification().hashCode();
        }
        if (hasRejectBattleInviteNotification()) {
            iHashCode = (((iHashCode * 37) + 16) * 53) + getRejectBattleInviteNotification().hashCode();
        }
        if (hasAllFrdNotification()) {
            iHashCode = (((iHashCode * 37) + 17) * 53) + getAllFrdNotification().hashCode();
        }
        if (hasRecommendPlayerStateChange()) {
            iHashCode = (((iHashCode * 37) + 18) * 53) + getRecommendPlayerStateChange().hashCode();
        }
        if (hasFriendDeleteSuccess()) {
            iHashCode = (((iHashCode * 37) + 19) * 53) + getFriendDeleteSuccess().hashCode();
        }
        if (hasPlayerBanned()) {
            iHashCode = (((iHashCode * 37) + 20) * 53) + getPlayerBanned().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.V.ensureFieldAccessorsInitialized(NotificationData.class, b.class);
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
        long j10 = this.messageId_;
        if (j10 != 0) {
            output.writeInt64(1, j10);
        }
        long j11 = this.sendTimestamp_;
        if (j11 != 0) {
            output.writeInt64(2, j11);
        }
        boolean z10 = this.ack_;
        if (z10) {
            output.writeBool(3, z10);
        }
        if (this.fromAccount_ != null) {
            output.writeMessage(4, getFromAccount());
        }
        if (this.dialog_ != null) {
            output.writeMessage(5, getDialog());
        }
        if (this.popWindow_ != null) {
            output.writeMessage(6, getPopWindow());
        }
        if (this.gameInvite_ != null) {
            output.writeMessage(7, getGameInvite());
        }
        if (this.friendChangeState_ != null) {
            output.writeMessage(8, getFriendChangeState());
        }
        if (this.friendPlayState_ != null) {
            output.writeMessage(9, getFriendPlayState());
        }
        if (this.kickNotification_ != null) {
            output.writeMessage(10, getKickNotification());
        }
        if (this.allFriendNotification_ != null) {
            output.writeMessage(11, getAllFriendNotification());
        }
        if (this.chatMsgNotification_ != null) {
            output.writeMessage(12, getChatMsgNotification());
        }
        if (this.friAddReqNotification_ != null) {
            output.writeMessage(13, getFriAddReqNotification());
        }
        if (this.leaveRoomNotification_ != null) {
            output.writeMessage(14, getLeaveRoomNotification());
        }
        if (this.friendAddSuccessNotification_ != null) {
            output.writeMessage(15, getFriendAddSuccessNotification());
        }
        if (this.rejectBattleInviteNotification_ != null) {
            output.writeMessage(16, getRejectBattleInviteNotification());
        }
        if (this.allFrdNotification_ != null) {
            output.writeMessage(17, getAllFrdNotification());
        }
        if (this.recommendPlayerStateChange_ != null) {
            output.writeMessage(18, getRecommendPlayerStateChange());
        }
        if (this.friendDeleteSuccess_ != null) {
            output.writeMessage(19, getFriendDeleteSuccess());
        }
        if (this.playerBanned_ != null) {
            output.writeMessage(20, getPlayerBanned());
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ NotificationData(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(NotificationData prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static NotificationData parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private NotificationData(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static NotificationData parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (NotificationData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static NotificationData parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public NotificationData getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static NotificationData parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private NotificationData() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static NotificationData parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static NotificationData parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private NotificationData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 8:
                            this.messageId_ = codedInputStream.readInt64();
                            continue;
                        case 16:
                            this.sendTimestamp_ = codedInputStream.readInt64();
                            continue;
                        case 24:
                            this.ack_ = codedInputStream.readBool();
                            continue;
                        case 34:
                            AccountInfo accountInfo = this.fromAccount_;
                            AccountInfo.b builder = accountInfo != null ? accountInfo.toBuilder() : null;
                            AccountInfo accountInfo2 = (AccountInfo) codedInputStream.readMessage(AccountInfo.parser(), extensionRegistryLite);
                            this.fromAccount_ = accountInfo2;
                            if (builder != null) {
                                builder.mergeFrom(accountInfo2);
                                this.fromAccount_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 42:
                            DialogNotification dialogNotification = this.dialog_;
                            DialogNotification.b builder2 = dialogNotification != null ? dialogNotification.toBuilder() : null;
                            DialogNotification dialogNotification2 = (DialogNotification) codedInputStream.readMessage(DialogNotification.parser(), extensionRegistryLite);
                            this.dialog_ = dialogNotification2;
                            if (builder2 != null) {
                                builder2.mergeFrom(dialogNotification2);
                                this.dialog_ = builder2.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 50:
                            PopWindowNotification popWindowNotification = this.popWindow_;
                            PopWindowNotification.b builder3 = popWindowNotification != null ? popWindowNotification.toBuilder() : null;
                            PopWindowNotification popWindowNotification2 = (PopWindowNotification) codedInputStream.readMessage(PopWindowNotification.parser(), extensionRegistryLite);
                            this.popWindow_ = popWindowNotification2;
                            if (builder3 != null) {
                                builder3.mergeFrom(popWindowNotification2);
                                this.popWindow_ = builder3.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 58:
                            GameInviteNotification gameInviteNotification = this.gameInvite_;
                            GameInviteNotification.b builder4 = gameInviteNotification != null ? gameInviteNotification.toBuilder() : null;
                            GameInviteNotification gameInviteNotification2 = (GameInviteNotification) codedInputStream.readMessage(GameInviteNotification.parser(), extensionRegistryLite);
                            this.gameInvite_ = gameInviteNotification2;
                            if (builder4 != null) {
                                builder4.mergeFrom(gameInviteNotification2);
                                this.gameInvite_ = builder4.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 66:
                            FriendChangeStateNotification friendChangeStateNotification = this.friendChangeState_;
                            FriendChangeStateNotification.b builder5 = friendChangeStateNotification != null ? friendChangeStateNotification.toBuilder() : null;
                            FriendChangeStateNotification friendChangeStateNotification2 = (FriendChangeStateNotification) codedInputStream.readMessage(FriendChangeStateNotification.parser(), extensionRegistryLite);
                            this.friendChangeState_ = friendChangeStateNotification2;
                            if (builder5 != null) {
                                builder5.mergeFrom(friendChangeStateNotification2);
                                this.friendChangeState_ = builder5.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 74:
                            FriendChangePlayStateNotification friendChangePlayStateNotification = this.friendPlayState_;
                            FriendChangePlayStateNotification.b builder6 = friendChangePlayStateNotification != null ? friendChangePlayStateNotification.toBuilder() : null;
                            FriendChangePlayStateNotification friendChangePlayStateNotification2 = (FriendChangePlayStateNotification) codedInputStream.readMessage(FriendChangePlayStateNotification.parser(), extensionRegistryLite);
                            this.friendPlayState_ = friendChangePlayStateNotification2;
                            if (builder6 != null) {
                                builder6.mergeFrom(friendChangePlayStateNotification2);
                                this.friendPlayState_ = builder6.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 82:
                            KickNotification kickNotification = this.kickNotification_;
                            KickNotification.b builder7 = kickNotification != null ? kickNotification.toBuilder() : null;
                            KickNotification kickNotification2 = (KickNotification) codedInputStream.readMessage(KickNotification.parser(), extensionRegistryLite);
                            this.kickNotification_ = kickNotification2;
                            if (builder7 != null) {
                                builder7.mergeFrom(kickNotification2);
                                this.kickNotification_ = builder7.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 90:
                            AllOnlineFriendNotification allOnlineFriendNotification = this.allFriendNotification_;
                            AllOnlineFriendNotification.b builder8 = allOnlineFriendNotification != null ? allOnlineFriendNotification.toBuilder() : null;
                            AllOnlineFriendNotification allOnlineFriendNotification2 = (AllOnlineFriendNotification) codedInputStream.readMessage(AllOnlineFriendNotification.parser(), extensionRegistryLite);
                            this.allFriendNotification_ = allOnlineFriendNotification2;
                            if (builder8 != null) {
                                builder8.mergeFrom(allOnlineFriendNotification2);
                                this.allFriendNotification_ = builder8.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 98:
                            ChatMessageNotification chatMessageNotification = this.chatMsgNotification_;
                            ChatMessageNotification.b builder9 = chatMessageNotification != null ? chatMessageNotification.toBuilder() : null;
                            ChatMessageNotification chatMessageNotification2 = (ChatMessageNotification) codedInputStream.readMessage(ChatMessageNotification.parser(), extensionRegistryLite);
                            this.chatMsgNotification_ = chatMessageNotification2;
                            if (builder9 != null) {
                                builder9.mergeFrom(chatMessageNotification2);
                                this.chatMsgNotification_ = builder9.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 106:
                            FriendAddReqNotification friendAddReqNotification = this.friAddReqNotification_;
                            FriendAddReqNotification.b builder10 = friendAddReqNotification != null ? friendAddReqNotification.toBuilder() : null;
                            FriendAddReqNotification friendAddReqNotification2 = (FriendAddReqNotification) codedInputStream.readMessage(FriendAddReqNotification.parser(), extensionRegistryLite);
                            this.friAddReqNotification_ = friendAddReqNotification2;
                            if (builder10 != null) {
                                builder10.mergeFrom(friendAddReqNotification2);
                                this.friAddReqNotification_ = builder10.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 114:
                            LeaveRoomNotification leaveRoomNotification = this.leaveRoomNotification_;
                            LeaveRoomNotification.b builder11 = leaveRoomNotification != null ? leaveRoomNotification.toBuilder() : null;
                            LeaveRoomNotification leaveRoomNotification2 = (LeaveRoomNotification) codedInputStream.readMessage(LeaveRoomNotification.parser(), extensionRegistryLite);
                            this.leaveRoomNotification_ = leaveRoomNotification2;
                            if (builder11 != null) {
                                builder11.mergeFrom(leaveRoomNotification2);
                                this.leaveRoomNotification_ = builder11.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 122:
                            FriendAddSuccessNotification friendAddSuccessNotification = this.friendAddSuccessNotification_;
                            FriendAddSuccessNotification.b builder12 = friendAddSuccessNotification != null ? friendAddSuccessNotification.toBuilder() : null;
                            FriendAddSuccessNotification friendAddSuccessNotification2 = (FriendAddSuccessNotification) codedInputStream.readMessage(FriendAddSuccessNotification.parser(), extensionRegistryLite);
                            this.friendAddSuccessNotification_ = friendAddSuccessNotification2;
                            if (builder12 != null) {
                                builder12.mergeFrom(friendAddSuccessNotification2);
                                this.friendAddSuccessNotification_ = builder12.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 130:
                            RejectBattleInviteNotification rejectBattleInviteNotification = this.rejectBattleInviteNotification_;
                            RejectBattleInviteNotification.b builder13 = rejectBattleInviteNotification != null ? rejectBattleInviteNotification.toBuilder() : null;
                            RejectBattleInviteNotification rejectBattleInviteNotification2 = (RejectBattleInviteNotification) codedInputStream.readMessage(RejectBattleInviteNotification.parser(), extensionRegistryLite);
                            this.rejectBattleInviteNotification_ = rejectBattleInviteNotification2;
                            if (builder13 != null) {
                                builder13.mergeFrom(rejectBattleInviteNotification2);
                                this.rejectBattleInviteNotification_ = builder13.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 138:
                            AllFriendNotification allFriendNotification = this.allFrdNotification_;
                            AllFriendNotification.b builder14 = allFriendNotification != null ? allFriendNotification.toBuilder() : null;
                            AllFriendNotification allFriendNotification2 = (AllFriendNotification) codedInputStream.readMessage(AllFriendNotification.parser(), extensionRegistryLite);
                            this.allFrdNotification_ = allFriendNotification2;
                            if (builder14 != null) {
                                builder14.mergeFrom(allFriendNotification2);
                                this.allFrdNotification_ = builder14.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 146:
                            RecommendPlayerStateChangeNotification recommendPlayerStateChangeNotification = this.recommendPlayerStateChange_;
                            RecommendPlayerStateChangeNotification.b builder15 = recommendPlayerStateChangeNotification != null ? recommendPlayerStateChangeNotification.toBuilder() : null;
                            RecommendPlayerStateChangeNotification recommendPlayerStateChangeNotification2 = (RecommendPlayerStateChangeNotification) codedInputStream.readMessage(RecommendPlayerStateChangeNotification.parser(), extensionRegistryLite);
                            this.recommendPlayerStateChange_ = recommendPlayerStateChangeNotification2;
                            if (builder15 != null) {
                                builder15.mergeFrom(recommendPlayerStateChangeNotification2);
                                this.recommendPlayerStateChange_ = builder15.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 154:
                            FriendDeleteSuccessNotification friendDeleteSuccessNotification = this.friendDeleteSuccess_;
                            FriendDeleteSuccessNotification.b builder16 = friendDeleteSuccessNotification != null ? friendDeleteSuccessNotification.toBuilder() : null;
                            FriendDeleteSuccessNotification friendDeleteSuccessNotification2 = (FriendDeleteSuccessNotification) codedInputStream.readMessage(FriendDeleteSuccessNotification.parser(), extensionRegistryLite);
                            this.friendDeleteSuccess_ = friendDeleteSuccessNotification2;
                            if (builder16 != null) {
                                builder16.mergeFrom(friendDeleteSuccessNotification2);
                                this.friendDeleteSuccess_ = builder16.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 162:
                            PlayerBannedNotification playerBannedNotification = this.playerBanned_;
                            PlayerBannedNotification.b builder17 = playerBannedNotification != null ? playerBannedNotification.toBuilder() : null;
                            PlayerBannedNotification playerBannedNotification2 = (PlayerBannedNotification) codedInputStream.readMessage(PlayerBannedNotification.parser(), extensionRegistryLite);
                            this.playerBanned_ = playerBannedNotification2;
                            if (builder17 != null) {
                                builder17.mergeFrom(playerBannedNotification2);
                                this.playerBanned_ = builder17.buildPartial();
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

    public static NotificationData parseFrom(InputStream input) throws IOException {
        return (NotificationData) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static NotificationData parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (NotificationData) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static NotificationData parseFrom(CodedInputStream input) throws IOException {
        return (NotificationData) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static NotificationData parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (NotificationData) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
