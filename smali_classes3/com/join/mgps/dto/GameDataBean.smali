.class public Lcom/join/mgps/dto/GameDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private error_msg:Ljava/lang/String;

.field private is_success:Z

.field private msg_info:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error_msg",
            "is_success"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/GameDataBean;->error_msg:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lcom/join/mgps/dto/GameDataBean;->is_success:Z

    return-void
.end method


# virtual methods
.method public getError_msg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDataBean;->error_msg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMsg_info()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDataBean;->msg_info:I

    .line 2
    .line 3
    return v0
.end method

.method public isIs_success()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameDataBean;->is_success:Z

    .line 2
    .line 3
    return v0
.end method

.method public setError_msg(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error_msg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDataBean;->error_msg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_success(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_success"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameDataBean;->is_success:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMsg_info(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg_info"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDataBean;->msg_info:I

    .line 2
    .line 3
    return-void
.end method
