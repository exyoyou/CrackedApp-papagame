.class public final Lcom/byazt/bt/da$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x112,
        0x1ee
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bt/da;->ve(Landroid/content/Context;Lcom/byazt/dna/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Lcom/byazt/dna/c;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/dna/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bt/da$2;->c:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bt/da$2;->tt:Lcom/byazt/dna/c;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/bt/da$2;->ve:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/bt/da$2;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/el/SSWebView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->getUserAgentString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/byazt/bt/da;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/byazt/bt/da;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    const-string v0, "sdk_local_web_ua"

    .line 20
    .line 21
    invoke-static {}, Lcom/byazt/bt/da;->tt()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/byazt/bt/da$2;->tt:Lcom/byazt/dna/c;

    .line 26
    .line 27
    iget v3, p0, Lcom/byazt/bt/da$2;->ve:I

    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/bt/x;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    return-void
.end method
