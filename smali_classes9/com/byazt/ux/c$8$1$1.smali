.class public Lcom/byazt/ux/c$8$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1a3,
        0x424
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ux/c$8$1;->c(ZLjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic tt:Lcom/byazt/ux/c$8$1;


# direct methods
.method public constructor <init>(Lcom/byazt/ux/c$8$1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ux/c$8$1$1;->tt:Lcom/byazt/ux/c$8$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ux/c$8$1$1;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/byazt/ux/c$8$1$1;->tt:Lcom/byazt/ux/c$8$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ux/c$8$1;->c:Lcom/byazt/ux/c$8;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/ux/c$8;->c:Lcom/byazt/xj/ve;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    instance-of v1, v0, Lcom/byazt/pj/a;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/byazt/pj/a;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/ux/c$8$1$1;->c:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/pj/a;->tt(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
