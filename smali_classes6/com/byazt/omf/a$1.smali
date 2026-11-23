.class public Lcom/byazt/omf/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gj/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/a;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/omf/a;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/a$1;->c:Lcom/byazt/omf/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/byazt/nr/gt;->tt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/byazt/aas/zm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/byazt/vxy/c;->n()Lcom/byazt/dna/c;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/aas/my;->c(Lcom/byazt/dna/c;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ipv6_list"

    .line 6
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    .line 8
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/ukr/yp;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public c([Ljava/lang/String;[IZ)V
    .locals 0

    .line 7
    invoke-static {}, Lcom/byazt/la/c;->c()Lcom/byazt/la/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/la/c;->c([I)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->pu()Z

    move-result v0

    return v0
.end method

.method public tt()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/aas/u;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public uj()Landroid/os/Looper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public ve()Landroid/os/Looper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
