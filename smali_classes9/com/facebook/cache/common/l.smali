.class public Lcom/facebook/cache/common/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
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

.method public static a(Ljava/io/InputStream;)Lcom/facebook/cache/common/k;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "is"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/cache/common/l$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/cache/common/l$a;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static b([B)Lcom/facebook/cache/common/k;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/cache/common/l$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/cache/common/l$b;-><init>([B)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
