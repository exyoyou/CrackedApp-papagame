.class public Lcom/byazt/glq/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x289,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/glq/c;->c(Landroid/content/Context;Ljava/util/Map;Lcom/byazt/eia/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Lcom/byazt/glq/c;

.field public final synthetic tt:Lcom/byazt/eia/i;

.field public final synthetic uj:Landroid/content/Context;

.field public final synthetic ve:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/byazt/glq/c;Ljava/lang/String;Lcom/byazt/eia/i;Ljava/util/Map;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/glq/c$1;->n:Lcom/byazt/glq/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/glq/c$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/glq/c$1;->tt:Lcom/byazt/eia/i;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/glq/c$1;->ve:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/glq/c$1;->uj:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/glq/c$1;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const/high16 v1, 0x10000000

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "source"

    .line 28
    .line 29
    const-string v3, "LiveDoubleOpenProcessor"

    .line 30
    .line 31
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v2, "scheme"

    .line 35
    .line 36
    iget-object v3, p0, Lcom/byazt/glq/c$1;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/byazt/glq/c$1;->tt:Lcom/byazt/eia/i;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/byazt/glq/c$1;->ve:Ljava/util/Map;

    .line 44
    .line 45
    invoke-static {v2, v3}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/byazt/glq/c$1;->n:Lcom/byazt/glq/c;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/byazt/glq/c;->c(Lcom/byazt/glq/c;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static {v2, v3, v1, v4}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/byazt/glq/c$1;->uj:Landroid/content/Context;

    .line 60
    .line 61
    new-instance v2, Lcom/byazt/glq/c$1$1;

    .line 62
    .line 63
    invoke-direct {v2, p0}, Lcom/byazt/glq/c$1$1;-><init>(Lcom/byazt/glq/c$1;)V

    .line 64
    .line 65
    .line 66
    sget-object v3, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    .line 67
    .line 68
    const-string v4, "internal"

    .line 69
    .line 70
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v1, v0, v2, v3}, Lcom/byazt/nr/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/nr/tt$c;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
