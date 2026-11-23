.class public Lcom/byazt/uo/c$7$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x10c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/c$7;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/uo/c$7;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/c$7;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/c$7$1;->c:Lcom/byazt/uo/c$7;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c$7$1;->c:Lcom/byazt/uo/c$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-static {v0, v2}, Lcom/byazt/uo/c;->ve(Lcom/byazt/uo/c;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
