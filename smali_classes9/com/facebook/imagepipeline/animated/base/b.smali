.class public Lcom/facebook/imagepipeline/animated/base/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static e:Lcom/facebook/imagepipeline/animated/base/b;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/animated/base/b;->a()Lcom/facebook/imagepipeline/animated/base/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/c;->a()Lcom/facebook/imagepipeline/animated/base/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/facebook/imagepipeline/animated/base/b;->e:Lcom/facebook/imagepipeline/animated/base/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/c;)V
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
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/c;->d()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->a:Z

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/c;->b()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->b:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/c;->e()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:I

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/c;->c()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/b;->d:Z

    .line 27
    .line 28
    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/animated/base/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/imagepipeline/animated/base/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
