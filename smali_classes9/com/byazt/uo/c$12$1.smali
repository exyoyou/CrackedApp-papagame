.class public Lcom/byazt/uo/c$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/av/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x879
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/c$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/uo/c$12;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/c$12;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/c$12$1;->c:Lcom/byazt/uo/c$12;

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
    .locals 0

    return-void
.end method

.method public tt()V
    .locals 0

    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c$12$1;->c:Lcom/byazt/uo/c$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/uo/c$12;->c:Lcom/byazt/uo/c;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/uo/c;->da(Lcom/byazt/uo/c;)Lcom/byazt/cc/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/uo/c$12$1;->c:Lcom/byazt/uo/c$12;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/uo/c$12;->c:Lcom/byazt/uo/c;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/uo/c;->da(Lcom/byazt/uo/c;)Lcom/byazt/cc/i;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/byazt/cc/i;->tt()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
