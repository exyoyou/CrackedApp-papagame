.class public Lcom/byazt/zwg/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/oh/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x425,
        0x36
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/hz/t;

.field public tt:Lcom/byazt/ch/c;

.field public uj:Lcom/byazt/zwg/c;

.field public ve:Lcom/byazt/nh/sp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/nh/sp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/zwg/ve;->tt:Lcom/byazt/ch/c;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Lcom/byazt/hz/t;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/byazt/hz/t;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/byazt/zwg/ve;->c:Lcom/byazt/hz/t;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/byazt/zwg/ve;->ve:Lcom/byazt/nh/sp;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/zwg/ve;)Lcom/byazt/nh/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zwg/ve;->ve:Lcom/byazt/nh/sp;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/zwg/ve;Lcom/byazt/zwg/c;)Lcom/byazt/zwg/c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/zwg/ve;->uj:Lcom/byazt/zwg/c;

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/zwg/ve;)Lcom/byazt/zwg/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zwg/ve;->uj:Lcom/byazt/zwg/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/zwg/ve;)Lcom/byazt/hz/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zwg/ve;->c:Lcom/byazt/hz/t;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/byazt/zwg/ve;->tt:Lcom/byazt/ch/c;

    invoke-virtual {v1}, Lcom/byazt/dj/tt;->u()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gdt"

    .line 6
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    new-instance v0, Lcom/byazt/ll/tt;

    iget-object v1, p0, Lcom/byazt/zwg/ve;->tt:Lcom/byazt/ch/c;

    invoke-virtual {v1}, Lcom/byazt/ch/c;->eo()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/zwg/ve;->tt:Lcom/byazt/ch/c;

    invoke-virtual {v2}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {v0, v3, v1, v2}, Lcom/byazt/ll/tt;-><init>(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/byazt/zwg/ve;->c:Lcom/byazt/hz/t;

    new-instance v2, Lcom/byazt/zwg/ve$1;

    invoke-direct {v2, p0}, Lcom/byazt/zwg/ve$1;-><init>(Lcom/byazt/zwg/ve;)V

    invoke-virtual {v1, v0, v2}, Lcom/byazt/hz/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/uhf/tt;)V

    return-void
.end method
