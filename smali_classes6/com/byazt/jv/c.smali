.class public Lcom/byazt/jv/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x554,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:Z

.field public static tt:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static c()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/byazt/jv/c;->tt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/byazt/jv/c;->tt:Z

    .line 8
    .line 9
    sget-object v1, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    .line 10
    .line 11
    const/16 v2, 0xb

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/byazt/bwm/i;->c(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/byazt/omf/p;->c()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/byazt/bwm/i;->uj(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/byazt/bwm/i;->ve(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/byazt/bwm/i;->c(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/byazt/bwm/i;->tt(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static tt()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->f()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v1, "thread_service"

    .line 13
    .line 14
    invoke-static {v1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/byazt/dna/qp;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Lcom/byazt/dna/qp;->updateSettings(Lorg/json/JSONObject;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "can_set_crash"

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sput-boolean v0, Lcom/byazt/jv/c;->c:Z

    .line 31
    .line 32
    return-void
.end method
