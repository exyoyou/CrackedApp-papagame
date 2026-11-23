.class public Lcom/facebook/cache/disk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/cache/disk/g;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ageWeight",
            "sizeWeight"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/facebook/cache/disk/i;->a:F

    .line 5
    .line 6
    iput p2, p0, Lcom/facebook/cache/disk/i;->b:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method a(Lcom/facebook/cache/disk/c$c;J)F
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "now"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/cache/disk/c$c;->getTimestamp()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr p2, v0

    .line 6
    invoke-interface {p1}, Lcom/facebook/cache/disk/c$c;->getSize()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget p1, p0, Lcom/facebook/cache/disk/i;->a:F

    .line 11
    .line 12
    long-to-float p2, p2

    .line 13
    mul-float p1, p1, p2

    .line 14
    .line 15
    iget p2, p0, Lcom/facebook/cache/disk/i;->b:F

    .line 16
    .line 17
    long-to-float p3, v0

    .line 18
    mul-float p2, p2, p3

    .line 19
    .line 20
    add-float/2addr p1, p2

    .line 21
    return p1
.end method

.method public get()Lcom/facebook/cache/disk/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/cache/disk/i$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/i$a;-><init>(Lcom/facebook/cache/disk/i;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
