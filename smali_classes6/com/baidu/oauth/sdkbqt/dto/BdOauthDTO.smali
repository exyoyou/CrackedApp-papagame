.class public Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/oauth/sdkbqt/a/e;


# static fields
.field public static final APP_BAIDUMAP:Ljava/lang/String; = "Y29tLmJhaWR1LkJhaWR1TWFw"

.field public static final APP_HAOKAN:Ljava/lang/String; = "Y29tLmJhaWR1Lmhhb2thbg=="

.field public static final APP_NETDISK:Ljava/lang/String; = "Y29tLmJhaWR1Lm5ldGRpc2s="

.field public static final APP_SEARCHBOX:Ljava/lang/String; = "Y29tLmJhaWR1LnNlYXJjaGJveA=="

.field public static final APP_TIEBA:Ljava/lang/String; = "Y29tLmJhaWR1LnRpZWJh"

.field public static final OAUTH_TYPE_BOTH:C = '\u0000'

.field public static final OAUTH_TYPE_BOTH_V2:C = '\u0003'

.field public static final OAUTH_TYPE_SSO:C = '\u0001'

.field public static final OAUTH_TYPE_WEB:C = '\u0002'


# instance fields
.field public authorizedPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isSilent:Z

.field public oauthType:C

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-char v0, p0, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->oauthType:C

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/dto/BdOauthDTO;->isSilent:Z

    .line 8
    .line 9
    return-void
.end method
