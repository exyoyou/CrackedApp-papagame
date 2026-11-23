.class public Lcom/byazt/wn/sp$1$1;
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
        0x228
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wn/sp$1;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wn/sp$1;


# direct methods
.method public constructor <init>(Lcom/byazt/wn/sp$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wn/sp$1$1;->c:Lcom/byazt/wn/sp$1;

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
    iget-object v0, p0, Lcom/byazt/wn/sp$1$1;->c:Lcom/byazt/wn/sp$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/wn/sp$1;->c:Lcom/byazt/wn/sp;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/wn/sp;->c(Lcom/byazt/wn/sp;)Lcom/byazt/uj/ve;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getTTAdatperCallback()Lcom/byazt/zq/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/byazt/uhf/c;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/byazt/uhf/c;->c()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
