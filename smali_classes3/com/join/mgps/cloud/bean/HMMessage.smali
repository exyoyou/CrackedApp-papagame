.class public abstract Lcom/join/mgps/cloud/bean/HMMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;,
        Lcom/join/mgps/cloud/bean/HMMessage$CapScreenResult;,
        Lcom/join/mgps/cloud/bean/HMMessage$Companion;,
        Lcom/join/mgps/cloud/bean/HMMessage$Config;,
        Lcom/join/mgps/cloud/bean/HMMessage$ConfigReady;,
        Lcom/join/mgps/cloud/bean/HMMessage$ConfigTest;,
        Lcom/join/mgps/cloud/bean/HMMessage$ConfigWait;,
        Lcom/join/mgps/cloud/bean/HMMessage$Connect;,
        Lcom/join/mgps/cloud/bean/HMMessage$Connected;,
        Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;,
        Lcom/join/mgps/cloud/bean/HMMessage$GameReady;,
        Lcom/join/mgps/cloud/bean/HMMessage$Intent;,
        Lcom/join/mgps/cloud/bean/HMMessage$Launching;,
        Lcom/join/mgps/cloud/bean/HMMessage$Log;,
        Lcom/join/mgps/cloud/bean/HMMessage$ReqCapScreen;,
        Lcom/join/mgps/cloud/bean/HMMessage$SendMessageResult;,
        Lcom/join/mgps/cloud/bean/HMMessage$Start;,
        Lcom/join/mgps/cloud/bean/HMMessage$UploadCloudArchive;,
        Lcom/join/mgps/cloud/bean/HMMessage$UserInfo;,
        Lcom/join/mgps/cloud/bean/HMMessage$UserInfoReady;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \n2\u00020\u0001:\u0014\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001dB\t\u0008\u0014\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0014\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0006R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0006\u0082\u0001\u0013\u001e\u001f !\"#$%&\'()*+,-./0\u00a8\u00061"
    }
    d2 = {
        "Lcom/join/mgps/cloud/bean/HMMessage;",
        "",
        "<init>",
        "()V",
        "action",
        "",
        "(Ljava/lang/String;)V",
        "getAction",
        "()Ljava/lang/String;",
        "setAction",
        "Companion",
        "ConfigTest",
        "Config",
        "Connect",
        "Start",
        "DownloadCloudArchive",
        "UploadCloudArchive",
        "UserInfo",
        "CapScreenResult",
        "ReqCapScreen",
        "Log",
        "Connected",
        "ConfigWait",
        "ConfigReady",
        "GameReady",
        "Intent",
        "ArchiveReady",
        "Launching",
        "UserInfoReady",
        "SendMessageResult",
        "Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;",
        "Lcom/join/mgps/cloud/bean/HMMessage$CapScreenResult;",
        "Lcom/join/mgps/cloud/bean/HMMessage$Config;",
        "Lcom/join/mgps/cloud/bean/HMMessage$ConfigReady;",
        "Lcom/join/mgps/cloud/bean/HMMessage$ConfigTest;",
        "Lcom/join/mgps/cloud/bean/HMMessage$ConfigWait;",
        "Lcom/join/mgps/cloud/bean/HMMessage$Connect;",
        "Lcom/join/mgps/cloud/bean/HMMessage$Connected;",
        "Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;",
        "Lcom/join/mgps/cloud/bean/HMMessage$GameReady;",
        "Lcom/join/mgps/cloud/bean/HMMessage$Intent;",
        "Lcom/join/mgps/cloud/bean/HMMessage$Launching;",
        "Lcom/join/mgps/cloud/bean/HMMessage$Log;",
        "Lcom/join/mgps/cloud/bean/HMMessage$ReqCapScreen;",
        "Lcom/join/mgps/cloud/bean/HMMessage$SendMessageResult;",
        "Lcom/join/mgps/cloud/bean/HMMessage$Start;",
        "Lcom/join/mgps/cloud/bean/HMMessage$UploadCloudArchive;",
        "Lcom/join/mgps/cloud/bean/HMMessage$UserInfo;",
        "Lcom/join/mgps/cloud/bean/HMMessage$UserInfoReady;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ACTION_CAP_SCREEN_RESULT:Ljava/lang/String; = "capScreenResult"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CONFIG:Ljava/lang/String; = "config"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CONNECT:Ljava/lang/String; = "connect"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_DOWNLOAD_CLOUD_ARCHIVE:Ljava/lang/String; = "downloadCloudArchive"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_START:Ljava/lang/String; = "start"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_TEST_CONFIG:Ljava/lang/String; = "configTest"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_UPLOAD_CLOUD_ARCHIVE:Ljava/lang/String; = "uploadCloudArchive"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_USER_INFO:Ljava/lang/String; = "userInfo"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/join/mgps/cloud/bean/HMMessage$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/mgps/cloud/bean/HMMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/cloud/bean/HMMessage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/mgps/cloud/bean/HMMessage;->Companion:Lcom/join/mgps/cloud/bean/HMMessage$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/join/mgps/cloud/bean/HMMessage;->action:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/join/mgps/cloud/bean/HMMessage;->action:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/cloud/bean/HMMessage;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/cloud/bean/HMMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/cloud/bean/HMMessage;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAction(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/cloud/bean/HMMessage;->action:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
