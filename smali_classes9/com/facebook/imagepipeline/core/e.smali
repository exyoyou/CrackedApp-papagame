.class public Lcom/facebook/imagepipeline/core/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/core/d;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


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
.method public a(Lcom/facebook/cache/disk/b;)Lcom/facebook/cache/disk/c;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diskCacheConfig"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/cache/disk/e;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/cache/disk/b;->l()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/facebook/cache/disk/b;->c()Lcom/facebook/common/internal/l;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/facebook/cache/disk/b;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p1}, Lcom/facebook/cache/disk/b;->d()Lcom/facebook/cache/common/CacheErrorLogger;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/facebook/cache/disk/e;-><init>(ILcom/facebook/common/internal/l;Ljava/lang/String;Lcom/facebook/cache/common/CacheErrorLogger;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
