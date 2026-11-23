.class public abstract Lcom/byazt/jl/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9d,
        0x47
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/byazt/on/a;",
        "W::",
        "Lcom/byazt/on/sp;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public da:I

.field public i:I

.field public sl:I

.field public final sp:Lcom/byazt/on/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public t:I

.field public final u:Landroid/graphics/Rect;

.field public x:I

.field public final yp:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/byazt/on/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/jl/x;->u:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/jl/x;->yp:Landroid/graphics/Rect;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/byazt/jl/x;->sp:Lcom/byazt/on/a;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public abstract c(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/byazt/on/sp;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "I",
            "Landroid/graphics/Bitmap;",
            "TW;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method
