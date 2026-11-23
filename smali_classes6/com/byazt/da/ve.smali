.class public Lcom/byazt/da/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/oh/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x48,
        0x36
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/hz/sp;

.field public tt:Lcom/byazt/ch/c;

.field public ve:Lcom/byazt/nh/tt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/nh/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/da/ve;->tt:Lcom/byazt/ch/c;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Lcom/byazt/hz/sp;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/byazt/hz/sp;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/byazt/da/ve;->c:Lcom/byazt/hz/sp;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/byazt/da/ve;->ve:Lcom/byazt/nh/tt;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/da/ve;)Lcom/byazt/nh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/da/ve;->ve:Lcom/byazt/nh/tt;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/da/ve;)Lcom/byazt/hz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/da/ve;->c:Lcom/byazt/hz/sp;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 2
    new-instance v0, Lcom/byazt/ll/tt;

    iget-object v1, p0, Lcom/byazt/da/ve;->tt:Lcom/byazt/ch/c;

    invoke-virtual {v1}, Lcom/byazt/ch/c;->eo()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/da/ve;->tt:Lcom/byazt/ch/c;

    invoke-virtual {v2}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {v0, v3, v1, v2}, Lcom/byazt/ll/tt;-><init>(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/byazt/da/ve;->c:Lcom/byazt/hz/sp;

    new-instance v2, Lcom/byazt/da/ve$1;

    invoke-direct {v2, p0}, Lcom/byazt/da/ve$1;-><init>(Lcom/byazt/da/ve;)V

    invoke-virtual {v1, v0, v2}, Lcom/byazt/hz/sp;->c(Lcom/byazt/ll/tt;Lcom/byazt/fy/tt;)V

    return-void
.end method
