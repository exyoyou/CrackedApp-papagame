.class public Lcom/byazt/rgb/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x33a,
        0x2e
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static tt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static uj:Lcom/byazt/aas/c$tt;

.field public static ve:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/rgb/n;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const-string v0, "tt_csj_node_line_app_exit"

    .line 10
    .line 11
    sput-object v0, Lcom/byazt/rgb/n;->n:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/byazt/rgb/n;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    new-instance v0, Lcom/byazt/rgb/n$1;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/byazt/rgb/n$1;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/byazt/rgb/n;->uj:Lcom/byazt/aas/c$tt;

    .line 26
    .line 27
    return-void
.end method

.method public static c()Lcom/byazt/lh/a;
    .locals 1

    const/4 v0, 0x4

    .line 24
    invoke-static {v0}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    move-result-object v0

    check-cast v0, Lcom/byazt/lh/a;

    return-object v0
.end method

.method public static c(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/byazt/rgb/n;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/byazt/rgb/n;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/byazt/rgb/n;->ve()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/byazt/rgb/n;->c:Ljava/lang/String;

    .line 4
    :cond_1
    invoke-static {}, Lcom/byazt/rgb/n;->c()Lcom/byazt/lh/a;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/byazt/rgb/n;->c:Ljava/lang/String;

    invoke-static {}, Lcom/byazt/vxy/c;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/byazt/lh/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/byazt/rgb/n;->c:Ljava/lang/String;

    new-instance v2, Lcom/byazt/ky/sp;

    invoke-direct {v2}, Lcom/byazt/ky/sp;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/a;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 7
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/qw/ve;->c()J

    move-result-wide v1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 8
    :goto_0
    sget-object v3, Lcom/byazt/rgb/n;->c:Ljava/lang/String;

    invoke-static {v3, v1, v2, p0}, Lcom/byazt/rgb/n;->c(Ljava/lang/String;JI)V

    if-ne p0, v0, :cond_4

    .line 9
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/aas/c;->tt()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 10
    sget-object p0, Lcom/byazt/rgb/n;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/byazt/rgb/n;->c(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_3
    sget-object p0, Lcom/byazt/rgb/n;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/byazt/rgb/n;->c(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-static {}, Lcom/byazt/rgb/n;->c()Lcom/byazt/lh/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v1, Lcom/byazt/hi/a;->ve:Lcom/byazt/hi/a;

    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/a;->c(Ljava/lang/String;Lcom/byazt/hi/a;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;I)V
    .locals 4

    .line 18
    invoke-static {}, Lcom/byazt/rgb/n;->c()Lcom/byazt/lh/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v1, Lcom/byazt/ip/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/byazt/ip/x;-><init>(J)V

    const-string v2, "source"

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/byazt/ip/x;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    sget-object p1, Lcom/byazt/hi/a;->tt:Lcom/byazt/hi/a;

    invoke-virtual {v0, p0, p1, v1}, Lcom/byazt/lh/a;->c(Ljava/lang/String;Lcom/byazt/hi/a;Lcom/byazt/ip/x;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;JI)V
    .locals 2

    .line 12
    sget-object v0, Lcom/byazt/rgb/n;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 13
    sget-object v0, Lcom/byazt/rgb/n;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    :cond_0
    invoke-static {}, Lcom/byazt/rgb/n;->c()Lcom/byazt/lh/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v1, Lcom/byazt/ip/x;

    invoke-direct {v1, p1, p2}, Lcom/byazt/ip/x;-><init>(J)V

    const-string p1, "source"

    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/byazt/ip/x;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    sget-object p1, Lcom/byazt/hi/a;->c:Lcom/byazt/hi/a;

    invoke-virtual {v0, p0, p1, v1}, Lcom/byazt/lh/a;->c(Ljava/lang/String;Lcom/byazt/hi/a;Lcom/byazt/ip/x;)V

    :cond_1
    return-void
.end method

.method public static tt(Ljava/lang/String;)Lcom/byazt/it/ve;
    .locals 1

    .line 16
    sget-object v0, Lcom/byazt/rgb/n;->n:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;

    move-result-object p0

    return-object p0
.end method

.method public static tt()V
    .locals 6

    const-string v0, "app"

    .line 8
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->vl()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "l_type"

    .line 10
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "end"

    .line 11
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ts"

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "source"

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-static {}, Lcom/byazt/vxy/c;->uj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/rgb/n;->tt(Ljava/lang/String;)Lcom/byazt/it/ve;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/byazt/qcl/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/byazt/rgb/n;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :catchall_0
    :cond_0
    sget-object v0, Lcom/byazt/rgb/n;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/byazt/rgb/n;->tt(Ljava/lang/String;I)V

    return-void
.end method

.method public static tt(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/rgb/n;->c()Lcom/byazt/lh/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/byazt/ip/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/byazt/ip/x;-><init>(J)V

    const-string v2, "source"

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/byazt/ip/x;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcom/byazt/hi/a;->uj:Lcom/byazt/hi/a;

    invoke-virtual {v0, p0, p1, v1}, Lcom/byazt/lh/a;->c(Ljava/lang/String;Lcom/byazt/hi/a;Lcom/byazt/ip/x;)V

    .line 5
    :cond_0
    sget-object p0, Lcom/byazt/rgb/n;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    sput-object p0, Lcom/byazt/rgb/n;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/byazt/rgb/n;->ve(Ljava/lang/String;)V

    return-void
.end method

.method private static ve()Ljava/lang/String;
    .locals 4

    const-string v0, "m_d_s"

    .line 1
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/gu;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 2
    invoke-interface {v0, v1}, Lcom/byazt/dna/gu;->getData(I)Ljava/lang/Object;

    move-result-object v2

    .line 3
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/byazt/dna/gu;->setData(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method private static ve(Ljava/lang/String;)V
    .locals 2

    const-string v0, "m_d_s"

    .line 8
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/gu;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 9
    invoke-interface {v0, v1, p0}, Lcom/byazt/dna/gu;->setData(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
