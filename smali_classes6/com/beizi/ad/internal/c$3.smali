.class Lcom/beizi/ad/internal/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/internal/c;->a(Lcom/beizi/ad/model/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/model/d;

.field final synthetic b:Lcom/beizi/ad/internal/c;


# direct methods
.method constructor <init>(Lcom/beizi/ad/internal/c;Lcom/beizi/ad/model/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/internal/c$3;->b:Lcom/beizi/ad/internal/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/ad/internal/c$3;->a:Lcom/beizi/ad/model/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/internal/c$3;->a:Lcom/beizi/ad/model/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/beizi/ad/model/d;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/beizi/ad/lance/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/internal/c$3;->b:Lcom/beizi/ad/internal/c;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/beizi/ad/internal/c;->j:Landroid/content/Context;

    .line 21
    .line 22
    const-string v1, "blackList"

    .line 23
    .line 24
    iget-object v2, p0, Lcom/beizi/ad/internal/c$3;->a:Lcom/beizi/ad/model/d;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/beizi/ad/model/d;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lcom/beizi/ad/lance/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/tool/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method
