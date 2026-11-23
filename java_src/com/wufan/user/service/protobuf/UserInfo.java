package com.wufan.user.service.protobuf;

import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
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
import com.google.protobuf.RepeatedFieldBuilderV3;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class UserInfo extends GeneratedMessageV3 implements h {
    public static final int ACCOUNTTYPE_FIELD_NUMBER = 13;
    public static final int ACCOUNT_FIELD_NUMBER = 2;
    public static final int APPLEID_FIELD_NUMBER = 12;
    public static final int AVATARSRC_FIELD_NUMBER = 6;
    public static final int EXP_FIELD_NUMBER = 9;
    public static final int GAMELISTPERMISSION_FIELD_NUMBER = 28;
    public static final int GAMETIME_FIELD_NUMBER = 31;
    public static final int GENDER_FIELD_NUMBER = 7;
    public static final int ISANCHOR_FIELD_NUMBER = 18;
    public static final int ISBINDQQ_FIELD_NUMBER = 24;
    public static final int ISBINDWB_FIELD_NUMBER = 22;
    public static final int ISBINDWX_FIELD_NUMBER = 23;
    public static final int ISREALNAME_FIELD_NUMBER = 20;
    public static final int LEVEL_FIELD_NUMBER = 8;
    public static final int LIVETOTALCHARM_FIELD_NUMBER = 17;
    public static final int MEMBERTIME_FIELD_NUMBER = 30;
    public static final int MEMBERTITLE_FIELD_NUMBER = 19;
    public static final int MOBILE_FIELD_NUMBER = 10;
    public static final int NEWMEMBERINFO_FIELD_NUMBER = 32;
    public static final int NICKNAME_FIELD_NUMBER = 29;
    public static final int PAPAMONEY_FIELD_NUMBER = 4;
    public static final int PAYTOPTIP_FIELD_NUMBER = 21;
    public static final int PWDSETUP_FIELD_NUMBER = 3;
    public static final int REGISTERTIME_FIELD_NUMBER = 5;
    public static final int SECRETKEY_FIELD_NUMBER = 27;
    public static final int SURPLUSEXP_FIELD_NUMBER = 11;
    public static final int SVIPLEVEL_FIELD_NUMBER = 15;
    public static final int TOKEN_FIELD_NUMBER = 26;
    public static final int UID_FIELD_NUMBER = 1;
    public static final int VIPEXPTIME_FIELD_NUMBER = 16;
    public static final int VIPGAME_FIELD_NUMBER = 25;
    public static final int VIPLEVEL_FIELD_NUMBER = 14;
    private static final long serialVersionUID = 0;
    private int accountType_;
    private volatile Object account_;
    private volatile Object appleId_;
    private volatile Object avatarSrc_;
    private int bitField0_;
    private int exp_;
    private List<GameListPermission> gameListPermission_;
    private long gameTime_;
    private int gender_;
    private int isAnchor_;
    private int isBindQq_;
    private int isBindWb_;
    private int isBindWx_;
    private int isRealName_;
    private int level_;
    private int liveTotalCharm_;
    private long memberTime_;
    private MemberTitleInfo memberTitle_;
    private byte memoizedIsInitialized;
    private volatile Object mobile_;
    private NewMemberInfo newMemberInfo_;
    private volatile Object nickname_;
    private long papaMoney_;
    private volatile Object payTopTip_;
    private int pwdSetUp_;
    private long registerTime_;
    private int sVIPLevel_;
    private volatile Object secretKey_;
    private int surplusExp_;
    private volatile Object token_;
    private int uid_;
    private long vipExpTime_;
    private int vipGame_;
    private int vipLevel_;
    private static final UserInfo DEFAULT_INSTANCE = new UserInfo();
    private static final Parser<UserInfo> PARSER = new a();

    class a extends AbstractParser<UserInfo> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new UserInfo(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements h {
        private int accountType_;
        private Object account_;
        private Object appleId_;
        private Object avatarSrc_;
        private int bitField0_;
        private int exp_;
        private RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> gameListPermissionBuilder_;
        private List<GameListPermission> gameListPermission_;
        private long gameTime_;
        private int gender_;
        private int isAnchor_;
        private int isBindQq_;
        private int isBindWb_;
        private int isBindWx_;
        private int isRealName_;
        private int level_;
        private int liveTotalCharm_;
        private long memberTime_;
        private SingleFieldBuilderV3<MemberTitleInfo, MemberTitleInfo.b, com.wufan.user.service.protobuf.b> memberTitleBuilder_;
        private MemberTitleInfo memberTitle_;
        private Object mobile_;
        private SingleFieldBuilderV3<NewMemberInfo, NewMemberInfo.b, e> newMemberInfoBuilder_;
        private NewMemberInfo newMemberInfo_;
        private Object nickname_;
        private long papaMoney_;
        private Object payTopTip_;
        private int pwdSetUp_;
        private long registerTime_;
        private int sVIPLevel_;
        private Object secretKey_;
        private int surplusExp_;
        private Object token_;
        private int uid_;
        private long vipExpTime_;
        private int vipGame_;
        private int vipLevel_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private void ensureGameListPermissionIsMutable() {
            if ((this.bitField0_ & C.ENCODING_PCM_MU_LAW) == 0) {
                this.gameListPermission_ = new ArrayList(this.gameListPermission_);
                this.bitField0_ |= C.ENCODING_PCM_MU_LAW;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return c.f88126e;
        }

        private RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> getGameListPermissionFieldBuilder() {
            if (this.gameListPermissionBuilder_ == null) {
                this.gameListPermissionBuilder_ = new RepeatedFieldBuilderV3<>(this.gameListPermission_, (this.bitField0_ & C.ENCODING_PCM_MU_LAW) != 0, getParentForChildren(), isClean());
                this.gameListPermission_ = null;
            }
            return this.gameListPermissionBuilder_;
        }

        private SingleFieldBuilderV3<MemberTitleInfo, MemberTitleInfo.b, com.wufan.user.service.protobuf.b> getMemberTitleFieldBuilder() {
            if (this.memberTitleBuilder_ == null) {
                this.memberTitleBuilder_ = new SingleFieldBuilderV3<>(getMemberTitle(), getParentForChildren(), isClean());
                this.memberTitle_ = null;
            }
            return this.memberTitleBuilder_;
        }

        private SingleFieldBuilderV3<NewMemberInfo, NewMemberInfo.b, e> getNewMemberInfoFieldBuilder() {
            if (this.newMemberInfoBuilder_ == null) {
                this.newMemberInfoBuilder_ = new SingleFieldBuilderV3<>(getNewMemberInfo(), getParentForChildren(), isClean());
                this.newMemberInfo_ = null;
            }
            return this.newMemberInfoBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getGameListPermissionFieldBuilder();
            }
        }

        public b addAllGameListPermission(Iterable<? extends GameListPermission> values) {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureGameListPermissionIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.gameListPermission_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public b addGameListPermission(GameListPermission value) {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureGameListPermissionIsMutable();
                this.gameListPermission_.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public GameListPermission.b addGameListPermissionBuilder() {
            return (GameListPermission.b) getGameListPermissionFieldBuilder().addBuilder(GameListPermission.getDefaultInstance());
        }

        public b clearAccount() {
            this.account_ = UserInfo.getDefaultInstance().getAccount();
            onChanged();
            return this;
        }

        public b clearAccountType() {
            this.accountType_ = 0;
            onChanged();
            return this;
        }

        public b clearAppleId() {
            this.appleId_ = UserInfo.getDefaultInstance().getAppleId();
            onChanged();
            return this;
        }

        public b clearAvatarSrc() {
            this.avatarSrc_ = UserInfo.getDefaultInstance().getAvatarSrc();
            onChanged();
            return this;
        }

        public b clearExp() {
            this.exp_ = 0;
            onChanged();
            return this;
        }

        public b clearGameListPermission() {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.gameListPermission_ = Collections.emptyList();
                this.bitField0_ &= -268435457;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public b clearGameTime() {
            this.gameTime_ = 0L;
            onChanged();
            return this;
        }

        public b clearGender() {
            this.gender_ = 0;
            onChanged();
            return this;
        }

        public b clearIsAnchor() {
            this.isAnchor_ = 0;
            onChanged();
            return this;
        }

        public b clearIsBindQq() {
            this.isBindQq_ = 0;
            onChanged();
            return this;
        }

        public b clearIsBindWb() {
            this.isBindWb_ = 0;
            onChanged();
            return this;
        }

        public b clearIsBindWx() {
            this.isBindWx_ = 0;
            onChanged();
            return this;
        }

        public b clearIsRealName() {
            this.isRealName_ = 0;
            onChanged();
            return this;
        }

        public b clearLevel() {
            this.level_ = 0;
            onChanged();
            return this;
        }

        public b clearLiveTotalCharm() {
            this.liveTotalCharm_ = 0;
            onChanged();
            return this;
        }

        public b clearMemberTime() {
            this.memberTime_ = 0L;
            onChanged();
            return this;
        }

        public b clearMemberTitle() {
            if (this.memberTitleBuilder_ == null) {
                this.memberTitle_ = null;
                onChanged();
            } else {
                this.memberTitle_ = null;
                this.memberTitleBuilder_ = null;
            }
            return this;
        }

        public b clearMobile() {
            this.mobile_ = UserInfo.getDefaultInstance().getMobile();
            onChanged();
            return this;
        }

        public b clearNewMemberInfo() {
            if (this.newMemberInfoBuilder_ == null) {
                this.newMemberInfo_ = null;
                onChanged();
            } else {
                this.newMemberInfo_ = null;
                this.newMemberInfoBuilder_ = null;
            }
            return this;
        }

        public b clearNickname() {
            this.nickname_ = UserInfo.getDefaultInstance().getNickname();
            onChanged();
            return this;
        }

        public b clearPapaMoney() {
            this.papaMoney_ = 0L;
            onChanged();
            return this;
        }

        public b clearPayTopTip() {
            this.payTopTip_ = UserInfo.getDefaultInstance().getPayTopTip();
            onChanged();
            return this;
        }

        public b clearPwdSetUp() {
            this.pwdSetUp_ = 0;
            onChanged();
            return this;
        }

        public b clearRegisterTime() {
            this.registerTime_ = 0L;
            onChanged();
            return this;
        }

        public b clearSVIPLevel() {
            this.sVIPLevel_ = 0;
            onChanged();
            return this;
        }

        public b clearSecretKey() {
            this.secretKey_ = UserInfo.getDefaultInstance().getSecretKey();
            onChanged();
            return this;
        }

        public b clearSurplusExp() {
            this.surplusExp_ = 0;
            onChanged();
            return this;
        }

        public b clearToken() {
            this.token_ = UserInfo.getDefaultInstance().getToken();
            onChanged();
            return this;
        }

        public b clearUid() {
            this.uid_ = 0;
            onChanged();
            return this;
        }

        public b clearVipExpTime() {
            this.vipExpTime_ = 0L;
            onChanged();
            return this;
        }

        public b clearVipGame() {
            this.vipGame_ = 0;
            onChanged();
            return this;
        }

        public b clearVipLevel() {
            this.vipLevel_ = 0;
            onChanged();
            return this;
        }

        @Override // com.wufan.user.service.protobuf.h
        public String getAccount() {
            Object obj = this.account_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.account_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public ByteString getAccountBytes() {
            Object obj = this.account_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.account_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getAccountType() {
            return this.accountType_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public String getAppleId() {
            Object obj = this.appleId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appleId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public ByteString getAppleIdBytes() {
            Object obj = this.appleId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appleId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public String getAvatarSrc() {
            Object obj = this.avatarSrc_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.avatarSrc_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public ByteString getAvatarSrcBytes() {
            Object obj = this.avatarSrc_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.avatarSrc_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return c.f88126e;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getExp() {
            return this.exp_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public GameListPermission getGameListPermission(int index) {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            return repeatedFieldBuilderV3 == null ? this.gameListPermission_.get(index) : (GameListPermission) repeatedFieldBuilderV3.getMessage(index);
        }

        public GameListPermission.b getGameListPermissionBuilder(int index) {
            return (GameListPermission.b) getGameListPermissionFieldBuilder().getBuilder(index);
        }

        public List<GameListPermission.b> getGameListPermissionBuilderList() {
            return getGameListPermissionFieldBuilder().getBuilderList();
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getGameListPermissionCount() {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            return repeatedFieldBuilderV3 == null ? this.gameListPermission_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.wufan.user.service.protobuf.h
        public List<GameListPermission> getGameListPermissionList() {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.gameListPermission_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.wufan.user.service.protobuf.h
        public com.wufan.user.service.protobuf.a getGameListPermissionOrBuilder(int index) {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            return repeatedFieldBuilderV3 == null ? this.gameListPermission_.get(index) : (com.wufan.user.service.protobuf.a) repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.wufan.user.service.protobuf.h
        public List<? extends com.wufan.user.service.protobuf.a> getGameListPermissionOrBuilderList() {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.gameListPermission_);
        }

        @Override // com.wufan.user.service.protobuf.h
        public long getGameTime() {
            return this.gameTime_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getGender() {
            return this.gender_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getIsAnchor() {
            return this.isAnchor_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getIsBindQq() {
            return this.isBindQq_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getIsBindWb() {
            return this.isBindWb_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getIsBindWx() {
            return this.isBindWx_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getIsRealName() {
            return this.isRealName_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getLevel() {
            return this.level_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getLiveTotalCharm() {
            return this.liveTotalCharm_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public long getMemberTime() {
            return this.memberTime_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public MemberTitleInfo getMemberTitle() {
            SingleFieldBuilderV3<MemberTitleInfo, MemberTitleInfo.b, com.wufan.user.service.protobuf.b> singleFieldBuilderV3 = this.memberTitleBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (MemberTitleInfo) singleFieldBuilderV3.getMessage();
            }
            MemberTitleInfo memberTitleInfo = this.memberTitle_;
            return memberTitleInfo == null ? MemberTitleInfo.getDefaultInstance() : memberTitleInfo;
        }

        public MemberTitleInfo.b getMemberTitleBuilder() {
            onChanged();
            return (MemberTitleInfo.b) getMemberTitleFieldBuilder().getBuilder();
        }

        @Override // com.wufan.user.service.protobuf.h
        public com.wufan.user.service.protobuf.b getMemberTitleOrBuilder() {
            SingleFieldBuilderV3<MemberTitleInfo, MemberTitleInfo.b, com.wufan.user.service.protobuf.b> singleFieldBuilderV3 = this.memberTitleBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (com.wufan.user.service.protobuf.b) singleFieldBuilderV3.getMessageOrBuilder();
            }
            MemberTitleInfo memberTitleInfo = this.memberTitle_;
            return memberTitleInfo == null ? MemberTitleInfo.getDefaultInstance() : memberTitleInfo;
        }

        @Override // com.wufan.user.service.protobuf.h
        public String getMobile() {
            Object obj = this.mobile_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.mobile_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public ByteString getMobileBytes() {
            Object obj = this.mobile_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.mobile_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public NewMemberInfo getNewMemberInfo() {
            SingleFieldBuilderV3<NewMemberInfo, NewMemberInfo.b, e> singleFieldBuilderV3 = this.newMemberInfoBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (NewMemberInfo) singleFieldBuilderV3.getMessage();
            }
            NewMemberInfo newMemberInfo = this.newMemberInfo_;
            return newMemberInfo == null ? NewMemberInfo.getDefaultInstance() : newMemberInfo;
        }

        public NewMemberInfo.b getNewMemberInfoBuilder() {
            onChanged();
            return (NewMemberInfo.b) getNewMemberInfoFieldBuilder().getBuilder();
        }

        @Override // com.wufan.user.service.protobuf.h
        public e getNewMemberInfoOrBuilder() {
            SingleFieldBuilderV3<NewMemberInfo, NewMemberInfo.b, e> singleFieldBuilderV3 = this.newMemberInfoBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (e) singleFieldBuilderV3.getMessageOrBuilder();
            }
            NewMemberInfo newMemberInfo = this.newMemberInfo_;
            return newMemberInfo == null ? NewMemberInfo.getDefaultInstance() : newMemberInfo;
        }

        @Override // com.wufan.user.service.protobuf.h
        public String getNickname() {
            Object obj = this.nickname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.nickname_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public ByteString getNicknameBytes() {
            Object obj = this.nickname_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nickname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public long getPapaMoney() {
            return this.papaMoney_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public String getPayTopTip() {
            Object obj = this.payTopTip_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.payTopTip_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public ByteString getPayTopTipBytes() {
            Object obj = this.payTopTip_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.payTopTip_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getPwdSetUp() {
            return this.pwdSetUp_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public long getRegisterTime() {
            return this.registerTime_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getSVIPLevel() {
            return this.sVIPLevel_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public String getSecretKey() {
            Object obj = this.secretKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.secretKey_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public ByteString getSecretKeyBytes() {
            Object obj = this.secretKey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.secretKey_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getSurplusExp() {
            return this.surplusExp_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getUid() {
            return this.uid_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public long getVipExpTime() {
            return this.vipExpTime_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getVipGame() {
            return this.vipGame_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public int getVipLevel() {
            return this.vipLevel_;
        }

        @Override // com.wufan.user.service.protobuf.h
        public boolean hasMemberTitle() {
            return (this.memberTitleBuilder_ == null && this.memberTitle_ == null) ? false : true;
        }

        @Override // com.wufan.user.service.protobuf.h
        public boolean hasNewMemberInfo() {
            return (this.newMemberInfoBuilder_ == null && this.newMemberInfo_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return c.f88127f.ensureFieldAccessorsInitialized(UserInfo.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b mergeMemberTitle(MemberTitleInfo value) {
            SingleFieldBuilderV3<MemberTitleInfo, MemberTitleInfo.b, com.wufan.user.service.protobuf.b> singleFieldBuilderV3 = this.memberTitleBuilder_;
            if (singleFieldBuilderV3 == null) {
                MemberTitleInfo memberTitleInfo = this.memberTitle_;
                if (memberTitleInfo != null) {
                    this.memberTitle_ = MemberTitleInfo.newBuilder(memberTitleInfo).mergeFrom(value).buildPartial();
                } else {
                    this.memberTitle_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeNewMemberInfo(NewMemberInfo value) {
            SingleFieldBuilderV3<NewMemberInfo, NewMemberInfo.b, e> singleFieldBuilderV3 = this.newMemberInfoBuilder_;
            if (singleFieldBuilderV3 == null) {
                NewMemberInfo newMemberInfo = this.newMemberInfo_;
                if (newMemberInfo != null) {
                    this.newMemberInfo_ = NewMemberInfo.newBuilder(newMemberInfo).mergeFrom(value).buildPartial();
                } else {
                    this.newMemberInfo_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b removeGameListPermission(int index) {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureGameListPermissionIsMutable();
                this.gameListPermission_.remove(index);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(index);
            }
            return this;
        }

        public b setAccount(String value) {
            value.getClass();
            this.account_ = value;
            onChanged();
            return this;
        }

        public b setAccountBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.account_ = value;
            onChanged();
            return this;
        }

        public b setAccountType(int value) {
            this.accountType_ = value;
            onChanged();
            return this;
        }

        public b setAppleId(String value) {
            value.getClass();
            this.appleId_ = value;
            onChanged();
            return this;
        }

        public b setAppleIdBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.appleId_ = value;
            onChanged();
            return this;
        }

        public b setAvatarSrc(String value) {
            value.getClass();
            this.avatarSrc_ = value;
            onChanged();
            return this;
        }

        public b setAvatarSrcBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.avatarSrc_ = value;
            onChanged();
            return this;
        }

        public b setExp(int value) {
            this.exp_ = value;
            onChanged();
            return this;
        }

        public b setGameListPermission(int index, GameListPermission value) {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureGameListPermissionIsMutable();
                this.gameListPermission_.set(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, value);
            }
            return this;
        }

        public b setGameTime(long value) {
            this.gameTime_ = value;
            onChanged();
            return this;
        }

        public b setGender(int value) {
            this.gender_ = value;
            onChanged();
            return this;
        }

        public b setIsAnchor(int value) {
            this.isAnchor_ = value;
            onChanged();
            return this;
        }

        public b setIsBindQq(int value) {
            this.isBindQq_ = value;
            onChanged();
            return this;
        }

        public b setIsBindWb(int value) {
            this.isBindWb_ = value;
            onChanged();
            return this;
        }

        public b setIsBindWx(int value) {
            this.isBindWx_ = value;
            onChanged();
            return this;
        }

        public b setIsRealName(int value) {
            this.isRealName_ = value;
            onChanged();
            return this;
        }

        public b setLevel(int value) {
            this.level_ = value;
            onChanged();
            return this;
        }

        public b setLiveTotalCharm(int value) {
            this.liveTotalCharm_ = value;
            onChanged();
            return this;
        }

        public b setMemberTime(long value) {
            this.memberTime_ = value;
            onChanged();
            return this;
        }

        public b setMemberTitle(MemberTitleInfo value) {
            SingleFieldBuilderV3<MemberTitleInfo, MemberTitleInfo.b, com.wufan.user.service.protobuf.b> singleFieldBuilderV3 = this.memberTitleBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.memberTitle_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setMobile(String value) {
            value.getClass();
            this.mobile_ = value;
            onChanged();
            return this;
        }

        public b setMobileBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.mobile_ = value;
            onChanged();
            return this;
        }

        public b setNewMemberInfo(NewMemberInfo value) {
            SingleFieldBuilderV3<NewMemberInfo, NewMemberInfo.b, e> singleFieldBuilderV3 = this.newMemberInfoBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.newMemberInfo_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setNickname(String value) {
            value.getClass();
            this.nickname_ = value;
            onChanged();
            return this;
        }

        public b setNicknameBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.nickname_ = value;
            onChanged();
            return this;
        }

        public b setPapaMoney(long value) {
            this.papaMoney_ = value;
            onChanged();
            return this;
        }

        public b setPayTopTip(String value) {
            value.getClass();
            this.payTopTip_ = value;
            onChanged();
            return this;
        }

        public b setPayTopTipBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.payTopTip_ = value;
            onChanged();
            return this;
        }

        public b setPwdSetUp(int value) {
            this.pwdSetUp_ = value;
            onChanged();
            return this;
        }

        public b setRegisterTime(long value) {
            this.registerTime_ = value;
            onChanged();
            return this;
        }

        public b setSVIPLevel(int value) {
            this.sVIPLevel_ = value;
            onChanged();
            return this;
        }

        public b setSecretKey(String value) {
            value.getClass();
            this.secretKey_ = value;
            onChanged();
            return this;
        }

        public b setSecretKeyBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.secretKey_ = value;
            onChanged();
            return this;
        }

        public b setSurplusExp(int value) {
            this.surplusExp_ = value;
            onChanged();
            return this;
        }

        public b setToken(String value) {
            value.getClass();
            this.token_ = value;
            onChanged();
            return this;
        }

        public b setTokenBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.token_ = value;
            onChanged();
            return this;
        }

        public b setUid(int value) {
            this.uid_ = value;
            onChanged();
            return this;
        }

        public b setVipExpTime(long value) {
            this.vipExpTime_ = value;
            onChanged();
            return this;
        }

        public b setVipGame(int value) {
            this.vipGame_ = value;
            onChanged();
            return this;
        }

        public b setVipLevel(int value) {
            this.vipLevel_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.account_ = "";
            this.nickname_ = "";
            this.avatarSrc_ = "";
            this.mobile_ = "";
            this.appleId_ = "";
            this.payTopTip_ = "";
            this.token_ = "";
            this.secretKey_ = "";
            this.gameListPermission_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public UserInfo build() {
            UserInfo userInfoBuildPartial = buildPartial();
            if (userInfoBuildPartial.isInitialized()) {
                return userInfoBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) userInfoBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public UserInfo buildPartial() {
            UserInfo userInfo = new UserInfo(this, (a) null);
            userInfo.uid_ = this.uid_;
            userInfo.account_ = this.account_;
            userInfo.nickname_ = this.nickname_;
            userInfo.pwdSetUp_ = this.pwdSetUp_;
            userInfo.papaMoney_ = this.papaMoney_;
            userInfo.registerTime_ = this.registerTime_;
            userInfo.avatarSrc_ = this.avatarSrc_;
            userInfo.gender_ = this.gender_;
            userInfo.level_ = this.level_;
            userInfo.exp_ = this.exp_;
            userInfo.mobile_ = this.mobile_;
            userInfo.surplusExp_ = this.surplusExp_;
            userInfo.appleId_ = this.appleId_;
            userInfo.accountType_ = this.accountType_;
            userInfo.vipLevel_ = this.vipLevel_;
            userInfo.sVIPLevel_ = this.sVIPLevel_;
            userInfo.vipExpTime_ = this.vipExpTime_;
            userInfo.liveTotalCharm_ = this.liveTotalCharm_;
            userInfo.isAnchor_ = this.isAnchor_;
            SingleFieldBuilderV3<MemberTitleInfo, MemberTitleInfo.b, com.wufan.user.service.protobuf.b> singleFieldBuilderV3 = this.memberTitleBuilder_;
            if (singleFieldBuilderV3 == null) {
                userInfo.memberTitle_ = this.memberTitle_;
            } else {
                userInfo.memberTitle_ = (MemberTitleInfo) singleFieldBuilderV3.build();
            }
            userInfo.isRealName_ = this.isRealName_;
            userInfo.payTopTip_ = this.payTopTip_;
            userInfo.isBindWb_ = this.isBindWb_;
            userInfo.isBindWx_ = this.isBindWx_;
            userInfo.isBindQq_ = this.isBindQq_;
            userInfo.vipGame_ = this.vipGame_;
            userInfo.token_ = this.token_;
            userInfo.secretKey_ = this.secretKey_;
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                userInfo.gameListPermission_ = repeatedFieldBuilderV3.build();
            } else {
                if ((this.bitField0_ & C.ENCODING_PCM_MU_LAW) != 0) {
                    this.gameListPermission_ = Collections.unmodifiableList(this.gameListPermission_);
                    this.bitField0_ &= -268435457;
                }
                userInfo.gameListPermission_ = this.gameListPermission_;
            }
            userInfo.memberTime_ = this.memberTime_;
            userInfo.gameTime_ = this.gameTime_;
            SingleFieldBuilderV3<NewMemberInfo, NewMemberInfo.b, e> singleFieldBuilderV4 = this.newMemberInfoBuilder_;
            if (singleFieldBuilderV4 == null) {
                userInfo.newMemberInfo_ = this.newMemberInfo_;
            } else {
                userInfo.newMemberInfo_ = (NewMemberInfo) singleFieldBuilderV4.build();
            }
            userInfo.bitField0_ = 0;
            onBuilt();
            return userInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public UserInfo getDefaultInstanceForType() {
            return UserInfo.getDefaultInstance();
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

        public GameListPermission.b addGameListPermissionBuilder(int index) {
            return (GameListPermission.b) getGameListPermissionFieldBuilder().addBuilder(index, GameListPermission.getDefaultInstance());
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
            this.uid_ = 0;
            this.account_ = "";
            this.nickname_ = "";
            this.pwdSetUp_ = 0;
            this.papaMoney_ = 0L;
            this.registerTime_ = 0L;
            this.avatarSrc_ = "";
            this.gender_ = 0;
            this.level_ = 0;
            this.exp_ = 0;
            this.mobile_ = "";
            this.surplusExp_ = 0;
            this.appleId_ = "";
            this.accountType_ = 0;
            this.vipLevel_ = 0;
            this.sVIPLevel_ = 0;
            this.vipExpTime_ = 0L;
            this.liveTotalCharm_ = 0;
            this.isAnchor_ = 0;
            if (this.memberTitleBuilder_ == null) {
                this.memberTitle_ = null;
            } else {
                this.memberTitle_ = null;
                this.memberTitleBuilder_ = null;
            }
            this.isRealName_ = 0;
            this.payTopTip_ = "";
            this.isBindWb_ = 0;
            this.isBindWx_ = 0;
            this.isBindQq_ = 0;
            this.vipGame_ = 0;
            this.token_ = "";
            this.secretKey_ = "";
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.gameListPermission_ = Collections.emptyList();
                this.bitField0_ &= -268435457;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            this.memberTime_ = 0L;
            this.gameTime_ = 0L;
            if (this.newMemberInfoBuilder_ == null) {
                this.newMemberInfo_ = null;
            } else {
                this.newMemberInfo_ = null;
                this.newMemberInfoBuilder_ = null;
            }
            return this;
        }

        public b setMemberTitle(MemberTitleInfo.b builderForValue) {
            SingleFieldBuilderV3<MemberTitleInfo, MemberTitleInfo.b, com.wufan.user.service.protobuf.b> singleFieldBuilderV3 = this.memberTitleBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.memberTitle_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setNewMemberInfo(NewMemberInfo.b builderForValue) {
            SingleFieldBuilderV3<NewMemberInfo, NewMemberInfo.b, e> singleFieldBuilderV3 = this.newMemberInfoBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.newMemberInfo_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b addGameListPermission(int index, GameListPermission value) {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureGameListPermissionIsMutable();
                this.gameListPermission_.add(index, value);
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
            if (other instanceof UserInfo) {
                return mergeFrom((UserInfo) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b setGameListPermission(int index, GameListPermission.b builderForValue) {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureGameListPermissionIsMutable();
                this.gameListPermission_.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public b mergeFrom(UserInfo other) {
            if (other == UserInfo.getDefaultInstance()) {
                return this;
            }
            if (other.getUid() != 0) {
                setUid(other.getUid());
            }
            if (!other.getAccount().isEmpty()) {
                this.account_ = other.account_;
                onChanged();
            }
            if (!other.getNickname().isEmpty()) {
                this.nickname_ = other.nickname_;
                onChanged();
            }
            if (other.getPwdSetUp() != 0) {
                setPwdSetUp(other.getPwdSetUp());
            }
            if (other.getPapaMoney() != 0) {
                setPapaMoney(other.getPapaMoney());
            }
            if (other.getRegisterTime() != 0) {
                setRegisterTime(other.getRegisterTime());
            }
            if (!other.getAvatarSrc().isEmpty()) {
                this.avatarSrc_ = other.avatarSrc_;
                onChanged();
            }
            if (other.getGender() != 0) {
                setGender(other.getGender());
            }
            if (other.getLevel() != 0) {
                setLevel(other.getLevel());
            }
            if (other.getExp() != 0) {
                setExp(other.getExp());
            }
            if (!other.getMobile().isEmpty()) {
                this.mobile_ = other.mobile_;
                onChanged();
            }
            if (other.getSurplusExp() != 0) {
                setSurplusExp(other.getSurplusExp());
            }
            if (!other.getAppleId().isEmpty()) {
                this.appleId_ = other.appleId_;
                onChanged();
            }
            if (other.getAccountType() != 0) {
                setAccountType(other.getAccountType());
            }
            if (other.getVipLevel() != 0) {
                setVipLevel(other.getVipLevel());
            }
            if (other.getSVIPLevel() != 0) {
                setSVIPLevel(other.getSVIPLevel());
            }
            if (other.getVipExpTime() != 0) {
                setVipExpTime(other.getVipExpTime());
            }
            if (other.getLiveTotalCharm() != 0) {
                setLiveTotalCharm(other.getLiveTotalCharm());
            }
            if (other.getIsAnchor() != 0) {
                setIsAnchor(other.getIsAnchor());
            }
            if (other.hasMemberTitle()) {
                mergeMemberTitle(other.getMemberTitle());
            }
            if (other.getIsRealName() != 0) {
                setIsRealName(other.getIsRealName());
            }
            if (!other.getPayTopTip().isEmpty()) {
                this.payTopTip_ = other.payTopTip_;
                onChanged();
            }
            if (other.getIsBindWb() != 0) {
                setIsBindWb(other.getIsBindWb());
            }
            if (other.getIsBindWx() != 0) {
                setIsBindWx(other.getIsBindWx());
            }
            if (other.getIsBindQq() != 0) {
                setIsBindQq(other.getIsBindQq());
            }
            if (other.getVipGame() != 0) {
                setVipGame(other.getVipGame());
            }
            if (!other.getToken().isEmpty()) {
                this.token_ = other.token_;
                onChanged();
            }
            if (!other.getSecretKey().isEmpty()) {
                this.secretKey_ = other.secretKey_;
                onChanged();
            }
            if (this.gameListPermissionBuilder_ == null) {
                if (!other.gameListPermission_.isEmpty()) {
                    if (this.gameListPermission_.isEmpty()) {
                        this.gameListPermission_ = other.gameListPermission_;
                        this.bitField0_ &= -268435457;
                    } else {
                        ensureGameListPermissionIsMutable();
                        this.gameListPermission_.addAll(other.gameListPermission_);
                    }
                    onChanged();
                }
            } else if (!other.gameListPermission_.isEmpty()) {
                if (!this.gameListPermissionBuilder_.isEmpty()) {
                    this.gameListPermissionBuilder_.addAllMessages(other.gameListPermission_);
                } else {
                    this.gameListPermissionBuilder_.dispose();
                    this.gameListPermissionBuilder_ = null;
                    this.gameListPermission_ = other.gameListPermission_;
                    this.bitField0_ = (-268435457) & this.bitField0_;
                    this.gameListPermissionBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getGameListPermissionFieldBuilder() : null;
                }
            }
            if (other.getMemberTime() != 0) {
                setMemberTime(other.getMemberTime());
            }
            if (other.getGameTime() != 0) {
                setGameTime(other.getGameTime());
            }
            if (other.hasNewMemberInfo()) {
                mergeNewMemberInfo(other.getNewMemberInfo());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        public b addGameListPermission(GameListPermission.b builderForValue) {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureGameListPermissionIsMutable();
                this.gameListPermission_.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.account_ = "";
            this.nickname_ = "";
            this.avatarSrc_ = "";
            this.mobile_ = "";
            this.appleId_ = "";
            this.payTopTip_ = "";
            this.token_ = "";
            this.secretKey_ = "";
            this.gameListPermission_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        public b addGameListPermission(int index, GameListPermission.b builderForValue) {
            RepeatedFieldBuilderV3<GameListPermission, GameListPermission.b, com.wufan.user.service.protobuf.a> repeatedFieldBuilderV3 = this.gameListPermissionBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureGameListPermissionIsMutable();
                this.gameListPermission_.add(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
            }
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            UserInfo userInfo = null;
            try {
                try {
                    UserInfo userInfo2 = (UserInfo) UserInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (userInfo2 != null) {
                        mergeFrom(userInfo2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    UserInfo userInfo3 = (UserInfo) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        userInfo = userInfo3;
                        if (userInfo != null) {
                            mergeFrom(userInfo);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (userInfo != null) {
                    mergeFrom(userInfo);
                }
                throw th;
            }
        }
    }

    /* synthetic */ UserInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static UserInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return c.f88126e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UserInfo parseDelimitedFrom(InputStream input) throws IOException {
        return (UserInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static UserInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<UserInfo> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UserInfo)) {
            return super.equals(obj);
        }
        UserInfo userInfo = (UserInfo) obj;
        if (getUid() != userInfo.getUid() || !getAccount().equals(userInfo.getAccount()) || !getNickname().equals(userInfo.getNickname()) || getPwdSetUp() != userInfo.getPwdSetUp() || getPapaMoney() != userInfo.getPapaMoney() || getRegisterTime() != userInfo.getRegisterTime() || !getAvatarSrc().equals(userInfo.getAvatarSrc()) || getGender() != userInfo.getGender() || getLevel() != userInfo.getLevel() || getExp() != userInfo.getExp() || !getMobile().equals(userInfo.getMobile()) || getSurplusExp() != userInfo.getSurplusExp() || !getAppleId().equals(userInfo.getAppleId()) || getAccountType() != userInfo.getAccountType() || getVipLevel() != userInfo.getVipLevel() || getSVIPLevel() != userInfo.getSVIPLevel() || getVipExpTime() != userInfo.getVipExpTime() || getLiveTotalCharm() != userInfo.getLiveTotalCharm() || getIsAnchor() != userInfo.getIsAnchor() || hasMemberTitle() != userInfo.hasMemberTitle()) {
            return false;
        }
        if ((!hasMemberTitle() || getMemberTitle().equals(userInfo.getMemberTitle())) && getIsRealName() == userInfo.getIsRealName() && getPayTopTip().equals(userInfo.getPayTopTip()) && getIsBindWb() == userInfo.getIsBindWb() && getIsBindWx() == userInfo.getIsBindWx() && getIsBindQq() == userInfo.getIsBindQq() && getVipGame() == userInfo.getVipGame() && getToken().equals(userInfo.getToken()) && getSecretKey().equals(userInfo.getSecretKey()) && getGameListPermissionList().equals(userInfo.getGameListPermissionList()) && getMemberTime() == userInfo.getMemberTime() && getGameTime() == userInfo.getGameTime() && hasNewMemberInfo() == userInfo.hasNewMemberInfo()) {
            return (!hasNewMemberInfo() || getNewMemberInfo().equals(userInfo.getNewMemberInfo())) && this.unknownFields.equals(userInfo.unknownFields);
        }
        return false;
    }

    @Override // com.wufan.user.service.protobuf.h
    public String getAccount() {
        Object obj = this.account_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.account_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public ByteString getAccountBytes() {
        Object obj = this.account_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.account_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getAccountType() {
        return this.accountType_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public String getAppleId() {
        Object obj = this.appleId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.appleId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public ByteString getAppleIdBytes() {
        Object obj = this.appleId_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.appleId_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public String getAvatarSrc() {
        Object obj = this.avatarSrc_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.avatarSrc_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public ByteString getAvatarSrcBytes() {
        Object obj = this.avatarSrc_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.avatarSrc_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getExp() {
        return this.exp_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public GameListPermission getGameListPermission(int index) {
        return this.gameListPermission_.get(index);
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getGameListPermissionCount() {
        return this.gameListPermission_.size();
    }

    @Override // com.wufan.user.service.protobuf.h
    public List<GameListPermission> getGameListPermissionList() {
        return this.gameListPermission_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public com.wufan.user.service.protobuf.a getGameListPermissionOrBuilder(int index) {
        return this.gameListPermission_.get(index);
    }

    @Override // com.wufan.user.service.protobuf.h
    public List<? extends com.wufan.user.service.protobuf.a> getGameListPermissionOrBuilderList() {
        return this.gameListPermission_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public long getGameTime() {
        return this.gameTime_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getGender() {
        return this.gender_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getIsAnchor() {
        return this.isAnchor_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getIsBindQq() {
        return this.isBindQq_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getIsBindWb() {
        return this.isBindWb_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getIsBindWx() {
        return this.isBindWx_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getIsRealName() {
        return this.isRealName_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getLevel() {
        return this.level_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getLiveTotalCharm() {
        return this.liveTotalCharm_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public long getMemberTime() {
        return this.memberTime_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public MemberTitleInfo getMemberTitle() {
        MemberTitleInfo memberTitleInfo = this.memberTitle_;
        return memberTitleInfo == null ? MemberTitleInfo.getDefaultInstance() : memberTitleInfo;
    }

    @Override // com.wufan.user.service.protobuf.h
    public com.wufan.user.service.protobuf.b getMemberTitleOrBuilder() {
        return getMemberTitle();
    }

    @Override // com.wufan.user.service.protobuf.h
    public String getMobile() {
        Object obj = this.mobile_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.mobile_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public ByteString getMobileBytes() {
        Object obj = this.mobile_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.mobile_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public NewMemberInfo getNewMemberInfo() {
        NewMemberInfo newMemberInfo = this.newMemberInfo_;
        return newMemberInfo == null ? NewMemberInfo.getDefaultInstance() : newMemberInfo;
    }

    @Override // com.wufan.user.service.protobuf.h
    public e getNewMemberInfoOrBuilder() {
        return getNewMemberInfo();
    }

    @Override // com.wufan.user.service.protobuf.h
    public String getNickname() {
        Object obj = this.nickname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.nickname_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public ByteString getNicknameBytes() {
        Object obj = this.nickname_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.nickname_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public long getPapaMoney() {
        return this.papaMoney_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<UserInfo> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.user.service.protobuf.h
    public String getPayTopTip() {
        Object obj = this.payTopTip_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.payTopTip_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public ByteString getPayTopTipBytes() {
        Object obj = this.payTopTip_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.payTopTip_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getPwdSetUp() {
        return this.pwdSetUp_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public long getRegisterTime() {
        return this.registerTime_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getSVIPLevel() {
        return this.sVIPLevel_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public String getSecretKey() {
        Object obj = this.secretKey_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.secretKey_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public ByteString getSecretKeyBytes() {
        Object obj = this.secretKey_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.secretKey_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.uid_;
        int iComputeInt32Size = i11 != 0 ? CodedOutputStream.computeInt32Size(1, i11) + 0 : 0;
        if (!getAccountBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.account_);
        }
        int i12 = this.pwdSetUp_;
        if (i12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(3, i12);
        }
        long j10 = this.papaMoney_;
        if (j10 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(4, j10);
        }
        long j11 = this.registerTime_;
        if (j11 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(5, j11);
        }
        if (!getAvatarSrcBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.avatarSrc_);
        }
        int i13 = this.gender_;
        if (i13 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(7, i13);
        }
        int i14 = this.level_;
        if (i14 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(8, i14);
        }
        int i15 = this.exp_;
        if (i15 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(9, i15);
        }
        if (!getMobileBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(10, this.mobile_);
        }
        int i16 = this.surplusExp_;
        if (i16 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(11, i16);
        }
        if (!getAppleIdBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(12, this.appleId_);
        }
        int i17 = this.accountType_;
        if (i17 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(13, i17);
        }
        int i18 = this.vipLevel_;
        if (i18 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(14, i18);
        }
        int i19 = this.sVIPLevel_;
        if (i19 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(15, i19);
        }
        long j12 = this.vipExpTime_;
        if (j12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(16, j12);
        }
        int i20 = this.liveTotalCharm_;
        if (i20 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(17, i20);
        }
        int i21 = this.isAnchor_;
        if (i21 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(18, i21);
        }
        if (this.memberTitle_ != null) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(19, getMemberTitle());
        }
        int i22 = this.isRealName_;
        if (i22 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(20, i22);
        }
        if (!getPayTopTipBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(21, this.payTopTip_);
        }
        int i23 = this.isBindWb_;
        if (i23 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(22, i23);
        }
        int i24 = this.isBindWx_;
        if (i24 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(23, i24);
        }
        int i25 = this.isBindQq_;
        if (i25 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(24, i25);
        }
        int i26 = this.vipGame_;
        if (i26 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(25, i26);
        }
        if (!getTokenBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(26, this.token_);
        }
        if (!getSecretKeyBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(27, this.secretKey_);
        }
        for (int i27 = 0; i27 < this.gameListPermission_.size(); i27++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(28, this.gameListPermission_.get(i27));
        }
        if (!getNicknameBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(29, this.nickname_);
        }
        long j13 = this.memberTime_;
        if (j13 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(30, j13);
        }
        long j14 = this.gameTime_;
        if (j14 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(31, j14);
        }
        if (this.newMemberInfo_ != null) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(32, getNewMemberInfo());
        }
        int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getSurplusExp() {
        return this.surplusExp_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public String getToken() {
        Object obj = this.token_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.token_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public ByteString getTokenBytes() {
        Object obj = this.token_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.token_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getUid() {
        return this.uid_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.user.service.protobuf.h
    public long getVipExpTime() {
        return this.vipExpTime_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getVipGame() {
        return this.vipGame_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public int getVipLevel() {
        return this.vipLevel_;
    }

    @Override // com.wufan.user.service.protobuf.h
    public boolean hasMemberTitle() {
        return this.memberTitle_ != null;
    }

    @Override // com.wufan.user.service.protobuf.h
    public boolean hasNewMemberInfo() {
        return this.newMemberInfo_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getAccount().hashCode()) * 37) + 29) * 53) + getNickname().hashCode()) * 37) + 3) * 53) + getPwdSetUp()) * 37) + 4) * 53) + Internal.hashLong(getPapaMoney())) * 37) + 5) * 53) + Internal.hashLong(getRegisterTime())) * 37) + 6) * 53) + getAvatarSrc().hashCode()) * 37) + 7) * 53) + getGender()) * 37) + 8) * 53) + getLevel()) * 37) + 9) * 53) + getExp()) * 37) + 10) * 53) + getMobile().hashCode()) * 37) + 11) * 53) + getSurplusExp()) * 37) + 12) * 53) + getAppleId().hashCode()) * 37) + 13) * 53) + getAccountType()) * 37) + 14) * 53) + getVipLevel()) * 37) + 15) * 53) + getSVIPLevel()) * 37) + 16) * 53) + Internal.hashLong(getVipExpTime())) * 37) + 17) * 53) + getLiveTotalCharm()) * 37) + 18) * 53) + getIsAnchor();
        if (hasMemberTitle()) {
            iHashCode = (((iHashCode * 37) + 19) * 53) + getMemberTitle().hashCode();
        }
        int isRealName = (((((((((((((((((((((((((((((((iHashCode * 37) + 20) * 53) + getIsRealName()) * 37) + 21) * 53) + getPayTopTip().hashCode()) * 37) + 22) * 53) + getIsBindWb()) * 37) + 23) * 53) + getIsBindWx()) * 37) + 24) * 53) + getIsBindQq()) * 37) + 25) * 53) + getVipGame()) * 37) + 26) * 53) + getToken().hashCode()) * 37) + 27) * 53) + getSecretKey().hashCode();
        if (getGameListPermissionCount() > 0) {
            isRealName = (((isRealName * 37) + 28) * 53) + getGameListPermissionList().hashCode();
        }
        int iHashLong = (((((((isRealName * 37) + 30) * 53) + Internal.hashLong(getMemberTime())) * 37) + 31) * 53) + Internal.hashLong(getGameTime());
        if (hasNewMemberInfo()) {
            iHashLong = (((iHashLong * 37) + 32) * 53) + getNewMemberInfo().hashCode();
        }
        int iHashCode2 = (iHashLong * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return c.f88127f.ensureFieldAccessorsInitialized(UserInfo.class, b.class);
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
        int i10 = this.uid_;
        if (i10 != 0) {
            output.writeInt32(1, i10);
        }
        if (!getAccountBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 2, this.account_);
        }
        int i11 = this.pwdSetUp_;
        if (i11 != 0) {
            output.writeInt32(3, i11);
        }
        long j10 = this.papaMoney_;
        if (j10 != 0) {
            output.writeInt64(4, j10);
        }
        long j11 = this.registerTime_;
        if (j11 != 0) {
            output.writeInt64(5, j11);
        }
        if (!getAvatarSrcBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 6, this.avatarSrc_);
        }
        int i12 = this.gender_;
        if (i12 != 0) {
            output.writeInt32(7, i12);
        }
        int i13 = this.level_;
        if (i13 != 0) {
            output.writeInt32(8, i13);
        }
        int i14 = this.exp_;
        if (i14 != 0) {
            output.writeInt32(9, i14);
        }
        if (!getMobileBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 10, this.mobile_);
        }
        int i15 = this.surplusExp_;
        if (i15 != 0) {
            output.writeInt32(11, i15);
        }
        if (!getAppleIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 12, this.appleId_);
        }
        int i16 = this.accountType_;
        if (i16 != 0) {
            output.writeInt32(13, i16);
        }
        int i17 = this.vipLevel_;
        if (i17 != 0) {
            output.writeInt32(14, i17);
        }
        int i18 = this.sVIPLevel_;
        if (i18 != 0) {
            output.writeInt32(15, i18);
        }
        long j12 = this.vipExpTime_;
        if (j12 != 0) {
            output.writeInt64(16, j12);
        }
        int i19 = this.liveTotalCharm_;
        if (i19 != 0) {
            output.writeInt32(17, i19);
        }
        int i20 = this.isAnchor_;
        if (i20 != 0) {
            output.writeInt32(18, i20);
        }
        if (this.memberTitle_ != null) {
            output.writeMessage(19, getMemberTitle());
        }
        int i21 = this.isRealName_;
        if (i21 != 0) {
            output.writeInt32(20, i21);
        }
        if (!getPayTopTipBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 21, this.payTopTip_);
        }
        int i22 = this.isBindWb_;
        if (i22 != 0) {
            output.writeInt32(22, i22);
        }
        int i23 = this.isBindWx_;
        if (i23 != 0) {
            output.writeInt32(23, i23);
        }
        int i24 = this.isBindQq_;
        if (i24 != 0) {
            output.writeInt32(24, i24);
        }
        int i25 = this.vipGame_;
        if (i25 != 0) {
            output.writeInt32(25, i25);
        }
        if (!getTokenBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 26, this.token_);
        }
        if (!getSecretKeyBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 27, this.secretKey_);
        }
        for (int i26 = 0; i26 < this.gameListPermission_.size(); i26++) {
            output.writeMessage(28, this.gameListPermission_.get(i26));
        }
        if (!getNicknameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 29, this.nickname_);
        }
        long j13 = this.memberTime_;
        if (j13 != 0) {
            output.writeInt64(30, j13);
        }
        long j14 = this.gameTime_;
        if (j14 != 0) {
            output.writeInt64(31, j14);
        }
        if (this.newMemberInfo_ != null) {
            output.writeMessage(32, getNewMemberInfo());
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ UserInfo(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(UserInfo prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static UserInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private UserInfo(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UserInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (UserInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static UserInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public UserInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static UserInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private UserInfo() {
        this.memoizedIsInitialized = (byte) -1;
        this.account_ = "";
        this.nickname_ = "";
        this.avatarSrc_ = "";
        this.mobile_ = "";
        this.appleId_ = "";
        this.payTopTip_ = "";
        this.token_ = "";
        this.secretKey_ = "";
        this.gameListPermission_ = Collections.emptyList();
    }

    public static UserInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static UserInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static UserInfo parseFrom(InputStream input) throws IOException {
        return (UserInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static UserInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (UserInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static UserInfo parseFrom(CodedInputStream input) throws IOException {
        return (UserInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static UserInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (UserInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    private UserInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            try {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        switch (tag) {
                            case 0:
                                break;
                            case 8:
                                this.uid_ = codedInputStream.readInt32();
                                continue;
                            case 18:
                                this.account_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 24:
                                this.pwdSetUp_ = codedInputStream.readInt32();
                                continue;
                            case 32:
                                this.papaMoney_ = codedInputStream.readInt64();
                                continue;
                            case 40:
                                this.registerTime_ = codedInputStream.readInt64();
                                continue;
                            case 50:
                                this.avatarSrc_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 56:
                                this.gender_ = codedInputStream.readInt32();
                                continue;
                            case 64:
                                this.level_ = codedInputStream.readInt32();
                                continue;
                            case 72:
                                this.exp_ = codedInputStream.readInt32();
                                continue;
                            case 82:
                                this.mobile_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 88:
                                this.surplusExp_ = codedInputStream.readInt32();
                                continue;
                            case 98:
                                this.appleId_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 104:
                                this.accountType_ = codedInputStream.readInt32();
                                continue;
                            case 112:
                                this.vipLevel_ = codedInputStream.readInt32();
                                continue;
                            case 120:
                                this.sVIPLevel_ = codedInputStream.readInt32();
                                continue;
                            case 128:
                                this.vipExpTime_ = codedInputStream.readInt64();
                                continue;
                            case 136:
                                this.liveTotalCharm_ = codedInputStream.readInt32();
                                continue;
                            case 144:
                                this.isAnchor_ = codedInputStream.readInt32();
                                continue;
                            case 154:
                                MemberTitleInfo memberTitleInfo = this.memberTitle_;
                                MemberTitleInfo.b builder = memberTitleInfo != null ? memberTitleInfo.toBuilder() : null;
                                MemberTitleInfo memberTitleInfo2 = (MemberTitleInfo) codedInputStream.readMessage(MemberTitleInfo.parser(), extensionRegistryLite);
                                this.memberTitle_ = memberTitleInfo2;
                                if (builder != null) {
                                    builder.mergeFrom(memberTitleInfo2);
                                    this.memberTitle_ = builder.buildPartial();
                                } else {
                                    continue;
                                }
                                break;
                            case 160:
                                this.isRealName_ = codedInputStream.readInt32();
                                continue;
                            case 170:
                                this.payTopTip_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 176:
                                this.isBindWb_ = codedInputStream.readInt32();
                                continue;
                            case 184:
                                this.isBindWx_ = codedInputStream.readInt32();
                                continue;
                            case 192:
                                this.isBindQq_ = codedInputStream.readInt32();
                                continue;
                            case 200:
                                this.vipGame_ = codedInputStream.readInt32();
                                continue;
                            case 210:
                                this.token_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 218:
                                this.secretKey_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 226:
                                if ((i10 & C.ENCODING_PCM_MU_LAW) == 0) {
                                    this.gameListPermission_ = new ArrayList();
                                    i10 |= C.ENCODING_PCM_MU_LAW;
                                }
                                this.gameListPermission_.add((GameListPermission) codedInputStream.readMessage(GameListPermission.parser(), extensionRegistryLite));
                                continue;
                            case 234:
                                this.nickname_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA /* 240 */:
                                this.memberTime_ = codedInputStream.readInt64();
                                continue;
                            case 248:
                                this.gameTime_ = codedInputStream.readInt64();
                                continue;
                            case 258:
                                NewMemberInfo newMemberInfo = this.newMemberInfo_;
                                NewMemberInfo.b builder2 = newMemberInfo != null ? newMemberInfo.toBuilder() : null;
                                NewMemberInfo newMemberInfo2 = (NewMemberInfo) codedInputStream.readMessage(NewMemberInfo.parser(), extensionRegistryLite);
                                this.newMemberInfo_ = newMemberInfo2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(newMemberInfo2);
                                    this.newMemberInfo_ = builder2.buildPartial();
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
                    } catch (IOException e10) {
                        throw new InvalidProtocolBufferException(e10).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e11) {
                    throw e11.setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if ((i10 & C.ENCODING_PCM_MU_LAW) != 0) {
                    this.gameListPermission_ = Collections.unmodifiableList(this.gameListPermission_);
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if ((i10 & C.ENCODING_PCM_MU_LAW) != 0) {
            this.gameListPermission_ = Collections.unmodifiableList(this.gameListPermission_);
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }
}
