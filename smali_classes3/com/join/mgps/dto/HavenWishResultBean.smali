.class public Lcom/join/mgps/dto/HavenWishResultBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private msg:Ljava/lang/String;

.field private result:Z


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


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HavenWishResultBean;->msg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/HavenWishResultBean;->result:Z

    .line 2
    .line 3
    return v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HavenWishResultBean;->msg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResult(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/HavenWishResultBean;->result:Z

    .line 2
    .line 3
    return-void
.end method
