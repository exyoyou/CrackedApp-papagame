.class public Lcom/byazt/ux/c$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1a3,
        0x438
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ux/c$11;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ux/c$11;


# direct methods
.method public constructor <init>(Lcom/byazt/ux/c$11;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ux/c$11$1;->c:Lcom/byazt/ux/c$11;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ux/c$11$1;->c:Lcom/byazt/ux/c$11;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ux/c$11;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->my()Lcom/byazt/ete/yp;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/ux/c$11$1;->c:Lcom/byazt/ux/c$11;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/byazt/ux/c$11;->ve:Lcom/byazt/ux/c;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/byazt/ux/c$11;->c:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->my()Lcom/byazt/ete/yp;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/byazt/ete/yp;->uj()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v1, v0, v2}, Lcom/byazt/nr/h;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
