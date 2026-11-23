.class public Lcom/join/mgps/dto/PapaHomeCheckNewDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private flag:Z

.field private state:I


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
.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PapaHomeCheckNewDataBean;->state:I

    .line 2
    .line 3
    return v0
.end method

.method public isFlag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PapaHomeCheckNewDataBean;->flag:Z

    .line 2
    .line 3
    return v0
.end method

.method public setFlag(Z)V
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
    iput-boolean p1, p0, Lcom/join/mgps/dto/PapaHomeCheckNewDataBean;->flag:Z

    .line 2
    .line 3
    return-void
.end method

.method public setState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PapaHomeCheckNewDataBean;->state:I

    .line 2
    .line 3
    return-void
.end method
