.class public Lcom/byazt/ky/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zyd/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a5,
        0x22
    }
.end annotation


# instance fields
.field public c:Z

.field public n:Lcom/byazt/ha/n;

.field public tt:Lcom/byazt/aas/c$tt;

.field public uj:Z

.field public ve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/qcl/tt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ky/a;->ve:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/byazt/ky/a;->c:Z

    .line 13
    .line 14
    new-instance v0, Lcom/byazt/ky/a$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/byazt/ky/a$1;-><init>(Lcom/byazt/ky/a;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/byazt/ky/a;->tt:Lcom/byazt/aas/c$tt;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ky/a;)Lcom/byazt/ha/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ky/a;->n:Lcom/byazt/ha/n;

    return-object p0
.end method

.method private c(Lcom/byazt/ha/n;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ky/a;->n:Lcom/byazt/ha/n;

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/byazt/ky/a;->n:Lcom/byazt/ha/n;

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ky/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/byazt/ky/a;->c:Z

    if-nez v0, :cond_1

    .line 6
    iput-object p1, p0, Lcom/byazt/ky/a;->n:Lcom/byazt/ha/n;

    .line 7
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ky/a;->tt:Lcom/byazt/aas/c$tt;

    invoke-virtual {p1, v0}, Lcom/byazt/aas/c;->c(Lcom/byazt/aas/c$tt;)V

    :cond_1
    return-void
.end method

.method private c()Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->vl()Z

    move-result v0

    return v0
.end method

.method public static synthetic tt(Lcom/byazt/ky/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ky/a;->ve:Ljava/util/List;

    return-object p0
.end method

.method private tt(Lcom/byazt/ha/n;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 8
    iget-object v0, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view_observer_send  l_id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  n_l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/ky/a;->ve:Ljava/util/List;

    invoke-static {v1}, Lcom/byazt/qcl/uj;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tme_node_line"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/byazt/ky/a;->ve:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/qcl/tt;

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lifecycleType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/byazt/qcl/tt;->tt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  eventType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/byazt/qcl/tt;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  ts:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/byazt/qcl/tt;->ve()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/byazt/qcl/tt;->uj()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/byazt/ky/a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 13
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "lifecycle_id"

    .line 14
    iget-object v2, p0, Lcom/byazt/ky/a;->n:Lcom/byazt/ha/n;

    invoke-virtual {v2}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "container_rect"

    .line 15
    iget-object v2, p0, Lcom/byazt/ky/a;->n:Lcom/byazt/ha/n;

    iget-object v2, v2, Lcom/byazt/ha/n;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "image_rect"

    .line 16
    iget-object v2, p0, Lcom/byazt/ky/a;->n:Lcom/byazt/ha/n;

    iget-object v2, v2, Lcom/byazt/ha/n;->tt:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "video_rect"

    .line 17
    iget-object v2, p0, Lcom/byazt/ky/a;->n:Lcom/byazt/ha/n;

    iget-object v2, v2, Lcom/byazt/ha/n;->ve:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v1, p0, Lcom/byazt/ky/a;->n:Lcom/byazt/ha/n;

    iget v1, v1, Lcom/byazt/ha/n;->uj:I

    if-lez v1, :cond_3

    const-string v2, "image_mode"

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_3
    iget-object v1, p0, Lcom/byazt/ky/a;->ve:Ljava/util/List;

    const-string v2, "view_node_line"

    invoke-static {v1, p1, v2, v0}, Lcom/byazt/qcl/uj;->c(Ljava/util/List;Lcom/byazt/ip/c;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view"

    invoke-static {v1}, Lcom/byazt/qcl/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/byazt/ip/c;->sl:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/byazt/qcl/uj;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/byazt/ha/n;Lcom/byazt/ip/x;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdViewNodeLineObserver onDetached "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " rit:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "  adType:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p1, Lcom/byazt/ip/c;->sp:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " source:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Tme_node_line"

    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Lcom/byazt/ky/a;->c(Lcom/byazt/ha/n;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/byazt/ky/a;->uj:Z

    .line 61
    .line 62
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 63
    .line 64
    if-eqz p2, :cond_0

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    :goto_0
    const-string p2, "view"

    .line 76
    .line 77
    const-string v3, "detached"

    .line 78
    .line 79
    invoke-direct {v0, p2, v3, v1, v2}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lcom/byazt/ky/a;->ve:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 88
    .line 89
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public c(Lcom/byazt/ha/n;Lcom/byazt/ip/x;)V
    .locals 4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTAdViewNodeLineObserver onCreated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  adType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/byazt/ip/c;->sp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tme_node_line"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/byazt/qcl/tt;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    const-string p2, "view"

    const-string v3, "created"

    invoke-direct {v0, p2, v3, v1, v2}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 10
    iget-object p2, p0, Lcom/byazt/ky/a;->ve:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    return-void
.end method

.method public n(Lcom/byazt/ha/n;Lcom/byazt/ip/x;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdViewNodeLineObserver onInvisibled "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " rit:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "  adType:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p1, Lcom/byazt/ip/c;->sp:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " source:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Tme_node_line"

    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Lcom/byazt/ky/a;->c(Lcom/byazt/ha/n;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/byazt/ky/a;->uj:Z

    .line 61
    .line 62
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 63
    .line 64
    if-eqz p2, :cond_0

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    :goto_0
    const-string p2, "view"

    .line 76
    .line 77
    const-string v3, "invisibled"

    .line 78
    .line 79
    invoke-direct {v0, p2, v3, v1, v2}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lcom/byazt/ky/a;->ve:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 88
    .line 89
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public sp(Lcom/byazt/ha/n;Lcom/byazt/ip/x;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdViewNodeLineObserver onEnd "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " rit:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "  adType:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p1, Lcom/byazt/ip/c;->sp:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " source:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Tme_node_line"

    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v0, p0, Lcom/byazt/ky/a;->c:Z

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/byazt/ky/a;->c:Z

    .line 63
    .line 64
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/byazt/ky/a;->tt:Lcom/byazt/aas/c$tt;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->tt(Lcom/byazt/aas/c$tt;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 78
    .line 79
    const-string v3, "view"

    .line 80
    .line 81
    const-string v4, "end"

    .line 82
    .line 83
    if-eqz p2, :cond_1

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    :goto_0
    move-wide v5, v1

    .line 95
    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    move-object v2, v0

    .line 100
    invoke-direct/range {v2 .. v7}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Lcom/byazt/ky/a;->ve:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 109
    .line 110
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 111
    .line 112
    .line 113
    iget-boolean p2, p0, Lcom/byazt/ky/a;->uj:Z

    .line 114
    .line 115
    if-eqz p2, :cond_2

    .line 116
    .line 117
    invoke-direct {p0, p1}, Lcom/byazt/ky/a;->tt(Lcom/byazt/ha/n;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    return-void
.end method

.method public tt(Lcom/byazt/ha/n;Lcom/byazt/ip/x;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTAdViewNodeLineObserver onAttached "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  adType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/byazt/ip/c;->sp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tme_node_line"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/ky/a;->c(Lcom/byazt/ha/n;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/byazt/ky/a;->uj:Z

    .line 5
    new-instance v0, Lcom/byazt/qcl/tt;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    const-string p2, "view"

    const-string v3, "attached"

    invoke-direct {v0, p2, v3, v1, v2}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 6
    iget-object p2, p0, Lcom/byazt/ky/a;->ve:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    return-void
.end method

.method public uj(Lcom/byazt/ha/n;Lcom/byazt/ip/x;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdViewNodeLineObserver onVisibled "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " rit:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "  adType:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p1, Lcom/byazt/ip/c;->sp:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " source:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Tme_node_line"

    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Lcom/byazt/ky/a;->c(Lcom/byazt/ha/n;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/byazt/ky/a;->uj:Z

    .line 61
    .line 62
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 63
    .line 64
    if-eqz p2, :cond_0

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    :goto_0
    const-string p2, "view"

    .line 76
    .line 77
    const-string v3, "visibled"

    .line 78
    .line 79
    invoke-direct {v0, p2, v3, v1, v2}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lcom/byazt/ky/a;->ve:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 88
    .line 89
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public ve(Lcom/byazt/ha/n;Lcom/byazt/ip/x;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdViewNodeLineObserver onFocused "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " rit:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "  adType:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p1, Lcom/byazt/ip/c;->sp:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " source:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Tme_node_line"

    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Lcom/byazt/ky/a;->c(Lcom/byazt/ha/n;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/byazt/ky/a;->uj:Z

    .line 61
    .line 62
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 63
    .line 64
    const-string v2, "view"

    .line 65
    .line 66
    const-string v3, "focused"

    .line 67
    .line 68
    if-eqz p2, :cond_0

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    :goto_0
    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    move-object v1, v0

    .line 84
    invoke-direct/range {v1 .. v6}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lcom/byazt/ky/a;->ve:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 93
    .line 94
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
