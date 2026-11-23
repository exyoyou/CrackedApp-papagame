.class public Lcom/byazt/jl/i$4;
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
        0xcf
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jl/i;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/jl/i;


# direct methods
.method public constructor <init>(Lcom/byazt/jl/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jl/i$4;->c:Lcom/byazt/jl/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jl/i$4;->c:Lcom/byazt/jl/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/jl/i;->n(Lcom/byazt/jl/i;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/jl/i$4;->c:Lcom/byazt/jl/i;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/jl/i;->i()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
