.class public Lcom/byazt/el/SSWebView;
.super Lcom/byazt/qg/BizWebView;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x15c,
        0x9a2
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/el/SSWebView$c;,
        Lcom/byazt/el/SSWebView$tt;,
        Lcom/byazt/el/SSWebView$ve;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public da:F

.field public gr:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public gt:Lcom/byazt/el/SSWebView$tt;

.field public gu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Lcom/byazt/el/SSWebView$ve;

.field public i:F

.field public m:F

.field public md:Lorg/json/JSONObject;

.field public my:I

.field public n:Lcom/byazt/nzi/c;

.field public nu:F

.field public p:Lorg/json/JSONObject;

.field public qy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public rh:I

.field public rl:Lcom/byazt/nr/zm;

.field public sl:J

.field public sp:Lorg/json/JSONObject;

.field public t:J

.field public u:J

.field public x:Z

.field public yp:Z

.field public yv:Lorg/json/JSONObject;

.field public z:F

.field public zm:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/qg/BizWebView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/byazt/el/SSWebView;->i:F

    .line 6
    .line 7
    iput p1, p0, Lcom/byazt/el/SSWebView;->da:F

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/byazt/el/SSWebView;->sl:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/byazt/el/SSWebView;->t:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/byazt/el/SSWebView;->u:J

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/byazt/el/SSWebView;->yp:Z

    .line 19
    .line 20
    const/high16 p1, 0x41a00000    # 20.0f

    .line 21
    .line 22
    iput p1, p0, Lcom/byazt/el/SSWebView;->z:F

    .line 23
    .line 24
    const/high16 p1, 0x42480000    # 50.0f

    .line 25
    .line 26
    iput p1, p0, Lcom/byazt/el/SSWebView;->nu:F

    .line 27
    .line 28
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/byazt/el/SSWebView;->qy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/byazt/el/SSWebView;->gu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/byazt/el/SSWebView;->gr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/byazt/el/SSWebView;->zm:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    .line 57
    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/byazt/el/SSWebView;->gt:Lcom/byazt/el/SSWebView$tt;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/byazt/el/SSWebView;->setTouchStateListener(Lcom/byazt/el/SSWebView$ve;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/byazt/el/SSWebView;->O_()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/el/SSWebView;->n:Lcom/byazt/nzi/c;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/el/SSWebView;->sp:Lorg/json/JSONObject;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/byazt/el/SSWebView;->x:Z

    .line 18
    .line 19
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 4

    .line 14
    iget-boolean v0, p0, Lcom/byazt/el/SSWebView;->x:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/byazt/el/SSWebView;->n:Lcom/byazt/nzi/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/byazt/el/SSWebView;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/el/SSWebView;->sp:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 15
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->sp:Lorg/json/JSONObject;

    const-string v1, "start_x"

    iget v2, p0, Lcom/byazt/el/SSWebView;->i:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->sp:Lorg/json/JSONObject;

    const-string v1, "start_y"

    iget v2, p0, Lcom/byazt/el/SSWebView;->da:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->sp:Lorg/json/JSONObject;

    const-string v1, "offset_x"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/byazt/el/SSWebView;->i:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->sp:Lorg/json/JSONObject;

    const-string v1, "offset_y"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/byazt/el/SSWebView;->da:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->sp:Lorg/json/JSONObject;

    const-string v0, "url"

    invoke-virtual {p0}, Lcom/byazt/qg/BizWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->sp:Lorg/json/JSONObject;

    const-string v0, "tag"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/el/SSWebView;->t:J

    .line 23
    iget-object p1, p0, Lcom/byazt/qg/MultiWebview;->tt:Lcom/byazt/nl/uj;

    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/byazt/qg/MultiWebview;->tt:Lcom/byazt/nl/uj;

    iget-wide v0, p0, Lcom/byazt/el/SSWebView;->t:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const v1, 0x7b06fffe

    invoke-interface {p1, v1, v0}, Lcom/byazt/nl/ve;->setTag(ILjava/lang/Object;)V

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->sp:Lorg/json/JSONObject;

    const-string v0, "down_time"

    iget-wide v1, p0, Lcom/byazt/el/SSWebView;->sl:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->sp:Lorg/json/JSONObject;

    const-string v0, "up_time"

    iget-wide v1, p0, Lcom/byazt/el/SSWebView;->t:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 27
    invoke-static {}, Lcom/byazt/vj/c;->c()Lcom/byazt/vj/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/vj/c;->tt()Lcom/byazt/vj/tt;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-wide v0, p0, Lcom/byazt/el/SSWebView;->u:J

    iget-wide v2, p0, Lcom/byazt/el/SSWebView;->sl:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    .line 28
    iput-wide v2, p0, Lcom/byazt/el/SSWebView;->u:J

    .line 29
    invoke-static {}, Lcom/byazt/vj/c;->c()Lcom/byazt/vj/c;

    goto :goto_0

    .line 30
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/byazt/el/SSWebView;->i:F

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/byazt/el/SSWebView;->da:F

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/el/SSWebView;->sl:J

    .line 33
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/byazt/el/SSWebView;->sp:Lorg/json/JSONObject;

    .line 34
    iget-object p1, p0, Lcom/byazt/qg/MultiWebview;->tt:Lcom/byazt/nl/uj;

    if-eqz p1, :cond_5

    .line 35
    iget-object p1, p0, Lcom/byazt/qg/MultiWebview;->tt:Lcom/byazt/nl/uj;

    iget-wide v0, p0, Lcom/byazt/el/SSWebView;->sl:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const v1, 0x7b06ffff    # 7.0096E35f

    invoke-interface {p1, v1, v0}, Lcom/byazt/nl/ve;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 36
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private tt(IZ)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/byazt/nr/zm;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/byazt/nr/zm;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p2}, Lcom/byazt/nr/zm;->c(Z)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    iget p2, p0, Lcom/byazt/el/SSWebView;->z:F

    invoke-virtual {p1, p2}, Lcom/byazt/nr/zm;->c(F)V

    .line 12
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    iget p2, p0, Lcom/byazt/el/SSWebView;->m:F

    invoke-virtual {p1, p2}, Lcom/byazt/nr/zm;->ve(F)V

    .line 13
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    iget p2, p0, Lcom/byazt/el/SSWebView;->nu:F

    invoke-virtual {p1, p2}, Lcom/byazt/nr/zm;->tt(F)V

    .line 14
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    iget-object p2, p0, Lcom/byazt/el/SSWebView;->yv:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lcom/byazt/nr/zm;->c(Lorg/json/JSONObject;)V

    .line 15
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    iget-object p2, p0, Lcom/byazt/el/SSWebView;->p:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lcom/byazt/nr/zm;->ve(Lorg/json/JSONObject;)V

    .line 16
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    iget-object p2, p0, Lcom/byazt/el/SSWebView;->md:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lcom/byazt/nr/zm;->tt(Lorg/json/JSONObject;)V

    .line 17
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    iget p2, p0, Lcom/byazt/el/SSWebView;->rh:I

    invoke-virtual {p1, p2}, Lcom/byazt/nr/zm;->n(I)V

    .line 18
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    iget p2, p0, Lcom/byazt/el/SSWebView;->my:I

    invoke-virtual {p1, p2}, Lcom/byazt/nr/zm;->a(I)V

    .line 19
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    new-instance p2, Lcom/byazt/el/SSWebView$1;

    invoke-direct {p2, p0}, Lcom/byazt/el/SSWebView$1;-><init>(Lcom/byazt/el/SSWebView;)V

    invoke-virtual {p1, p2}, Lcom/byazt/nr/zm;->c(Lcom/byazt/nr/zm$c;)V

    .line 20
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    iget-object p2, p0, Lcom/byazt/el/SSWebView;->n:Lcom/byazt/nzi/c;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/byazt/nzi/c;->c()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/byazt/nr/zm;->ve(I)V

    return-void
.end method

.method private static tt(Landroid/view/View;)Z
    .locals 3

    const-string v0, "androidx.viewpager.widget.ViewPager"

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    return v1

    :catchall_0
    move-exception v2

    .line 3
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    return v1

    :catchall_1
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private ve(Landroid/view/View;)Z
    .locals 3

    .line 1
    const-string v0, "androidx.core.view.ScrollingView"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :catchall_0
    move-exception v2

    .line 26
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    return v1

    .line 50
    :catchall_1
    move-exception p1

    .line 51
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    return p1
.end method


# virtual methods
.method public M_()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/el/SSWebView;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/byazt/qg/BizWebView;->M_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public N_()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/nr/zm;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public O_()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->gu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/el/SSWebView;->n:Lcom/byazt/nzi/c;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/byazt/nzi/c;->c()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->uj(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 5
    invoke-static {v0}, Lcom/byazt/el/SSWebView;->tt(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/byazt/el/SSWebView;->ve(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/byazt/el/SSWebView;->c(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public c(I)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->gt:Lcom/byazt/el/SSWebView$tt;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p1}, Lcom/byazt/el/SSWebView$tt;->c(I)V

    :cond_0
    return-void
.end method

.method public c(IZ)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->gr:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->zm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 9
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->gu:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->qy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/el/SSWebView;->tt(IZ)V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/qg/BizWebView;->destroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/el/SSWebView;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->h:Lcom/byazt/el/SSWebView$ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Lcom/byazt/el/SSWebView$ve;->c(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->h:Lcom/byazt/el/SSWebView$ve;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/byazt/el/SSWebView$ve;->c(Landroid/view/MotionEvent;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public getInnerIWebView()Lcom/byazt/nl/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/MultiWebview;->tt:Lcom/byazt/nl/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaterialMeta()Lcom/byazt/nzi/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->n:Lcom/byazt/nzi/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/el/SSWebView;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->qy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->gu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->zm:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/byazt/el/SSWebView;->gr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-direct {p0, v0, v1}, Lcom/byazt/el/SSWebView;->tt(IZ)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->qy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/byazt/el/SSWebView;->n:Lcom/byazt/nzi/c;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/byazt/nzi/c;->c()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :cond_0
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/byazt/el/SSWebView;->c(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/byazt/el/SSWebView;->yp:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p0}, Lcom/byazt/el/SSWebView;->c(Landroid/view/View;)Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :cond_1
    return v0

    .line 36
    :catchall_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/qg/BizWebView;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->h:Lcom/byazt/el/SSWebView$ve;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Lcom/byazt/el/SSWebView$ve;->c(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/el/SSWebView;->rl:Lcom/byazt/nr/zm;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->n:Lcom/byazt/nzi/c;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/byazt/nzi/c;->c()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :cond_0
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(I)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/byazt/el/SSWebView;->n:Lcom/byazt/nzi/c;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/byazt/nzi/c;->c()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :cond_2
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(I)V

    .line 29
    .line 30
    .line 31
    :cond_3
    return-void
.end method

.method public setCalculationMethod(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/el/SSWebView;->rh:I

    .line 2
    .line 3
    return-void
.end method

.method public setCalculationTwistMethod(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/el/SSWebView;->my:I

    .line 2
    .line 3
    return-void
.end method

.method public setDeepShakeValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/el/SSWebView;->m:F

    .line 2
    .line 3
    return-void
.end method

.method public setIsPreventTouchEvent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/el/SSWebView;->yp:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLandingPage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/el/SSWebView;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMaterialMeta(Lcom/byazt/nzi/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/el/SSWebView;->n:Lcom/byazt/nzi/c;

    .line 2
    .line 3
    return-void
.end method

.method public setOnShakeListener(Lcom/byazt/el/SSWebView$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/el/SSWebView;->gt:Lcom/byazt/el/SSWebView$tt;

    .line 2
    .line 3
    return-void
.end method

.method public setShakeInteractConf(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/el/SSWebView;->p:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-void
.end method

.method public setShakeValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/el/SSWebView;->z:F

    .line 2
    .line 3
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/el/SSWebView;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTouchStateListener(Lcom/byazt/el/SSWebView$ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/el/SSWebView;->h:Lcom/byazt/el/SSWebView$ve;

    .line 2
    .line 3
    return-void
.end method

.method public setTwistConfig(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/el/SSWebView;->yv:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-void
.end method

.method public setTwistInteractConf(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/el/SSWebView;->md:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/el/SSWebView$ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/byazt/el/SSWebView$ve;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/byazt/el/SSWebView;->setTouchStateListener(Lcom/byazt/el/SSWebView$ve;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/byazt/el/SSWebView;->setTouchStateListener(Lcom/byazt/el/SSWebView$ve;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    new-instance p1, Lcom/byazt/el/SSWebView$c;

    .line 19
    .line 20
    invoke-direct {p1}, Lcom/byazt/el/SSWebView$c;-><init>()V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-super {p0, p1}, Lcom/byazt/qg/BizWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setWriggleValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/el/SSWebView;->nu:F

    .line 2
    .line 3
    return-void
.end method
