.class public Lcom/sigmob/sdk/base/views/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/views/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/base/views/x$a;->a:I

    const/16 v1, 0xc

    iput v1, p0, Lcom/sigmob/sdk/base/views/x$a;->b:I

    const-string v1, "#4d000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/base/views/x$a;->c:I

    const/16 v1, 0x12

    iput v1, p0, Lcom/sigmob/sdk/base/views/x$a;->d:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sigmob/sdk/base/views/x$a;->e:I

    iput v1, p0, Lcom/sigmob/sdk/base/views/x$a;->f:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/x$a;->g:[I

    aput v1, v0, v1

    return-void
.end method


# virtual methods
.method a(I)Lcom/sigmob/sdk/base/views/x$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mShape"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/base/views/x$a;->a:I

    return-object p0
.end method

.method a([I)Lcom/sigmob/sdk/base/views/x$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "BgColor"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/base/views/x$a;->g:[I

    return-object p0
.end method

.method a()Lcom/sigmob/sdk/base/views/x;
    .locals 10

    .line 3
    new-instance v9, Lcom/sigmob/sdk/base/views/x;

    iget v1, p0, Lcom/sigmob/sdk/base/views/x$a;->a:I

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/x$a;->g:[I

    iget v3, p0, Lcom/sigmob/sdk/base/views/x$a;->b:I

    iget v4, p0, Lcom/sigmob/sdk/base/views/x$a;->c:I

    iget v5, p0, Lcom/sigmob/sdk/base/views/x$a;->d:I

    iget v6, p0, Lcom/sigmob/sdk/base/views/x$a;->e:I

    iget v7, p0, Lcom/sigmob/sdk/base/views/x$a;->f:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sigmob/sdk/base/views/x;-><init>(I[IIIIIILcom/sigmob/sdk/base/views/x$1;)V

    return-object v9
.end method

.method b(I)Lcom/sigmob/sdk/base/views/x$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ShapeRadius"
        }
    .end annotation

    iput p1, p0, Lcom/sigmob/sdk/base/views/x$a;->b:I

    return-object p0
.end method

.method c(I)Lcom/sigmob/sdk/base/views/x$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowColor"
        }
    .end annotation

    iput p1, p0, Lcom/sigmob/sdk/base/views/x$a;->c:I

    return-object p0
.end method

.method d(I)Lcom/sigmob/sdk/base/views/x$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowRadius"
        }
    .end annotation

    iput p1, p0, Lcom/sigmob/sdk/base/views/x$a;->d:I

    return-object p0
.end method

.method e(I)Lcom/sigmob/sdk/base/views/x$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "OffsetX"
        }
    .end annotation

    iput p1, p0, Lcom/sigmob/sdk/base/views/x$a;->e:I

    return-object p0
.end method

.method f(I)Lcom/sigmob/sdk/base/views/x$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "OffsetY"
        }
    .end annotation

    iput p1, p0, Lcom/sigmob/sdk/base/views/x$a;->f:I

    return-object p0
.end method

.method g(I)Lcom/sigmob/sdk/base/views/x$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "BgColor"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/x$a;->g:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method
