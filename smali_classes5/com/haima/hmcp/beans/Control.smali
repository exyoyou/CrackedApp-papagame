.class public Lcom/haima/hmcp/beans/Control;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public accessKeyID:Ljava/lang/String;

.field public cameraOpenPermissionCheck:Z

.field public cid:Ljava/lang/String;

.field public clientCity:Ljava/lang/String;

.field public clientISP:Ljava/lang/String;

.field public clientProvince:Ljava/lang/String;

.field public enableHighBitRate:Ljava/lang/Boolean;

.field public enableVirtualKeyboard:Ljava/lang/Boolean;

.field public isIPV6:Z

.field public languageConfig:Ljava/lang/String;

.field public orientation:Lcom/haima/hmcp/enums/ScreenOrientation;

.field public pinCode:Ljava/lang/String;

.field public source:Lcom/haima/hmcp/enums/Source;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/beans/Control;->cid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/haima/hmcp/beans/Control;->pinCode:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/beans/Control;->accessKeyID:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/haima/hmcp/beans/Control;->clientISP:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/beans/Control;->clientProvince:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/beans/Control;->clientCity:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v1, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/haima/hmcp/beans/Control;->orientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/Control;->cameraOpenPermissionCheck:Z

    .line 24
    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/beans/Control;->languageConfig:Ljava/lang/String;

    .line 26
    .line 27
    sget-object v0, Lcom/haima/hmcp/enums/Source;->SDK:Lcom/haima/hmcp/enums/Source;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/haima/hmcp/beans/Control;->source:Lcom/haima/hmcp/enums/Source;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/haima/hmcp/beans/Control;->enableHighBitRate:Ljava/lang/Boolean;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/haima/hmcp/beans/Control;->enableVirtualKeyboard:Ljava/lang/Boolean;

    .line 35
    .line 36
    return-void
.end method
