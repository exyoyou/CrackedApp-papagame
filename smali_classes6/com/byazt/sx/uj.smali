.class public Lcom/byazt/sx/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a0,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sx/uj$c;
    }
.end annotation


# static fields
.field public static c:Landroid/content/Context;

.field public static volatile tt:Lcom/byazt/sx/uj$c;

.field public static volatile ve:Lcom/byazt/sx/uj$c;


# direct methods
.method public static c(IIJZZLorg/json/JSONObject;JLorg/json/JSONObject;)V
    .locals 13

    .line 9
    new-instance v0, Lcom/byazt/xo/tt;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/byazt/xo/tt;-><init>(I)V

    new-instance v1, Lcom/byazt/sx/uj$6;

    move-object v2, v1

    move v3, p0

    move v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    invoke-direct/range {v2 .. v12}, Lcom/byazt/sx/uj$6;-><init>(IIJZZLorg/json/JSONObject;JLorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/byazt/xo/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(J)V
    .locals 11

    .line 2
    new-instance v10, Lcom/byazt/sx/uj$c;

    const-string v1, "sdk_init"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-wide v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/byazt/sx/uj$c;-><init>(Ljava/lang/String;JJIILorg/json/JSONObject;Ljava/util/Map;)V

    .line 3
    sput-object v10, Lcom/byazt/sx/uj;->tt:Lcom/byazt/sx/uj$c;

    invoke-static {v10}, Lcom/byazt/sx/uj$c;->c(Lcom/byazt/sx/uj$c;)V

    return-void
.end method

.method public static c(JIIJLorg/json/JSONObject;Ljava/util/Map;)V
    .locals 11
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

    .line 7
    new-instance v0, Lcom/byazt/xo/tt;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/byazt/xo/tt;-><init>(I)V

    new-instance v1, Lcom/byazt/sx/uj$4;

    move-object v2, v1

    move-wide v3, p0

    move v5, p2

    move v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/byazt/sx/uj$4;-><init>(JIIJLorg/json/JSONObject;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/byazt/xo/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(JIILorg/json/JSONObject;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v10, Lcom/byazt/sx/uj$c;

    const-string v1, "sdk_init_end"

    const-wide/16 v2, -0x1

    move-object v0, v10

    move-wide v4, p0

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/byazt/sx/uj$c;-><init>(Ljava/lang/String;JJIILorg/json/JSONObject;Ljava/util/Map;)V

    .line 5
    sput-object v10, Lcom/byazt/sx/uj;->ve:Lcom/byazt/sx/uj$c;

    invoke-static {v10}, Lcom/byazt/sx/uj$c;->c(Lcom/byazt/sx/uj$c;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/byazt/sx/uj;->c:Landroid/content/Context;

    return-void
.end method

.method public static c(Z)V
    .locals 2

    .line 8
    new-instance v0, Lcom/byazt/xo/tt;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/byazt/xo/tt;-><init>(I)V

    new-instance v1, Lcom/byazt/sx/uj$5;

    invoke-direct {v1, p0}, Lcom/byazt/sx/uj$5;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/byazt/xo/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 6
    invoke-static {}, Lcom/byazt/vx/qy;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static n()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/vx/qy;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static tt()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/xo/tt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/byazt/xo/tt;-><init>(I)V

    new-instance v1, Lcom/byazt/sx/uj$1;

    invoke-direct {v1}, Lcom/byazt/sx/uj$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/byazt/xo/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static tt(J)V
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/xo/tt;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/byazt/xo/tt;-><init>(I)V

    new-instance v1, Lcom/byazt/sx/uj$3;

    invoke-direct {v1, p0, p1}, Lcom/byazt/sx/uj$3;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/byazt/xo/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic uj()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/sx/uj;->n()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static ve()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/xo/tt;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lcom/byazt/xo/tt;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/byazt/sx/uj$2;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/byazt/sx/uj$2;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/xo/tt;->c(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
