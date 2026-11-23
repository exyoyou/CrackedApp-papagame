.class public Lcom/facebook/fresco/animation/bitmap/preparation/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/preparation/a;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final c:I = 0x3


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/fresco/animation/bitmap/preparation/d;

    .line 2
    .line 3
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/d;->b:Ljava/lang/Class;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "framesToPrepare"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/d;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/fresco/animation/bitmap/preparation/b;Lu3/a;Lcom/facebook/fresco/animation/backend/a;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmapFramePreparer",
            "bitmapFrameCache",
            "animationBackend",
            "lastDrawnFrameNumber"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    iget v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/d;->a:I

    .line 3
    .line 4
    if-gt v0, v1, :cond_2

    .line 5
    .line 6
    add-int v1, p4, v0

    .line 7
    .line 8
    invoke-interface {p3}, Lcom/facebook/fresco/animation/backend/d;->c()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    rem-int/2addr v1, v2

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-static {v2}, Li3/a;->R(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    sget-object v2, Lcom/facebook/fresco/animation/bitmap/preparation/d;->b:Ljava/lang/Class;

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "Preparing frame %d, last drawn: %d"

    .line 31
    .line 32
    invoke-static {v2, v5, v3, v4}, Li3/a;->W(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-interface {p1, p2, p3, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/b;->a(Lu3/a;Lcom/facebook/fresco/animation/backend/a;I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method
