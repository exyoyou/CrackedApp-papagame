.class public Lcom/byazt/bb/ve$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/aas/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x15b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bb/ve;->tt(Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/bb/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/bb/ve;Landroid/content/Intent;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bb/ve$3;->ve:Lcom/byazt/bb/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bb/ve$3;->c:Landroid/content/Intent;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/bb/ve$3;->tt:Z

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
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "source"

    .line 7
    .line 8
    const-string v2, "DeepLinkConverter"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/bb/ve$3;->ve:Lcom/byazt/bb/ve;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/byazt/bb/ve;->c(Lcom/byazt/bb/ve;)Lcom/byazt/ete/ic;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/byazt/bb/ve$3;->ve:Lcom/byazt/bb/ve;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/byazt/bb/ve;->tt(Lcom/byazt/bb/ve;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v1, v2, v0, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/bb/ve$3;->ve:Lcom/byazt/bb/ve;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/bb/ve;->a(Lcom/byazt/bb/ve;)Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/byazt/bb/ve$3;->c:Landroid/content/Intent;

    .line 36
    .line 37
    new-instance v2, Lcom/byazt/bb/ve$3$1;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lcom/byazt/bb/ve$3$1;-><init>(Lcom/byazt/bb/ve$3;)V

    .line 40
    .line 41
    .line 42
    sget-object v3, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    .line 43
    .line 44
    const-string v4, "internal"

    .line 45
    .line 46
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/nr/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/nr/tt$c;Z)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public tt()V
    .locals 0

    return-void
.end method

.method public ve()V
    .locals 0

    return-void
.end method
