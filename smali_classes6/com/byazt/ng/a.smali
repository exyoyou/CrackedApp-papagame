.class public Lcom/byazt/ng/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0x22
    }
.end annotation


# static fields
.field public static c:I

.field public static tt:I

.field public static ve:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lcom/byazt/ng/uj;ZJILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;ZJILjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/byazt/ng/uj;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;)V

    return-void
.end method

.method public static c()V
    .locals 3

    .line 21
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "mediation_sdk_init"

    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    const/4 v1, 0x0

    .line 23
    :try_start_0
    invoke-static {v0, v1, v1, v1, v1}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 24
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 25
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(IIJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 120
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 121
    new-instance v8, Lcom/byazt/ng/a$18;

    move-object v0, v8

    move v2, p1

    move-wide v3, p2

    move v5, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/byazt/ng/a$18;-><init>(Lcom/byazt/ng/uj;IJILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(IIJZZLorg/json/JSONObject;JLorg/json/JSONObject;)V
    .locals 4

    .line 248
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    .line 249
    invoke-static {}, Lcom/byazt/rq/c;->c()Lcom/byazt/it/n;

    move-result-object v1

    const-string v2, "is_config_from_assert"

    const/4 v3, 0x0

    .line 250
    invoke-interface {v1, v2, v3}, Lcom/byazt/it/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p4, :cond_2

    if-nez p0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x2

    .line 251
    :goto_1
    invoke-virtual {v0, p0}, Lcom/byazt/ng/uj;->setResult(I)Lcom/byazt/ng/uj;

    move-result-object p0

    .line 252
    invoke-virtual {p0, p2, p3}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    move-result-object p0

    const-string p2, "get_config_final"

    .line 253
    invoke-virtual {p0, p2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object p0

    .line 254
    invoke-virtual {p0, p1}, Lcom/byazt/ng/uj;->a(I)Lcom/byazt/ng/uj;

    move-result-object p0

    .line 255
    invoke-virtual {p0, p1}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object p0

    .line 256
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/qe/ve;->u()Ljava/lang/String;

    move-result-object p1

    const-string p2, "transparent_params"

    invoke-virtual {p0, p2, p1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 257
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 258
    invoke-static {p5, v0, p6, p0}, Lcom/byazt/psp/uj;->c(ZLcom/byazt/ng/uj;Lorg/json/JSONObject;Ljava/util/Map;)V

    if-eqz p9, :cond_3

    const-string p1, "cfg_handle_time"

    .line 259
    invoke-interface {p0, p1, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p1, "config_size"

    .line 260
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(J)V
    .locals 9

    .line 204
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "sdk_init"

    .line 205
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/byazt/ng/uj;->ve(J)Lcom/byazt/ng/uj;

    .line 206
    invoke-static {}, Lcom/byazt/rq/c;->a()Lcom/byazt/it/ve;

    move-result-object p0

    const/4 p1, 0x0

    const-string v1, "check_unity3d"

    .line 207
    invoke-interface {p0, v1, p1}, Lcom/byazt/it/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-wide/16 v2, 0x0

    const-string v4, "check_unity3d_time"

    .line 208
    invoke-interface {p0, v4, v2, v3}, Lcom/byazt/it/c;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz p1, :cond_1

    sub-long v2, v5, v2

    const-wide v7, 0x9a7ec800L

    cmp-long p1, v2, v7

    if-lez p1, :cond_1

    :try_start_0
    const-string p1, "com.unity3d.player.UnityPlayer"

    .line 210
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string p1, "unity_pure"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "com.bytedance.android.NativeAdManager"

    .line 211
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string p1, "unity"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :catchall_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    const-string v2, "develop_type"

    .line 212
    invoke-virtual {v0, v2, p1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    :cond_0
    const/4 p1, 0x1

    .line 213
    invoke-interface {p0, v1, p1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    .line 214
    invoke-interface {p0, v4, v5, v6}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    .line 215
    :cond_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 216
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ii/c;->uj()I

    move-result p1

    if-lez p1, :cond_2

    .line 217
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ii/c;->n()V

    const-string v1, "discard_num"

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "csj_plugin_version"

    .line 219
    invoke-static {}, Lcom/byazt/sx/ve;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {}, Lcom/byazt/vx/yv;->tt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "init_count"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {}, Lcom/byazt/vx/yv;->c()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "init_time"

    .line 222
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_3
    invoke-static {p0}, Lcom/byazt/vx/yv;->c(Ljava/util/Map;)V

    .line 224
    invoke-static {p0}, Lcom/byazt/vx/yv;->tt(Ljava/util/Map;)V

    .line 225
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(JIIJLorg/json/JSONObject;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIJ",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 232
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "sdk_init_end"

    .line 233
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 234
    invoke-virtual {v0, p0, p1}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    .line 235
    invoke-virtual {v0, p4, p5}, Lcom/byazt/ng/uj;->ve(J)Lcom/byazt/ng/uj;

    const-string p0, "adn_count"

    .line 236
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 237
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p7, :cond_0

    .line 238
    invoke-interface {p7}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 239
    invoke-interface {p0, p7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string p1, "is_from_local_config"

    .line 240
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/byazt/px/uj;->getAdnAdapterVersion()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "adapter_version_list"

    .line 242
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p6, :cond_2

    const-string p1, "init_stage_time"

    .line 243
    invoke-interface {p0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_2
    invoke-static {}, Lcom/byazt/vx/yv;->tt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "init_count"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {}, Lcom/byazt/xo/c;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "sdk_boost_type"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static {}, Lcom/byazt/ng/a;->uj()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "layer_init_type"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(JZLjava/lang/String;I)V
    .locals 8

    .line 199
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 200
    new-instance v7, Li1/b;

    move-object v0, v7

    move v2, p2

    move-wide v3, p0

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Li1/b;-><init>(Lcom/byazt/ng/uj;ZJILjava/lang/String;)V

    invoke-static {v7}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/ll/tt;)V
    .locals 3

    .line 287
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "media_will_show"

    .line 288
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 289
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 290
    invoke-static {v0, p0, v2, v2, v1}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 291
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/ll/tt;I)V
    .locals 2

    .line 112
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "media_carousel_fail"

    .line 113
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v1

    .line 114
    invoke-virtual {v1, p1}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object v1

    .line 115
    invoke-static {p1}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 116
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 117
    invoke-static {v0, p0, v1, v1, p1}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "is_video_cache_success"

    invoke-virtual {v0, v1, p0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 119
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/ll/tt;Lcom/byazt/pl/tt;I)V
    .locals 2

    .line 264
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v0

    .line 265
    new-instance v1, Lcom/byazt/ng/a$13;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/byazt/ng/a$13;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/pl/tt;I)V

    invoke-static {v1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/ll/tt;Lcom/byazt/pp/c;Ljava/lang/String;)V
    .locals 2
    .param p0    # Lcom/byazt/ll/tt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 157
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v0

    .line 158
    new-instance v1, Lcom/byazt/ng/a$23;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/byazt/ng/a$23;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/pp/c;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;J)V
    .locals 7

    .line 189
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 190
    new-instance v6, Lcom/byazt/ng/a$4;

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/byazt/ng/a$4;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;J)V

    invoke-static {v6}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Lcom/byazt/nbs/da;)V
    .locals 2

    .line 191
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/byazt/ng/a$5;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/byazt/ng/a$5;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Lcom/byazt/nbs/da;)V

    invoke-static {v1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Ljava/lang/String;)V
    .locals 3

    .line 280
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "rit_cache_cannot_use"

    .line 281
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v1

    const-string v2, "cache_invalid_info"

    .line 282
    invoke-virtual {v1, v2, p2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 283
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 284
    invoke-static {v0, p0, v1, p1, p2}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    const/4 p0, 0x2

    .line 285
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "mediationrit_req_type"

    invoke-virtual {v0, p1, p0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 286
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/ll/tt;Ljava/lang/String;)V
    .locals 3

    .line 274
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "cache_cannot_use"

    .line 275
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v1

    const-string v2, "cache_invalid_info"

    .line 276
    invoke-virtual {v1, v2, p1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 277
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 278
    invoke-static {v0, p0, v1, v1, p1}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 279
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ll/tt;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 161
    invoke-static {}, Lcom/byazt/lx/c;->getInstance()Lcom/byazt/lx/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/byazt/ng/c;->ve:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/lx/c;->startRequestRit(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 164
    new-instance v10, Lcom/byazt/ng/a$2;

    move-object v0, v10

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/byazt/ng/a$2;-><init>(Lcom/byazt/ng/uj;JLcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    invoke-static {v10}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/ll/tt;Lorg/json/JSONObject;)V
    .locals 2

    .line 262
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v0

    .line 263
    new-instance v1, Lcom/byazt/ng/a$11;

    invoke-direct {v1, v0, p0, p1}, Lcom/byazt/ng/a$11;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;II)V
    .locals 7

    .line 159
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 160
    new-instance v6, Lcom/byazt/ng/a$24;

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/ng/a$24;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;II)V

    invoke-static {v6}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;ILjava/lang/String;)V
    .locals 2

    .line 126
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "bidding_info_invalid"

    .line 127
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v1

    .line 128
    invoke-virtual {v1, p3}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object p3

    .line 129
    invoke-virtual {p3, p4}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object p3

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gr()I

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "ad_count"

    invoke-virtual {p3, v1, p4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p3

    .line 131
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p4

    invoke-static {p4}, Lcom/byazt/qe/tt;->c(Lcom/byazt/qe/c;)Lcom/byazt/qe/tt;

    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object p4

    invoke-virtual {p4}, Lcom/byazt/bp/c;->rl()Lcom/byazt/yf/a;

    move-result-object p4

    invoke-static {p4}, Lcom/byazt/qe/tt;->c(Lcom/byazt/yf/a;)Lorg/json/JSONObject;

    move-result-object p4

    const-string v1, "grouping_params"

    .line 132
    invoke-virtual {p3, v1, p4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p3

    const/4 p4, 0x2

    .line 133
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "log_source"

    invoke-virtual {p3, v1, p4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 134
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 135
    invoke-static {v0, p1, p0, p2, p3}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 136
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p3}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;)V
    .locals 2

    .line 268
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/byazt/ng/a$15;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/byazt/ng/a$15;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZJ)V
    .locals 18

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-wide/from16 v15, p13

    .line 122
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 123
    new-instance v17, Lcom/byazt/ng/a$19;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/byazt/ng/a$19;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZJ)V

    invoke-static/range {v17 .. v17}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZLjava/lang/String;J)V
    .locals 19

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-wide/from16 v16, p14

    .line 124
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 125
    new-instance v18, Lcom/byazt/ng/a$20;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/byazt/ng/a$20;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZLjava/lang/String;J)V

    invoke-static/range {v18 .. v18}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic c(Lcom/byazt/ng/uj;)V
    .locals 2

    const-string v0, "init_adn_splash_info_request"

    .line 197
    invoke-virtual {p0, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 198
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ng/uj;",
            "Lcom/byazt/ll/tt;",
            "Lcom/byazt/nbs/da;",
            "Lcom/byazt/yl/ve;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v1, :cond_28

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_a

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byazt/ng/uj;->tt(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/ng/uj;->uj(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->ic()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/ng/uj;->ve(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->aw()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/byazt/ng/uj;->tt(J)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->my()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/byazt/ng/uj;->n(I)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 332
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/byazt/vq/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "waterfall_abtest"

    invoke-virtual {v0, v8, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->n()I

    move-result v7

    if-eq v7, v6, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->n()I

    move-result v7

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "if_test"

    invoke-virtual {v0, v8, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->lo()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "segment_id"

    invoke-virtual {v0, v8, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v7, "segment_version"

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->pu()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v7, "waterfall_extra"

    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->lt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v7, "transparent_params"

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->ve()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "primerit_req_type"

    invoke-virtual {v0, v8, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 339
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->uj()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "req_type"

    invoke-virtual {v0, v8, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->bm()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "parallel_type"

    invoke-virtual {v0, v8, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->lr()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "req_parallel_num"

    invoke-virtual {v0, v8, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 342
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->hd()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v0, v7, v9

    if-lez v0, :cond_1

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->hd()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v7, "waterfall_bidfloor"

    invoke-virtual {v1, v7, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 344
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->rl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "scenario_id"

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->rl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 346
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_0
    const-string v7, "pangle_vid"

    .line 347
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 348
    instance-of v7, v0, [I

    if-eqz v7, :cond_3

    .line 349
    check-cast v0, [I

    goto :goto_3

    .line 350
    :cond_3
    instance-of v7, v0, [Ljava/lang/Integer;

    if-eqz v7, :cond_5

    .line 351
    check-cast v0, [Ljava/lang/Integer;

    .line 352
    array-length v7, v0

    new-array v7, v7, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x0

    .line 353
    :goto_1
    :try_start_1
    array-length v9, v0

    if-ge v8, v9, :cond_4

    .line 354
    aget-object v9, v0, v8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v7

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v15, v7

    move-object v7, v0

    move-object v0, v15

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v0, v4

    .line 355
    :goto_2
    invoke-static {v7}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    move-object v0, v4

    :goto_3
    if-eqz v0, :cond_6

    .line 356
    array-length v7, v0

    if-lez v7, :cond_6

    if-eqz v3, :cond_6

    .line 357
    invoke-static {v0}, Lcom/byazt/vx/m;->c([I)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "external_vid"

    .line 359
    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-nez v3, :cond_7

    .line 360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_4

    :cond_7
    move-object v0, v3

    .line 361
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->sp()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v7, "ad_req_optmize"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->to()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v7, "fill_strategy"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->bx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "mediation_map_request"

    .line 364
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->tk()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "share_cache"

    .line 366
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 367
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->kp()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v1, Lcom/byazt/ng/uj;->c:Ljava/lang/String;

    const-string v7, "mediation_request"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "width_equal"

    .line 368
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->qy()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v7, "accepted_width"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    move-object v0, v3

    :cond_b
    :goto_5
    const-string v3, "ad_extra"

    const-string v7, "m_aid"

    const-string v8, "if_reuse"

    const-string v9, "pricing_type"

    const-string v10, "sub_adtype"

    const-string v11, "origin_type"

    if-eqz p2, :cond_10

    .line 370
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/byazt/ng/uj;->n(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 371
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->x(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 372
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->yv()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->ve(I)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 373
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->p()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->uj(I)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 374
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->my()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->c(I)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 375
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->gr()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->i(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 376
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->yp()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->t(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v12

    const-string v13, "server_bidding_extra"

    .line 377
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 378
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->da()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 379
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->a()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 380
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->gu()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 381
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->gu()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/byazt/ng/uj;->da(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 382
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->d()Lcom/byazt/nbs/x;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 383
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->d()Lcom/byazt/nbs/x;

    move-result-object v12

    invoke-virtual {v12}, Lcom/byazt/nbs/x;->ve()Ljava/lang/String;

    move-result-object v12

    .line 384
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->d()Lcom/byazt/nbs/x;

    move-result-object v13

    invoke-virtual {v13}, Lcom/byazt/nbs/x;->uj()Ljava/lang/String;

    move-result-object v13

    .line 385
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->d()Lcom/byazt/nbs/x;

    move-result-object v14

    invoke-virtual {v14}, Lcom/byazt/nbs/x;->c()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 386
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 387
    invoke-virtual {v1, v7, v12}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 388
    :cond_d
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    if-eqz v0, :cond_e

    .line 389
    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    if-nez v0, :cond_f

    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 391
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->i()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    if-eqz v2, :cond_1d

    .line 392
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/byazt/ng/uj;->n(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 393
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->x(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 394
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->n(I)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 395
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getAdNetworkSlotType()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->c(I)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 396
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getExchangeRate()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->t(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 397
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getReqId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->sp(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 398
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getSdkVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->a(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 399
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getLoadSort()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->ve(I)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 400
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->uj(I)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 401
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->i(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 402
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getDiscount()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->da(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v12

    .line 403
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getEventMap()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/byazt/ng/uj;->c(Ljava/util/Map;)Lcom/byazt/ng/uj;

    move-result-object v12

    if-eqz p1, :cond_11

    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_11
    move-object v13, v4

    :goto_6
    invoke-virtual {v2, v13}, Lcom/byazt/yl/ve;->getMediationRitReqType(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "mediationrit_req_type"

    .line 405
    invoke-virtual {v12, v14, v13}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v12

    if-eqz p1, :cond_12

    .line 406
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v4

    :cond_12
    invoke-virtual {v2, v4}, Lcom/byazt/yl/ve;->getMediationRitReqTypeSrc(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v13, "mediationrit_req_type_src"

    .line 407
    invoke-virtual {v12, v13, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v4

    .line 408
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getOriginType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v4

    .line 409
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 410
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v4

    const/16 v10, 0x8

    if-eq v4, v10, :cond_13

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v4

    const/4 v10, 0x7

    if-ne v4, v10, :cond_14

    .line 411
    :cond_13
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->isCacheSuccess()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v10, "is_video_cache_success"

    invoke-virtual {v1, v10, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v4

    .line 412
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->adnHasAdVideoCachedApi()Z

    move-result v10

    xor-int/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "is_mock_video_cache_api"

    invoke-virtual {v4, v11, v10}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 413
    :cond_14
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getDiscount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 414
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getDiscount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/byazt/ng/uj;->da(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 415
    :cond_15
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getLevelTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "level_tag"

    .line 416
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getLevelTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v4, v10}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 417
    :cond_16
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getAid()Ljava/lang/String;

    move-result-object v4

    .line 418
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getAdExtra()Ljava/lang/String;

    move-result-object v10

    .line 419
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_17

    iget-object v11, v1, Lcom/byazt/ng/uj;->c:Ljava/lang/String;

    const-string v12, "media_show_fail"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 420
    invoke-virtual {v1, v7, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 421
    :cond_17
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    if-eqz v0, :cond_18

    .line 422
    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_18
    iget-object v3, v1, Lcom/byazt/ng/uj;->c:Ljava/lang/String;

    const-string v4, "bidding_win_event"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 424
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getWinCallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "win_callback"

    .line 425
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getWinCallback()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 426
    :cond_19
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getFailCallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "fail_callback"

    .line 427
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getFailCallback()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 428
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->isServerBiddingAd()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 429
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getPricingType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v9, v3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    :cond_1b
    if-nez v0, :cond_1c

    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 431
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getIfReuseAds()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->isTimeoutFill()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "timeout_req"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->isIsCallback()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "is_callback"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    if-eqz p1, :cond_1f

    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->tk()Z

    move-result v3

    if-eqz v3, :cond_1f

    if-eqz v2, :cond_1e

    .line 435
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getOriginLinkId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "origin_link_id"

    .line 436
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getOriginLinkId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->da()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "cur_prime_rit"

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->da()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    if-eqz p1, :cond_20

    .line 439
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->tk()Z

    move-result v3

    if-eqz v3, :cond_20

    if-eqz v2, :cond_20

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getOriginPrimeRit()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 440
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getOriginPrimeRit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/byazt/ng/uj;->tt(Ljava/lang/String;)Lcom/byazt/ng/uj;

    :cond_20
    if-eqz p1, :cond_22

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "client_req_id"

    if-eqz p2, :cond_21

    .line 442
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 443
    invoke-virtual {v1, v4, v3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    goto :goto_7

    :cond_21
    if-eqz v2, :cond_22

    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-virtual {v1, v4, v3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 446
    :cond_22
    :goto_7
    iget-object v3, v1, Lcom/byazt/ng/uj;->ve:Ljava/lang/String;

    invoke-static {v3}, Lcom/byazt/dc/n;->n(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 447
    iget-object v3, v1, Lcom/byazt/ng/uj;->c:Ljava/lang/String;

    const-string v4, "media_request"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "com.byted.mixed"

    const-string v7, "dex_adapter_version"

    const-string v8, "is_dex_adapter"

    if-eqz v3, :cond_24

    .line 448
    iget-object v2, v1, Lcom/byazt/ng/uj;->ve:Ljava/lang/String;

    invoke-static {v2}, Lcom/byazt/dc/n;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 449
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {v4}, Lcom/byazt/bzd/u;->ve(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 451
    :cond_23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_24
    if-eqz v2, :cond_25

    .line 452
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/yl/ve;->isLoadByDexPl()Z

    move-result v2

    .line 453
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_26

    .line 454
    invoke-static {v4}, Lcom/byazt/bzd/u;->ve(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 455
    :cond_25
    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x2

    .line 456
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_26
    :goto_8
    iget-object v2, v1, Lcom/byazt/ng/uj;->ve:Ljava/lang/String;

    invoke-static {v2}, Lcom/byazt/xiv/n;->tt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "dex_status"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/byazt/ng/uj;->ve:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/byazt/ng/uj;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", is_dex_adapter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", dex_adapter_version: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", dex_status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdapterPl"

    .line 461
    invoke-static {v2, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    const-string v0, "isFusion"

    .line 462
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    :cond_28
    return-void
.end method

.method private static synthetic c(Lcom/byazt/ng/uj;ZJILjava/lang/String;)V
    .locals 3

    const-string v0, "init_adn_splash_info_result"

    .line 201
    invoke-virtual {p0, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "duration"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    if-nez p1, :cond_0

    const-string p1, "error_code"

    .line 202
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p1

    const-string p2, "error_msg"

    invoke-virtual {p1, p2, p5}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 203
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;J)V
    .locals 2

    .line 141
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "bidding_adm_load_fail"

    .line 142
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v1

    .line 143
    invoke-virtual {v1, p7, p8}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    move-result-object p7

    .line 144
    invoke-virtual {p7, p6}, Lcom/byazt/ng/uj;->a(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object p6

    if-eqz p0, :cond_0

    iget p7, p0, Lcom/byazt/pp/c;->ve:I

    goto :goto_0

    :cond_0
    const/4 p7, -0x1

    .line 145
    :goto_0
    invoke-virtual {p6, p7}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object p6

    if-eqz p0, :cond_1

    iget-object p7, p0, Lcom/byazt/pp/c;->uj:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p7, "unknown error"

    .line 146
    :goto_1
    invoke-virtual {p6, p7}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object p6

    const-string p7, "adn_count"

    .line 147
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p6, p7, p3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p3

    const/4 p6, 0x0

    .line 148
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const-string p7, "adn_preload"

    invoke-virtual {p3, p7, p6}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p3

    const-string p6, "mediationrit_req_type"

    .line 149
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p6, p4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p3

    const-string p4, "mediationrit_req_type_src"

    .line 150
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 151
    instance-of p3, p0, Lcom/byazt/bnd/c;

    if-eqz p3, :cond_2

    .line 152
    iget p3, p0, Lcom/byazt/pp/c;->c:I

    iput p3, v0, Lcom/byazt/ng/uj;->z:I

    .line 153
    iget-object p0, p0, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    iput-object p0, v0, Lcom/byazt/ng/uj;->t:Ljava/lang/String;

    .line 154
    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    .line 155
    invoke-static {v0, p1, p2, p3, p0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 156
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 17

    .line 139
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 140
    new-instance v16, Lcom/byazt/ng/a$22;

    move-object/from16 v0, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-wide/from16 v14, p12

    invoke-direct/range {v0 .. v15}, Lcom/byazt/ng/a$22;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static/range {v16 .. v16}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;ILjava/lang/String;JLcom/byazt/ll/tt;IIILjava/lang/String;JJ)V
    .locals 17

    .line 137
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 138
    new-instance v16, Lcom/byazt/ng/a$21;

    move-object/from16 v0, v16

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-direct/range {v0 .. v15}, Lcom/byazt/ng/a$21;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;ILjava/lang/String;JLcom/byazt/ll/tt;IIILjava/lang/String;JJ)V

    invoke-static/range {v16 .. v16}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;IIILjava/lang/String;)V
    .locals 2

    .line 309
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    .line 310
    invoke-virtual {v0, p3}, Lcom/byazt/ng/uj;->setResult(I)Lcom/byazt/ng/uj;

    move-result-object p3

    const-string v1, "media_show_after"

    .line 311
    invoke-virtual {p3, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object p3

    const-string v1, "play_again"

    .line 312
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, v1, p4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p3

    const-string p4, "reason"

    .line 313
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 314
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "callstack_message"

    .line 315
    invoke-virtual {v0, p2, p5}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 316
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    .line 317
    invoke-static {v0, p1, p3, p0, p2}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 318
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JIILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/yl/ve;->isAdnPreload()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "media_reward_verify"

    .line 3
    invoke-virtual {v0, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v4

    const-string v5, "adn_preload"

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v3

    const-string v4, "reason"

    .line 5
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {v3, v4, p6}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p6

    const-string v3, "play_again"

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p6, v3, p2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    if-eqz p7, :cond_1

    const/16 p2, 0x4e20

    if-eq p7, p2, :cond_1

    .line 7
    invoke-virtual {v0, p7}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object p2

    invoke-virtual {p2, p8}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 8
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-wide/16 p6, 0x0

    cmp-long p8, p4, p6

    if-ltz p8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/byazt/yl/ve;->isCustomAd()Z

    move-result p6

    if-eqz p6, :cond_3

    .line 10
    invoke-static {}, Lcom/byazt/vx/nu;->ve()D

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p6

    const-string p7, "custom_adn_sample_ratio"

    invoke-interface {p2, p7, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "custom_adn_sample_ratio_result"

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p7

    invoke-interface {p2, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    const-string p6, "custom_adn_rec_time"

    .line 12
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p2, p6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p1, :cond_4

    .line 13
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result p6

    const/16 p7, 0x65

    invoke-virtual {p4, p5, p6, p7}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 15
    invoke-virtual {p4}, Lcom/byazt/nbs/tt;->bm()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string p6, "reward_callback_type"

    invoke-interface {p2, p6, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p4}, Lcom/byazt/nbs/tt;->hd()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "reward_start_time"

    invoke-interface {p2, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p3, :cond_5

    const-string p4, "sub_adn_name"

    .line 17
    invoke-virtual {v0, p4, p3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    :cond_5
    const/4 p3, 0x0

    .line 18
    invoke-static {v0, p1, p3, p0, p2}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 19
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;Z)V
    .locals 12

    .line 35
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 36
    invoke-static {}, Lcom/byazt/nr/da;->ve()Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/byazt/ng/a$12;

    move-object v0, v11

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/byazt/ng/a$12;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;Z)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;ZI)V
    .locals 13

    .line 26
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 27
    invoke-static {}, Lcom/byazt/nr/da;->ve()Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Lcom/byazt/ng/a$1;

    move-object v0, v12

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/byazt/ng/a$1;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;ZI)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZ)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v7, p6

    .line 34
    invoke-static/range {v0 .. v7}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;Z)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZI)V
    .locals 9

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v7, p6

    move/from16 v8, p7

    .line 20
    invoke-static/range {v0 .. v8}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;ZI)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;)V
    .locals 2

    .line 272
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v0

    .line 273
    new-instance v1, Lcom/byazt/ng/a$17;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/byazt/ng/a$17;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;)V

    invoke-static {v1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;J)V
    .locals 8

    .line 270
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 271
    new-instance v7, Lcom/byazt/ng/a$16;

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/byazt/ng/a$16;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;J)V

    invoke-static {v7}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/tt;JLjava/lang/String;ZIZZ)V
    .locals 13

    .line 193
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 194
    new-instance v12, Lcom/byazt/ng/a$6;

    move-object v0, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/byazt/ng/a$6;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/tt;JLjava/lang/String;ZIZZ)V

    invoke-static {v12}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/pp/c;IILjava/lang/String;J)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-wide v6, p6

    .line 292
    invoke-static/range {v0 .. v8}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/pp/c;IILjava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/pp/c;IILjava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 293
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    .line 294
    invoke-virtual {v0, p3}, Lcom/byazt/ng/uj;->setResult(I)Lcom/byazt/ng/uj;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget v2, p2, Lcom/byazt/pp/c;->ve:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 295
    :goto_0
    invoke-virtual {p3, v2}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object p3

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/byazt/pp/c;->uj:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p2, v2

    .line 296
    :goto_1
    invoke-virtual {p3, p2}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object p2

    const-string p3, "media_show_fail_listen"

    .line 297
    invoke-virtual {p2, p3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object p2

    const-string p3, "play_again"

    .line 298
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    if-eqz p5, :cond_2

    const-string p2, "sub_adn_name"

    .line 299
    invoke-virtual {v0, p2, p5}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 300
    :cond_2
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "callstack_message"

    .line 301
    invoke-virtual {v0, p2, p8}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 302
    :cond_3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-wide/16 p3, 0x0

    cmp-long p5, p6, p3

    if-ltz p5, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz p0, :cond_5

    .line 303
    invoke-virtual {p0}, Lcom/byazt/yl/ve;->isCustomAd()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 304
    invoke-static {}, Lcom/byazt/vx/nu;->ve()D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string p4, "custom_adn_sample_ratio"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "custom_adn_sample_ratio_result"

    .line 305
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    const-string p3, "custom_adn_rec_time"

    .line 306
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_5
    invoke-static {v0, p1, v2, p0, p2}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 308
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "media_show_dislike"

    .line 29
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v1

    .line 30
    invoke-virtual {v1, p2}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 31
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 32
    invoke-static {v0, p1, v1, p0, p2}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 33
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/lang/String;I)V
    .locals 7

    .line 229
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v2

    .line 231
    new-instance v0, Lcom/byazt/ng/a$10;

    move-object v1, v0

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/byazt/ng/a$10;-><init>(Lcom/byazt/ng/uj;Ljava/lang/String;ILcom/byazt/ll/tt;Lcom/byazt/yl/ve;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/yl/ve;",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    .line 266
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v1

    .line 267
    new-instance v6, Lcom/byazt/ng/a$14;

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/ng/a$14;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v6}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-static {p0, p1, p2, p3, v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ZILjava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ZILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/yl/ve;",
            "Lcom/byazt/ll/tt;",
            "ZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/byazt/yl/ve;->isAdnPreload()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "media_show"

    .line 40
    invoke-virtual {v0, v2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v2

    const-string v3, "adn_preload"

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v1

    const-string v2, "play_again"

    .line 42
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p3

    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "is_repeat"

    invoke-virtual {p3, v1, p2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 44
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_1

    .line 45
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 46
    invoke-interface {p2, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    const/4 p3, 0x0

    .line 47
    invoke-static {v0, p1, p3, p0, p2}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 48
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/byazt/ng/a$9;

    invoke-direct {v1, v0, p0}, Lcom/byazt/ng/a$9;-><init>(Lcom/byazt/ng/uj;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/pp/c;)V
    .locals 2

    .line 319
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 320
    iget v1, p4, Lcom/byazt/pp/c;->c:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object v1

    if-eqz p4, :cond_1

    iget-object p4, p4, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 321
    :goto_1
    invoke-virtual {v1, p4}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object p4

    .line 322
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, ""

    :cond_2
    invoke-virtual {p4, p0}, Lcom/byazt/ng/uj;->n(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object p0

    const-string p4, "custom_adn_init_fail"

    .line 323
    invoke-virtual {p0, p4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 324
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 325
    invoke-static {v0, p2, p3, p1, p0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 326
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Ljava/util/List;Lcom/byazt/ll/tt;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Lcom/byazt/ll/tt;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 88
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 89
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/yl/ve;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 90
    :goto_0
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v3

    const-string v4, "media_show_fail"

    .line 91
    invoke-virtual {v3, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    if-nez p2, :cond_6

    const p2, 0x9c74

    .line 92
    invoke-virtual {v3, p2}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    if-eqz v2, :cond_7

    .line 93
    :try_start_0
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 94
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/yl/ve;

    if-eqz v4, :cond_1

    .line 95
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "adn"

    .line 96
    invoke-virtual {v4}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "type"

    .line 97
    invoke-virtual {v4}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v7

    invoke-virtual {v4}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v8

    invoke-static {v7, v8}, Lcom/byazt/yl/c;->c(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "adnSlotId"

    .line 98
    invoke-virtual {v4}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "loadSort"

    .line 99
    invoke-virtual {v4}, Lcom/byazt/yl/ve;->getLoadSort()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "showSort"

    .line 100
    invoke-virtual {v4}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v6, 0x1

    if-eqz p1, :cond_3

    const-string v7, "isReady"

    .line 101
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    const-string v7, "hasShown"

    .line 102
    invoke-virtual {v4}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 105
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 106
    :cond_6
    invoke-virtual {v3, p2}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    .line 107
    invoke-static {p2}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 108
    :cond_7
    :goto_4
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-static {v3, p1, v1, v2, p0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    const-string p1, "is_video_cache_success"

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 111
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, p0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/ll/tt;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Lcom/byazt/ll/tt;",
            "I)V"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 53
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p2, :cond_2

    .line 54
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 55
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    if-lez p0, :cond_3

    .line 57
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/yl/ve;

    goto :goto_0

    :cond_3
    move-object p0, p1

    .line 58
    :goto_0
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v1

    const-string v2, "media_show_is_ready"

    .line 59
    invoke-virtual {v1, v2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    if-nez p4, :cond_10

    .line 60
    :try_start_0
    new-instance p4, Lorg/json/JSONArray;

    invoke-direct {p4}, Lorg/json/JSONArray;-><init>()V

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/yl/ve;

    if-eqz v3, :cond_5

    .line 62
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "adn"

    .line 63
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "type"

    .line 64
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v6

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v7

    invoke-static {v6, v7}, Lcom/byazt/yl/c;->c(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "adnSlotId"

    .line 65
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "loadSort"

    .line 66
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getLoadSort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "showSort"

    .line 67
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v5, 0x1

    if-eqz p3, :cond_7

    const-string v6, "isReady"

    .line 68
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7
    const-string v6, "hasShown"

    .line 69
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->adnHasAdVideoCachedApi()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "is_video_cache_success"

    .line 71
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->isCacheSuccess()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_a
    const-string v6, "mediationrit_req_type"

    if-eqz p3, :cond_b

    .line 72
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_b
    move-object v7, p1

    :goto_5
    invoke-virtual {v3, v7}, Lcom/byazt/yl/ve;->getMediationRitReqType(Ljava/lang/String;)I

    move-result v7

    .line 73
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "mediationrit_req_type_src"

    if-eqz p3, :cond_c

    .line 74
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_c
    move-object v7, p1

    :goto_6
    invoke-virtual {v3, v7}, Lcom/byazt/yl/ve;->getMediationRitReqTypeSrc(Ljava/lang/String;)I

    move-result v7

    .line 75
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {p4, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-nez v2, :cond_5

    if-eqz p3, :cond_5

    .line 77
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->my()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_d

    .line 78
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_1

    .line 79
    :cond_d
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    if-eqz v2, :cond_f

    goto :goto_7

    :cond_f
    const/4 p2, -0x1

    .line 80
    :goto_7
    invoke-virtual {v1, p2}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    .line 81
    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p2

    .line 82
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_10
    const/4 p2, 0x2

    .line 83
    invoke-virtual {v1, p2}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    .line 84
    invoke-static {p4}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 85
    :goto_8
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 86
    invoke-static {v1, p3, p1, p0, p2}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 87
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, p2}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Ljava/util/Map;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;JIIILjava/lang/String;IILcom/byazt/nbs/tt;Lorg/json/JSONObject;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/ll/tt;",
            "Lcom/byazt/yl/ve;",
            "JIII",
            "Ljava/lang/String;",
            "II",
            "Lcom/byazt/nbs/tt;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "rule_id"

    const-string v2, "serverBidding_timeout"

    const-string v3, "has_serverBidding"

    const-string v4, "rule_in_use"

    const-string v5, "price_from"

    const-string v6, "price_source"

    .line 165
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v8

    if-eqz v0, :cond_b

    const-string v7, "group_type"

    .line 166
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Integer;

    if-eqz v9, :cond_0

    .line 167
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const-string v9, "ecpm"

    .line 168
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Ljava/lang/Double;

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_1

    .line 169
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    goto :goto_1

    :cond_1
    move-wide v14, v12

    .line 170
    :goto_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 171
    :try_start_0
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "grout_type"

    .line 172
    invoke-virtual {v9, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "target_ecpm_origin"

    .line 174
    invoke-virtual {v5, v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v11, "target_ecpm_upper"

    const-string v10, "upper_cpm_x"

    .line 175
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "price"

    .line 176
    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 178
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 180
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 181
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    .line 182
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eq v7, v5, :cond_5

    if-eq v7, v6, :cond_5

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    if-nez v3, :cond_6

    const/4 v10, 0x1

    goto :goto_5

    :cond_6
    cmpl-double v3, v14, v12

    if-nez v3, :cond_7

    const/4 v10, 0x2

    goto :goto_5

    :cond_7
    if-nez v4, :cond_8

    const/4 v10, 0x5

    goto :goto_5

    .line 183
    :cond_8
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_9

    .line 184
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    :goto_4
    if-ne v7, v6, :cond_a

    if-nez v10, :cond_a

    const/4 v10, 0x3

    goto :goto_5

    :cond_a
    const/4 v10, 0x4

    :goto_5
    const-string v2, "pos_state"

    .line 185
    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rule_inuse"

    .line 187
    invoke-virtual {v9, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object/from16 v20, v9

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    move-object/from16 v20, v0

    .line 188
    :goto_6
    new-instance v0, Lcom/byazt/ng/a$3;

    move-object v7, v0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v11, p3

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v16, p8

    move/from16 v17, p9

    move/from16 v18, p10

    move-object/from16 v19, p11

    move-object/from16 v21, p12

    invoke-direct/range {v7 .. v21}, Lcom/byazt/ng/a$3;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;JIIILjava/lang/String;IILcom/byazt/nbs/tt;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Z)V
    .locals 2

    .line 195
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/byazt/ng/a$8;

    invoke-direct {v1, p0, v0}, Lcom/byazt/ng/a$8;-><init>(ZLcom/byazt/ng/uj;)V

    invoke-static {v1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static tt()V
    .locals 2

    .line 3
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v0

    .line 4
    new-instance v1, Li1/a;

    invoke-direct {v1, v0}, Li1/a;-><init>(Lcom/byazt/ng/uj;)V

    invoke-static {v1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static tt(J)V
    .locals 6

    .line 5
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "sdk_backstage"

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v1

    .line 7
    invoke-virtual {v1, p0, p1}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    .line 8
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ii/c;->sl()Z

    move-result p1

    const-string v1, "call_init_method_duration"

    if-eqz p1, :cond_0

    .line 10
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ii/c;->x()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 11
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p1

    sget-object v2, Lcom/byazt/ng/c;->ve:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/byazt/ii/c;->c(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ii/c;->x()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ii/c;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ii/c;->x()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    const-string p1, "v2Enc_config"

    .line 15
    invoke-static {p1}, Lcom/byazt/vx/yv;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v4Enc_config"

    .line 16
    invoke-static {p1}, Lcom/byazt/vx/yv;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v2Enc_exchange"

    .line 17
    invoke-static {p1}, Lcom/byazt/vx/yv;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v4Enc_exchange"

    .line 18
    invoke-static {p1}, Lcom/byazt/vx/yv;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v2Enc_reward"

    .line 19
    invoke-static {p1}, Lcom/byazt/vx/yv;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v4Enc_reward"

    .line 20
    invoke-static {p1}, Lcom/byazt/vx/yv;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/qe/ve;->lr()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "enable_label_return"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/bp/c;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "if_labelapi_call"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcom/byazt/px/n;->tt()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "adn_init_duration"

    .line 24
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Lcom/byazt/xo/c;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "sdk_boost_type"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Lcom/byazt/ng/a;->uj()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "layer_init_type"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p0}, Lcom/byazt/dc/n;->c(Ljava/util/Map;)V

    .line 28
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ll/tt;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/ng/uj;->ve()Lcom/byazt/ng/uj;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/byazt/ng/a$7;

    invoke-direct {v1, v0, p0, p1}, Lcom/byazt/ng/a$7;-><init>(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;I)V

    invoke-static {v1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static uj()I
    .locals 2

    .line 1
    const-string v0, "m_d_s"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/dna/gu;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-interface {v0, v1}, Lcom/byazt/dna/gu;->getData(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Ljava/lang/Integer;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, -0x1

    .line 28
    :goto_0
    return v0
.end method

.method public static ve()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/ng/uj;->tt()Lcom/byazt/ng/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "start_up"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v1, v0, v2}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
