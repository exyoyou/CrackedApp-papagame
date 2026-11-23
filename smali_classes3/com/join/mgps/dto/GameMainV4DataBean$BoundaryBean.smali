.class public Lcom/join/mgps/dto/GameMainV4DataBean$BoundaryBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameMainV4DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundaryBean"
.end annotation


# instance fields
.field private lower:I

.field private upper:I


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
.method public getLower()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$BoundaryBean;->lower:I

    .line 2
    .line 3
    return v0
.end method

.method public getUpper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$BoundaryBean;->upper:I

    .line 2
    .line 3
    return v0
.end method

.method public setLower(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lower"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$BoundaryBean;->lower:I

    .line 2
    .line 3
    return-void
.end method

.method public setUpper(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upper"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$BoundaryBean;->upper:I

    .line 2
    .line 3
    return-void
.end method
