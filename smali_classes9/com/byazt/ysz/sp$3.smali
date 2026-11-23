.class public Lcom/byazt/ysz/sp$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qya/ve$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x24d,
        0x254
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ysz/sp;->ve(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ysz/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/ysz/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ysz/sp$3;->c:Lcom/byazt/ysz/sp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ysz/sp$3;->c:Lcom/byazt/ysz/sp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ysz/sp;->ve(Lcom/byazt/ysz/sp;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x3

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/byazt/nr/da;->ve()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/byazt/ysz/sp$3$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/byazt/ysz/sp$3$1;-><init>(Lcom/byazt/ysz/sp$3;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x2710

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
