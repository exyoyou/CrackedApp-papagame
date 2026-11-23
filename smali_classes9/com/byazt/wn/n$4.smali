.class public Lcom/byazt/wn/n$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ylx/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a,
        0x1fa
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wn/n;->callFullVideoComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wn/n;


# direct methods
.method public constructor <init>(Lcom/byazt/wn/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wn/n$4;->c:Lcom/byazt/wn/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wn/n$4;->c:Lcom/byazt/wn/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wn/n;->c(Lcom/byazt/wn/n;)Lcom/byazt/uj/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getTTAdatperCallback()Lcom/byazt/zq/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/ln/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/byazt/ln/c;->uj()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
