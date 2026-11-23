.class public final Lcom/wufan/user/service/protobuf/enumeration/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "\n\u001denumeration/enumeration.proto\u0012\u000benumeration*V\n\tLoginType\u0012\u0006\n\u0002QQ\u0010\u0000\u0012\u000b\n\u0007WEI_XIN\u0010\u0001\u0012\n\n\u0006WEI_BO\u0010\u0002\u0012\n\n\u0006MOBILE\u0010\u0003\u0012\u000b\n\u0007ACCOUNT\u0010\u0004\u0012\u000f\n\u000bMIX_ACCOUNT\u0010\u0005*T\n\u0015TheThirdPartLoginType\u0012\n\n\u0006T_PAPA\u0010\u0000\u0012\u0008\n\u0004T_QQ\u0010\u0001\u0012\r\n\tT_WEI_XIN\u0010\u0002\u0012\u000c\n\u0008T_WEI_BO\u0010\u0003\u0012\u0008\n\u0004T_MG\u0010\u0004*\u00a1\u0001\n\u000bContentType\u0012\u000e\n\nMOBILE_REG\u0010\u0000\u0012\u000c\n\u0008FIND_PWD\u0010\u0001\u0012\u000e\n\nRANDOM_PWD\u0010\u0002\u0012\u000f\n\u000bBIND_MOBILE\u0010\u0003\u0012\u0011\n\rUNBIND_MOBILE\u0010\u0004\u0012\u0015\n\u0011CHECK_BIND_MOBILE\u0010\u0005\u0012\u0013\n\u000fMOBILE_FIND_PWD\u0010\u0006\u0012\u0014\n\u0010GENERAL_SMS_CODE\u0010\u0007*a\n\nSourceType\u0012\t\n\u0005WORLD\u0010\u0000\u0012\u000c\n\u0008PLATFORM\u0010\u0001\u0012\n\n\u0006BATTLE\u0010\u0002\u0012\u0006\n\u0002PC\u0010\u0003\u0012\n\n\u0006REBATE\u0010\u0004\u0012\u000e\n\nSDK_REBATE\u0010\u0005\u0012\n\n\u0006SWITCH\u0010\u0006*^\n\nVipFeeType\u0012\u000c\n\u0008WEEK_VIP\u0010\u0000\u0012\u0014\n\u0010HALF_A_MONTH_VIP\u0010\u0001\u0012\r\n\tMONTH_VIP\u0010\u0002\u0012\u000f\n\u000bQUARTER_VIP\u0010\u0003\u0012\u000c\n\u0008YEAR_VIP\u0010\u0004*e\n\u000bServerState\u0012\u0014\n\u0010SERVER_LINE_FULL\u0010\u0000\u0012\u0014\n\u0010SERVER_LINE_BUSY\u0010\u0001\u0012\u0014\n\u0010SERVER_LINE_STOP\u0010\u0002\u0012\u0014\n\u0010SERVER_LINE_IDLE\u0010\u0003*\u0085\u0001\n\u000cFeedBackType\u0012\u000e\n\nGAME_CRASH\u0010\u0000\u0012\u000c\n\u0008GAME_LAG\u0010\u0001\u0012\u0010\n\u000cBLURRY_SCENE\u0010\u0002\u0012\u0015\n\u0011QUEUE_UP_QUESTION\u0010\u0003\u0012\u001a\n\u0016BLACK_SCREEN_EXCEPTION\u0010\u0004\u0012\u0012\n\u000eOTHER_QUESTION\u0010\u0005*!\n\u000cPlaytimeType\u0012\u0007\n\u0003VIP\u0010\u0000\u0012\u0008\n\u0004FREE\u0010\u0001*0\n\u0013ClickStatusPosition\u0012\u0019\n\u0015CLOUD_GAMING_SIGN_WIN\u0010\u0000*9\n\tSceneType\u0012\u0011\n\rAPP_HOME_PAGE\u0010\u0000\u0012\u0019\n\u0015CLOUD_GAMING_SIGN_BTN\u0010\u0001B/\n+com.wufan.user.service.protobuf.enumerationP\u0001b\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/wufan/user/service/protobuf/enumeration/a$a;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/wufan/user/service/protobuf/enumeration/a$a;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 1
    sput-object p0, Lcom/wufan/user/service/protobuf/enumeration/a;->a:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/a;->a:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static c(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/enumeration/a;->d(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 1
    return-void
.end method
