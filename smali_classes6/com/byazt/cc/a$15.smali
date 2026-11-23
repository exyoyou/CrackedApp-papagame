.class public Lcom/byazt/cc/a$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x584
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/a;->c(Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/cc/a$c;

.field public final synthetic uj:Lcom/byazt/cc/a;

.field public final synthetic ve:Lcom/byazt/im/x;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/a;ZLcom/byazt/cc/a$c;Lcom/byazt/im/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a$15;->uj:Lcom/byazt/cc/a;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/cc/a$15;->c:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/cc/a$15;->tt:Lcom/byazt/cc/a$c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/cc/a$15;->ve:Lcom/byazt/im/x;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Lcom/byazt/cc/a$15$1;

    .line 6
    .line 7
    invoke-direct {v2, p0, v0, v1}, Lcom/byazt/cc/a$15$1;-><init>(Lcom/byazt/cc/a$15;J)V

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
