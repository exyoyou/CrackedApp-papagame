.class public Lcom/byazt/ol/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x29,
        0x2e
    }
.end annotation


# static fields
.field public static a:I = 0xa

.field public static volatile i:Lcom/byazt/ol/n; = null

.field public static final n:[B

.field public static sp:I = 0xa


# instance fields
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/el/SSWebView;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/el/SSWebView;",
            ">;"
        }
    .end annotation
.end field

.field public final uj:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/byazt/nl/uj;",
            "Lcom/byazt/ol/uj;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/byazt/nl/uj;",
            "Lcom/byazt/ol/ve;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Lcom/byazt/ol/n;->n:[B

    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/ol/n;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/ol/n;->c:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/ol/n;->tt:Ljava/util/List;

    .line 25
    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/byazt/ol/n;->ve:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    new-instance v0, Ljava/util/WeakHashMap;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/byazt/ol/n;->uj:Ljava/util/WeakHashMap;

    .line 39
    .line 40
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/byazt/mf/c;->ve()Lcom/byazt/mf/ve;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/byazt/mf/ve;->x()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    sput v1, Lcom/byazt/ol/n;->a:I

    .line 55
    .line 56
    invoke-interface {v0}, Lcom/byazt/mf/ve;->i()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    sput v0, Lcom/byazt/ol/n;->sp:I

    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method public static c()Lcom/byazt/ol/n;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ol/n;->i:Lcom/byazt/ol/n;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/ol/n;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/ol/n;->i:Lcom/byazt/ol/n;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/ol/n;

    invoke-direct {v1}, Lcom/byazt/ol/n;-><init>()V

    sput-object v1, Lcom/byazt/ol/n;->i:Lcom/byazt/ol/n;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/ol/n;->i:Lcom/byazt/ol/n;

    return-object v0
.end method

.method private static c(Ljava/lang/Runnable;)V
    .locals 2

    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 21
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/byazt/el/SSWebView;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/ol/n;->ve:Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/byazt/ol/ve;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/byazt/ol/ve;->c(Lcom/byazt/ol/tt;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/el/SSWebView;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/byazt/ol/n;->uj()I

    move-result p1

    const/4 p2, 0x0

    if-gtz p1, :cond_0

    return-object p2

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/byazt/ol/n;->tt:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/el/SSWebView;

    if-nez p1, :cond_1

    return-object p2

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/byazt/ol/n;->tt:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    return-object p1
.end method

.method public c(Lcom/byazt/el/SSWebView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/ol/n;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/byazt/ol/n;->sp:I

    if-lt v0, v1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/byazt/el/SSWebView;->destroy()V

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/byazt/ol/n;->tt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/byazt/ol/n;->tt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/byazt/ol/n;->tt:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/el/SSWebView;Lcom/byazt/ol/tt;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/ol/n;->ve:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ol/ve;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0, p2}, Lcom/byazt/ol/ve;->c(Lcom/byazt/ol/tt;)V

    goto :goto_0

    .line 17
    :cond_1
    new-instance v0, Lcom/byazt/ol/ve;

    invoke-direct {v0, p2}, Lcom/byazt/ol/ve;-><init>(Lcom/byazt/ol/tt;)V

    .line 18
    iget-object p2, p0, Lcom/byazt/ol/n;->ve:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p2, "SDK_INJECT_GLOBAL"

    .line 19
    invoke-virtual {p1, v0, p2}, Lcom/byazt/qg/BizWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Lcom/byazt/nl/uj;Lcom/byazt/pct/zm;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 23
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/ol/n;->uj:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ol/n;->uj:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ol/uj;

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v1, p2}, Lcom/byazt/ol/uj;->c(Lcom/byazt/pct/zm;)V

    goto :goto_0

    .line 27
    :cond_1
    new-instance v1, Lcom/byazt/ol/uj;

    invoke-direct {v1, p2}, Lcom/byazt/ol/uj;-><init>(Lcom/byazt/pct/zm;)V

    .line 28
    iget-object p2, p0, Lcom/byazt/ol/n;->uj:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    new-instance p2, Lcom/byazt/ol/n$1;

    invoke-direct {p2, p0, p1, v1, p3}, Lcom/byazt/ol/n$1;-><init>(Lcom/byazt/ol/n;Lcom/byazt/nl/uj;Lcom/byazt/ol/uj;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/byazt/ol/n;->c(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Lcom/byazt/nl/uj;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/byazt/ol/n;->uj:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ol/n;->uj:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ol/uj;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Lcom/byazt/ol/uj;->c(Lcom/byazt/pct/zm;)V

    .line 36
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    new-instance v0, Lcom/byazt/ol/n$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ol/n$2;-><init>(Lcom/byazt/ol/n;Lcom/byazt/nl/uj;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/ol/n;->c(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public n()I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ol/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/byazt/ol/n;->uj()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public n(Lcom/byazt/el/SSWebView;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/el/SSWebView;->destroy()V

    const/4 p1, 0x1

    return p1
.end method

.method public tt(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/el/SSWebView;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/byazt/ol/n;->ve()I

    move-result p1

    const/4 p2, 0x0

    if-gtz p1, :cond_0

    return-object p2

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/ol/n;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/el/SSWebView;

    if-nez p1, :cond_1

    return-object p2

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ol/n;->ve()I

    return-object p1
.end method

.method public tt()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/ol/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/el/SSWebView;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/byazt/el/SSWebView;->destroy()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/byazt/ol/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    iget-object v0, p0, Lcom/byazt/ol/n;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/el/SSWebView;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/byazt/el/SSWebView;->destroy()V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/byazt/ol/n;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    iget-object v0, p0, Lcom/byazt/ol/n;->uj:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ol/n;->uj:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tt(Lcom/byazt/el/SSWebView;)V
    .locals 0
    .annotation build Lcom/bytedance/component/sdk/annotation/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/el/SSWebView;->M_()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/ol/n;->a(Lcom/byazt/el/SSWebView;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/ol/n;->c(Lcom/byazt/el/SSWebView;)V

    return-void
.end method

.method public uj()I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/ol/n;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public uj(Lcom/byazt/el/SSWebView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/byazt/ol/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/byazt/ol/n;->a:I

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/byazt/el/SSWebView;->destroy()V

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/byazt/ol/n;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/byazt/ol/n;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/byazt/ol/n;->ve()I

    :cond_2
    return-void
.end method

.method public ve()I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/ol/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public ve(Lcom/byazt/el/SSWebView;)V
    .locals 0
    .annotation build Lcom/bytedance/component/sdk/annotation/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/el/SSWebView;->M_()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/ol/n;->a(Lcom/byazt/el/SSWebView;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/ol/n;->uj(Lcom/byazt/el/SSWebView;)V

    return-void
.end method
