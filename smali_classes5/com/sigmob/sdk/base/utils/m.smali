.class public Lcom/sigmob/sdk/base/utils/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "top",
            "left",
            "bottom",
            "right"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/base/utils/m;->a:I

    iput p2, p0, Lcom/sigmob/sdk/base/utils/m;->b:I

    iput p3, p0, Lcom/sigmob/sdk/base/utils/m;->c:I

    iput p4, p0, Lcom/sigmob/sdk/base/utils/m;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/utils/m;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/utils/m;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/utils/m;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/utils/m;->d:I

    return v0
.end method
