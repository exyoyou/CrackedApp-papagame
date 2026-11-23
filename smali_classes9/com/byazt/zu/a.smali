.class public Lcom/byazt/zu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/oh/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x397,
        0x22
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/hz/i;

.field public tt:Lcom/byazt/ch/c;

.field public uj:Z

.field public ve:Lcom/byazt/nh/ve;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/nh/ve;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/zu/a;->tt:Lcom/byazt/ch/c;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/byazt/zu/a;->uj:Z

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    new-instance p2, Lcom/byazt/hz/i;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Lcom/byazt/hz/i;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/byazt/zu/a;->c:Lcom/byazt/hz/i;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/byazt/zu/a;->ve:Lcom/byazt/nh/ve;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/zu/a;)Lcom/byazt/nh/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/a;->ve:Lcom/byazt/nh/ve;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/zu/a;)Lcom/byazt/hz/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/a;->c:Lcom/byazt/hz/i;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 2
    new-instance v0, Lcom/byazt/ll/tt;

    iget-object v1, p0, Lcom/byazt/zu/a;->tt:Lcom/byazt/ch/c;

    invoke-virtual {v1}, Lcom/byazt/ch/c;->eo()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/zu/a;->tt:Lcom/byazt/ch/c;

    invoke-virtual {v2}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1, v2}, Lcom/byazt/ll/tt;-><init>(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/String;)V

    .line 3
    iget-boolean v1, p0, Lcom/byazt/zu/a;->uj:Z

    invoke-virtual {v0, v1}, Lcom/byazt/ll/tt;->c(Z)V

    .line 4
    iget-object v1, p0, Lcom/byazt/zu/a;->c:Lcom/byazt/hz/i;

    new-instance v2, Lcom/byazt/zu/a$1;

    invoke-direct {v2, p0}, Lcom/byazt/zu/a$1;-><init>(Lcom/byazt/zu/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/byazt/hz/i;->c(Lcom/byazt/ll/tt;Lcom/byazt/me/uj;)V

    return-void
.end method
