.class public final Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TheThirdPartyRegisterRequestParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;
    }
.end annotation


# static fields
.field public static final ACCOUNT_FIELD_NUMBER:I = 0x1

.field public static final APPVERSION_FIELD_NUMBER:I = 0x8

.field public static final CODETYPE_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSWORD_FIELD_NUMBER:I = 0x2

.field public static final SIGN_FIELD_NUMBER:I = 0x7

.field public static final SMSCODE_FIELD_NUMBER:I = 0x5

.field public static final THETHIRDPARTLOGINTYPE_FIELD_NUMBER:I = 0x4

.field public static final UNIQUEID_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile account_:Ljava/lang/Object;

.field private volatile appVersion_:Ljava/lang/Object;

.field private volatile codeType_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile password_:Ljava/lang/Object;

.field private volatile sign_:Ljava/lang/Object;

.field private volatile smsCode_:Ljava/lang/Object;

.field private theThirdPartLoginType_:I

.field private volatile uniqueId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->account_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->password_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->uniqueId_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->theThirdPartLoginType_:I

    .line 11
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->smsCode_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->codeType_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->sign_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->appVersion_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;-><init>()V

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const/16 v4, 0xa

    if-eq v2, v4, :cond_8

    const/16 v4, 0x12

    if-eq v2, v4, :cond_7

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_6

    const/16 v4, 0x20

    if-eq v2, v4, :cond_5

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x32

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_2

    const/16 v4, 0x42

    if-eq v2, v4, :cond_1

    .line 19
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->appVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->sign_:Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 25
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->codeType_:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->smsCode_:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 29
    iput v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->theThirdPartLoginType_:I

    goto :goto_0

    .line 30
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 31
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->uniqueId_:Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->password_:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 35
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->account_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 36
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 37
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 38
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 41
    throw p1

    .line 42
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->smsCode_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->smsCode_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->codeType_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1102(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->codeType_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1200(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->sign_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1202(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->sign_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1300(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->appVersion_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1302(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->appVersion_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1400(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$600(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->account_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->account_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$700(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->password_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$702(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->password_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$800(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->uniqueId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$802(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->uniqueId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$900(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->theThirdPartLoginType_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$902(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->theThirdPartLoginType_:I

    .line 2
    .line 3
    return p1
.end method

.method public static getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->toBuilder()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->toBuilder()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getAccount()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getAccount()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getPassword()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getPassword()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getUniqueId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getUniqueId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    return v2

    .line 62
    :cond_4
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->theThirdPartLoginType_:I

    .line 63
    .line 64
    iget v3, p1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->theThirdPartLoginType_:I

    .line 65
    .line 66
    if-eq v1, v3, :cond_5

    .line 67
    .line 68
    return v2

    .line 69
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getSmsCode()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getSmsCode()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_6

    .line 82
    .line 83
    return v2

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getCodeType()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getCodeType()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_7

    .line 97
    .line 98
    return v2

    .line 99
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getSign()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getSign()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_8

    .line 112
    .line 113
    return v2

    .line 114
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getAppVersion()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getAppVersion()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_9

    .line 127
    .line 128
    return v2

    .line 129
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 130
    .line 131
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 132
    .line 133
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_a

    .line 138
    .line 139
    return v2

    .line 140
    :cond_a
    return v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->account_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->account_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->account_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->account_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->appVersion_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->appVersion_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAppVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->appVersion_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->appVersion_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getCodeType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->codeType_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->codeType_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getCodeTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->codeType_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->codeType_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->password_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->password_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->password_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->password_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getAccountBytes()Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->account_:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr v1, v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->password_:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/2addr v1, v0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->uniqueId_:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/2addr v1, v0

    .line 62
    :cond_3
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->theThirdPartLoginType_:I

    .line 63
    .line 64
    sget-object v2, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_PAPA:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->getNumber()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eq v0, v2, :cond_4

    .line 71
    .line 72
    const/4 v0, 0x4

    .line 73
    iget v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->theThirdPartLoginType_:I

    .line 74
    .line 75
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/2addr v1, v0

    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getSmsCodeBytes()Lcom/google/protobuf/ByteString;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_5

    .line 89
    .line 90
    const/4 v0, 0x5

    .line 91
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->smsCode_:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    add-int/2addr v1, v0

    .line 98
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getCodeTypeBytes()Lcom/google/protobuf/ByteString;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_6

    .line 107
    .line 108
    const/4 v0, 0x6

    .line 109
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->codeType_:Ljava/lang/Object;

    .line 110
    .line 111
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    add-int/2addr v1, v0

    .line 116
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getSignBytes()Lcom/google/protobuf/ByteString;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_7

    .line 125
    .line 126
    const/4 v0, 0x7

    .line 127
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->sign_:Ljava/lang/Object;

    .line 128
    .line 129
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    add-int/2addr v1, v0

    .line 134
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getAppVersionBytes()Lcom/google/protobuf/ByteString;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_8

    .line 143
    .line 144
    const/16 v0, 0x8

    .line 145
    .line 146
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->appVersion_:Ljava/lang/Object;

    .line 147
    .line 148
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    add-int/2addr v1, v0

    .line 153
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    add-int/2addr v1, v0

    .line 160
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 161
    .line 162
    return v1
.end method

.method public getSign()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->sign_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->sign_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSignBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->sign_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->sign_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSmsCode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->smsCode_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->smsCode_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSmsCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->smsCode_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->smsCode_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getTheThirdPartLoginType()Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->theThirdPartLoginType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->valueOf(I)Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getTheThirdPartLoginTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->theThirdPartLoginType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->uniqueId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->uniqueId_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->uniqueId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->uniqueId_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x30b

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    mul-int/lit8 v1, v1, 0x25

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x35

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getAccount()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x25

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    mul-int/lit8 v1, v1, 0x35

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getPassword()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr v1, v0

    .line 47
    mul-int/lit8 v1, v1, 0x25

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x3

    .line 50
    .line 51
    mul-int/lit8 v1, v1, 0x35

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getUniqueId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/2addr v1, v0

    .line 62
    mul-int/lit8 v1, v1, 0x25

    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x4

    .line 65
    .line 66
    mul-int/lit8 v1, v1, 0x35

    .line 67
    .line 68
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->theThirdPartLoginType_:I

    .line 69
    .line 70
    add-int/2addr v1, v0

    .line 71
    mul-int/lit8 v1, v1, 0x25

    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x5

    .line 74
    .line 75
    mul-int/lit8 v1, v1, 0x35

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getSmsCode()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    add-int/2addr v1, v0

    .line 86
    mul-int/lit8 v1, v1, 0x25

    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x6

    .line 89
    .line 90
    mul-int/lit8 v1, v1, 0x35

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getCodeType()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-int/2addr v1, v0

    .line 101
    mul-int/lit8 v1, v1, 0x25

    .line 102
    .line 103
    add-int/lit8 v1, v1, 0x7

    .line 104
    .line 105
    mul-int/lit8 v1, v1, 0x35

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getSign()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    add-int/2addr v1, v0

    .line 116
    mul-int/lit8 v1, v1, 0x25

    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x8

    .line 119
    .line 120
    mul-int/lit8 v1, v1, 0x35

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getAppVersion()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/2addr v1, v0

    .line 131
    mul-int/lit8 v1, v1, 0x1d

    .line 132
    .line 133
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    add-int/2addr v1, v0

    .line 140
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 141
    .line 142
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest;->b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    .line 6
    .line 7
    const-class v2, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->memoizedIsInitialized:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    iput-byte v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->newBuilderForType()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parent"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->newBuilderForType()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->toBuilder()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->toBuilder()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;-><init>(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;-><init>(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getAccountBytes()Lcom/google/protobuf/ByteString;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->account_:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->password_:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->uniqueId_:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->theThirdPartLoginType_:I

    .line 50
    .line 51
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_PAPA:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->getNumber()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eq v0, v1, :cond_3

    .line 58
    .line 59
    const/4 v0, 0x4

    .line 60
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->theThirdPartLoginType_:I

    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getSmsCodeBytes()Lcom/google/protobuf/ByteString;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    const/4 v0, 0x5

    .line 76
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->smsCode_:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getCodeTypeBytes()Lcom/google/protobuf/ByteString;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    const/4 v0, 0x6

    .line 92
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->codeType_:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getSignBytes()Lcom/google/protobuf/ByteString;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_6

    .line 106
    .line 107
    const/4 v0, 0x7

    .line 108
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->sign_:Ljava/lang/Object;

    .line 109
    .line 110
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->getAppVersionBytes()Lcom/google/protobuf/ByteString;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_7

    .line 122
    .line 123
    const/16 v0, 0x8

    .line 124
    .line 125
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->appVersion_:Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method
