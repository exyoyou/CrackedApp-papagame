.class public Lcom/byazt/si/c$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/rs/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x260,
        0x2f9
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/si/c$5;->c(Lcom/byazt/ga/i;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ga/i;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/si/c$5;


# direct methods
.method public constructor <init>(Lcom/byazt/si/c$5;Lcom/byazt/ga/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/si/c$5$1;->ve:Lcom/byazt/si/c$5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/si/c$5$1;->c:Lcom/byazt/ga/i;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/si/c$5$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 2
    invoke-static {}, Lcom/byazt/sa/n;->c()Lcom/byazt/sa/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/sa/n;->tt()Lcom/byazt/sa/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/si/c$5$1;->ve:Lcom/byazt/si/c$5;

    iget-object v1, v1, Lcom/byazt/si/c$5;->c:Lcom/byazt/si/c;

    invoke-static {v1}, Lcom/byazt/si/c;->sl(Lcom/byazt/si/c;)Lcom/byazt/sz/yp;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/si/c$5$1;->tt:Ljava/lang/String;

    new-instance v3, Lcom/byazt/si/c$5$1$1;

    invoke-direct {v3, p0}, Lcom/byazt/si/c$5$1$1;-><init>(Lcom/byazt/si/c$5$1;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/sa/c;->c(Lcom/byazt/sz/yp;Ljava/lang/String;Lcom/byazt/sa/c$c;)V

    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/si/c$5$1;->ve:Lcom/byazt/si/c$5;

    iget-object v0, v0, Lcom/byazt/si/c$5;->c:Lcom/byazt/si/c;

    iget-object v1, p0, Lcom/byazt/si/c$5$1;->c:Lcom/byazt/ga/i;

    iget-object v2, p0, Lcom/byazt/si/c$5$1;->tt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/byazt/si/tt;->c(Lcom/byazt/ga/i;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
