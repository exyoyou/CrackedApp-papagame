.class public Lcom/byazt/jl/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9d,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/jl/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public c:B

.field public tt:Landroid/graphics/Rect;

.field public ve:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/byazt/jl/tt$c;->tt:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/jl/tt$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/byazt/jl/tt$c;-><init>()V

    return-void
.end method
