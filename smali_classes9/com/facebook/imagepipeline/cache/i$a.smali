.class public Lcom/facebook/imagepipeline/cache/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/cache/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final b:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Z

.field public final e:Lcom/facebook/imagepipeline/cache/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/i$b<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public f:I

.field public g:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/i$b;I)V
    .locals 0
    .param p3    # Lcom/facebook/imagepipeline/cache/i$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "valueRef",
            "observer",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/i$b<",
            "TK;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/i$a;->a:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->f(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/i$a;->b:Lcom/facebook/common/references/CloseableReference;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 24
    .line 25
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/cache/i$a;->d:Z

    .line 26
    .line 27
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/i$a;->e:Lcom/facebook/imagepipeline/cache/i$b;

    .line 28
    .line 29
    iput p1, p0, Lcom/facebook/imagepipeline/cache/i$a;->f:I

    .line 30
    .line 31
    iput p4, p0, Lcom/facebook/imagepipeline/cache/i$a;->g:I

    .line 32
    .line 33
    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;ILcom/facebook/imagepipeline/cache/i$b;)Lcom/facebook/imagepipeline/cache/i$a;
    .locals 1
    .param p3    # Lcom/facebook/imagepipeline/cache/i$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef",
            "size",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;I",
            "Lcom/facebook/imagepipeline/cache/i$b<",
            "TK;>;)",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p3, p2}, Lcom/facebook/imagepipeline/cache/i$a;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/i$b;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static b(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/i$b;)Lcom/facebook/imagepipeline/cache/i$a;
    .locals 1
    .param p2    # Lcom/facebook/imagepipeline/cache/i$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/i$b<",
            "TK;>;)",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/facebook/imagepipeline/cache/i$a;->a(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;ILcom/facebook/imagepipeline/cache/i$b;)Lcom/facebook/imagepipeline/cache/i$a;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method
