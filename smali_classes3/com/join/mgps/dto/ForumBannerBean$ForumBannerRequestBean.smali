.class public Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBannerBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumBannerRequestBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;,
        Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;
    }
.end annotation


# instance fields
.field private deviceid:Ljava/lang/String;

.field private messages:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;

.field private requesttype:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "version",
            "deviceid",
            "requesttype",
            "sign",
            "messages"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->version:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->deviceid:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->requesttype:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->sign:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->messages:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;

    return-void
.end method


# virtual methods
.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->deviceid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessages()Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->messages:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequesttype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->requesttype:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->sign:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->deviceid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMessages(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messages"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->messages:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;

    .line 2
    .line 3
    return-void
.end method

.method public setRequesttype(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requesttype"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->requesttype:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sign"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->sign:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
