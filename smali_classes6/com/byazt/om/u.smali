.class public Lcom/byazt/om/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/om/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0x43
    }
.end annotation


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

.method private c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4

    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, "tools_pre_view_name"

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/bytedance/pangle/wrapper/PluginActivityWrapper;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/bytedance/pangle/wrapper/PluginActivityWrapper;

    iget-object v1, v1, Lcom/bytedance/pangle/wrapper/GenerateActivityWrapper;->mOriginActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 27
    check-cast p1, Lcom/bytedance/pangle/wrapper/PluginActivityWrapper;

    iget-object p1, p1, Lcom/bytedance/pangle/wrapper/GenerateActivityWrapper;->mOriginActivity:Landroid/app/Activity;

    invoke-static {p1, v0, v3}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;

    if-ne v1, v2, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;

    iget-object v1, v1, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 29
    check-cast p1, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;

    iget-object p1, p1, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-static {p1, v0, v3}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1

    .line 30
    :cond_1
    invoke-static {p1, v0, v3}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 31
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public c(Lcom/byazt/om/c$c;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->zb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/ni/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v1, v3}, Lcom/byazt/ll/tt;->uj(I)V

    .line 6
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/byazt/ni/c;->c(Lcom/byazt/nbs/tt;Ljava/lang/String;)Lcom/byazt/nbs/tt;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v0, v3}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/tt;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/byazt/eu/uj;->c(Lcom/byazt/nbs/tt;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u6d4b\u8bd5\u5de5\u5177\u52a0\u8f7d\u5e7f\u544a........rit_id:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,slot_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->yv()Z

    move-result p1

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object p1

    iget-object v5, p1, Lcom/byazt/nbs/i;->c:Ljava/lang/String;

    const v6, 0x13c74

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    .line 10
    new-instance p1, Lcom/byazt/bnd/c;

    const v1, 0x13c74

    invoke-static {v1}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/byazt/bnd/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/byazt/iz/tt;->c(Lcom/byazt/pp/c;)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/byazt/zlb/ve;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->tx()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    :try_start_0
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/byazt/om/u;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_2

    .line 13
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/byazt/om/c$c;->c(Lcom/byazt/iz/tt;)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 16
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "sub_rit_id"

    .line 17
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "save_time"

    .line 18
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v8, v6, v4

    if-lez v8, :cond_3

    .line 20
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/byazt/om/c$c;->c(Lcom/byazt/iz/tt;)V

    return-void

    .line 22
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/byazt/ni/c;->c(Lcom/byazt/nbs/tt;Ljava/lang/String;)Lcom/byazt/nbs/tt;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/tt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 25
    :cond_4
    :goto_0
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/byazt/om/c$c;->c(Lcom/byazt/iz/tt;)V

    return-void
.end method

.method public tt(Lcom/byazt/om/c$c;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lcom/byazt/om/c$c;->c(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
