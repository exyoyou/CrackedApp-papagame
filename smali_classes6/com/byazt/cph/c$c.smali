.class public Lcom/byazt/cph/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x423,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/cph/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public c:Ljava/lang/String;

.field public n:I

.field public sp:Lorg/json/JSONObject;

.field public tt:Ljava/lang/String;

.field public uj:I

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(I)Lcom/byazt/cph/c$c;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/cph/c$c;->uj:I

    return-object p0
.end method

.method public c(J)Lcom/byazt/cph/c$c;
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/cph/c$c;->a:J

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/cph/c$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cph/c$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/cph/c$c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/cph/c$c;->sp:Lorg/json/JSONObject;

    return-object p0
.end method

.method public c()Lcom/byazt/cph/c;
    .locals 3

    .line 5
    new-instance v0, Lcom/byazt/cph/c;

    invoke-direct {v0}, Lcom/byazt/cph/c;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/byazt/cph/c$c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/cph/c;->c(Lcom/byazt/cph/c;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/byazt/cph/c$c;->tt:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/cph/c;->tt(Lcom/byazt/cph/c;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/byazt/cph/c$c;->ve:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/cph/c;->ve(Lcom/byazt/cph/c;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget v1, p0, Lcom/byazt/cph/c$c;->uj:I

    invoke-static {v0, v1}, Lcom/byazt/cph/c;->c(Lcom/byazt/cph/c;I)I

    .line 10
    iget v1, p0, Lcom/byazt/cph/c$c;->n:I

    invoke-static {v0, v1}, Lcom/byazt/cph/c;->tt(Lcom/byazt/cph/c;I)I

    .line 11
    iget-wide v1, p0, Lcom/byazt/cph/c$c;->a:J

    invoke-static {v0, v1, v2}, Lcom/byazt/cph/c;->c(Lcom/byazt/cph/c;J)J

    .line 12
    iget-object v1, p0, Lcom/byazt/cph/c$c;->sp:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/byazt/cph/c;->c(Lcom/byazt/cph/c;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public tt(I)Lcom/byazt/cph/c$c;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/cph/c$c;->n:I

    return-object p0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/cph/c$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cph/c$c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/cph/c$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cph/c$c;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
