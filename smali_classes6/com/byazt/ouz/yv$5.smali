.class public Lcom/byazt/ouz/yv$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x911
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/yv;->ve(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/ouz/yv;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/yv;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/yv$5;->tt:Lcom/byazt/ouz/yv;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/ouz/yv$5;->c:Z

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/yv$5;->tt:Lcom/byazt/ouz/yv;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ouz/yv;->sp(Lcom/byazt/ouz/yv;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/byazt/ouz/yv$5;->c:Z

    .line 8
    .line 9
    xor-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/ouz/yv$5;->tt:Lcom/byazt/ouz/yv;

    .line 14
    .line 15
    xor-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/byazt/ouz/yv;->ve(Lcom/byazt/ouz/yv;Z)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/ouz/yv$5;->tt:Lcom/byazt/ouz/yv;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/byazt/ouz/yv;->a(Lcom/byazt/ouz/yv;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
