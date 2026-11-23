.class public Lcom/byazt/wn/c$2$1;
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
        0x3f0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wn/c$2;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wn/c$2;


# direct methods
.method public constructor <init>(Lcom/byazt/wn/c$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wn/c$2$1;->c:Lcom/byazt/wn/c$2;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wn/c$2$1;->c:Lcom/byazt/wn/c$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/wn/c$2;->c:Lcom/byazt/wn/c;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/wn/c;->c(Lcom/byazt/wn/c;)Lcom/byazt/uj/ve;

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
    check-cast v0, Lcom/byazt/oc/c;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, v1}, Lcom/byazt/oc/c;->c(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
