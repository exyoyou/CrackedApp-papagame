.class public Lcom/byazt/jl/i$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9d,
        0xbf
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jl/i;->tt(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/jl/i;


# direct methods
.method public constructor <init>(Lcom/byazt/jl/i;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jl/i$9;->ve:Lcom/byazt/jl/i;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/jl/i$9;->c:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/jl/i$9;->tt:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jl/i$9;->ve:Lcom/byazt/jl/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/jl/i;->i(Lcom/byazt/jl/i;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/byazt/jl/i$9;->ve:Lcom/byazt/jl/i;

    .line 7
    .line 8
    iget v1, p0, Lcom/byazt/jl/i$9;->c:I

    .line 9
    .line 10
    iput v1, v0, Lcom/byazt/jl/i;->ve:I

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/jl/i;->sp(Lcom/byazt/jl/i;)Lcom/byazt/zt/tt;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lcom/byazt/zt/tt;->tt()Lcom/byazt/on/a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/jl/i;->ve(Lcom/byazt/on/a;)Lcom/byazt/on/a;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/jl/i;->tt(Lcom/byazt/on/a;)Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/byazt/jl/i;->c(Lcom/byazt/jl/i;Landroid/graphics/Rect;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/byazt/jl/i$9;->tt:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/jl/i$9;->ve:Lcom/byazt/jl/i;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/byazt/jl/i;->x(Lcom/byazt/jl/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
