.class public final Lcom/byazt/ga/sp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ga/sp;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ga/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/byazt/ga/t<",
        "Lcom/byazt/ga/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/sp$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ga/sp$1;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ga/sp$1;->ve:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public call()Lcom/byazt/ga/t;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/ga/t<",
            "Lcom/byazt/ga/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/sp$1;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/ga/n;->c(Landroid/content/Context;)Lcom/byazt/xy/x;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ga/sp$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/ga/sp$1;->tt:Ljava/lang/String;

    iget-object v3, p0, Lcom/byazt/ga/sp$1;->ve:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/xy/x;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ga/t;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/byazt/ga/sp$1;->ve:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ga/t;->c()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/byazt/nb/a;->c()Lcom/byazt/nb/a;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ga/sp$1;->ve:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/byazt/ga/t;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/ga/a;

    invoke-virtual {v1, v2, v3}, Lcom/byazt/nb/a;->c(Ljava/lang/String;Lcom/byazt/ga/a;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ga/sp$1;->call()Lcom/byazt/ga/t;

    move-result-object v0

    return-object v0
.end method
