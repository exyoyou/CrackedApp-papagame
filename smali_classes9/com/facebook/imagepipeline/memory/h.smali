.class public Lcom/facebook/imagepipeline/memory/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/h$b;
    }
.end annotation


# static fields
.field public static final b:I = 0x180


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x180

    .line 5
    .line 6
    iput v0, p0, Lcom/facebook/imagepipeline/memory/h;->a:I

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/h$b;->b()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/facebook/imagepipeline/memory/h;->a:I

    .line 13
    .line 14
    return-void
.end method

.method public static b()Lcom/facebook/imagepipeline/memory/h$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/h$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/h$b;-><init>(Lcom/facebook/imagepipeline/memory/h$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/h;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public c(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxBitmapCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/memory/h;->a:I

    .line 2
    .line 3
    return-void
.end method
