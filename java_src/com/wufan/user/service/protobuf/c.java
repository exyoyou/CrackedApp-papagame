package com.wufan.user.service.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Descriptors.Descriptor f88122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final GeneratedMessageV3.FieldAccessorTable f88123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Descriptors.Descriptor f88124c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final GeneratedMessageV3.FieldAccessorTable f88125d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Descriptors.Descriptor f88126e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final GeneratedMessageV3.FieldAccessorTable f88127f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final Descriptors.Descriptor f88128g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final GeneratedMessageV3.FieldAccessorTable f88129h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final Descriptors.Descriptor f88130i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final GeneratedMessageV3.FieldAccessorTable f88131j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final Descriptors.Descriptor f88132k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final GeneratedMessageV3.FieldAccessorTable f88133l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88134m;

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = c.f88134m = root;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0018user_info_response.proto\"J\n\u000eResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0017\n\u0004data\u0018\u0002 \u0001(\u000b2\t.UserInfo\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\t\"6\n\u0013SetBirthdayResponse\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0010\n\berrorMsg\u0018\u0002 \u0001(\t\"\u0096\u0005\n\bUserInfo\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007account\u0018\u0002 \u0001(\t\u0012\u0010\n\bnickname\u0018\u001d \u0001(\t\u0012\u0010\n\bpwdSetUp\u0018\u0003 \u0001(\u0005\u0012\u0011\n\tpapaMoney\u0018\u0004 \u0001(\u0003\u0012\u0014\n\fregisterTime\u0018\u0005 \u0001(\u0003\u0012\u0011\n\tavatarSrc\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006gender\u0018\u0007 \u0001(\u0005\u0012\r\n\u0005level\u0018\b \u0001(\u0005\u0012\u000b\n\u0003exp\u0018\t \u0001(\u0005\u0012\u000e\n\u0006mobile\u0018\n \u0001(\t\u0012\u0012\n\nsurplusExp\u0018\u000b \u0001(\u0005\u0012\u000f\n\u0007appleId\u0018\f \u0001(\t\u0012\u0013\n\u000baccountType\u0018\r \u0001(\u0005\u0012\u0010\n\bvipLevel\u0018\u000e \u0001(\u0005\u0012\u0011\n\tSVIPLevel\u0018\u000f \u0001(\u0005\u0012\u0012\n\nvipExpTime\u0018\u0010 \u0001(\u0003\u0012\u0016\n\u000eliveTotalCharm\u0018\u0011 \u0001(\u0005\u0012\u0010\n\bisAnchor\u0018\u0012 \u0001(\u0005\u0012%\n\u000bmemberTitle\u0018\u0013 \u0001(\u000b2\u0010.MemberTitleInfo\u0012\u0012\n\nisRealName\u0018\u0014 \u0001(\u0005\u0012\u0011\n\tpayTopTip\u0018\u0015 \u0001(\t\u0012\u0010\n\bisBindWb\u0018\u0016 \u0001(\u0005\u0012\u0010\n\bisBindWx\u0018\u0017 \u0001(\u0005\u0012\u0010\n\bisBindQq\u0018\u0018 \u0001(\u0005\u0012\u000f\n\u0007vipGame\u0018\u0019 \u0001(\u0005\u0012\r\n\u0005token\u0018\u001a \u0001(\t\u0012\u0011\n\tsecretKey\u0018\u001b \u0001(\t\u0012/\n\u0012gameListPermission\u0018\u001c \u0003(\u000b2\u0013.GameListPermission\u0012\u0012\n\nmemberTime\u0018\u001e \u0001(\u0003\u0012\u0010\n\bgameTime\u0018\u001f \u0001(\u0003\u0012%\n\rnewMemberInfo\u0018  \u0001(\u000b2\u000e.NewMemberInfo\"\u0085\u0003\n\rNewMemberInfo\u0012\u0014\n\fcloudDiamond\u0018\u0001 \u0001(\u0001\u0012\u0011\n\tcloudCoin\u0018\u0002 \u0001(\u0001\u0012\r\n\u0005isVip\u0018\u0003 \u0001(\b\u0012\u000f\n\u0007vipType\u0018\u0004 \u0001(\u0005\u0012\u0017\n\u000fmonthExpireTime\u0018\u0005 \u0001(\t\u0012\u0018\n\u0010seasonExpireTime\u0018\u0006 \u0001(\t\u0012\u0016\n\u000eyearExpireTime\u0018\u0007 \u0001(\t\u0012\u0015\n\rshowLabelType\u0018\b \u0001(\u0005\u0012\u0018\n\u0010showLabelContent\u0018\t \u0001(\t\u0012\u000f\n\u0007vipTime\u0018\n \u0001(\t\u0012\u0013\n\u000bisBaoYeCard\u0018\u000b \u0001(\b\u0012\u0012\n\nisJiSuCard\u0018\f \u0001(\b\u0012\u000f\n\u0007propNum\u0018\r \u0001(\u0005\u0012\u0010\n\bisSigned\u0018\u000e \u0001(\b\u0012\u0013\n\u000bisNewMember\u0018\u000f \u0001(\b\u0012\u0015\n\rnewMemberDays\u0018\u0010 \u0001(\u0005\u0012\u0013\n\u000bshowNewGift\u0018\u0011 \u0001(\b\u0012\u0011\n\ttotalTime\u0018\u0012 \u0001(\t\"z\n\u0012GameListPermission\u0012\u000e\n\u0006gameId\u0018\u0001 \u0001(\u0003\u0012\u0010\n\bisOpenSp\u0018\u0002 \u0001(\b\u0012\u0014\n\fspExpireTime\u0018\u0003 \u0001(\u0003\u0012\u0013\n\u000bisOpenCheat\u0018\u0004 \u0001(\b\u0012\u0017\n\u000fcheatExpireTime\u0018\u0005 \u0001(\u0003\"O\n\u000fMemberTitleInfo\u0012\u0013\n\u000bbattleTitle\u0018\u0001 \u0001(\t\u0012\r\n\u0005level\u0018\u0002 \u0001(\u0005\u0012\u0018\n\u0010battleTitleColor\u0018\u0003 \u0001(\tB<\n\u001fcom.wufan.user.service.protobufB\u0017MessageUserInfoResponseP\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = b().getMessageTypes().get(0);
        f88122a = descriptor;
        f88123b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Error", "Data", "ErrorMsg"});
        Descriptors.Descriptor descriptor2 = b().getMessageTypes().get(1);
        f88124c = descriptor2;
        f88125d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Error", "ErrorMsg"});
        Descriptors.Descriptor descriptor3 = b().getMessageTypes().get(2);
        f88126e = descriptor3;
        f88127f = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"Uid", "Account", "Nickname", "PwdSetUp", "PapaMoney", "RegisterTime", "AvatarSrc", "Gender", "Level", "Exp", "Mobile", "SurplusExp", "AppleId", "AccountType", "VipLevel", "SVIPLevel", "VipExpTime", "LiveTotalCharm", "IsAnchor", "MemberTitle", "IsRealName", "PayTopTip", "IsBindWb", "IsBindWx", "IsBindQq", "VipGame", "Token", "SecretKey", "GameListPermission", "MemberTime", "GameTime", "NewMemberInfo"});
        Descriptors.Descriptor descriptor4 = b().getMessageTypes().get(3);
        f88128g = descriptor4;
        f88129h = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"CloudDiamond", "CloudCoin", "IsVip", "VipType", "MonthExpireTime", "SeasonExpireTime", "YearExpireTime", "ShowLabelType", "ShowLabelContent", "VipTime", "IsBaoYeCard", "IsJiSuCard", "PropNum", "IsSigned", "IsNewMember", "NewMemberDays", "ShowNewGift", "TotalTime"});
        Descriptors.Descriptor descriptor5 = b().getMessageTypes().get(4);
        f88130i = descriptor5;
        f88131j = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"GameId", "IsOpenSp", "SpExpireTime", "IsOpenCheat", "CheatExpireTime"});
        Descriptors.Descriptor descriptor6 = b().getMessageTypes().get(5);
        f88132k = descriptor6;
        f88133l = new GeneratedMessageV3.FieldAccessorTable(descriptor6, new String[]{"BattleTitle", "Level", "BattleTitleColor"});
    }

    private c() {
    }

    public static Descriptors.FileDescriptor b() {
        return f88134m;
    }

    public static void c(ExtensionRegistry registry) {
        d(registry);
    }

    public static void d(ExtensionRegistryLite registry) {
    }
}
