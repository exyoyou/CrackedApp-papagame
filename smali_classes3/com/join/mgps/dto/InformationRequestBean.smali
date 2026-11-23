.class public Lcom/join/mgps/dto/InformationRequestBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private comment_type:[Ljava/lang/Integer;

.field private information_id:Ljava/lang/String;

.field private pn:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/join/mgps/dto/InformationRequestBean;->comment_type:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "information_id",
            "pn",
            "comment_type"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dto/InformationRequestBean;->information_id:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/InformationRequestBean;->comment_type:[Ljava/lang/Integer;

    .line 6
    iput p2, p0, Lcom/join/mgps/dto/InformationRequestBean;->pn:I

    return-void
.end method


# virtual methods
.method public getComment_type()[Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationRequestBean;->comment_type:[Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInformation_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationRequestBean;->information_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationRequestBean;->pn:I

    .line 2
    .line 3
    return v0
.end method

.method public setComment_type([Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationRequestBean;->comment_type:[Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setInformation_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "information_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationRequestBean;->information_id:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/InformationRequestBean;->pn:I

    .line 2
    .line 3
    return-void
.end method
