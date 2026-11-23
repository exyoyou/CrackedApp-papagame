.class public Lcom/byazt/pct/nu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7c,
        0x89
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/pct/qy;


# instance fields
.field public volatile a:Z

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/pct/yp;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:Lcom/byazt/pct/c;

.field public final uj:Lcom/byazt/pct/da;

.field public final ve:Lcom/byazt/nl/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/pct/da;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/pct/nu;->n:Ljava/util/List;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/byazt/pct/nu;->a:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/byazt/pct/nu;->uj:Lcom/byazt/pct/da;

    .line 15
    .line 16
    iget-boolean v1, p1, Lcom/byazt/pct/da;->x:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    sget-object v1, Lcom/byazt/pct/nu;->c:Lcom/byazt/pct/qy;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v2, p1, Lcom/byazt/pct/da;->sl:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/byazt/pct/qy;->c(Ljava/lang/String;)Lcom/byazt/pct/rl;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    iget-object v2, p1, Lcom/byazt/pct/da;->c:Lcom/byazt/nl/uj;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget-object v2, p1, Lcom/byazt/pct/da;->tt:Lcom/byazt/pct/c;

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    new-instance v2, Lcom/byazt/pct/zm;

    .line 41
    .line 42
    invoke-direct {v2}, Lcom/byazt/pct/zm;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/byazt/pct/nu;->tt:Lcom/byazt/pct/c;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iput-object v2, p0, Lcom/byazt/pct/nu;->tt:Lcom/byazt/pct/c;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object v2, p1, Lcom/byazt/pct/da;->tt:Lcom/byazt/pct/c;

    .line 52
    .line 53
    iput-object v2, p0, Lcom/byazt/pct/nu;->tt:Lcom/byazt/pct/c;

    .line 54
    .line 55
    :goto_1
    iget-object v2, p0, Lcom/byazt/pct/nu;->tt:Lcom/byazt/pct/c;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/byazt/pct/da;->ve()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/byazt/pct/c;->c(Landroid/os/Looper;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/byazt/pct/nu;->tt:Lcom/byazt/pct/c;

    .line 65
    .line 66
    invoke-virtual {v2, p1, v1}, Lcom/byazt/pct/c;->c(Lcom/byazt/pct/da;Lcom/byazt/pct/rl;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p1, Lcom/byazt/pct/da;->c:Lcom/byazt/nl/uj;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/byazt/pct/nu;->ve:Lcom/byazt/nl/uj;

    .line 72
    .line 73
    iget-object v1, p1, Lcom/byazt/pct/da;->da:Lcom/byazt/pct/yp;

    .line 74
    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-boolean v0, p1, Lcom/byazt/pct/da;->a:Z

    .line 79
    .line 80
    invoke-static {v0}, Lcom/byazt/pct/i;->c(Z)V

    .line 81
    .line 82
    .line 83
    iget-boolean p1, p1, Lcom/byazt/pct/da;->sp:Z

    .line 84
    .line 85
    invoke-static {p1}, Lcom/byazt/pct/gr;->c(Z)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static c(Lcom/byazt/nl/uj;)Lcom/byazt/pct/da;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/pct/da;

    invoke-direct {v0, p0}, Lcom/byazt/pct/da;-><init>(Lcom/byazt/nl/uj;)V

    return-object v0
.end method

.method private tt()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/pct/nu;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    .line 7
    const-string v1, "JsBridge2 is already released!!!"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/pct/i;->c(Ljava/lang/RuntimeException;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/byazt/pct/n<",
            "**>;)",
            "Lcom/byazt/pct/nu;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lcom/byazt/pct/uj$tt;)Lcom/byazt/pct/nu;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, p2}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/pct/uj$tt;)Lcom/byazt/pct/nu;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;
    .locals 0
    .annotation build Lcom/bytedance/component/sdk/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/byazt/pct/n<",
            "**>;)",
            "Lcom/byazt/pct/nu;"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/byazt/pct/nu;->tt()V

    .line 6
    iget-object p2, p0, Lcom/byazt/pct/nu;->tt:Lcom/byazt/pct/c;

    iget-object p2, p2, Lcom/byazt/pct/c;->a:Lcom/byazt/pct/sp;

    invoke-virtual {p2, p1, p3}, Lcom/byazt/pct/sp;->c(Ljava/lang/String;Lcom/byazt/pct/n;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/pct/uj$tt;)Lcom/byazt/pct/nu;
    .locals 0
    .annotation build Lcom/bytedance/component/sdk/annotation/UiThread;
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/byazt/pct/nu;->tt()V

    .line 9
    iget-object p2, p0, Lcom/byazt/pct/nu;->tt:Lcom/byazt/pct/c;

    iget-object p2, p2, Lcom/byazt/pct/c;->a:Lcom/byazt/pct/sp;

    invoke-virtual {p2, p1, p3}, Lcom/byazt/pct/sp;->c(Ljava/lang/String;Lcom/byazt/pct/uj$tt;)V

    return-object p0
.end method

.method public c()V
    .locals 2

    .line 12
    iget-boolean v0, p0, Lcom/byazt/pct/nu;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/pct/nu;->tt:Lcom/byazt/pct/c;

    invoke-virtual {v0}, Lcom/byazt/pct/c;->ve()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/byazt/pct/nu;->a:Z

    .line 15
    iget-object v0, p0, Lcom/byazt/pct/nu;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/byazt/pct/nu;->tt()V

    .line 3
    iget-object v0, p0, Lcom/byazt/pct/nu;->tt:Lcom/byazt/pct/c;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/pct/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/pct/nu;->tt:Lcom/byazt/pct/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/byazt/pct/c;->a:Lcom/byazt/pct/sp;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/byazt/pct/sp;->c(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
