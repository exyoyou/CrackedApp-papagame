.class public Lcom/haima/hmcp/beans/CloudIdParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/beans/IParameter;


# instance fields
.field public accessKeyID:I

.field public appChannel:Ljava/lang/String;

.field public appId:I

.field public appName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pkgName"
    .end annotation
.end field

.field public cToken:Ljava/lang/String;

.field public channel:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "CToken"
    .end annotation
.end field

.field public configInfo:Ljava/lang/String;

.field public envType:Ljava/lang/String;

.field public extraId:Ljava/lang/String;

.field public userInfo:Lcom/haima/hmcp/beans/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
