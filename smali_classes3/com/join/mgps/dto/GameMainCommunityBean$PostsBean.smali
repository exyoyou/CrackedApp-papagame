.class public Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameMainCommunityBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostsBean"
.end annotation


# instance fields
.field private fid:I

.field private message:Ljava/lang/String;

.field private pid:I

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subject",
            "pid"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->pid:I

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->subject:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->fid:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->pid:I

    .line 2
    .line 3
    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setFid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->fid:I

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->pid:I

    .line 2
    .line 3
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subject"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
