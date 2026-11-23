.class public Lcom/byazt/wz/n$4;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x1fa
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wz/n;->c(Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/wz/n;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/n;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/n$4;->ve:Lcom/byazt/wz/n;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/wz/n$4;->c:Ljava/util/Map;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/byazt/wz/n$4;->tt:Z

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/wz/n$4;->ve:Lcom/byazt/wz/n;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v2, v1}, Lcom/byazt/omf/gu;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/ete/uj;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/ete/uj;->sp()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/byazt/wz/n$4;->ve:Lcom/byazt/wz/n;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/byazt/wz/n$4;->c:Ljava/util/Map;

    .line 30
    .line 31
    iget-boolean v3, p0, Lcom/byazt/wz/n$4;->tt:Z

    .line 32
    .line 33
    invoke-static {v1, v0, v2, v3}, Lcom/byazt/wz/n;->c(Lcom/byazt/wz/n;Lcom/byazt/ete/uj;Ljava/util/Map;Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/byazt/wz/n$4;->ve:Lcom/byazt/wz/n;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 44
    .line 45
    const-string v2, "jsb_2"

    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Lcom/byazt/wz/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
