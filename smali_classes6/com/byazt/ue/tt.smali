.class public Lcom/byazt/ue/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4f1,
        0xd
    }
.end annotation


# static fields
.field public static c:Z

.field public static tt:Z


# direct methods
.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/byazt/ue/tt;->tt:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "sp_multi_info"

    .line 2
    invoke-static {p0, v0}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;

    move-result-object p0

    const-string v0, "is_support_multi_process"

    .line 3
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    .line 4
    :cond_0
    sput-boolean v1, Lcom/byazt/ue/tt;->c:Z

    .line 5
    sput-boolean v1, Lcom/byazt/ue/tt;->tt:Z

    return-void
.end method

.method public static c()Z
    .locals 3

    .line 6
    sget-boolean v0, Lcom/byazt/ue/tt;->tt:Z

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lcom/byazt/vxy/c;->uj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sp_multi_info"

    invoke-static {v0, v1}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "is_support_multi_process"

    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/byazt/ue/tt;->c:Z

    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/byazt/ue/tt;->tt:Z

    .line 10
    :cond_0
    sget-boolean v0, Lcom/byazt/ue/tt;->c:Z

    return v0
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/byazt/ue/tt;->tt:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "sp_multi_info"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "is_support_multi_process"

    .line 13
    .line 14
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sput-boolean v1, Lcom/byazt/ue/tt;->c:Z

    .line 18
    .line 19
    return-void
.end method
