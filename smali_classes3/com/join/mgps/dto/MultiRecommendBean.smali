.class public Lcom/join/mgps/dto/MultiRecommendBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj6/b;


# instance fields
.field private data:Ljava/lang/Object;

.field private viewType:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewType",
            "data"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/dto/MultiRecommendBean;->viewType:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/dto/MultiRecommendBean;->data:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MultiRecommendBean;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MultiRecommendBean;->viewType:I

    .line 2
    .line 3
    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MultiRecommendBean;->viewType:I

    .line 2
    .line 3
    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MultiRecommendBean;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MultiRecommendBean;->viewType:I

    .line 2
    .line 3
    return-void
.end method
