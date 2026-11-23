.class public Lcom/facebook/drawee/components/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final d:I = 0x4


# instance fields
.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/facebook/drawee/components/c;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static c()Lcom/facebook/drawee/components/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/drawee/components/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/drawee/components/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/facebook/drawee/components/c;->a:Z

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/facebook/drawee/components/c;->b:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/facebook/drawee/components/c;->e()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/components/c;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/components/c;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/facebook/drawee/components/c;->c:I

    .line 6
    .line 7
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/facebook/drawee/components/c;->c:I

    .line 3
    .line 4
    return-void
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxTapToRetryAttemps"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/drawee/components/c;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public g(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tapToRetryEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/components/c;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/components/c;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/facebook/drawee/components/c;->c:I

    .line 6
    .line 7
    iget v1, p0, Lcom/facebook/drawee/components/c;->b:I

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method
