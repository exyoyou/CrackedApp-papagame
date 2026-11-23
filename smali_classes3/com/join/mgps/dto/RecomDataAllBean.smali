.class public Lcom/join/mgps/dto/RecomDataAllBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:I

.field private error_info:Ljava/lang/String;

.field private flag:I

.field private messages:Lcom/join/mgps/dto/RecomDataMessageBean;

.field private requesttype:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomDataMessageBean;)V
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
            "flag",
            "code",
            "version",
            "requesttype",
            "messages"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/RecomDataAllBean;->flag:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/RecomDataAllBean;->code:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/RecomDataAllBean;->version:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/RecomDataAllBean;->requesttype:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/RecomDataAllBean;->messages:Lcom/join/mgps/dto/RecomDataMessageBean;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecomDataAllBean;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public getError_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDataAllBean;->error_info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecomDataAllBean;->flag:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessages()Lcom/join/mgps/dto/RecomDataMessageBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDataAllBean;->messages:Lcom/join/mgps/dto/RecomDataMessageBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequesttype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDataAllBean;->requesttype:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDataAllBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecomDataAllBean;->code:I

    .line 2
    .line 3
    return-void
.end method

.method public setError_info(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataAllBean;->error_info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecomDataAllBean;->flag:I

    .line 2
    .line 3
    return-void
.end method

.method public setMessages(Lcom/join/mgps/dto/RecomDataMessageBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataAllBean;->messages:Lcom/join/mgps/dto/RecomDataMessageBean;

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
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataAllBean;->requesttype:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataAllBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
