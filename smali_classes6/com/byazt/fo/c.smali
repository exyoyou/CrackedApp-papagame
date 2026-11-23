.class public Lcom/byazt/fo/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vb/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2e1,
        0x14
    }
.end annotation


# instance fields
.field public a:J

.field public c:Lorg/json/JSONObject;

.field public da:I

.field public i:Ljava/lang/String;

.field public n:J

.field public sl:B

.field public sp:J

.field public t:Ljava/lang/String;

.field public tt:Lcom/byazt/fo/tt;

.field public u:I

.field public uj:B

.field public ve:B

.field public x:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/byazt/fo/tt;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/byazt/fo/c;->i:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/byazt/fo/c;->tt:Lcom/byazt/fo/tt;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/byazt/fo/c;->i:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/byazt/fo/c;->c:Lorg/json/JSONObject;

    return-void
.end method

.method public static uj(Ljava/lang/String;)Lcom/byazt/vb/tt;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "type"

    .line 2
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const-string v1, "priority"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 4
    new-instance v2, Lcom/byazt/fo/c;

    invoke-direct {v2}, Lcom/byazt/fo/c;-><init>()V

    int-to-byte p0, p0

    .line 5
    invoke-interface {v2, p0}, Lcom/byazt/vb/tt;->c(B)V

    int-to-byte p0, v1

    .line 6
    invoke-interface {v2, p0}, Lcom/byazt/vb/tt;->tt(B)V

    const-string p0, "event"

    .line 7
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/byazt/vb/tt;->c(Lorg/json/JSONObject;)V

    const-string p0, "localId"

    .line 8
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/byazt/vb/tt;->c(Ljava/lang/String;)V

    const-string p0, "genTime"

    .line 9
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/byazt/vb/tt;->tt(Ljava/lang/String;)V

    const-string p0, "channel"

    .line 10
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Lcom/byazt/vb/tt;->c(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 11
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fo/c;->i:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    const-string v1, "localId"

    .line 15
    .line 16
    iget-object v2, p0, Lcom/byazt/fo/c;->i:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string v1, "event"

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/byazt/fo/c;->sp()Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    const-string v1, "genTime"

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/byazt/fo/c;->t()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v1, "priority"

    .line 40
    .line 41
    iget-byte v2, p0, Lcom/byazt/fo/c;->uj:B

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string v1, "type"

    .line 47
    .line 48
    iget-byte v2, p0, Lcom/byazt/fo/c;->ve:B

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    const-string v1, "channel"

    .line 54
    .line 55
    iget v2, p0, Lcom/byazt/fo/c;->u:I

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :catchall_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 66
    return-object v0
.end method

.method public c()Lcom/byazt/fo/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fo/c;->tt:Lcom/byazt/fo/tt;

    return-object v0
.end method

.method public c(B)V
    .locals 0

    .line 3
    iput-byte p1, p0, Lcom/byazt/fo/c;->ve:B

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/byazt/fo/c;->u:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/byazt/fo/c;->n:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/fo/c;->i:Ljava/lang/String;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/fo/c;->c:Lorg/json/JSONObject;

    return-void
.end method

.method public da()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/fo/c;->da:I

    .line 2
    .line 3
    return v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/fo/c;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public n()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/byazt/fo/c;->uj:B

    .line 2
    .line 3
    return v0
.end method

.method public sl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fo/c;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized sp()Lorg/json/JSONObject;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/fo/c;->c:Lorg/json/JSONObject;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/fo/c;->tt:Lcom/byazt/fo/tt;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/byazt/fo/c;->sl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Lcom/byazt/fo/tt;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/byazt/fo/c;->c:Lorg/json/JSONObject;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/fo/c;->c:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fo/c;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/byazt/fo/c;->sl:B

    return v0
.end method

.method public tt(B)V
    .locals 0

    .line 4
    iput-byte p1, p0, Lcom/byazt/fo/c;->uj:B

    return-void
.end method

.method public tt(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/byazt/fo/c;->da:I

    return-void
.end method

.method public tt(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/fo/c;->a:J

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/fo/c;->x:Ljava/lang/String;

    return-void
.end method

.method public uj()B
    .locals 1

    .line 12
    iget-byte v0, p0, Lcom/byazt/fo/c;->ve:B

    return v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/fo/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public ve(B)V
    .locals 0

    .line 2
    iput-byte p1, p0, Lcom/byazt/fo/c;->sl:B

    return-void
.end method

.method public ve(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/fo/c;->sp:J

    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fo/c;->t:Ljava/lang/String;

    return-void
.end method

.method public x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/fo/c;->n:J

    .line 2
    .line 3
    return-wide v0
.end method
