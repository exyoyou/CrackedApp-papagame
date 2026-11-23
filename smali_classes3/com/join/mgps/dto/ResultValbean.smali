.class public Lcom/join/mgps/dto/ResultValbean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private val:Z


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
.method public isVal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ResultValbean;->val:Z

    .line 2
    .line 3
    return v0
.end method

.method public setVal(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ResultValbean;->val:Z

    .line 2
    .line 3
    return-void
.end method
