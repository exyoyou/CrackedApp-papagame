.class public Lcom/byazt/uo/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/tt;->tt(Lcom/byazt/gat/uj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gat/uj;

.field public final synthetic tt:Lcom/byazt/uo/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/tt;Lcom/byazt/gat/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/tt$2;->tt:Lcom/byazt/uo/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/uo/tt$2;->c:Lcom/byazt/gat/uj;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/uo/tt$2;->tt:Lcom/byazt/uo/tt;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/uo/tt$2;->c:Lcom/byazt/gat/uj;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/uo/c;->c(Lcom/byazt/gat/uj;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/uo/tt$2;->tt:Lcom/byazt/uo/tt;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/uo/tt;->ve(Lcom/byazt/uo/tt;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    return-void
.end method
