.class public final Lcom/byazt/ukr/tt$2;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ukr/tt;->c(Lcom/byazt/ddx/c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/whk/ve;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/fo/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/whk/ve;Ljava/lang/String;Lcom/byazt/fo/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/ukr/tt$2;->c:Lcom/byazt/whk/ve;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/ukr/tt$2;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/ukr/tt$2;->ve:Lcom/byazt/fo/c;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ukr/tt$2;->c:Lcom/byazt/whk/ve;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ukr/tt$2;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/ukr/tt$2;->ve:Lcom/byazt/fo/c;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/byazt/fo/c;->sp()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v0, v1, v2}, Lcom/byazt/whk/ve;->onAppLogEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "pitaya onAppLogEvent error:"

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "AdLogSwitchUtils"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
