.class public Lcom/byazt/qg/WebViewImpl$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11b,
        0x13e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qg/WebViewImpl;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qg/WebViewImpl;


# direct methods
.method public constructor <init>(Lcom/byazt/qg/WebViewImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qg/WebViewImpl$27;->c:Lcom/byazt/qg/WebViewImpl;

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
    :try_start_0
    iget-object v0, p0, Lcom/byazt/qg/WebViewImpl$27;->c:Lcom/byazt/qg/WebViewImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/qg/WebViewImpl;->m(Lcom/byazt/qg/WebViewImpl;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/qg/WebViewImpl$27;->c:Lcom/byazt/qg/WebViewImpl;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/qg/WebViewImpl;->tt()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/qg/WebViewImpl$27;->c:Lcom/byazt/qg/WebViewImpl;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/qg/WebViewImpl;->c(Lcom/byazt/qg/WebViewImpl;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/qg/WebViewImpl$27;->c:Lcom/byazt/qg/WebViewImpl;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/byazt/qg/WebViewImpl;->c(Lcom/byazt/qg/WebViewImpl;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/byazt/qg/WebViewImpl$27;->c:Lcom/byazt/qg/WebViewImpl;

    .line 50
    .line 51
    invoke-static {v2, v1}, Lcom/byazt/qg/WebViewImpl;->ve(Lcom/byazt/qg/WebViewImpl;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/byazt/qg/WebViewImpl$27;->c:Lcom/byazt/qg/WebViewImpl;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {v0, v1}, Lcom/byazt/qg/WebViewImpl;->c(Lcom/byazt/qg/WebViewImpl;Ljava/util/Map;)Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/byazt/qg/WebViewImpl$27;->c:Lcom/byazt/qg/WebViewImpl;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/byazt/qg/WebViewImpl;->nu(Lcom/byazt/qg/WebViewImpl;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/byazt/qg/WebViewImpl$27;->c:Lcom/byazt/qg/WebViewImpl;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/byazt/qg/WebViewImpl$27;->c:Lcom/byazt/qg/WebViewImpl;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/byazt/qg/WebViewImpl;->yp(Lcom/byazt/qg/WebViewImpl;)Lcom/byazt/nl/tt;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/byazt/qg/WebViewImpl$27;->c:Lcom/byazt/qg/WebViewImpl;

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-static {v0, v1}, Lcom/byazt/qg/WebViewImpl;->ve(Lcom/byazt/qg/WebViewImpl;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    :catchall_0
    return-void
.end method
