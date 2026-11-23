.class public Lcom/byazt/ux/c$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/wdw/ve$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1a3,
        0x4d0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ux/c;->c(Lcom/byazt/ete/ic;Lcom/byazt/xj/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Lcom/byazt/xj/ve;

.field public final synthetic ve:Lcom/byazt/ux/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ux/c;Lcom/byazt/ete/ic;Lcom/byazt/xj/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ux/c$11;->ve:Lcom/byazt/ux/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ux/c$11;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ux/c$11;->tt:Lcom/byazt/xj/ve;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/ux/c$11$1;

    invoke-direct {v1, p0}, Lcom/byazt/ux/c$11$1;-><init>(Lcom/byazt/ux/c$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/byazt/ux/c$11;->ve:Lcom/byazt/ux/c;

    iget-object v1, p0, Lcom/byazt/ux/c$11;->c:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/ux/c$11;->tt:Lcom/byazt/xj/ve;

    invoke-static {v0, v1, v2}, Lcom/byazt/ux/c;->c(Lcom/byazt/ux/c;Lcom/byazt/ete/ic;Lcom/byazt/xj/ve;)V

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/ux/c$11$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/byazt/ux/c$11$2;-><init>(Lcom/byazt/ux/c$11;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Lcom/byazt/ux/c$11;->ve:Lcom/byazt/ux/c;

    iget-object p2, p0, Lcom/byazt/ux/c$11;->c:Lcom/byazt/ete/ic;

    iget-object v0, p0, Lcom/byazt/ux/c$11;->tt:Lcom/byazt/xj/ve;

    invoke-static {p1, p2, v0}, Lcom/byazt/ux/c;->c(Lcom/byazt/ux/c;Lcom/byazt/ete/ic;Lcom/byazt/xj/ve;)V

    return-void
.end method
