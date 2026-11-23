.class public Lcom/haima/hmcp/beans/RequestJoinBattle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/beans/IParameter;


# instance fields
.field public appChannel:Ljava/lang/String;

.field public battleOnlineType:I

.field public cToken:Ljava/lang/String;

.field public clientCity:Ljava/lang/String;

.field public clientISP:Ljava/lang/String;

.field public clientProvince:Ljava/lang/String;

.field public envType:Ljava/lang/String;

.field public gamePad:I

.field public openOwnerResolution:Z

.field public ownerCid:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public playingTime:J

.field public protoData:Ljava/lang/String;

.field public routingIp:Ljava/lang/String;

.field public sdkAbility:[J

.field public streamingTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public userInfo:Lcom/haima/hmcp/beans/UserInfo2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/RequestJoinBattle;->openOwnerResolution:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
