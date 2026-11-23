.class public Lcom/byazt/tjo/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zh/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x204,
        0xce
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tjo/i;->loadDrawToken(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/cw/c;Ljava/util/function/Function;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cw/c;

.field public final synthetic tt:Lcom/byazt/hz/sp;

.field public final synthetic ve:Lcom/byazt/tjo/i;


# direct methods
.method public constructor <init>(Lcom/byazt/tjo/i;Lcom/byazt/cw/c;Lcom/byazt/hz/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tjo/i$3;->ve:Lcom/byazt/tjo/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tjo/i$3;->c:Lcom/byazt/cw/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/tjo/i$3;->tt:Lcom/byazt/hz/sp;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/pp/c;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/tjo/i$3;->c:Lcom/byazt/cw/c;

    if-eqz v0, :cond_0

    .line 4
    iget v1, p1, Lcom/byazt/pp/c;->c:I

    iget-object p1, p1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/cw/c;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/tjo/i$3;->c:Lcom/byazt/cw/c;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/byazt/da/uj;

    iget-object v2, p0, Lcom/byazt/tjo/i$3;->tt:Lcom/byazt/hz/sp;

    invoke-direct {v1, v2}, Lcom/byazt/da/uj;-><init>(Lcom/byazt/hz/sp;)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/cw/c;->c(Ljava/lang/String;Lcom/byazt/pbu/c;)V

    :cond_0
    return-void
.end method
