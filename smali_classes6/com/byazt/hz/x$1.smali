.class public Lcom/byazt/hz/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hz/da$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x1e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hz/x;->c(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hz/x;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/x$1;->c:Lcom/byazt/hz/x;

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

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/x$1;->c:Lcom/byazt/hz/x;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/pp/c;

    .line 4
    .line 5
    const v2, 0x9c74

    .line 6
    .line 7
    .line 8
    invoke-static {v2}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-direct {v1, v2, v3}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/byazt/hz/x;->c(Lcom/byazt/hz/x;Lcom/byazt/pp/c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
