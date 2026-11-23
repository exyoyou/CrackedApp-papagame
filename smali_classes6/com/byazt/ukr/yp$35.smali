.class public Lcom/byazt/ukr/yp$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0x452
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Lcom/byazt/ukr/yp;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:I

.field public final synthetic ve:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/byazt/ukr/yp;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ukr/yp$35;->n:Lcom/byazt/ukr/yp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ukr/yp$35;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ukr/yp$35;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ukr/yp$35;->ve:Lorg/json/JSONObject;

    .line 8
    .line 9
    iput p5, p0, Lcom/byazt/ukr/yp$35;->uj:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/ukr/yp$35;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "event"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/byazt/ukr/yp$35;->tt:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "object"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/byazt/ukr/yp$35;->ve:Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lcom/byazt/ukr/yp$35;->uj:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "state"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "convert_event"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
