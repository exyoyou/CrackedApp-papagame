.class public Lcom/byazt/ky/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zyd/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a5,
        0xf
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ha/ve;

.field public c:I

.field public n:Lcom/byazt/aas/c$tt;

.field public tt:I

.field public uj:Z

.field public ve:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/ky/uj;->c:I

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/ky/uj;->tt:I

    .line 8
    .line 9
    iput v0, p0, Lcom/byazt/ky/uj;->ve:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/byazt/ky/uj;->uj:Z

    .line 12
    .line 13
    new-instance v0, Lcom/byazt/ky/uj$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/byazt/ky/uj$1;-><init>(Lcom/byazt/ky/uj;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/ky/uj;->n:Lcom/byazt/aas/c$tt;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ky/uj;)Lcom/byazt/ha/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ky/uj;->a:Lcom/byazt/ha/ve;

    return-object p0
.end method

.method private c(Lcom/byazt/ha/ve;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 7
    iget-object v0, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show_observer_send  l_id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  load_l_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/byazt/ha/ve;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  n_l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/byazt/ha/ve;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/byazt/qcl/uj;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tme_node_line"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Lcom/byazt/ha/ve;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/qcl/tt;

    .line 10
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

    .line 11
    :cond_1
    iget v0, p0, Lcom/byazt/ky/uj;->tt:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/byazt/ky/uj;->ve:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/byazt/ky/uj;->c:I

    if-nez v0, :cond_2

    return-void

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/byazt/ky/uj;->c()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 13
    :cond_3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad_load_id"

    .line 14
    iget-object v2, p1, Lcom/byazt/ha/ve;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_show_id"

    .line 15
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/byazt/ky/uj;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 17
    iget-object v1, p1, Lcom/byazt/ha/ve;->a:Ljava/util/List;

    const-string v2, "ad_node_line"

    invoke-static {v1, p1, v2, v0}, Lcom/byazt/qcl/uj;->c(Ljava/util/List;Lcom/byazt/ip/c;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_show"

    invoke-static {v1}, Lcom/byazt/qcl/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/byazt/ip/c;->sl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/qcl/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/rgb/tt;->uj(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ky/uj;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/ky/uj;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    invoke-static {p1, v0}, Lcom/byazt/rgb/tt;->uj(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 23
    invoke-static {p1, v1}, Lcom/byazt/rgb/tt;->uj(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    .line 24
    invoke-static {p1, v2}, Lcom/byazt/rgb/tt;->uj(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    .line 25
    :try_start_0
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    const-string v2, "key_element_info"

    .line 26
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :cond_1
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    const-string v0, "no_action_array"

    .line 28
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    :cond_2
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    const-string v0, "motion_info"

    .line 30
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private c()Z
    .locals 1

    .line 20
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->vl()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdShowNodeLineObserver onClicked : "

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
    invoke-direct {p0}, Lcom/byazt/ky/uj;->c()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/byazt/ky/uj;->uj:Z

    .line 63
    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    iput-object p1, p0, Lcom/byazt/ky/uj;->a:Lcom/byazt/ha/ve;

    .line 67
    .line 68
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/byazt/ky/uj;->n:Lcom/byazt/aas/c$tt;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->c(Lcom/byazt/aas/c$tt;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    new-instance v0, Lcom/byazt/qcl/tt;

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
    const-string p2, "ad_show"

    .line 95
    .line 96
    const-string v3, "clicked"

    .line 97
    .line 98
    invoke-direct {v0, p2, v3, v1, v2}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p1, Lcom/byazt/ha/ve;->a:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 107
    .line 108
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 109
    .line 110
    .line 111
    iget p2, p0, Lcom/byazt/ky/uj;->ve:I

    .line 112
    .line 113
    add-int/lit8 p2, p2, 0x1

    .line 114
    .line 115
    iput p2, p0, Lcom/byazt/ky/uj;->ve:I

    .line 116
    .line 117
    iget p2, p0, Lcom/byazt/ky/uj;->tt:I

    .line 118
    .line 119
    if-nez p2, :cond_2

    .line 120
    .line 121
    const/4 p2, 0x2

    .line 122
    iput p2, p1, Lcom/byazt/ip/c;->da:I

    .line 123
    .line 124
    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTAdShowNodeLineObserver onCreated : "

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

    .line 4
    new-instance v0, Lcom/byazt/qcl/tt;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    const-string p2, "ad_show"

    const-string v3, "created"

    invoke-direct {v0, p2, v3, v1, v2}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 5
    iget-object p2, p1, Lcom/byazt/ha/ve;->a:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    return-void
.end method

.method public n(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdShowNodeLineObserver onInvisibled : "

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
    iget v1, p1, Lcom/byazt/ha/ve;->ve:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "Tme_node_line"

    .line 50
    .line 51
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 55
    .line 56
    const-string v3, "ad_show"

    .line 57
    .line 58
    const-string v4, "invisibled"

    .line 59
    .line 60
    if-eqz p2, :cond_0

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    :goto_0
    move-wide v5, v1

    .line 72
    iget v7, p1, Lcom/byazt/ha/ve;->ve:I

    .line 73
    .line 74
    move-object v2, v0

    .line 75
    invoke-direct/range {v2 .. v7}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p1, Lcom/byazt/ha/ve;->a:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 84
    .line 85
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public sp(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdShowNodeLineObserver onEnd : "

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
    iget v1, p1, Lcom/byazt/ha/ve;->tt:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "Tme_node_line"

    .line 50
    .line 51
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/byazt/ky/uj;->uj:Z

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/byazt/ky/uj;->uj:Z

    .line 61
    .line 62
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/byazt/ky/uj;->n:Lcom/byazt/aas/c$tt;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->tt(Lcom/byazt/aas/c$tt;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 76
    .line 77
    const-string v3, "ad_show"

    .line 78
    .line 79
    const-string v4, "end"

    .line 80
    .line 81
    if-eqz p2, :cond_1

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v1

    .line 92
    :goto_0
    move-wide v5, v1

    .line 93
    iget v7, p1, Lcom/byazt/ha/ve;->tt:I

    .line 94
    .line 95
    move-object v2, v0

    .line 96
    invoke-direct/range {v2 .. v7}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p1, Lcom/byazt/ha/ve;->a:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 105
    .line 106
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, p1}, Lcom/byazt/ky/uj;->c(Lcom/byazt/ha/ve;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public tt(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdShowNodeLineObserver onStarted : "

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
    invoke-direct {p0}, Lcom/byazt/ky/uj;->c()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/byazt/ky/uj;->uj:Z

    .line 63
    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    iput-object p1, p0, Lcom/byazt/ky/uj;->a:Lcom/byazt/ha/ve;

    .line 67
    .line 68
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/byazt/ky/uj;->n:Lcom/byazt/aas/c$tt;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->c(Lcom/byazt/aas/c$tt;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    iget v0, p0, Lcom/byazt/ky/uj;->c:I

    .line 82
    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    iput v0, p0, Lcom/byazt/ky/uj;->c:I

    .line 86
    .line 87
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 88
    .line 89
    if-eqz p2, :cond_1

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v1

    .line 100
    :goto_0
    const-string p2, "ad_show"

    .line 101
    .line 102
    const-string v3, "started"

    .line 103
    .line 104
    invoke-direct {v0, p2, v3, v1, v2}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p1, Lcom/byazt/ha/ve;->a:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 113
    .line 114
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public uj(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdShowNodeLineObserver onVisibled : "

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
    iget v1, p1, Lcom/byazt/ha/ve;->ve:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "Tme_node_line"

    .line 50
    .line 51
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 55
    .line 56
    const-string v3, "ad_show"

    .line 57
    .line 58
    const-string v4, "visibled"

    .line 59
    .line 60
    if-eqz p2, :cond_0

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    :goto_0
    move-wide v5, v1

    .line 72
    iget v7, p1, Lcom/byazt/ha/ve;->ve:I

    .line 73
    .line 74
    move-object v2, v0

    .line 75
    invoke-direct/range {v2 .. v7}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p1, Lcom/byazt/ha/ve;->a:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 84
    .line 85
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public ve(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdShowNodeLineObserver onShowed : "

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
    invoke-direct {p0}, Lcom/byazt/ky/uj;->c()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/byazt/ky/uj;->uj:Z

    .line 63
    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    iput-object p1, p0, Lcom/byazt/ky/uj;->a:Lcom/byazt/ha/ve;

    .line 67
    .line 68
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/byazt/ky/uj;->n:Lcom/byazt/aas/c$tt;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->c(Lcom/byazt/aas/c$tt;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->oq()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iget-boolean v1, p1, Lcom/byazt/ha/ve;->uj:Z

    .line 90
    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    :cond_1
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 96
    .line 97
    if-eqz p2, :cond_2

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 100
    .line 101
    .line 102
    move-result-wide v1

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v1

    .line 108
    :goto_0
    const-string p2, "ad_show"

    .line 109
    .line 110
    const-string v3, "showed"

    .line 111
    .line 112
    invoke-direct {v0, p2, v3, v1, v2}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 113
    .line 114
    .line 115
    iget p2, p1, Lcom/byazt/ha/ve;->n:I

    .line 116
    .line 117
    invoke-virtual {v0, p2}, Lcom/byazt/qcl/tt;->c(I)V

    .line 118
    .line 119
    .line 120
    iget p2, p0, Lcom/byazt/ky/uj;->tt:I

    .line 121
    .line 122
    const/4 v1, 0x1

    .line 123
    add-int/2addr p2, v1

    .line 124
    iput p2, p0, Lcom/byazt/ky/uj;->tt:I

    .line 125
    .line 126
    iget-object p2, p1, Lcom/byazt/ha/ve;->a:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 132
    .line 133
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 134
    .line 135
    .line 136
    iget p2, p0, Lcom/byazt/ky/uj;->tt:I

    .line 137
    .line 138
    if-le p2, v1, :cond_3

    .line 139
    .line 140
    iput v1, p1, Lcom/byazt/ip/c;->da:I

    .line 141
    .line 142
    :cond_3
    return-void
.end method
