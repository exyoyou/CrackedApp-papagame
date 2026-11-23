.class public Lcom/byazt/eo/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/oh/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f,
        0x36
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/ch/c;

.field public final tt:Lcom/byazt/xw/c;

.field public uj:Z

.field public ve:Lcom/byazt/hz/sl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/xw/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/eo/ve;->c:Lcom/byazt/ch/c;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/byazt/eo/ve;->tt:Lcom/byazt/xw/c;

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/byazt/eo/ve;->uj:Z

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    new-instance p2, Lcom/byazt/hz/sl;

    .line 13
    .line 14
    invoke-direct {p2, p1}, Lcom/byazt/hz/sl;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/byazt/eo/ve;->ve:Lcom/byazt/hz/sl;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/eo/ve;)Lcom/byazt/xw/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/eo/ve;->tt:Lcom/byazt/xw/c;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/eo/ve;)Lcom/byazt/hz/sl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/eo/ve;->ve:Lcom/byazt/hz/sl;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 2
    new-instance v0, Lcom/byazt/ll/tt;

    iget-object v1, p0, Lcom/byazt/eo/ve;->c:Lcom/byazt/ch/c;

    invoke-virtual {v1}, Lcom/byazt/ch/c;->eo()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/eo/ve;->c:Lcom/byazt/ch/c;

    invoke-virtual {v2}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/byazt/ll/tt;-><init>(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/String;)V

    .line 3
    iget-boolean v1, p0, Lcom/byazt/eo/ve;->uj:Z

    invoke-virtual {v0, v1}, Lcom/byazt/ll/tt;->c(Z)V

    .line 4
    iget-object v1, p0, Lcom/byazt/eo/ve;->c:Lcom/byazt/ch/c;

    invoke-virtual {v1}, Lcom/byazt/ch/c;->md()Lcom/byazt/ch/tt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/byazt/ch/tt;->da()Lcom/byazt/am/tt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/byazt/eo/ve;->ve:Lcom/byazt/hz/sl;

    new-instance v3, Lcom/byazt/eo/ve$1;

    invoke-direct {v3, p0, v1}, Lcom/byazt/eo/ve$1;-><init>(Lcom/byazt/eo/ve;Lcom/byazt/am/tt;)V

    invoke-virtual {v2, v3}, Lcom/byazt/hz/sl;->c(Lcom/byazt/oc/uj;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/byazt/eo/ve;->ve:Lcom/byazt/hz/sl;

    new-instance v2, Lcom/byazt/eo/ve$2;

    invoke-direct {v2, p0}, Lcom/byazt/eo/ve$2;-><init>(Lcom/byazt/eo/ve;)V

    invoke-virtual {v1, v0, v2}, Lcom/byazt/hz/sl;->c(Lcom/byazt/ll/tt;Lcom/byazt/oc/tt;)V

    return-void
.end method
