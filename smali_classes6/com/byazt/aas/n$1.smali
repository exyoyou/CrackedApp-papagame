.class public final Lcom/byazt/aas/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;Lcom/byazt/ux/sp;Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/ux/sp;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic sp:Lcom/byazt/ete/ic;

.field public final synthetic tt:Lcom/byazt/aas/n$c;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/aas/n$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ux/sp;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/aas/n$1;->c:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/aas/n$1;->tt:Lcom/byazt/aas/n$c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/aas/n$1;->ve:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/aas/n$1;->uj:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/aas/n$1;->n:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/aas/n$1;->a:Lcom/byazt/ux/sp;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/aas/n$1;->sp:Lcom/byazt/ete/ic;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/omf/x;->c(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/byazt/aas/n;->c()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/byazt/aas/n$1;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lcom/byazt/aas/nb;->uj()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/byazt/aas/n$1;->c:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/byazt/aas/n$1;->tt:Lcom/byazt/aas/n$c;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/byazt/aas/n;->c(Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/byazt/aas/n$1;->ve:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/byazt/aas/n$1;->c:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/byazt/aas/n$1;->uj:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/byazt/aas/n$1;->n:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v6, p0, Lcom/byazt/aas/n$1;->a:Lcom/byazt/ux/sp;

    .line 53
    .line 54
    iget-object v7, p0, Lcom/byazt/aas/n$1;->sp:Lcom/byazt/ete/ic;

    .line 55
    .line 56
    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ux/sp;Lcom/byazt/ete/ic;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
