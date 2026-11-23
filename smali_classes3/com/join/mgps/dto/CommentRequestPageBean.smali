.class public Lcom/join/mgps/dto/CommentRequestPageBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private game_id:Ljava/lang/String;

.field private pc:I

.field private pn:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "game_id",
            "pn",
            "pc"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/CommentRequestPageBean;->game_id:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/CommentRequestPageBean;->pn:I

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/CommentRequestPageBean;->pc:I

    return-void
.end method


# virtual methods
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentRequestPageBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentRequestPageBean;->pc:I

    .line 2
    .line 3
    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentRequestPageBean;->pn:I

    .line 2
    .line 3
    return v0
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentRequestPageBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPc(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pc"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentRequestPageBean;->pc:I

    .line 2
    .line 3
    return-void
.end method

.method public setPn(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentRequestPageBean;->pn:I

    .line 2
    .line 3
    return-void
.end method
