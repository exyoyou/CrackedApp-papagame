.class public Lcom/byazt/ky/sp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zyd/a;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a5,
        0x5b
    }
.end annotation


# instance fields
.field public c:Z

.field public tt:Ljava/util/List;
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
    iput-object v0, p0, Lcom/byazt/ky/sp;->tt:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/byazt/ky/sp;->c:Z

    .line 13
    .line 14
    return-void
.end method

.method private c(Lcom/byazt/ha/a;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app_observer_send  l_id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  n_l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/ky/sp;->tt:Ljava/util/List;

    invoke-static {v1}, Lcom/byazt/qcl/uj;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tme_node_line"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/ky/sp;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/qcl/tt;

    .line 8
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

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/byazt/ky/sp;->c()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "lifecycle_id"

    .line 11
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "node_line_name"

    const-string v2, "app_node_line"

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    iget-object v1, p0, Lcom/byazt/ky/sp;->tt:Ljava/util/List;

    const-string v2, "app"

    invoke-static {v0, p1, v1, v2}, Lcom/byazt/qcl/uj;->c(Lorg/json/JSONObject;Lcom/byazt/ip/c;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private c()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->vl()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public c(Lcom/byazt/ha/a;Lcom/byazt/ip/x;)V
    .locals 8

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTAppNodeLineObserver onStarted "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    new-instance v0, Lcom/byazt/qcl/tt;

    const-string v3, "app"

    const-string v4, "started"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    move-wide v5, v1

    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 4
    iget-object p2, p0, Lcom/byazt/ky/sp;->tt:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    return-void
.end method

.method public tt(Lcom/byazt/ha/a;Lcom/byazt/ip/x;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAppNodeLineObserver onForegrounded "

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
    const-string v1, " source:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "Tme_node_line"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 37
    .line 38
    const-string v3, "app"

    .line 39
    .line 40
    const-string v4, "foregrounded"

    .line 41
    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    :goto_0
    move-wide v5, v1

    .line 54
    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    move-object v2, v0

    .line 59
    invoke-direct/range {v2 .. v7}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/byazt/ky/sp;->tt:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 68
    .line 69
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public uj(Lcom/byazt/ha/a;Lcom/byazt/ip/x;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAppNodeLineObserver onEnd "

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
    const-string v1, " source:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "Tme_node_line"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/byazt/ky/sp;->c:Z

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/byazt/ky/sp;->c:Z

    .line 43
    .line 44
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 45
    .line 46
    const-string v2, "app"

    .line 47
    .line 48
    const-string v3, "end"

    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    :goto_0
    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    move-object v1, v0

    .line 66
    invoke-direct/range {v1 .. v6}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/byazt/ky/sp;->tt:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 75
    .line 76
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p1}, Lcom/byazt/ky/sp;->c(Lcom/byazt/ha/a;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public ve(Lcom/byazt/ha/a;Lcom/byazt/ip/x;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAppNodeLineObserver onBackgrounded "

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
    const-string v1, " source:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "Tme_node_line"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    :goto_0
    const-string p2, "app"

    .line 50
    .line 51
    const-string v3, "backgrounded"

    .line 52
    .line 53
    invoke-direct {v0, p2, v3, v1, v2}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/byazt/ky/sp;->tt:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 62
    .line 63
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 64
    .line 65
    .line 66
    iget-boolean p2, p0, Lcom/byazt/ky/sp;->c:Z

    .line 67
    .line 68
    if-nez p2, :cond_1

    .line 69
    .line 70
    invoke-direct {p0, p1}, Lcom/byazt/ky/sp;->c(Lcom/byazt/ha/a;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method
