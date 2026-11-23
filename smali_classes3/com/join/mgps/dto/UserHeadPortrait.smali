.class public Lcom/join/mgps/dto/UserHeadPortrait;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private error_msg:Ljava/lang/String;

.field private head_portrait_pic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private is_success:Z

.field private user_info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "error_msg",
            "is_success",
            "user_info",
            "head_portrait_pic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/UserHeadPortrait;->error_msg:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lcom/join/mgps/dto/UserHeadPortrait;->is_success:Z

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/UserHeadPortrait;->user_info:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/UserHeadPortrait;->head_portrait_pic:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getError_msg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserHeadPortrait;->error_msg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHead_portrait_pic()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserHeadPortrait;->head_portrait_pic:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUser_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserHeadPortrait;->user_info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isIs_success()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UserHeadPortrait;->is_success:Z

    .line 2
    .line 3
    return v0
.end method

.method public is_success()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UserHeadPortrait;->is_success:Z

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
    iput-object p1, p0, Lcom/join/mgps/dto/UserHeadPortrait;->error_msg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHead_portrait_pic(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "head_portrait_pic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserHeadPortrait;->head_portrait_pic:Ljava/util/List;

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
    iput-boolean p1, p0, Lcom/join/mgps/dto/UserHeadPortrait;->is_success:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUser_info(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserHeadPortrait;->user_info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
