.class Lcom/papa/sim/statistic/http/c$f;
.super Lcom/papa/sim/statistic/http/b$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/http/c;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa/sim/statistic/http/b$p<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/sim/statistic/http/a;

.field final synthetic c:Lcom/papa/sim/statistic/http/c;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/http/c;Lcom/papa/sim/statistic/http/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/c$f;->c:Lcom/papa/sim/statistic/http/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/http/c$f;->b:Lcom/papa/sim/statistic/http/a;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/papa/sim/statistic/http/b$p;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa/sim/statistic/http/c$f;->b:Lcom/papa/sim/statistic/http/a;

    .line 5
    .line 6
    invoke-interface {p1, p2}, Lcom/papa/sim/statistic/http/a;->a(Ljava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/http/c$f;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "\"flag\":\"1\""

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "\"flag\":1"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/papa/sim/statistic/http/c$f;->b:Lcom/papa/sim/statistic/http/a;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-interface {p1, v0}, Lcom/papa/sim/statistic/http/a;->a(Ljava/lang/Exception;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/papa/sim/statistic/http/c$f;->b:Lcom/papa/sim/statistic/http/a;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/papa/sim/statistic/http/a;->onSuccess(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_1
    return-void
.end method
